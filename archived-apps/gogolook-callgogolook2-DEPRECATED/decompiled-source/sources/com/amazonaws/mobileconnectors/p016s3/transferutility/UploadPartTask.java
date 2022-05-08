package com.amazonaws.mobileconnectors.p016s3.transferutility;

import android.util.Log;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.p017s3.AmazonS3;
import com.amazonaws.services.p017s3.model.UploadPartRequest;
import com.amazonaws.services.p017s3.model.UploadPartResult;
import java.util.concurrent.Callable;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.UploadPartTask */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask.class */
public class UploadPartTask implements Callable<Boolean> {
    public final TransferDBUtil dbUtil;
    public final UploadPartRequest request;

    /* renamed from: s3 */
    public final AmazonS3 f814s3;

    public UploadPartTask(UploadPartRequest uploadPartRequest, AmazonS3 amazonS3, TransferDBUtil transferDBUtil) {
        this.request = uploadPartRequest;
        this.f814s3 = amazonS3;
        this.dbUtil = transferDBUtil;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Boolean call() throws Exception {
        try {
            UploadPartResult uploadPart = this.f814s3.uploadPart(this.request);
            this.dbUtil.updateState(this.request.getId(), TransferState.PART_COMPLETED);
            this.dbUtil.updateETag(this.request.getId(), uploadPart.getETag());
            return true;
        } catch (Exception e) {
            this.dbUtil.updateState(this.request.getId(), TransferState.FAILED);
            if (RetryUtils.isInterrupted(e)) {
                return false;
            }
            Log.e("UploadPartTask", "Encountered error uploading part " + e.getMessage());
            throw e;
        }
    }
}
