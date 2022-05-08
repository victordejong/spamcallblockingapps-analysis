package com.amazonaws.services.p017s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.CompleteMultipartUploadRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/CompleteMultipartUploadRequest.class */
public class CompleteMultipartUploadRequest extends AmazonWebServiceRequest {
    public String bucketName;
    public String key;
    public List<PartETag> partETags;
    public String uploadId;

    public CompleteMultipartUploadRequest(String str, String str2, String str3, List<PartETag> list) {
        this.partETags = new ArrayList();
        this.bucketName = str;
        this.key = str2;
        this.uploadId = str3;
        this.partETags = list;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getKey() {
        return this.key;
    }

    public List<PartETag> getPartETags() {
        return this.partETags;
    }

    public String getUploadId() {
        return this.uploadId;
    }
}
