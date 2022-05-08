package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.services.p017s3.internal.InputSubstream;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import com.amazonaws.services.p017s3.model.SSECustomerKey;
import com.amazonaws.services.p017s3.model.UploadPartRequest;
import java.io.File;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadPartRequestFactory */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadPartRequestFactory.class */
public class UploadPartRequestFactory {
    public final String bucketName;
    public final File file;
    public final String key;
    public final long optimalPartSize;
    public final PutObjectRequest putObjectRequest;
    public long remainingBytes;
    public SSECustomerKey sseCustomerKey;
    public final String uploadId;
    public int partNumber = 1;
    public long offset = 0;

    public UploadPartRequestFactory(PutObjectRequest putObjectRequest, String str, long j) {
        this.putObjectRequest = putObjectRequest;
        this.uploadId = str;
        this.optimalPartSize = j;
        this.bucketName = putObjectRequest.getBucketName();
        this.key = putObjectRequest.getKey();
        this.file = TransferManagerUtils.getRequestFile(putObjectRequest);
        this.remainingBytes = TransferManagerUtils.getContentLength(putObjectRequest);
        this.sseCustomerKey = putObjectRequest.getSSECustomerKey();
    }

    public UploadPartRequest getNextUploadPartRequest() {
        UploadPartRequest uploadPartRequest;
        synchronized (this) {
            long min = Math.min(this.optimalPartSize, this.remainingBytes);
            boolean z = this.remainingBytes - min <= 0;
            if (this.putObjectRequest.getInputStream() != null) {
                uploadPartRequest = new UploadPartRequest();
                uploadPartRequest.withBucketName(this.bucketName);
                uploadPartRequest.withKey(this.key);
                uploadPartRequest.withUploadId(this.uploadId);
                uploadPartRequest.withInputStream(new InputSubstream(this.putObjectRequest.getInputStream(), 0L, min, z));
                int i = this.partNumber;
                this.partNumber = i + 1;
                uploadPartRequest.withPartNumber(i);
                uploadPartRequest.withPartSize(min);
            } else {
                uploadPartRequest = new UploadPartRequest();
                uploadPartRequest.withBucketName(this.bucketName);
                uploadPartRequest.withKey(this.key);
                uploadPartRequest.withUploadId(this.uploadId);
                uploadPartRequest.withFile(this.file);
                uploadPartRequest.withFileOffset(this.offset);
                int i2 = this.partNumber;
                this.partNumber = i2 + 1;
                uploadPartRequest.withPartNumber(i2);
                uploadPartRequest.withPartSize(min);
            }
            if (this.sseCustomerKey != null) {
                uploadPartRequest.setSSECustomerKey(this.sseCustomerKey);
            }
            this.offset += min;
            this.remainingBytes -= min;
            uploadPartRequest.setLastPart(z);
            uploadPartRequest.setGeneralProgressListener(this.putObjectRequest.getGeneralProgressListener());
        }
        return uploadPartRequest;
    }

    public boolean hasMoreRequests() {
        boolean z;
        synchronized (this) {
            z = this.remainingBytes > 0;
        }
        return z;
    }
}
