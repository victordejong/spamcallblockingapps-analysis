package com.amazonaws.services.p017s3.model;

import com.amazonaws.services.p017s3.internal.SSEResultBase;
/* renamed from: com.amazonaws.services.s3.model.UploadPartResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/UploadPartResult.class */
public class UploadPartResult extends SSEResultBase {
    public String eTag;
    public int partNumber;

    public String getETag() {
        return this.eTag;
    }

    public PartETag getPartETag() {
        return new PartETag(this.partNumber, this.eTag);
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    public void setPartNumber(int i) {
        this.partNumber = i;
    }
}
