package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.event.ProgressListener;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.PersistableTransfer;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressListener */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener.class */
public interface S3ProgressListener extends ProgressListener {
    void onPersistableTransfer(PersistableTransfer persistableTransfer);
}
