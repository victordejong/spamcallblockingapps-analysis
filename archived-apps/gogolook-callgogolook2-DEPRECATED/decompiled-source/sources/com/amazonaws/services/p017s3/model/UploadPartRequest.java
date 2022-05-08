package com.amazonaws.services.p017s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.event.ProgressListener;
import java.io.File;
import java.io.InputStream;
/* renamed from: com.amazonaws.services.s3.model.UploadPartRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/UploadPartRequest.class */
public class UploadPartRequest extends AmazonWebServiceRequest {
    public String bucketName;
    public File file;
    public long fileOffset;
    public ProgressListener generalProgressListener;

    /* renamed from: id */
    public int f818id;
    public InputStream inputStream;
    public String key;
    public String md5Digest;
    public int partNumber;
    public long partSize;
    public SSECustomerKey sseCustomerKey;
    public String uploadId;

    public String getBucketName() {
        return this.bucketName;
    }

    public File getFile() {
        return this.file;
    }

    public long getFileOffset() {
        return this.fileOffset;
    }

    public ProgressListener getGeneralProgressListener() {
        return this.generalProgressListener;
    }

    public int getId() {
        return this.f818id;
    }

    public InputStream getInputStream() {
        return this.inputStream;
    }

    public String getKey() {
        return this.key;
    }

    public String getMd5Digest() {
        return this.md5Digest;
    }

    public int getPartNumber() {
        return this.partNumber;
    }

    public long getPartSize() {
        return this.partSize;
    }

    public SSECustomerKey getSSECustomerKey() {
        return this.sseCustomerKey;
    }

    public String getUploadId() {
        return this.uploadId;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public void setFileOffset(long j) {
        this.fileOffset = j;
    }

    public void setGeneralProgressListener(ProgressListener progressListener) {
        this.generalProgressListener = progressListener;
    }

    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public void setLastPart(boolean z) {
    }

    public void setSSECustomerKey(SSECustomerKey sSECustomerKey) {
        this.sseCustomerKey = sSECustomerKey;
    }

    public UploadPartRequest withBucketName(String str) {
        this.bucketName = str;
        return this;
    }

    public UploadPartRequest withFile(File file) {
        setFile(file);
        return this;
    }

    public UploadPartRequest withFileOffset(long j) {
        setFileOffset(j);
        return this;
    }

    public UploadPartRequest withId(int i) {
        this.f818id = i;
        return this;
    }

    public UploadPartRequest withInputStream(InputStream inputStream) {
        setInputStream(inputStream);
        return this;
    }

    public UploadPartRequest withKey(String str) {
        this.key = str;
        return this;
    }

    public UploadPartRequest withLastPart(boolean z) {
        setLastPart(z);
        return this;
    }

    public UploadPartRequest withMainUploadId(int i) {
        return this;
    }

    public UploadPartRequest withPartNumber(int i) {
        this.partNumber = i;
        return this;
    }

    public UploadPartRequest withPartSize(long j) {
        this.partSize = j;
        return this;
    }

    public UploadPartRequest withUploadId(String str) {
        this.uploadId = str;
        return this;
    }
}
