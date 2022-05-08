package com.apptentive.android.sdk.conversation;

import android.support.annotation.Nullable;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.ApptentiveInstance;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.module.metric.MetricModule;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/ConversationDispatchTask.class */
public abstract class ConversationDispatchTask extends DispatchTask {
    private final Apptentive.BooleanCallback callback;
    private final DispatchQueue callbackQueue;
    private String description;

    public ConversationDispatchTask() {
        this(null, null);
    }

    public ConversationDispatchTask(@Nullable Apptentive.BooleanCallback booleanCallback) {
        this(booleanCallback, null);
    }

    public ConversationDispatchTask(@Nullable Apptentive.BooleanCallback booleanCallback, @Nullable DispatchQueue dispatchQueue) {
        this.description = "dispatch task";
        this.callback = booleanCallback;
        this.callbackQueue = dispatchQueue;
    }

    private void executeGuarded() {
        ApptentiveInstance instance = ApptentiveInternal.getInstance();
        if (instance.isNull()) {
            ApptentiveLog.m411e(ApptentiveLogTag.CONVERSATION, "Unable to %s: Apptentive SDK is not initialized.", this.description);
            notifyFailure(null);
            return;
        }
        Conversation conversation = instance.getConversation();
        if (conversation == null) {
            ApptentiveLog.m411e(ApptentiveLogTag.CONVERSATION, "Unable to %s: no active conversation.", this.description);
            notifyFailure(null);
            return;
        }
        invokeCallback(execute(conversation));
    }

    private void invokeCallback(final boolean z) {
        if (this.callback != null) {
            try {
                if (this.callbackQueue != null) {
                    this.callbackQueue.dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.conversation.ConversationDispatchTask.1
                        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                        protected void execute() {
                            ConversationDispatchTask.this.callback.onFinish(z);
                        }
                    });
                } else {
                    this.callback.onFinish(z);
                }
            } catch (Exception e) {
                ApptentiveLog.m411e(ApptentiveLogTag.CONVERSATION, "Exception while invoking callback", new Object[0]);
            }
        }
    }

    private void notifyFailure(Throwable th) {
        try {
            if (th != null) {
                onExecuteError(th);
            } else {
                onExecuteFail();
            }
        } catch (Exception e) {
            ApptentiveLog.m411e(ApptentiveLogTag.CONVERSATION, "Exception while handling task failure", new Object[0]);
        }
    }

    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
    protected void execute() {
        try {
            executeGuarded();
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Exception while trying to %s", this.description);
            notifyFailure(e);
        }
    }

    protected abstract boolean execute(Conversation conversation);

    protected void onExecuteError(Throwable th) {
        onExecuteFail();
        MetricModule.sendError(th, null, null);
    }

    protected void onExecuteFail() {
        invokeCallback(false);
    }

    public ConversationDispatchTask setDescription(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Description is null or empty");
        }
        this.description = str;
        return this;
    }
}
