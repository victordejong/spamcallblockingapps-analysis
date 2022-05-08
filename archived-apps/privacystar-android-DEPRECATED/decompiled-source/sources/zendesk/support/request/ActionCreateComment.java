package zendesk.support.request;

import com.zendesk.logger.Logger;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import zendesk.suas.Dispatcher;
import zendesk.suas.GetState;
import zendesk.support.Comment;
import zendesk.support.CreateRequest;
import zendesk.support.EndUserComment;
import zendesk.support.Request;
import zendesk.support.RequestProvider;
import zendesk.support.request.AsyncMiddleware;
import zendesk.support.request.AttachmentUploadService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ActionCreateComment.class */
public class ActionCreateComment implements AsyncMiddleware.AsyncAction {

    /* renamed from: af */
    private final ActionFactory f1861af;
    private ZendeskCallback<AttachmentUploadService.AttachmentUploadResult> attachmentCallback;
    private final AttachmentUploadService attachmentUploader;
    private final StateMessage message;
    private final RequestProvider requestProvider;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ActionCreateComment$CreateCommentResult.class */
    public static class CreateCommentResult {
        private final long commentRemoteId;
        private final AttachmentUploadService.AttachmentUploadResult localToRemoteAttachments;
        private final StateMessage message;
        private final String requestId;

