package com.amazonaws.services.p017s3.model;

import java.io.Closeable;
import java.io.IOException;
/* renamed from: com.amazonaws.services.s3.model.S3Object */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/S3Object.class */
public class S3Object implements Closeable {
    public S3ObjectInputStream objectContent;
    public String key = null;
    public String bucketName = null;
    public ObjectMetadata metadata = new ObjectMetadata();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (getObjectContent() != null) {
            getObjectContent().close();
        }
    }

    public String getKey() {
        return this.key;
    }

    public S3ObjectInputStream getObjectContent() {
        return this.objectContent;
    }

    public ObjectMetadata getObjectMetadata() {
        return this.metadata;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setObjectContent(S3ObjectInputStream s3ObjectInputStream) {
        this.objectContent = s3ObjectInputStream;
    }

    public void setRedirectLocation(String str) {
    }

    public void setRequesterCharged(boolean z) {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("S3Object [key=");
        sb.append(getKey());
        sb.append(",bucket=");
        String str = this.bucketName;
        String str2 = str;
        if (str == null) {
            str2 = "<Unknown>";
        }
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }
}
