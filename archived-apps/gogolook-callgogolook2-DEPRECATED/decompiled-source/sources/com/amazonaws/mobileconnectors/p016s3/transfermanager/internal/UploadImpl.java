package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.TransferProgress;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.Upload;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadImpl */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl.class */
public class UploadImpl extends AbstractTransfer implements Upload {
    public UploadImpl(String str, TransferProgress transferProgress, ProgressListenerChain progressListenerChain, TransferStateChangeListener transferStateChangeListener) {
        super(str, transferProgress, progressListenerChain, transferStateChangeListener);
    }
}
