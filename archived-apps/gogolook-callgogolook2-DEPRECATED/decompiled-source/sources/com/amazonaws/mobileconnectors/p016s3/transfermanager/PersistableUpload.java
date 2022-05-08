package com.amazonaws.mobileconnectors.p016s3.transfermanager;
@Deprecated
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.PersistableUpload */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload.class */
public final class PersistableUpload extends PersistableTransfer {
    public final String multipartUploadId;

    public PersistableUpload(String str, String str2, String str3, String str4, long j, long j2) {
        this.multipartUploadId = str4;
    }

    public String getMultipartUploadId() {
        return this.multipartUploadId;
    }
}
