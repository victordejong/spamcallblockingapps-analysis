package com.amazonaws.services.p017s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.auth.AWS4Signer;
import com.amazonaws.auth.AwsChunkedEncodingInputStream;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import com.amazonaws.services.p017s3.model.UploadPartRequest;
import com.amazonaws.util.BinaryUtils;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.amazonaws.services.s3.internal.AWSS3V4Signer */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/AWSS3V4Signer.class */
public class AWSS3V4Signer extends AWS4Signer {
    public AWSS3V4Signer() {
        super(false);
    }

    public static long getContentLength(Request<?> request) throws IOException {
        InputStream content = request.getContent();
        if (content.markSupported()) {
            long j = 0;
            byte[] bArr = new byte[4096];
            content.mark(-1);
            while (true) {
                int read = content.read(bArr);
                if (read != -1) {
                    j += read;
                } else {
                    content.reset();
                    return j;
                }
            }
        } else {
            throw new AmazonClientException("Failed to get content length");
        }
    }

    public static boolean useChunkEncoding(Request<?> request) {
        return (request.getOriginalRequest() instanceof PutObjectRequest) || (request.getOriginalRequest() instanceof UploadPartRequest);
    }

    @Override // com.amazonaws.auth.AWS4Signer
    public String calculateContentHash(Request<?> request) {
        long contentLength;
        request.addHeader("x-amz-content-sha256", "required");
        if (!useChunkEncoding(request)) {
            return super.calculateContentHash(request);
        }
        String str = request.getHeaders().get("Content-Length");
        if (str != null) {
            contentLength = Long.parseLong(str);
        } else {
            try {
                contentLength = getContentLength(request);
            } catch (IOException e) {
                throw new AmazonClientException("Cannot get the content-lenght of the request content.", e);
            }
        }
        request.addHeader("x-amz-decoded-content-length", Long.toString(contentLength));
        request.addHeader("Content-Length", Long.toString(AwsChunkedEncodingInputStream.calculateStreamContentLength(contentLength)));
        return "STREAMING-AWS4-HMAC-SHA256-PAYLOAD";
    }

    @Override // com.amazonaws.auth.AWS4Signer
    public void processRequestPayload(Request<?> request, AWS4Signer.HeaderSigningResult headerSigningResult) {
        if (useChunkEncoding(request)) {
            request.setContent(new AwsChunkedEncodingInputStream(request.getContent(), headerSigningResult.getKSigning(), headerSigningResult.getDateTime(), headerSigningResult.getScope(), BinaryUtils.toHex(headerSigningResult.getSignature()), this));
        }
    }
}
