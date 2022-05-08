package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.event.ProgressListener;
import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.PersistableTransfer;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressListenerChain */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListenerChain.class */
public class S3ProgressListenerChain extends ProgressListenerChain implements S3ProgressListener {
    public S3ProgressListenerChain(ProgressListener... progressListenerArr) {
        super(progressListenerArr);
    }

    @Override // com.amazonaws.mobileconnectors.p016s3.transfermanager.internal.S3ProgressListener
    public void onPersistableTransfer(PersistableTransfer persistableTransfer) {
        for (ProgressListener progressListener : getListeners()) {
            if (progressListener instanceof S3ProgressListener) {
                ((S3ProgressListener) progressListener).onPersistableTransfer(persistableTransfer);
            }
        }
    }
}
