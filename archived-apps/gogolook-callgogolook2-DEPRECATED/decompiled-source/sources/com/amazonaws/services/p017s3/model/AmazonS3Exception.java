package com.amazonaws.services.p017s3.model;

import com.amazonaws.AmazonServiceException;
/* renamed from: com.amazonaws.services.s3.model.AmazonS3Exception */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/AmazonS3Exception.class */
public class AmazonS3Exception extends AmazonServiceException {
    public String extendedRequestId;

    public AmazonS3Exception(String str) {
        super(str);
    }

    public String getExtendedRequestId() {
        return this.extendedRequestId;
    }

    public void setCloudFrontId(String str) {
    }

    public void setExtendedRequestId(String str) {
        this.extendedRequestId = str;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ", S3 Extended Request ID: " + getExtendedRequestId();
    }
}