        CreateCommentResult(StateMessage stateMessage, String str, long j, AttachmentUploadService.AttachmentUploadResult attachmentUploadResult) {
            this.message = stateMessage;
            this.requestId = str;
            this.commentRemoteId = j;
            this.localToRemoteAttachments = attachmentUploadResult;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public long getCommentRemoteId() {
            return this.commentRemoteId;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AttachmentUploadService.AttachmentUploadResult getLocalToRemoteAttachments() {
            return this.localToRemoteAttachments;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public StateMessage getMessage() {
            return this.message;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getRequestId() {
            return this.requestId;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActionCreateComment(ActionFactory actionFactory, RequestProvider requestProvider, AttachmentUploadService attachmentUploadService, StateMessage stateMessage) {
        this.f1861af = actionFactory;
        this.requestProvider = requestProvider;
        this.message = stateMessage;
        this.attachmentUploader = attachmentUploadService;
    }

    private void addComment(final AsyncMiddleware.Callback callback, final Dispatcher dispatcher, final StateConversation stateConversation, final AttachmentUploadService.AttachmentUploadResult attachmentUploadResult) {
        EndUserComment endUserComment = new EndUserComment();
        endUserComment.setValue(this.message.getBody());
        endUserComment.setAttachments(getAttachmentToken(attachmentUploadResult.getRequestAttachments()));
        final String remoteId = stateConversation.getRemoteId();
        this.requestProvider.addComment(remoteId, endUserComment, new ZendeskCallback<Comment>() { // from class: zendesk.support.request.ActionCreateComment.2
            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                Logger.m289w("RequestActivity", "Unable to add comment to request. Error: '%s'. Message Id: %d", errorResponse.getReason(), Long.valueOf(ActionCreateComment.this.message.getId()));
                if (errorResponse.isHTTPError() && errorResponse.getStatus() == 422) {
                    Logger.m289w("RequestActivity", "This request (%s) is closed. Error: '%s'. Message Id: %d", remoteId, errorResponse.getReason(), Long.valueOf(ActionCreateComment.this.message.getId()));
                    dispatcher.dispatch(ActionCreateComment.this.f1861af.requestClosed());
                }
                dispatcher.dispatch(ActionCreateComment.this.f1861af.createCommentError(errorResponse, ActionCreateComment.this.message.withError(errorResponse)));
                callback.done();
            }

            public void onSuccess(Comment comment) {
                dispatcher.dispatch(ActionCreateComment.this.f1861af.createCommentSuccess(new CreateCommentResult(ActionCreateComment.this.message.withAttachments(attachmentUploadResult.getRequestAttachments()).withDelivered(), remoteId, comment.getId().longValue(), attachmentUploadResult)));
                ActionCreateComment.this.requestProvider.markRequestAsRead(remoteId, stateConversation.getMessageIdMapper().getRemoteIds().size());
                callback.done();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createMessage(StateConversation stateConversation, StateConfig stateConfig, Dispatcher dispatcher, AsyncMiddleware.Callback callback, AttachmentUploadService.AttachmentUploadResult attachmentUploadResult) {
        if (StringUtils.hasLength(stateConversation.getRemoteId())) {
            Logger.m298d("RequestActivity", "Adding a comment to an existing request. Message Id %s", Long.valueOf(this.message.getId()));
            addComment(callback, dispatcher, stateConversation, attachmentUploadResult);
            return;
        }
        Logger.m298d("RequestActivity", "Creating a new request. Message Id %s", Long.valueOf(this.message.getId()));
        createRequest(callback, dispatcher, attachmentUploadResult, stateConfig);
    }

    private void createRequest(final AsyncMiddleware.Callback callback, final Dispatcher dispatcher, final AttachmentUploadService.AttachmentUploadResult attachmentUploadResult, StateConfig stateConfig) {
        CreateRequest createRequest = new CreateRequest();
        createRequest.setDescription(this.message.getBody());
        createRequest.setAttachments(getAttachmentToken(attachmentUploadResult.getRequestAttachments()));
        if (CollectionUtils.isNotEmpty(stateConfig.getTags())) {
            createRequest.setTags(stateConfig.getTags());
        }
        if (StringUtils.hasLength(stateConfig.getSubject())) {
            createRequest.setSubject(stateConfig.getSubject());
        }
        if (stateConfig.getTicketForm() != null) {
            if (stateConfig.getTicketForm().getId() != -1) {
                createRequest.setTicketFormId(Long.valueOf(stateConfig.getTicketForm().getId()));
            }
            createRequest.setCustomFields(stateConfig.getTicketForm().getTicketFieldsForApi());
        }
        this.requestProvider.createRequest(createRequest, new ZendeskCallback<Request>() { // from class: zendesk.support.request.ActionCreateComment.3
            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                dispatcher.dispatch(ActionCreateComment.this.f1861af.createRequestError(errorResponse, ActionCreateComment.this.message.withError(errorResponse)));
                callback.done();
            }

            public void onSuccess(Request request) {
                dispatcher.dispatch(ActionCreateComment.this.f1861af.createRequestSuccess(new CreateCommentResult(ActionCreateComment.this.message.withAttachments(attachmentUploadResult.getRequestAttachments()).withDelivered(), request.getId(), request.getLastComment().getId().longValue(), attachmentUploadResult)));
                callback.done();
                if (request.getId() != null) {
                    ActionCreateComment.this.requestProvider.markRequestAsRead(request.getId(), 1);
                }
            }
        });
    }

    private List<String> getAttachmentToken(List<StateRequestAttachment> list) {
        ArrayList arrayList = new ArrayList();
        for (StateRequestAttachment stateRequestAttachment : list) {
            arrayList.add(stateRequestAttachment.getToken());
        }
        return arrayList;
    }

    private void waitForAttachments(final Dispatcher dispatcher, GetState getState, final AsyncMiddleware.Callback callback) {
        final StateConversation fromState = StateConversation.fromState(getState.getState());
        final StateConfig fromState2 = StateConfig.fromState(getState.getState());
        Logger.m298d("RequestActivity", "Waiting for attachments to be uploaded. Message Id: %s", Long.valueOf(this.message.getId()));
        this.attachmentCallback = new ZendeskCallback<AttachmentUploadService.AttachmentUploadResult>() { // from class: zendesk.support.request.ActionCreateComment.1
            @Override // com.zendesk.service.ZendeskCallback
            public void onError(ErrorResponse errorResponse) {
                Logger.m289w("RequestActivity", "Attachment upload error. '%s'. Message Id: %s", errorResponse.getReason(), Long.valueOf(ActionCreateComment.this.message.getId()));
                StateMessage withError = ActionCreateComment.this.message.withError(errorResponse);
                if (StringUtils.hasLength(fromState.getRemoteId())) {
                    dispatcher.dispatch(ActionCreateComment.this.f1861af.createCommentError(errorResponse, withError));
                } else {
                    dispatcher.dispatch(ActionCreateComment.this.f1861af.createRequestError(errorResponse, withError));
                }
                callback.done();
            }

            public void onSuccess(AttachmentUploadService.AttachmentUploadResult attachmentUploadResult) {
                Logger.m298d("RequestActivity", "Attachments resolved and uploaded. Message Id: %s", Long.valueOf(ActionCreateComment.this.message.getId()));
                ActionCreateComment.this.createMessage(fromState, fromState2, dispatcher, callback, attachmentUploadResult);
            }
        };
        this.attachmentUploader.setResultListener(this.attachmentCallback);
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void actionQueued(Dispatcher dispatcher, GetState getState) {
        List<StateRequestAttachment> attachments = this.message.getAttachments();
        String localId = StateConversation.fromState(getState.getState()).getLocalId();
        if (CollectionUtils.isNotEmpty(attachments)) {
            Logger.m298d("RequestActivity", "Start uploading %d attachments. Message Id: %s", Integer.valueOf(attachments.size()), Long.valueOf(this.message.getId()));
            this.attachmentUploader.start(localId);
        }
        dispatcher.dispatch(this.f1861af.createComment(this.message.withPending()));
    }

    @Override // zendesk.support.request.AsyncMiddleware.AsyncAction
    public void execute(Dispatcher dispatcher, GetState getState, AsyncMiddleware.Callback callback) {
        waitForAttachments(dispatcher, getState, callback);
    }
}
