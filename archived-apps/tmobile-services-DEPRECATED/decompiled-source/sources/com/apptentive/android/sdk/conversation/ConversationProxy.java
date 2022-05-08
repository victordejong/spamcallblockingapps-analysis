package com.apptentive.android.sdk.conversation;

import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.model.SurveyResponsePayload;
import com.apptentive.android.sdk.notifications.ApptentiveNotification;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver;
import com.apptentive.android.sdk.storage.AppRelease;
import com.apptentive.android.sdk.storage.Device;
import com.apptentive.android.sdk.storage.EventData;
import com.apptentive.android.sdk.storage.Person;
import com.apptentive.android.sdk.storage.VersionHistory;
import com.apptentive.android.sdk.util.threading.DispatchTask;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/ConversationProxy.class */
public class ConversationProxy implements ApptentiveNotificationObserver {
    private final Conversation conversation;
    private boolean hasActiveState;
    private String messageCenterPendingAttachments;
    private String messageCenterPendingMessage;
    private boolean messageCenterWhoCardPreviouslyDisplayed;
    private String personEmail;
    private String personName;
    private int unreadMessageCount;

    public ConversationProxy(Conversation conversation) {
        if (conversation != null) {
            this.conversation = conversation;
            synchronize();
            registerNotifications();
            return;
        }
        throw new IllegalArgumentException("Conversation is null");
    }

    private void registerNotifications() {
        ApptentiveNotificationCenter defaultCenter = ApptentiveNotificationCenter.defaultCenter();
        defaultCenter.addObserver("CONVERSATION_DATA_DID_CHANGE", this);
        defaultCenter.addObserver("CONVERSATION_STATE_DID_CHANGE", this);
        defaultCenter.addObserver("MESSAGE_STORE_DID_CHANGE", this);
    }

    private void synchronize() {
        synchronized (this) {
            this.personEmail = this.conversation.getPerson().getEmail();
            this.personName = this.conversation.getPerson().getName();
            this.messageCenterPendingMessage = this.conversation.getMessageCenterPendingMessage();
            this.messageCenterPendingAttachments = this.conversation.getMessageCenterPendingAttachments();
            this.hasActiveState = this.conversation.hasActiveState();
            this.messageCenterWhoCardPreviouslyDisplayed = this.conversation.isMessageCenterWhoCardPreviouslyDisplayed();
            this.unreadMessageCount = this.conversation.getMessageManager().getUnreadMessageCount();
        }
    }

    public void addPayload(final SurveyResponsePayload surveyResponsePayload) {
        ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.conversation.ConversationProxy.1
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                ConversationProxy.this.conversation.addPayload(surveyResponsePayload);
            }
        });
    }

    public AppRelease getAppRelease() {
        AppRelease appRelease;
        synchronized (this) {
            appRelease = this.conversation.getAppRelease();
        }
        return appRelease;
    }

    public String getConversationToken() {
        return this.conversation.getConversationToken();
    }

    public Device getDevice() {
        Device device;
        synchronized (this) {
            device = this.conversation.getDevice();
        }
        return device;
    }

    public EventData getEventData() {
        EventData eventData;
        synchronized (this) {
            eventData = this.conversation.getEventData();
        }
        return eventData;
    }

    public String getInteractions() {
        String interactions;
        synchronized (this) {
            interactions = this.conversation.getInteractions();
        }
        return interactions;
    }

    public String getMessageCenterPendingAttachments() {
        String str;
        synchronized (this) {
            str = this.messageCenterPendingAttachments;
        }
        return str;
    }

    public String getMessageCenterPendingMessage() {
        String str;
        synchronized (this) {
            str = this.messageCenterPendingMessage;
        }
        return str;
    }

    public Person getPerson() {
        Person person;
        synchronized (this) {
            person = this.conversation.getPerson();
        }
        return person;
    }

    public String getPersonEmail() {
        String str;
        synchronized (this) {
            str = this.personEmail;
        }
        return str;
    }

    public String getPersonName() {
        String str;
        synchronized (this) {
            str = this.personName;
        }
        return str;
    }

    public int getUnreadMessageCount() {
        int i;
        synchronized (this) {
            i = this.unreadMessageCount;
        }
        return i;
    }

    public VersionHistory getVersionHistory() {
        VersionHistory versionHistory;
        synchronized (this) {
            versionHistory = this.conversation.getVersionHistory();
        }
        return versionHistory;
    }

    public boolean hasActiveState() {
        boolean z;
        synchronized (this) {
            z = this.hasActiveState;
        }
        return z;
    }

    public boolean isMessageCenterWhoCardPreviouslyDisplayed() {
        boolean z;
        synchronized (this) {
            z = this.messageCenterWhoCardPreviouslyDisplayed;
        }
        return z;
    }

    @Override // com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver
    public void onReceiveNotification(ApptentiveNotification apptentiveNotification) {
        synchronized (this) {
            synchronize();
        }
    }

    public void setMessageCenterInForeground(final boolean z) {
        synchronized (this) {
            ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.conversation.ConversationProxy.7
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    ConversationProxy.this.conversation.getMessageManager().setMessageCenterInForeground(z);
                }
            });
        }
    }

    public void setMessageCenterPendingAttachments(final String str) {
        synchronized (this) {
            this.messageCenterPendingAttachments = str;
            ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.conversation.ConversationProxy.5
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    ConversationProxy.this.conversation.setMessageCenterPendingAttachments(str);
                }
            });
        }
    }

    public void setMessageCenterPendingMessage(final String str) {
        synchronized (this) {
            this.messageCenterPendingMessage = str;
            ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.conversation.ConversationProxy.4
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    ConversationProxy.this.conversation.setMessageCenterPendingMessage(str);
                }
            });
        }
    }

    public void setMessageCenterWhoCardPreviouslyDisplayed(final boolean z) {
        synchronized (this) {
            this.messageCenterWhoCardPreviouslyDisplayed = z;
            ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.conversation.ConversationProxy.6
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    ConversationProxy.this.conversation.setMessageCenterWhoCardPreviouslyDisplayed(z);
                }
            });
        }
    }

    public void setPersonEmail(final String str) {
        synchronized (this) {
            this.personEmail = str;
            ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.conversation.ConversationProxy.2
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    ConversationProxy.this.conversation.getPerson().setEmail(str);
                }
            });
        }
    }

    public void setPersonName(final String str) {
        synchronized (this) {
            this.personName = str;
            ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.conversation.ConversationProxy.3
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    ConversationProxy.this.conversation.getPerson().setName(str);
                }
            });
        }
    }
}
