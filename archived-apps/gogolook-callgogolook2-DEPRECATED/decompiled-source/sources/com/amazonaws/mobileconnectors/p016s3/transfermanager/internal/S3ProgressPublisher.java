package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.event.ProgressListener;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.PersistableTransfer;
import java.util.concurrent.Future;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressPublisher */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher.class */
public class S3ProgressPublisher extends ProgressListenerCallbackExecutor {
    public static Future<?> publishTransferPersistable(ProgressListener progressListener, final PersistableTransfer persistableTransfer) {
        if (persistableTransfer == null || !(progressListener instanceof S3ProgressListener)) {
            return null;
        }
        final S3ProgressListener s3ProgressListener = (S3ProgressListener) progressListener;
        return ProgressListenerCallbackExecutor.getExecutorService().submit(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressPublisher.1
            @Override // java.lang.Runnable
            public void run() {
                S3ProgressListener.this.onPersistableTransfer(persistableTransfer);
            }
        });
    }
}
