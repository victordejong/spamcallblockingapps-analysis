package com.amazonaws.mobileconnectors.p016s3.transferutility;

import android.util.Log;
import com.amazonaws.AmazonClientException;
import com.amazonaws.mobileconnectors.p016s3.transferutility.TransferService;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.p017s3.AmazonS3;
import com.amazonaws.services.p017s3.model.GetObjectRequest;
import com.amazonaws.services.p017s3.model.S3Object;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.DownloadTask */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/DownloadTask.class */
public class DownloadTask implements Callable<Boolean> {
    public final TransferRecord download;
    public final TransferService.NetworkInfoReceiver networkInfo;

    /* renamed from: s3 */
    public final AmazonS3 f811s3;
    public final TransferStatusUpdater updater;

    public DownloadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater, TransferService.NetworkInfoReceiver networkInfoReceiver) {
        this.download = transferRecord;
        this.f811s3 = amazonS3;
        this.updater = transferStatusUpdater;
        this.networkInfo = networkInfoReceiver;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Boolean call() throws Exception {
        if (!this.networkInfo.isNetworkConnected()) {
            this.updater.updateState(this.download.f812id, TransferState.WAITING_FOR_NETWORK);
            return false;
        }
        this.updater.updateState(this.download.f812id, TransferState.IN_PROGRESS);
        TransferRecord transferRecord = this.download;
        GetObjectRequest getObjectRequest = new GetObjectRequest(transferRecord.bucketName, transferRecord.key);
        TransferUtility.appendTransferServiceUserAgentString(getObjectRequest);
        File file = new File(this.download.file);
        long length = file.length();
        if (length > 0) {
            String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.download.f812id), Long.valueOf(length));
            getObjectRequest.setRange(length, -1L);
        }
        getObjectRequest.setGeneralProgressListener(this.updater.newProgressListener(this.download.f812id));
        try {
            S3Object object = this.f811s3.getObject(getObjectRequest);
            if (object == null) {
                this.updater.throwError(this.download.f812id, new IllegalStateException("AmazonS3.getObject returns null"));
                this.updater.updateState(this.download.f812id, TransferState.FAILED);
                return false;
            }
            long instanceLength = object.getObjectMetadata().getInstanceLength();
            this.updater.updateProgress(this.download.f812id, length, instanceLength);
            saveToFile(object.getObjectContent(), file);
            this.updater.updateProgress(this.download.f812id, instanceLength, instanceLength);
            this.updater.updateState(this.download.f812id, TransferState.COMPLETED);
            return true;
        } catch (Exception e) {
            if (RetryUtils.isInterrupted(e)) {
                String str = "Transfer " + this.download.f812id + " is interrupted by user";
            } else if (e.getCause() == null || !(e.getCause() instanceof IOException) || this.networkInfo.isNetworkConnected()) {
                Log.e("DownloadTask", "Failed to download: " + this.download.f812id + " due to " + e.getMessage());
                this.updater.throwError(this.download.f812id, e);
                this.updater.updateState(this.download.f812id, TransferState.FAILED);
            } else {
                String str2 = "Transfer " + this.download.f812id + " waits for network";
                this.updater.updateState(this.download.f812id, TransferState.WAITING_FOR_NETWORK);
            }
            return false;
        }
    }

    public final void saveToFile(InputStream inputStream, File file) {
        Throwable th;
        IOException e;
        BufferedOutputStream bufferedOutputStream;
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        boolean z = file.length() > 0;
        r7 = null;
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file, z));
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    bufferedOutputStream.write(bArr, 0, read);
                } else {
                    try {
                        break;
                    } catch (IOException e3) {
                    }
                }
            }
            bufferedOutputStream.close();
            try {
                inputStream.close();
            } catch (IOException e4) {
            }
        } catch (IOException e5) {
            e = e5;
            bufferedOutputStream2 = bufferedOutputStream;
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to store object contents to disk: ");
            sb.append(e.getMessage());
            throw new AmazonClientException(sb.toString(), e);
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream2 = bufferedOutputStream;
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (IOException e6) {
                }
            }
            try {
                inputStream.close();
            } catch (IOException e7) {
            }
            throw th;
        }
    }
}
