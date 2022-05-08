package com.amazonaws.services.p017s3.model;

import com.amazonaws.services.p017s3.internal.ObjectExpirationResult;
import com.amazonaws.services.p017s3.internal.SSEResultBase;
import java.util.Date;
/* renamed from: com.amazonaws.services.s3.model.PutObjectResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/PutObjectResult.class */
public class PutObjectResult extends SSEResultBase implements ObjectExpirationResult {
    public String eTag;
    public String versionId;

    public String getETag() {
        return this.eTag;
    }

    public String getVersionId() {
        return this.versionId;
    }

    public void setContentMd5(String str) {
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    @Override // com.amazonaws.services.p017s3.internal.ObjectExpirationResult
    public void setExpirationTime(Date date) {
    }

    @Override // com.amazonaws.services.p017s3.internal.ObjectExpirationResult
    public void setExpirationTimeRuleId(String str) {
    }

    public void setVersionId(String str) {
        this.versionId = str;
    }
}
