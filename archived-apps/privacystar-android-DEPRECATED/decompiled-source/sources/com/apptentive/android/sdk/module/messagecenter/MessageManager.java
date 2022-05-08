package com.apptentive.android.sdk.module.messagecenter;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.support.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.ApptentiveNotifications;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.model.ApptentiveMessage;
import com.apptentive.android.sdk.model.CompoundMessage;
import com.apptentive.android.sdk.model.PayloadData;
import com.apptentive.android.sdk.model.PayloadType;
import com.apptentive.android.sdk.module.messagecenter.model.ApptentiveToastNotification;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterListItem;
import com.apptentive.android.sdk.module.messagecenter.model.MessageFactory;
import com.apptentive.android.sdk.module.metric.MetricModule;
import com.apptentive.android.sdk.network.HttpJsonRequest;
import com.apptentive.android.sdk.network.HttpRequest;
import com.apptentive.android.sdk.notifications.ApptentiveNotification;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver;
import com.apptentive.android.sdk.storage.MessageStore;
import com.apptentive.android.sdk.util.Destroyable;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.privacystar.core.data.sqlite.p008db.messages.MessagesContract;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/MessageManager.class */
public class MessageManager implements Destroyable, ApptentiveNotificationObserver {
    public static int SEND_PAUSE_REASON_ACTIVITY_PAUSE = 0;
    public static int SEND_PAUSE_REASON_NETWORK = 1;
    public static int SEND_PAUSE_REASON_SERVER = 2;
    private static int TOAST_TYPE_UNREAD_MESSAGE = 1;
    private WeakReference<AfterSendMessageListener> afterSendMessageListener;
    private final AtomicBoolean appInForeground;
    private final Conversation conversation;
    private WeakReference<Activity> currentForegroundApptentiveActivity;
    private final MessageCountDispatchTask hostMessageNotifierTask;
    private final List<WeakReference<UnreadMessagesListener>> hostUnreadMessagesListeners;
    private final List<WeakReference<OnNewIncomingMessagesListener>> internalNewMessagesListeners;
    private final MessageStore messageStore;
    private final MessagePollingWorker pollingWorker;
    private final MessageDispatchTask toastMessageNotifierTask;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/MessageManager$AfterSendMessageListener.class */
    public interface AfterSendMessageListener {
        void onMessageSent(int i, ApptentiveMessage apptentiveMessage);

        void onPauseSending(int i);

        void onResumeSending();
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/MessageManager$MessageCountDispatchTask.class */
    private static abstract class MessageCountDispatchTask extends DispatchTask {
        private int messageCount;

        private MessageCountDispatchTask() {
        }

        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
        protected void execute() {
            execute(this.messageCount);
        }

        protected abstract void execute(int i);

