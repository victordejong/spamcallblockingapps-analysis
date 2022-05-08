package com.amazonaws.services.p017s3.model.transform;

import com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult;
/* renamed from: com.amazonaws.services.s3.model.transform.AbstractSSEHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/transform/AbstractSSEHandler.class */
public abstract class AbstractSSEHandler extends AbstractHandler implements ServerSideEncryptionResult {
    @Override // com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult
    public final void setSSEAlgorithm(String str) {
        ServerSideEncryptionResult sseResult = sseResult();
        if (sseResult != null) {
            sseResult.setSSEAlgorithm(str);
        }
    }

    @Override // com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult
    public final void setSSECustomerAlgorithm(String str) {
        ServerSideEncryptionResult sseResult = sseResult();
        if (sseResult != null) {
            sseResult.setSSECustomerAlgorithm(str);
        }
    }

    @Override // com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult
    public final void setSSECustomerKeyMd5(String str) {
        ServerSideEncryptionResult sseResult = sseResult();
        if (sseResult != null) {
            sseResult.setSSECustomerKeyMd5(str);
        }
    }

    @Override // com.amazonaws.services.p017s3.internal.ServerSideEncryptionResult
    public void setSSEKMSKeyId(String str) {
        ServerSideEncryptionResult sseResult = sseResult();
        if (sseResult != null) {
            sseResult.setSSEKMSKeyId(str);
        }
    }

    public abstract ServerSideEncryptionResult sseResult();
}
