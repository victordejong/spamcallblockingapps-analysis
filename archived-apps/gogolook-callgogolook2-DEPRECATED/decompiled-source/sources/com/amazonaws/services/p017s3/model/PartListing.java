package com.amazonaws.services.p017s3.model;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.PartListing */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/PartListing.class */
public class PartListing {
    public boolean isTruncated;
    public Integer nextPartNumberMarker;
    public List<PartSummary> parts;

    public Integer getNextPartNumberMarker() {
        return this.nextPartNumberMarker;
    }

    public List<PartSummary> getParts() {
        if (this.parts == null) {
            this.parts = new ArrayList();
        }
        return this.parts;
    }

    public boolean isTruncated() {
        return this.isTruncated;
    }

    public void setBucketName(String str) {
    }

    public void setEncodingType(String str) {
    }

    public void setInitiator(Owner owner) {
    }

    public void setKey(String str) {
    }

    public void setMaxParts(int i) {
    }

    public void setNextPartNumberMarker(int i) {
        this.nextPartNumberMarker = Integer.valueOf(i);
    }

    public void setOwner(Owner owner) {
    }

    public void setPartNumberMarker(int i) {
    }

    public void setStorageClass(String str) {
    }

    public void setTruncated(boolean z) {
        this.isTruncated = z;
    }

    public void setUploadId(String str) {
    }
}
