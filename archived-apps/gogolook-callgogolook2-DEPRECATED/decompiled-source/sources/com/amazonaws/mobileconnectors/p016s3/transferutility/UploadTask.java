package com.amazonaws.mobileconnectors.p016s3.transferutility;

import android.util.Log;
import com.amazonaws.AmazonClientException;
import com.amazonaws.mobileconnectors.p016s3.transferutility.TransferService;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.p017s3.AmazonS3;
import com.amazonaws.services.p017s3.model.CannedAccessControlList;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.ObjectMetadata;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import com.amazonaws.services.p017s3.model.UploadPartRequest;
import com.amazonaws.services.p017s3.util.Mimetypes;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.UploadTask */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/UploadTask.class */
public class UploadTask implements Callable<Boolean> {
    public static final Map<String, CannedAccessControlList> cannedAclMap = new HashMap();
    public final TransferDBUtil dbUtil;
    public final TransferService.NetworkInfoReceiver networkInfo;

    /* renamed from: s3 */
    public final AmazonS3 f815s3;
    public final TransferStatusUpdater updater;
    public final TransferRecord upload;

    static {
        CannedAccessControlList[] values;
        for (CannedAccessControlList cannedAccessControlList : CannedAccessControlList.values()) {
            cannedAclMap.put(cannedAccessControlList.toString(), cannedAccessControlList);
        }
    }