        MessageCountDispatchTask setMessageCount(int i) {
            this.messageCount = i;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/MessageManager$MessageDispatchTask.class */
    private static abstract class MessageDispatchTask extends DispatchTask {
        private CompoundMessage message;

        private MessageDispatchTask() {
        }

        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
        protected void execute() {
            try {
                execute(this.message);
            } finally {
                this.message = null;
            }
        }

        protected abstract void execute(CompoundMessage compoundMessage);

        MessageDispatchTask setMessage(CompoundMessage compoundMessage) {
            this.message = compoundMessage;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/MessageManager$MessageFetchListener.class */
    public interface MessageFetchListener {
        void onFetchFinish(MessageManager messageManager, List<ApptentiveMessage> list);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/MessageManager$MessageStoreObserver.class */
    private static class MessageStoreObserver implements MessageStore {
        private final MessageStore target;

        private MessageStoreObserver(MessageStore messageStore) {
            if (messageStore == null) {
                throw new IllegalArgumentException("Target is null");
            }
            this.target = messageStore;
        }

        private void notifyChanged() {
            ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_MESSAGE_STORE_DID_CHANGE, ApptentiveNotifications.NOTIFICATION_KEY_MESSAGE_STORE, this);
        }

        @Override // com.apptentive.android.sdk.storage.MessageStore
        public void addOrUpdateMessages(ApptentiveMessage... apptentiveMessageArr) {
            this.target.addOrUpdateMessages(apptentiveMessageArr);
            notifyChanged();
        }

        @Override // com.apptentive.android.sdk.storage.MessageStore
        public void deleteAllMessages() {
            this.target.deleteAllMessages();
            notifyChanged();
        }

        @Override // com.apptentive.android.sdk.storage.MessageStore
        public void deleteMessage(String str) {
            this.target.deleteMessage(str);
            notifyChanged();
        }

        @Override // com.apptentive.android.sdk.storage.MessageStore
        public ApptentiveMessage findMessage(String str) {
            return this.target.findMessage(str);
        }

        @Override // com.apptentive.android.sdk.storage.MessageStore
        public List<ApptentiveMessage> getAllMessages() throws Exception {
            return this.target.getAllMessages();
        }

        @Override // com.apptentive.android.sdk.storage.MessageStore
        public String getLastReceivedMessageId() throws Exception {
            return this.target.getLastReceivedMessageId();
        }

        @Override // com.apptentive.android.sdk.storage.MessageStore
        public int getUnreadMessageCount() throws Exception {
            return this.target.getUnreadMessageCount();
        }

        @Override // com.apptentive.android.sdk.storage.MessageStore
        public void updateMessage(ApptentiveMessage apptentiveMessage) {
            this.target.updateMessage(apptentiveMessage);
            notifyChanged();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/MessageManager$OnNewIncomingMessagesListener.class */
    public interface OnNewIncomingMessagesListener {
        void onNewMessageReceived(CompoundMessage compoundMessage);
    }

    protected MessageManager() {
        this.internalNewMessagesListeners = new ArrayList();
        this.hostUnreadMessagesListeners = new ArrayList();
        this.appInForeground = new AtomicBoolean(false);
        this.toastMessageNotifierTask = new MessageDispatchTask() { // from class: com.apptentive.android.sdk.module.messagecenter.MessageManager.1
            @Override // com.apptentive.android.sdk.module.messagecenter.MessageManager.MessageDispatchTask
            protected void execute(CompoundMessage compoundMessage) {
                MessageManager.this.showUnreadMessageToastNotification(compoundMessage);
            }
        };
        this.hostMessageNotifierTask = new MessageCountDispatchTask() { // from class: com.apptentive.android.sdk.module.messagecenter.MessageManager.2
            @Override // com.apptentive.android.sdk.module.messagecenter.MessageManager.MessageCountDispatchTask
            protected void execute(int i) {
                MessageManager.this.notifyHostUnreadMessagesListeners(i);
            }
        };
        this.conversation = null;
        this.messageStore = null;
        this.pollingWorker = null;
    }

    public MessageManager(Conversation conversation, MessageStore messageStore) {
        this.internalNewMessagesListeners = new ArrayList();
        this.hostUnreadMessagesListeners = new ArrayList();
        this.appInForeground = new AtomicBoolean(false);
        this.toastMessageNotifierTask = new MessageDispatchTask() { // from class: com.apptentive.android.sdk.module.messagecenter.MessageManager.1
            @Override // com.apptentive.android.sdk.module.messagecenter.MessageManager.MessageDispatchTask
            protected void execute(CompoundMessage compoundMessage) {
                MessageManager.this.showUnreadMessageToastNotification(compoundMessage);
            }
        };
        this.hostMessageNotifierTask = new MessageCountDispatchTask() { // from class: com.apptentive.android.sdk.module.messagecenter.MessageManager.2
            @Override // com.apptentive.android.sdk.module.messagecenter.MessageManager.MessageCountDispatchTask
            protected void execute(int i) {
                MessageManager.this.notifyHostUnreadMessagesListeners(i);
            }
        };
        if (conversation == null) {
            throw new IllegalArgumentException("Conversation is null");
        } else if (messageStore == null) {
            throw new IllegalArgumentException("Message store is null");
        } else {
            this.conversation = conversation;
            this.messageStore = new MessageStoreObserver(messageStore);
            this.pollingWorker = new MessagePollingWorker(this);
            registerNotifications();
        }
    }

    private void appWentToBackground() {
        this.appInForeground.set(false);
        this.pollingWorker.appWentToBackground();
    }

    private void appWentToForeground() {
        this.appInForeground.set(true);
        if (this.conversation.isMessageCenterFeatureUsed()) {
            this.pollingWorker.appWentToForeground();
        }
    }

    private void clearHostUnreadMessagesListeners() {
        this.hostUnreadMessagesListeners.clear();
    }

    private HttpJsonRequest fetchMessages(String str, final MessageFetchListener messageFetchListener) {
        ApptentiveLog.m403v(ApptentiveLogTag.MESSAGES, "Fetching messages newer than: %s", str == null ? "0" : str);
        HttpJsonRequest createFetchMessagesRequest = ApptentiveInternal.getInstance().getApptentiveHttpClient().createFetchMessagesRequest(this.conversation.getConversationToken(), this.conversation.getConversationId(), str, null, null, new HttpRequest.Listener<HttpJsonRequest>() { // from class: com.apptentive.android.sdk.module.messagecenter.MessageManager.4
            private void notifyFinished(MessageFetchListener messageFetchListener2, List<ApptentiveMessage> list) {
                if (messageFetchListener2 != null) {
                    messageFetchListener2.onFetchFinish(MessageManager.this, list);
                }
            }

            public void onCancel(HttpJsonRequest httpJsonRequest) {
            }

            public void onFail(HttpJsonRequest httpJsonRequest, String str2) {
                ApptentiveLog.m411e(ApptentiveLogTag.MESSAGES, "Error while fetching messages: %s", str2);
                notifyFinished(messageFetchListener, null);
            }

            public void onFinish(HttpJsonRequest httpJsonRequest) {
                try {
                    notifyFinished(messageFetchListener, MessageManager.this.parseMessages(httpJsonRequest.getResponseObject()));
                } catch (Exception e) {
                    ApptentiveLog.m410e(ApptentiveLogTag.MESSAGES, e, "Exception while parsing messages", new Object[0]);
                    notifyFinished(messageFetchListener, null);
                }
            }
        });
        createFetchMessagesRequest.setCallbackQueue(ApptentiveHelper.conversationQueue());
        createFetchMessagesRequest.start();
        return createFetchMessagesRequest;
    }

    private boolean isMessageCenterInForeground() {
        return this.pollingWorker.isMessageCenterInForeground();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyInternalNewMessagesListeners(CompoundMessage compoundMessage) {
        for (WeakReference<OnNewIncomingMessagesListener> weakReference : this.internalNewMessagesListeners) {
            OnNewIncomingMessagesListener onNewIncomingMessagesListener = weakReference.get();
            if (onNewIncomingMessagesListener != null) {
                onNewIncomingMessagesListener.onNewMessageReceived(compoundMessage);
            }
        }
    }

    private void registerNotifications() {
        ApptentiveNotificationCenter.defaultCenter().addObserver(ApptentiveNotifications.NOTIFICATION_ACTIVITY_STARTED, this).addObserver(ApptentiveNotifications.NOTIFICATION_ACTIVITY_RESUMED, this).addObserver(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_FOREGROUND, this).addObserver(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_BACKGROUND, this).addObserver(ApptentiveNotifications.NOTIFICATION_PAYLOAD_WILL_START_SEND, this).addObserver(ApptentiveNotifications.NOTIFICATION_PAYLOAD_DID_FINISH_SEND, this);
    }

    private void setCurrentForegroundActivity(Activity activity) {
        if (activity != null) {
            this.currentForegroundApptentiveActivity = new WeakReference<>(activity);
            return;
        }
        ApptentiveToastNotificationManager instance = ApptentiveToastNotificationManager.getInstance(null, false);
        if (instance != null) {
            instance.cleanUp();
        }
        this.currentForegroundApptentiveActivity = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUnreadMessageToastNotification(final CompoundMessage compoundMessage) {
        final Activity activity;
        if (this.currentForegroundApptentiveActivity != null && this.currentForegroundApptentiveActivity.get() != null && (activity = this.currentForegroundApptentiveActivity.get()) != null) {
            ApptentiveHelper.dispatchOnConversationQueue(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.module.messagecenter.MessageManager.6
                @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                protected boolean execute(Conversation conversation) {
                    PendingIntent prepareMessageCenterPendingIntent = ApptentiveInternal.prepareMessageCenterPendingIntent(activity.getApplicationContext(), conversation);
                    if (prepareMessageCenterPendingIntent == null) {
                        return true;
                    }
                    final ApptentiveToastNotificationManager instance = ApptentiveToastNotificationManager.getInstance(activity, true);
                    final ApptentiveToastNotification.Builder builder = new ApptentiveToastNotification.Builder(activity);
                    builder.setContentTitle((CharSequence) activity.getResources().getString(C0724R.string.apptentive_message_center_title)).setDefaults(5).setSmallIcon(C0724R.C0726drawable.avatar).setContentText(compoundMessage.getBody()).setContentIntent(prepareMessageCenterPendingIntent).setFullScreenIntent(prepareMessageCenterPendingIntent, false);
                    DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.module.messagecenter.MessageManager.6.1
                        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                        protected void execute() {
                            ApptentiveToastNotification buildApptentiveToastNotification = builder.buildApptentiveToastNotification();
                            buildApptentiveToastNotification.setAvatarUrl(compoundMessage.getSenderProfilePhoto());
                            instance.notify(MessageManager.TOAST_TYPE_UNREAD_MESSAGE, buildApptentiveToastNotification);
                        }
                    });
                    return true;
                }
            });
        }
    }

    public void addHostUnreadMessagesListener(UnreadMessagesListener unreadMessagesListener) {
        if (unreadMessagesListener != null) {
            Iterator<WeakReference<UnreadMessagesListener>> it = this.hostUnreadMessagesListeners.iterator();
            while (it.hasNext()) {
                UnreadMessagesListener unreadMessagesListener2 = it.next().get();
                if (unreadMessagesListener2 != null && unreadMessagesListener2 == unreadMessagesListener) {
                    return;
                }
                if (unreadMessagesListener2 == null) {
                    it.remove();
                }
            }
            this.hostUnreadMessagesListeners.add(new WeakReference<>(unreadMessagesListener));
        }
    }

    public void addInternalOnMessagesUpdatedListener(OnNewIncomingMessagesListener onNewIncomingMessagesListener) {
        if (onNewIncomingMessagesListener != null) {
            Iterator<WeakReference<OnNewIncomingMessagesListener>> it = this.internalNewMessagesListeners.iterator();
            while (it.hasNext()) {
                OnNewIncomingMessagesListener onNewIncomingMessagesListener2 = it.next().get();
                if (onNewIncomingMessagesListener2 != null && onNewIncomingMessagesListener2 == onNewIncomingMessagesListener) {
                    return;
                }
                if (onNewIncomingMessagesListener2 == null) {
                    it.remove();
                }
            }
            this.internalNewMessagesListeners.add(new WeakReference<>(onNewIncomingMessagesListener));
        }
    }

    public void addMessages(ApptentiveMessage[] apptentiveMessageArr) {
        this.messageStore.addOrUpdateMessages(apptentiveMessageArr);
    }

    public void attemptToStartMessagePolling() {
        if (this.conversation.isMessageCenterFeatureUsed()) {
            this.pollingWorker.startPolling();
        }
    }

    public void clearInternalOnMessagesUpdatedListeners() {
        this.internalNewMessagesListeners.clear();
    }

    public void deleteAllMessages(Context context) {
        ApptentiveLog.m415d(ApptentiveLogTag.MESSAGES, "Deleting all messages.", new Object[0]);
        this.messageStore.deleteAllMessages();
    }

    @Override // com.apptentive.android.sdk.util.Destroyable
    public void destroy() {
        ApptentiveNotificationCenter.defaultCenter().removeObserver(this);
        this.pollingWorker.destroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fetchAndStoreMessages(final boolean z, final boolean z2, @Nullable final MessageFetchListener messageFetchListener) {
        ApptentiveHelper.checkConversationQueue();
        try {
            fetchMessages(this.messageStore.getLastReceivedMessageId(), new MessageFetchListener() { // from class: com.apptentive.android.sdk.module.messagecenter.MessageManager.3
                /* JADX WARN: Finally extract failed */
                @Override // com.apptentive.android.sdk.module.messagecenter.MessageManager.MessageFetchListener
                public void onFetchFinish(MessageManager messageManager, List<ApptentiveMessage> list) {
                    if (list != null) {
                        try {
                            if (list.size() != 0) {
                                CompoundMessage compoundMessage = null;
                                int i = 0;
                                ApptentiveLog.m415d(ApptentiveLogTag.MESSAGES, "Messages retrieved: %d", Integer.valueOf(list.size()));
                                for (ApptentiveMessage apptentiveMessage : list) {
                                    if (apptentiveMessage.isOutgoingMessage()) {
                                        apptentiveMessage.setRead(true);
                                    } else {
                                        compoundMessage = compoundMessage;
                                        if (compoundMessage == null) {
                                            compoundMessage = compoundMessage;
                                            if (apptentiveMessage.getMessageType() == ApptentiveMessage.Type.CompoundMessage) {
                                                compoundMessage = (CompoundMessage) apptentiveMessage;
                                            }
                                        }
                                        i++;
                                        MessageManager.this.notifyInternalNewMessagesListeners((CompoundMessage) apptentiveMessage);
                                    }
                                }
                                MessageManager.this.messageStore.addOrUpdateMessages((ApptentiveMessage[]) list.toArray(new ApptentiveMessage[list.size()]));
                                if (i > 0 && !z && z2) {
                                    DispatchQueue.mainQueue().dispatchAsyncOnce(MessageManager.this.toastMessageNotifierTask.setMessage(compoundMessage));
                                }
                                ApptentiveHelper.conversationQueue().dispatchAsyncOnce(MessageManager.this.hostMessageNotifierTask.setMessageCount(MessageManager.this.getUnreadMessageCount()));
                                if (messageFetchListener != null) {
                                    messageFetchListener.onFetchFinish(messageManager, list);
                                    return;
                                }
                                return;
                            }
                        } catch (Throwable th) {
                            if (messageFetchListener != null) {
                                messageFetchListener.onFetchFinish(messageManager, list);
                            }
                            throw th;
                        }
                    }
                    if (messageFetchListener != null) {
                        messageFetchListener.onFetchFinish(messageManager, list);
                    }
                }
            });
        } catch (Exception e) {
            ApptentiveLog.m411e(ApptentiveLogTag.MESSAGES, "Error retrieving last received message id from worker thread", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Conversation getConversation() {
        return this.conversation;
    }

    public List<MessageCenterListItem> getMessageCenterListItems() {
        ArrayList arrayList = new ArrayList();
        try {
            for (ApptentiveMessage apptentiveMessage : this.messageStore.getAllMessages()) {
                if (!apptentiveMessage.isHidden()) {
                    arrayList.add(apptentiveMessage);
                }
            }
        } catch (Exception e) {
            ApptentiveLog.m411e(ApptentiveLogTag.MESSAGES, "Error getting all messages in worker thread", new Object[0]);
        }
        return arrayList;
    }

    public MessageStore getMessageStore() {
        return this.messageStore;
    }

    public int getUnreadMessageCount() {
        int i = 0;
        try {
            i = this.messageStore.getUnreadMessageCount();
        } catch (Exception e) {
            ApptentiveLog.m411e(ApptentiveLogTag.MESSAGES, "Error getting unread messages count in worker thread", new Object[0]);
        }
        return i;
    }

    public void notifyHostUnreadMessagesListeners(final int i) {
        ApptentiveHelper.checkConversationQueue();
        for (WeakReference<UnreadMessagesListener> weakReference : this.hostUnreadMessagesListeners) {
            final UnreadMessagesListener unreadMessagesListener = weakReference.get();
            if (unreadMessagesListener != null) {
                DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.module.messagecenter.MessageManager.5
                    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                    protected void execute() {
                        unreadMessagesListener.onUnreadMessageCountChanged(i);
                    }
                });
            }
        }
    }

    @Override // com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver
    public void onReceiveNotification(ApptentiveNotification apptentiveNotification) {
        ApptentiveHelper.checkConversationQueue();
        if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_ACTIVITY_STARTED) || apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_ACTIVITY_RESUMED)) {
            setCurrentForegroundActivity((Activity) apptentiveNotification.getRequiredUserInfo(ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY, Activity.class));
        } else if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_FOREGROUND)) {
            appWentToForeground();
        } else {
            JSONObject jSONObject = null;
            if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_BACKGROUND)) {
                setCurrentForegroundActivity(null);
                appWentToBackground();
            } else if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_PAYLOAD_WILL_START_SEND)) {
                if (((PayloadData) apptentiveNotification.getRequiredUserInfo("payload", PayloadData.class)).getType().equals(PayloadType.message)) {
                    resumeSending();
                }
            } else if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_PAYLOAD_DID_FINISH_SEND)) {
                boolean booleanValue = ((Boolean) apptentiveNotification.getRequiredUserInfo(ApptentiveNotifications.NOTIFICATION_KEY_SUCCESSFUL, Boolean.class)).booleanValue();
                PayloadData payloadData = (PayloadData) apptentiveNotification.getRequiredUserInfo("payload", PayloadData.class);
                Integer num = (Integer) apptentiveNotification.getRequiredUserInfo(ApptentiveNotifications.NOTIFICATION_KEY_RESPONSE_CODE, Integer.class);
                if (booleanValue) {
                    jSONObject = (JSONObject) apptentiveNotification.getRequiredUserInfo(ApptentiveNotifications.NOTIFICATION_KEY_RESPONSE_DATA, JSONObject.class);
                }
                if (num.intValue() == -1) {
                    pauseSending(SEND_PAUSE_REASON_NETWORK);
                }
                if (payloadData.getType().equals(PayloadType.message)) {
                    onSentMessage(payloadData.getNonce(), num.intValue(), jSONObject);
                }
            }
        }
    }

    public void onSentMessage(String str, int i, JSONObject jSONObject) {
        ApptentiveMessage findMessage = this.messageStore.findMessage(str);
        boolean z = true;
        Assert.assertNotNull(findMessage, "Can't find a message with nonce: %s", str);
        if (findMessage != null) {
            boolean z2 = i >= 400 && i < 500;
            boolean z3 = i >= 200 && i < 300;
            if (z3 || z2) {
                z = false;
            }
            if (z2 || i == -1) {
                if (findMessage instanceof CompoundMessage) {
                    findMessage.setCreatedAt(Double.valueOf(Double.MIN_VALUE));
                    this.messageStore.updateMessage(findMessage);
                    if (this.afterSendMessageListener != null && this.afterSendMessageListener.get() != null) {
                        this.afterSendMessageListener.get().onMessageSent(i, findMessage);
                    }
                }
            } else if (z) {
                pauseSending(SEND_PAUSE_REASON_SERVER);
            } else if (z3) {
                Assert.assertNotNull(jSONObject, "Missing required responseJson.");
                if (findMessage.isHidden()) {
                    ((CompoundMessage) findMessage).deleteAssociatedFiles();
                    this.messageStore.deleteMessage(findMessage.getNonce());
                    return;
                }
                try {
                    findMessage.setState(ApptentiveMessage.State.sent);
                    findMessage.setId(jSONObject.getString("id"));
                    findMessage.setCreatedAt(Double.valueOf(jSONObject.getDouble("created_at")));
                } catch (JSONException e) {
                    ApptentiveLog.m410e(ApptentiveLogTag.MESSAGES, e, "Error parsing sent apptentiveMessage response.", new Object[0]);
                }
                this.messageStore.updateMessage(findMessage);
                if (this.afterSendMessageListener != null && this.afterSendMessageListener.get() != null) {
                    this.afterSendMessageListener.get().onMessageSent(i, findMessage);
                }
            }
        }
    }

    public List<ApptentiveMessage> parseMessages(JSONObject jSONObject) throws JSONException {
        ArrayList arrayList = new ArrayList();
        if (!jSONObject.isNull(MessagesContract.MessagesEntry.TABLE_NAME)) {
            JSONArray jSONArray = jSONObject.getJSONArray(MessagesContract.MessagesEntry.TABLE_NAME);
            for (int i = 0; i < jSONArray.length(); i++) {
                ApptentiveMessage fromJson = MessageFactory.fromJson(jSONArray.getJSONObject(i).toString());
                if (fromJson != null) {
                    fromJson.setState(ApptentiveMessage.State.saved);
                    arrayList.add(fromJson);
                }
            }
        }
        return arrayList;
    }

    public void pauseSending(int i) {
        if (this.afterSendMessageListener != null && this.afterSendMessageListener.get() != null) {
            this.afterSendMessageListener.get().onPauseSending(i);
        }
    }

    public void resumeSending() {
        if (this.afterSendMessageListener != null && this.afterSendMessageListener.get() != null) {
            this.afterSendMessageListener.get().onResumeSending();
        }
    }

    public void sendMessage(ApptentiveMessage apptentiveMessage) {
        this.messageStore.addOrUpdateMessages(apptentiveMessage);
        this.conversation.addPayload(apptentiveMessage);
    }

    public void setAfterSendMessageListener(AfterSendMessageListener afterSendMessageListener) {
        if (afterSendMessageListener != null) {
            this.afterSendMessageListener = new WeakReference<>(afterSendMessageListener);
        } else {
            this.afterSendMessageListener = null;
        }
    }

    @Deprecated
    public void setHostUnreadMessagesListener(UnreadMessagesListener unreadMessagesListener) {
        clearHostUnreadMessagesListeners();
        if (unreadMessagesListener != null) {
            this.hostUnreadMessagesListeners.add(new WeakReference<>(unreadMessagesListener));
        }
    }

    public void setMessageCenterInForeground(boolean z) {
        this.conversation.setMessageCenterFeatureUsed(true);
        this.pollingWorker.setMessageCenterInForeground(z);
    }

    public void startMessagePreFetchTask() {
        try {
            fetchAndStoreMessages(isMessageCenterInForeground(), false, null);
        } catch (Exception e) {
            ApptentiveLog.m398w(ApptentiveLogTag.MESSAGES, e, "Unhandled Exception thrown from fetching new message task", new Object[0]);
            MetricModule.sendError(e, null, null);
        }
    }

    public void stopPollingMessages() {
        this.pollingWorker.stopPolling();
    }

    public void updateMessage(ApptentiveMessage apptentiveMessage) {
        this.messageStore.updateMessage(apptentiveMessage);
    }
}
