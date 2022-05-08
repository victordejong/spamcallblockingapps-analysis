package com.amazonaws.services.p017s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.services.p017s3.S3ResponseMetadata;
import com.amazonaws.services.p017s3.model.ObjectMetadata;
import com.amazonaws.util.DateUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* renamed from: com.amazonaws.services.s3.internal.AbstractS3ResponseHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/AbstractS3ResponseHandler.class */
public abstract class AbstractS3ResponseHandler<T> implements HttpResponseHandler<AmazonWebServiceResponse<T>> {
    public static final Log log = LogFactory.getLog(S3MetadataResponseHandler.class);
    public static final Set<String> ignoredHeaders = new HashSet();

    static {
        ignoredHeaders.add("Date");
        ignoredHeaders.add("Server");
        ignoredHeaders.add("x-amz-request-id");
        ignoredHeaders.add("x-amz-id-2");
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    public boolean needsConnectionLeftOpen() {
        return false;
    }

    public AmazonWebServiceResponse<T> parseResponseMetadata(HttpResponse httpResponse) {
        AmazonWebServiceResponse<T> amazonWebServiceResponse = new AmazonWebServiceResponse<>();
        String str = httpResponse.getHeaders().get("x-amz-request-id");
        String str2 = httpResponse.getHeaders().get("x-amz-id-2");
        HashMap hashMap = new HashMap();
        hashMap.put("AWS_REQUEST_ID", str);
        hashMap.put("HOST_ID", str2);
        amazonWebServiceResponse.setResponseMetadata(new S3ResponseMetadata(hashMap));
        return amazonWebServiceResponse;
    }

    public void populateObjectMetadata(HttpResponse httpResponse, ObjectMetadata objectMetadata) {
        for (Map.Entry<String, String> entry : httpResponse.getHeaders().entrySet()) {
            String key = entry.getKey();
            if (key.startsWith("x-amz-meta-")) {
                objectMetadata.addUserMetadata(key.substring(11), entry.getValue());
            } else if (!ignoredHeaders.contains(key)) {
                if (key.equals("Last-Modified")) {
                    try {
                        objectMetadata.setHeader(key, ServiceUtils.parseRfc822Date(entry.getValue()));
                    } catch (Exception e) {
                        Log log2 = log;
                        log2.warn("Unable to parse last modified date: " + entry.getValue(), e);
                    }
                } else if (key.equals("Content-Length")) {
                    try {
                        objectMetadata.setHeader(key, Long.valueOf(Long.parseLong(entry.getValue())));
                    } catch (NumberFormatException e2) {
                        Log log3 = log;
                        log3.warn("Unable to parse content length: " + entry.getValue(), e2);
                    }
                } else if (key.equals("ETag")) {
                    objectMetadata.setHeader(key, ServiceUtils.removeQuotes(entry.getValue()));
                } else if (key.equals("Expires")) {
                    try {
                        objectMetadata.setHttpExpiresDate(DateUtils.parseRFC822Date(entry.getValue()));
                    } catch (Exception e3) {
                        Log log4 = log;
                        log4.warn("Unable to parse http expiration date: " + entry.getValue(), e3);
                    }
                } else if (key.equals("x-amz-expiration")) {
                    new ObjectExpirationHeaderHandler().handle((ObjectExpirationHeaderHandler) objectMetadata, httpResponse);
                } else if (key.equals("x-amz-restore")) {
                    new ObjectRestoreHeaderHandler().handle((ObjectRestoreHeaderHandler) objectMetadata, httpResponse);
                } else {
                    objectMetadata.setHeader(key, entry.getValue());
                }
            }
        }
    }
}
