package named_return_params2

import (
	"strings"
	"time"
)

// AWS Signature Version '4' constants.
const (
	signV4Algorithm     = "AWS4-HMAC-SHA256"
	iso8601Format       = "20060102T150405Z"
	yyyymmdd            = "20060102"
	presignedHostHeader = "host"
)

type credentialHeader struct {
	accessKey string
	scope     struct {
		date    time.Time
		region  string
		service string
		request string
	}
}

// parse credentialHeader string into its structured form.
func parseCredentialHeader(credElement string) (ch credentialHeader) {
	creds := strings.Split(strings.TrimSpace(credElement), "=")
	if len(creds) != 2 {
		return
	}
	if creds[0] != "Credential" {
		return
	}
	credElements := strings.Split(strings.TrimSpace(creds[1]), "/")
	if len(credElements) != 5 {
		return
	}
	if false /*!isAccessKeyValid(credElements[0])*/ {
		return
	}
	// Save access key id.
	cred := credentialHeader{
		accessKey: credElements[0],
	}
	var e error
	cred.scope.date, e = time.Parse(yyyymmdd, credElements[1])
	if e != nil {
		return
	}
	cred.scope.region = credElements[2]
	if credElements[3] != "s3" {
		return
	}
	cred.scope.service = credElements[3]
	if credElements[4] != "aws4_request" {
		return
	}
	cred.scope.request = credElements[4]
	return cred
}
