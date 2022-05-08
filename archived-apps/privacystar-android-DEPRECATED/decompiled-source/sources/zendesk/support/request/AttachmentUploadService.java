package zendesk.support.request;

import android.annotation.SuppressLint;
import android.net.Uri;
import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ErrorResponseAdapter;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import zendesk.belvedere.Belvedere;
import zendesk.belvedere.Callback;
import zendesk.belvedere.MediaResult;
import zendesk.support.Attachment;
import zendesk.support.UploadProvider;
import zendesk.support.UploadResponse;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentUploadService.class */
public class AttachmentUploadService {
    private final Belvedere belvedere;
    private final List<StateRequestAttachment> errorItems;
    private final List<StateRequestAttachment> itemsForUpload;
    private final List<StateRequestAttachment> processedItems;
    private List<ResolveCallback> resolveCallbacks;
    private ZendeskCallback<AttachmentUploadResult> resultListener;
    private final UploadProvider uploadProvider;
    private final Object lock = new Object();
    private String subDirectory = UtilsAttachment.getTemporaryRequestCacheDir();
    private final Map<Long, Long> localToRemoteMap = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentUploadService$AttachmentUploadResult.class */
    public static class AttachmentUploadResult {
        private final Map<Long, Long> localToRemoteIdMap;
        private final List<StateRequestAttachment> requestAttachments;