    public UploadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater, TransferService.NetworkInfoReceiver networkInfoReceiver) {
        this.upload = transferRecord;
        this.f815s3 = amazonS3;
        this.dbUtil = transferDBUtil;
        this.updater = transferStatusUpdater;
        this.networkInfo = networkInfoReceiver;
    }

    public static CannedAccessControlList getCannedAclFromString(String str) {
        return str == null ? null : cannedAclMap.get(str);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Boolean call() throws Exception {
        if (!this.networkInfo.isNetworkConnected()) {
            this.updater.updateState(this.upload.f812id, TransferState.WAITING_FOR_NETWORK);
            return false;
        }
        this.updater.updateState(this.upload.f812id, TransferState.IN_PROGRESS);
        TransferRecord transferRecord = this.upload;
        if (transferRecord.isMultipart == 1 && transferRecord.partNumber == 0) {
            return uploadMultipartAndWaitForCompletion();
        }
        if (this.upload.isMultipart == 0) {
            return uploadSinglePartAndWaitForCompletion();
        }
        return false;
    }

    public final void completeMultiPartUpload(int i, String str, String str2, String str3) throws AmazonClientException {
        CompleteMultipartUploadRequest completeMultipartUploadRequest = new CompleteMultipartUploadRequest(str, str2, str3, this.dbUtil.queryPartETagsOfUpload(i));
        TransferUtility.appendMultipartTransferServiceUserAgentString(completeMultipartUploadRequest);
        this.f815s3.completeMultipartUpload(completeMultipartUploadRequest);
    }

    public final PutObjectRequest createPutObjectRequest(TransferRecord transferRecord) {
        File file = new File(transferRecord.file);
        PutObjectRequest putObjectRequest = new PutObjectRequest(transferRecord.bucketName, transferRecord.key, file);
        ObjectMetadata objectMetadata = new ObjectMetadata();
        objectMetadata.setContentLength(file.length());
        String str = transferRecord.headerCacheControl;
        if (str != null) {
            objectMetadata.setCacheControl(str);
        }
        String str2 = transferRecord.headerContentDisposition;
        if (str2 != null) {
            objectMetadata.setContentDisposition(str2);
        }
        String str3 = transferRecord.headerContentEncoding;
        if (str3 != null) {
            objectMetadata.setContentEncoding(str3);
        }
        String str4 = transferRecord.headerContentType;
        if (str4 != null) {
            objectMetadata.setContentType(str4);
        } else {
            objectMetadata.setContentType(Mimetypes.getInstance().getMimetype(file));
        }
        String str5 = transferRecord.expirationTimeRuleId;
        if (str5 != null) {
            objectMetadata.setExpirationTimeRuleId(str5);
        }
        String str6 = transferRecord.httpExpires;
        if (str6 != null) {
            objectMetadata.setHttpExpiresDate(new Date(Long.valueOf(str6).longValue()));
        }
        String str7 = transferRecord.sseAlgorithm;
        if (str7 != null) {
            objectMetadata.setSSEAlgorithm(str7);
        }
        Map<String, String> map = transferRecord.userMetadata;
        if (map != null) {
            objectMetadata.setUserMetadata(map);
        }
        String str8 = transferRecord.md5;
        if (str8 != null) {
            objectMetadata.setContentMD5(str8);
        }
        putObjectRequest.setMetadata(objectMetadata);
        putObjectRequest.setCannedAcl(getCannedAclFromString(transferRecord.cannedAcl));
        return putObjectRequest;
    }

    public final String initiateMultipartUpload(PutObjectRequest putObjectRequest) throws AmazonClientException {
        InitiateMultipartUploadRequest initiateMultipartUploadRequest = new InitiateMultipartUploadRequest(putObjectRequest.getBucketName(), putObjectRequest.getKey());
        initiateMultipartUploadRequest.withCannedACL(putObjectRequest.getCannedAcl());
        initiateMultipartUploadRequest.withObjectMetadata(putObjectRequest.getMetadata());
        TransferUtility.appendMultipartTransferServiceUserAgentString(initiateMultipartUploadRequest);
        return this.f815s3.initiateMultipartUpload(initiateMultipartUploadRequest).getUploadId();
    }

    public final Boolean uploadMultipartAndWaitForCompletion() throws ExecutionException {
        long j;
        String str = this.upload.multipartId;
        if (str == null || str.isEmpty()) {
            PutObjectRequest createPutObjectRequest = createPutObjectRequest(this.upload);
            TransferUtility.appendMultipartTransferServiceUserAgentString(createPutObjectRequest);
            try {
                this.upload.multipartId = initiateMultipartUpload(createPutObjectRequest);
                TransferDBUtil transferDBUtil = this.dbUtil;
                TransferRecord transferRecord = this.upload;
                transferDBUtil.updateMultipartId(transferRecord.f812id, transferRecord.multipartId);
                j = 0;
            } catch (AmazonClientException e) {
                Log.e("UploadTask", "Error initiating multipart upload: " + this.upload.f812id + " due to " + e.getMessage());
                this.updater.throwError(this.upload.f812id, e);
                this.updater.updateState(this.upload.f812id, TransferState.FAILED);
                return false;
            }
        } else {
            j = this.dbUtil.queryBytesTransferredByMainUploadId(this.upload.f812id);
            if (j > 0) {
                String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.upload.f812id), Long.valueOf(j));
            }
        }
        TransferStatusUpdater transferStatusUpdater = this.updater;
        TransferRecord transferRecord2 = this.upload;
        transferStatusUpdater.updateProgress(transferRecord2.f812id, j, transferRecord2.bytesTotal);
        TransferDBUtil transferDBUtil2 = this.dbUtil;
        TransferRecord transferRecord3 = this.upload;
        List<UploadPartRequest> nonCompletedPartRequestsFromDB = transferDBUtil2.getNonCompletedPartRequestsFromDB(transferRecord3.f812id, transferRecord3.multipartId);
        String str2 = "multipart upload " + this.upload.f812id + " in " + nonCompletedPartRequestsFromDB.size() + " parts.";
        ArrayList arrayList = new ArrayList();
        for (UploadPartRequest uploadPartRequest : nonCompletedPartRequestsFromDB) {
            TransferUtility.appendMultipartTransferServiceUserAgentString(uploadPartRequest);
            uploadPartRequest.setGeneralProgressListener(this.updater.newProgressListener(this.upload.f812id));
            arrayList.add(TransferThreadPool.submitTask(new UploadPartTask(uploadPartRequest, this.f815s3, this.dbUtil)));
        }
        try {
            Iterator it = arrayList.iterator();
            boolean z = true;
            while (it.hasNext()) {
                z &= ((Boolean) ((Future) it.next()).get()).booleanValue();
            }
            if (!z) {
                return false;
            }
            try {
                completeMultiPartUpload(this.upload.f812id, this.upload.bucketName, this.upload.key, this.upload.multipartId);
                this.updater.updateProgress(this.upload.f812id, this.upload.bytesTotal, this.upload.bytesTotal);
                this.updater.updateState(this.upload.f812id, TransferState.COMPLETED);
                return true;
            } catch (AmazonClientException e2) {
                Log.e("UploadTask", "Failed to complete multipart: " + this.upload.f812id + " due to " + e2.getMessage());
                this.updater.throwError(this.upload.f812id, e2);
                this.updater.updateState(this.upload.f812id, TransferState.FAILED);
                return false;
            }
        } catch (InterruptedException e3) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((Future) it2.next()).cancel(true);
            }
            String str3 = "Transfer " + this.upload.f812id + " is interrupted by user";
            return false;
        } catch (ExecutionException e4) {
            if (e4.getCause() != null && (e4.getCause() instanceof Exception)) {
                Exception exc = (Exception) e4.getCause();
                if (RetryUtils.isInterrupted(exc)) {
                    String str4 = "Transfer " + this.upload.f812id + " is interrupted by user";
                    return false;
                }
                if (exc.getCause() != null && (exc.getCause() instanceof IOException) && !this.networkInfo.isNetworkConnected()) {
                    String str5 = "Transfer " + this.upload.f812id + " waits for network";
                    this.updater.updateState(this.upload.f812id, TransferState.WAITING_FOR_NETWORK);
                }
                this.updater.throwError(this.upload.f812id, exc);
            }
            this.updater.updateState(this.upload.f812id, TransferState.FAILED);
            return false;
        }
    }

    public final Boolean uploadSinglePartAndWaitForCompletion() {
        PutObjectRequest createPutObjectRequest = createPutObjectRequest(this.upload);
        long length = createPutObjectRequest.getFile().length();
        TransferUtility.appendTransferServiceUserAgentString(createPutObjectRequest);
        this.updater.updateProgress(this.upload.f812id, 0L, length);
        createPutObjectRequest.setGeneralProgressListener(this.updater.newProgressListener(this.upload.f812id));
        try {
            this.f815s3.putObject(createPutObjectRequest);
            this.updater.updateProgress(this.upload.f812id, length, length);
            this.updater.updateState(this.upload.f812id, TransferState.COMPLETED);
            return true;
        } catch (Exception e) {
            if (RetryUtils.isInterrupted(e)) {
                String str = "Transfer " + this.upload.f812id + " is interrupted by user";
                return false;
            }
            if (e.getCause() != null && (e.getCause() instanceof IOException) && !this.networkInfo.isNetworkConnected()) {
                String str2 = "Transfer " + this.upload.f812id + " waits for network";
                this.updater.updateState(this.upload.f812id, TransferState.WAITING_FOR_NETWORK);
            }
            Log.e("UploadTask", "Failed to upload: " + this.upload.f812id + " due to " + e.getMessage());
            this.updater.throwError(this.upload.f812id, e);
            this.updater.updateState(this.upload.f812id, TransferState.FAILED);
            return false;
        }
    }
}