        AttachmentUploadResult(List<StateRequestAttachment> list, Map<Long, Long> map) {
            this.requestAttachments = list;
            this.localToRemoteIdMap = map;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Map<Long, Long> getLocalToRemoteIdMap() {
            return this.localToRemoteIdMap;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<StateRequestAttachment> getRequestAttachments() {
            return this.requestAttachments;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentUploadService$AttachmentsCallback.class */
    public class AttachmentsCallback extends ZendeskCallback<UploadResponse> {
        private final StateRequestAttachment requestAttachment;

        AttachmentsCallback(StateRequestAttachment stateRequestAttachment) {
            this.requestAttachment = stateRequestAttachment;
        }

        @Override // com.zendesk.service.ZendeskCallback
        public void onError(ErrorResponse errorResponse) {
            Logger.m289w("RequestActivity", "Error uploading file: %s | Error: %s", this.requestAttachment, errorResponse.getReason());
            AttachmentUploadService.this.errorUpload(this.requestAttachment);
        }

        public void onSuccess(UploadResponse uploadResponse) {
            Logger.m298d("RequestActivity", "Successfully uploaded file: %s | Result: %s", this.requestAttachment, uploadResponse);
            AttachmentUploadService.this.localToRemoteMap.put(Long.valueOf(this.requestAttachment.getId()), uploadResponse.getAttachment().getId());
            AttachmentUploadService.this.uploadSuccess(this.requestAttachment, uploadResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AttachmentUploadService$ResolveCallback.class */
    public class ResolveCallback extends Callback<List<MediaResult>> {
        private final StateRequestAttachment requestAttachment;

        private ResolveCallback(StateRequestAttachment stateRequestAttachment) {
            this.requestAttachment = stateRequestAttachment;
        }

        public void success(List<MediaResult> list) {
            Uri parsedLocalUri = this.requestAttachment.getParsedLocalUri();
            if (list.size() <= 0 || AttachmentUploadService.this.isUploadFinished()) {
                Logger.m289w("RequestActivity", "Unable to resolve attachment: %s", parsedLocalUri);
                AttachmentUploadService.this.errorUpload(this.requestAttachment);
                return;
            }
            Logger.m289w("RequestActivity", "Successfully resolved attachment: %s", parsedLocalUri);
            StateRequestAttachment updateRequestAttachment = AttachmentUploadService.this.updateRequestAttachment(this.requestAttachment, list.get(0));
            AttachmentUploadService.this.uploadProvider.uploadAttachment(updateRequestAttachment.getName(), updateRequestAttachment.getLocalFile(), updateRequestAttachment.getMimeType(), new AttachmentsCallback(updateRequestAttachment));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"UseSparseArrays"})
    public AttachmentUploadService(UploadProvider uploadProvider, Belvedere belvedere, List<StateRequestAttachment> list) {
        this.uploadProvider = uploadProvider;
        this.belvedere = belvedere;
        this.itemsForUpload = list;
        this.resolveCallbacks = new ArrayList(list.size());
        this.processedItems = new ArrayList(list.size());
        this.errorItems = new ArrayList(list.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void errorUpload(StateRequestAttachment stateRequestAttachment) {
        synchronized (this.lock) {
            this.errorItems.add(stateRequestAttachment);
        }
        notifyIfFinished();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUploadFinished() {
        boolean z;
        synchronized (this.lock) {
            boolean isNotEmpty = CollectionUtils.isNotEmpty(this.errorItems);
            z = false;
            boolean z2 = this.processedItems.size() == this.itemsForUpload.size();
            if (isNotEmpty || z2) {
                z = true;
            }
        }
        return z;
    }

    private void notifyIfFinished() {
        Logger.m298d("RequestActivity", "Notify if finished. Listener: %s, isUploadFinished: %s", this.resultListener, Boolean.valueOf(isUploadFinished()));
        if (isUploadFinished() && this.resultListener != null) {
            if (CollectionUtils.isEmpty(this.errorItems)) {
                this.resultListener.onSuccess(new AttachmentUploadResult(CollectionUtils.copyOf(this.processedItems), this.localToRemoteMap));
            } else {
                this.resultListener.onError(new ErrorResponseAdapter("Error uploading attachments."));
            }
            this.resultListener = null;
        }
    }

    private MediaResult renameFile(File file, long j) {
        MediaResult file2 = this.belvedere.getFile(UtilsAttachment.getAttachmentSubDir(this.subDirectory, j), file.getName());
        Logger.m298d("RequestActivity", "Rename local file: %s -> %s", file.getAbsolutePath(), file2.getFile().getAbsolutePath());
        return file.renameTo(file2.getFile()) ? file2 : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StateRequestAttachment updateRequestAttachment(StateRequestAttachment stateRequestAttachment, MediaResult mediaResult) {
        return stateRequestAttachment.newBuilder().setLocalFile(mediaResult.getFile()).setName(mediaResult.getName()).setMimeType(mediaResult.getMimeType()).setLocalUri(mediaResult.getUri().toString()).build();
    }

    private void uploadAttachment(StateRequestAttachment stateRequestAttachment) {
        Uri parsedLocalUri = stateRequestAttachment.getParsedLocalUri();
        if (parsedLocalUri == null || isUploadFinished()) {
            Logger.m289w("RequestActivity", "Unable to parse uri, skipping. | %s", stateRequestAttachment.getLocalUri());
            errorUpload(stateRequestAttachment);
            return;
        }
        ResolveCallback resolveCallback = new ResolveCallback(stateRequestAttachment);
        this.resolveCallbacks.add(resolveCallback);
        this.belvedere.resolveUris(Collections.singletonList(parsedLocalUri), this.subDirectory, resolveCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uploadSuccess(StateRequestAttachment stateRequestAttachment, UploadResponse uploadResponse) {
        String str;
        File file;
        Attachment attachment = uploadResponse.getAttachment();
        MediaResult renameFile = renameFile(stateRequestAttachment.getLocalFile(), attachment.getId().longValue());
        if (renameFile != null) {
            str = renameFile.getUri().toString();
            file = renameFile.getFile();
        } else {
            str = stateRequestAttachment.getLocalUri();
            file = stateRequestAttachment.getLocalFile();
        }
        StateRequestAttachment build = stateRequestAttachment.newBuilder().setLocalUri(str).setLocalFile(file).setToken(uploadResponse.getToken()).setUrl(attachment.getContentUrl()).setMimeType(attachment.getContentType()).setName(attachment.getFileName()).build();
        synchronized (this.lock) {
            this.processedItems.add(build);
        }
        notifyIfFinished();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setResultListener(ZendeskCallback<AttachmentUploadResult> zendeskCallback) {
        this.resultListener = zendeskCallback;
        notifyIfFinished();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void start(String str) {
        if (StringUtils.hasLength(str)) {
            this.subDirectory = UtilsAttachment.getCacheDirForRequestId(str);
        }
        Logger.m298d("RequestActivity", "Start uploading attachments", new Object[0]);
        for (StateRequestAttachment stateRequestAttachment : this.itemsForUpload) {
            uploadAttachment(stateRequestAttachment);
        }
    }
}
