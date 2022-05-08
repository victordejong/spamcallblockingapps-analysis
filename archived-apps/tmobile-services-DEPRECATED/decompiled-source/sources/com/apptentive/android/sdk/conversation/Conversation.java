package com.apptentive.android.sdk.conversation;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.comm.ApptentiveHttpClient;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.model.DevicePayload;
import com.apptentive.android.sdk.model.EventPayload;
import com.apptentive.android.sdk.model.Payload;
import com.apptentive.android.sdk.model.PersonPayload;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.module.engagement.interaction.model.InteractionManifest;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interactions;
import com.apptentive.android.sdk.module.engagement.interaction.model.Targets;
import com.apptentive.android.sdk.module.messagecenter.MessageManager;
import com.apptentive.android.sdk.network.HttpJsonRequest;
import com.apptentive.android.sdk.network.HttpRequest;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
import com.apptentive.android.sdk.storage.AppRelease;
import com.apptentive.android.sdk.storage.DataChangedListener;
import com.apptentive.android.sdk.storage.Device;
import com.apptentive.android.sdk.storage.DeviceDataChangedListener;
import com.apptentive.android.sdk.storage.DevicePayloadDiff;
import com.apptentive.android.sdk.storage.EncryptedFileSerializer;
import com.apptentive.android.sdk.storage.EventData;
import com.apptentive.android.sdk.storage.FileSerializer;
import com.apptentive.android.sdk.storage.IntegrationConfig;
import com.apptentive.android.sdk.storage.IntegrationConfigItem;
import com.apptentive.android.sdk.storage.Person;
import com.apptentive.android.sdk.storage.PersonDataChangedListener;
import com.apptentive.android.sdk.storage.PersonManager;
import com.apptentive.android.sdk.storage.Sdk;
import com.apptentive.android.sdk.storage.SerializerException;
import com.apptentive.android.sdk.storage.VersionHistory;
import com.apptentive.android.sdk.util.Destroyable;
import com.apptentive.android.sdk.util.RuntimeUtils;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.google.firebase.messaging.Constants;
import java.io.File;
import java.util.UUID;
import org.apache.commons.cli.HelpFormatter;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/Conversation.class */
public class Conversation implements DataChangedListener, Destroyable, DeviceDataChangedListener, PersonDataChangedListener {
    private ConversationData conversationData;
    private final File conversationDataFile;
    private final File conversationMessagesFile;
    @NonNull
    private Encryption encryption;
    private final MessageManager messageManager;
    private final FileMessageStore messageStore;
    @Nullable
    private String payloadEncryptionKey;
    private Boolean pollForInteractions;
    private ConversationState prevState;
    @Nullable
    private String sessionId;
    private ConversationState state;
    private String userId;
    private final DispatchTask saveConversationTask = new DispatchTask() { // from class: com.apptentive.android.sdk.conversation.Conversation.1
        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
        protected void execute() {
            try {
                Conversation.this.saveConversationData();
            } catch (Exception e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while saving conversation data", new Object[0]);
                Conversation.this.logException(e);
            }
        }
    };
    private final DispatchTask personUpdateTask = new DispatchTask() { // from class: com.apptentive.android.sdk.conversation.Conversation.3
        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
        protected void execute() {
            ApptentiveHelper.checkConversationQueue();
            Person lastSentPerson = Conversation.this.getLastSentPerson();
            Person person = Conversation.this.getPerson();
            Assert.assertNotNull(person, "Current person object is null");
            PersonPayload diffPayload = PersonManager.getDiffPayload(lastSentPerson, person);
            if (diffPayload != null) {
                Conversation.this.addPayload(diffPayload);
                Conversation.this.setLastSentPerson(person != null ? person.clone() : null);
            }
        }
    };
    private final DispatchTask deviceUpdateTask = new DispatchTask() { // from class: com.apptentive.android.sdk.conversation.Conversation.4
        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
        protected void execute() {
            ApptentiveHelper.checkConversationQueue();
            Device lastSentDevice = Conversation.this.getLastSentDevice();
            Device device = Conversation.this.getDevice();
            Assert.assertNotNull(device, "Current device object is null");
            DevicePayload diffPayload = DevicePayloadDiff.getDiffPayload(lastSentDevice, device);
            if (diffPayload != null) {
                Conversation.this.addPayload(diffPayload);
                Conversation.this.setLastSentDevice(device != null ? device.clone() : null);
            }
        }
    };

    /* renamed from: com.apptentive.android.sdk.conversation.Conversation$5 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/Conversation$5.class */
    static /* synthetic */ class C07365 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$conversation$ConversationState */
        static final /* synthetic */ int[] f6444x160c0ed;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConversationState.values().length];
            f6444x160c0ed = iArr;
            try {
                iArr[ConversationState.LOGGED_IN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6444x160c0ed[ConversationState.LOGGED_OUT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public Conversation(File file, File file2, @NonNull Encryption encryption, @Nullable String str) {
        ConversationState conversationState = ConversationState.UNDEFINED;
        this.state = conversationState;
        this.prevState = conversationState;
        if (file == null) {
            throw new IllegalArgumentException("Data file is null");
        } else if (file2 == null) {
            throw new IllegalArgumentException("Messages file is null");
        } else if (encryption != null) {
            this.conversationDataFile = file;
            this.conversationMessagesFile = file2;
            this.encryption = encryption;
            this.payloadEncryptionKey = str;
            this.conversationData = new ConversationData();
            FileMessageStore fileMessageStore = new FileMessageStore(file2, encryption);
            this.messageStore = fileMessageStore;
            fileMessageStore.migrateLegacyStorage();
            this.messageManager = new MessageManager(this, this.messageStore);
        } else {
            throw new IllegalArgumentException("Encryption is null");
        }
    }

    private static String generateSessionId() {
        String replace = UUID.randomUUID().toString().replace(HelpFormatter.DEFAULT_OPT_PREFIX, "");
        String str = replace;
        if (replace.length() > 32) {
            str = replace.substring(0, 32);
        }
        return str;
    }

    @NonNull
    private ConversationData getConversationData() {
        ConversationData conversationData;
        synchronized (this) {
            conversationData = this.conversationData;
        }
        return conversationData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    private void notifyDataChanged() {
        ApptentiveNotificationCenter.defaultCenter().postNotification("CONVERSATION_DATA_DID_CHANGE", "conversation", this);
    }

    private void notifyEventGenerated(EventPayload eventPayload) {
        ApptentiveNotificationCenter.defaultCenter().postNotification("EVENT_GENERATED", Constants.FirelogAnalytics.PARAM_EVENT, eventPayload);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveConversationData() throws SerializerException {
        synchronized (this) {
            if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
                ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Saving conversation data...", new Object[0]);
                ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "EventData: %s", getEventData().toString());
                ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Messages: %s", this.messageManager.getMessageStore().toString());
            }
            long currentTimeMillis = System.currentTimeMillis();
            new EncryptedFileSerializer(this.conversationDataFile, this.encryption).serialize(this.conversationData);
            ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Conversation data saved (took %d ms)", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        }
    }

    private void scheduleDeviceUpdate() {
        ApptentiveHelper.conversationQueue().dispatchAsyncOnce(this.deviceUpdateTask);
    }

    private void schedulePersonUpdate() {
        ApptentiveHelper.conversationQueue().dispatchAsyncOnce(this.personUpdateTask);
    }

    public void addPayload(Payload payload) {
        if (payload instanceof EventPayload) {
            notifyEventGenerated((EventPayload) payload);
        }
        String localIdentifier = getLocalIdentifier();
        Assert.notNull(localIdentifier);
        payload.setLocalConversationIdentifier(localIdentifier);
        payload.setConversationId(getConversationId());
        payload.setToken(getConversationToken());
        payload.setEncryption(getEncryption());
        payload.setAuthenticated(isAuthenticated());
        payload.setSessionId(getSessionId());
        ApptentiveInternal.getInstance().getApptentiveTaskManager().addPayload(payload);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void checkInternalConsistency() throws IllegalStateException {
        if (this.encryption != null) {
            int i = C07365.f6444x160c0ed[this.state.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    throw new IllegalStateException("Invalid conversation state: " + this.state);
                }
            } else if (StringUtils.isNullOrEmpty(this.userId)) {
                throw new IllegalStateException("Missing user id");
            } else if (StringUtils.isNullOrEmpty(this.payloadEncryptionKey)) {
                throw new IllegalStateException("Missing payload encryption key");
            }
        } else {
            throw new IllegalStateException("Missing encryption");
        }
    }

    public void destroy() {
        this.messageManager.destroy();
    }

    public void endSession() {
        Assert.assertNotNull(this.sessionId, "Session was not started");
        ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Ended session '%s'", this.sessionId);
        this.sessionId = null;
    }

    public void fetchInteractions(Context context) {
        if (!isPollForInteractions()) {
            ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Interaction polling is turned off. Skipping fetch.", new Object[0]);
            return;
        }
        if ((getInteractionExpiration() < Util.currentTimeSeconds()) || RuntimeUtils.isAppDebuggable(context)) {
            ApptentiveHttpClient apptentiveHttpClient = ApptentiveInternal.getInstance().getApptentiveHttpClient();
            if (apptentiveHttpClient.findRequest("fetch_interactions") == null) {
                HttpJsonRequest createFetchInteractionsRequest = apptentiveHttpClient.createFetchInteractionsRequest(getConversationToken(), getConversationId(), new HttpRequest.Listener<HttpJsonRequest>() { // from class: com.apptentive.android.sdk.conversation.Conversation.2
                    private void notifyFinish(boolean z) {
                        if (Conversation.this.hasActiveState()) {
                            ApptentiveInternal.getInstance().notifyInteractionUpdated(z);
                        }
                    }

                    public void onCancel(HttpJsonRequest httpJsonRequest) {
                    }

                    public void onFail(HttpJsonRequest httpJsonRequest, String str) {
                        SharedPreferences globalSharedPrefs = ApptentiveInternal.getInstance().getGlobalSharedPrefs();
                        if (httpJsonRequest.getResponseCode() == -1) {
                            globalSharedPrefs.edit().putBoolean("messageCenterServerErrorLastAttempt", false).apply();
                        } else {
                            globalSharedPrefs.edit().putBoolean("messageCenterServerErrorLastAttempt", true).apply();
                        }
                        ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "Fetching new Interactions task failed", new Object[0]);
                        notifyFinish(false);
                    }

                    public void onFinish(HttpJsonRequest httpJsonRequest) {
                        ApptentiveNotificationCenter.defaultCenter().postNotification("INTERACTION_MANIFEST_FETCHED", "manifest", httpJsonRequest.getResponseData());
                        Integer parseCacheControlHeader = Util.parseCacheControlHeader(httpJsonRequest.getResponseHeader("Cache-Control"));
                        Integer num = parseCacheControlHeader;
                        if (parseCacheControlHeader == null) {
                            num = 28800;
                        }
                        Conversation.this.setInteractionExpiration(Util.currentTimeSeconds() + num.intValue());
                        try {
                            InteractionManifest interactionManifest = new InteractionManifest(httpJsonRequest.getResponseData());
                            Interactions interactions = interactionManifest.getInteractions();
                            Targets targets = interactionManifest.getTargets();
                            if (interactions == null || targets == null) {
                                ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Unable to save interactionManifest.", new Object[0]);
                            } else {
                                Conversation.this.setTargets(targets.toString());
                                Conversation.this.setInteractions(interactions.toString());
                            }
                        } catch (JSONException e) {
                            ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Invalid InteractionManifest received.", new Object[0]);
                            Conversation.this.logException(e);
                        }
                        ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Fetching new Interactions task finished", new Object[0]);
                        notifyFinish(true);
                    }
                });
                createFetchInteractionsRequest.setTag("fetch_interactions");
                createFetchInteractionsRequest.setCallbackQueue(ApptentiveHelper.conversationQueue());
                createFetchInteractionsRequest.start();
                return;
            }
            return;
        }
        ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Interaction cache is still valid", new Object[0]);
    }

    public AppRelease getAppRelease() {
        return getConversationData().getAppRelease();
    }

    public Interaction getApplicableInteraction(String str, boolean z) {
        String interactions;
        if (getTargets() == null) {
            return null;
        }
        try {
            String applicableInteraction = new Targets(getTargets()).getApplicableInteraction(str, z);
            if (applicableInteraction == null || (interactions = getInteractions()) == null) {
                return null;
            }
            return new Interactions(interactions).getInteraction(applicableInteraction);
        } catch (JSONException e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.INTERACTIONS, e, "Exception while getting applicable interaction: %s", str);
            logException(e);
            return null;
        }
    }

    public File getConversationDataFile() {
        File file;
        synchronized (this) {
            file = this.conversationDataFile;
        }
        return file;
    }

    public String getConversationId() {
        return getConversationData().getConversationId();
    }

    public File getConversationMessagesFile() {
        File file;
        synchronized (this) {
            file = this.conversationMessagesFile;
        }
        return file;
    }

    public String getConversationToken() {
        return getConversationData().getConversationToken();
    }

    public Device getDevice() {
        return getConversationData().getDevice();
    }

    @NonNull
    public Encryption getEncryption() {
        return this.encryption;
    }

    public EventData getEventData() {
        return getConversationData().getEventData();
    }

    public double getInteractionExpiration() {
        return getConversationData().getInteractionExpiration();
    }

    public String getInteractions() {
        return getConversationData().getInteractions();
    }

    public String getLastSeenSdkVersion() {
        return getConversationData().getLastSeenSdkVersion();
    }

    public Device getLastSentDevice() {
        return getConversationData().getLastSentDevice();
    }

    public Person getLastSentPerson() {
        return getConversationData().getLastSentPerson();
    }

    public String getLocalIdentifier() {
        return getConversationData().getLocalIdentifier();
    }

    public String getMessageCenterPendingAttachments() {
        return getConversationData().getMessageCenterPendingAttachments();
    }

    public String getMessageCenterPendingMessage() {
        return getConversationData().getMessageCenterPendingMessage();
    }

    public MessageManager getMessageManager() {
        return this.messageManager;
    }

    @Nullable
    public String getPayloadEncryptionKey() {
        return this.payloadEncryptionKey;
    }

    public Person getPerson() {
        return getConversationData().getPerson();
    }

    public ConversationState getPrevState() {
        return this.prevState;
    }

    @Nullable
    public String getSessionId() {
        return this.sessionId;
    }

    public ConversationState getState() {
        return this.state;
    }

    public String getTargets() {
        return getConversationData().getTargets();
    }

    public String getUserId() {
        return this.userId;
    }

    public VersionHistory getVersionHistory() {
        return getConversationData().getVersionHistory();
    }

    public boolean hasActiveState() {
        return hasState(ConversationState.LOGGED_IN, ConversationState.ANONYMOUS);
    }

    public boolean hasSession() {
        return !StringUtils.isNullOrEmpty(this.sessionId);
    }

    public boolean hasState(ConversationState conversationState) {
        return this.state.equals(conversationState);
    }

    public boolean hasState(ConversationState... conversationStateArr) {
        for (ConversationState conversationState : conversationStateArr) {
            if (conversationState.equals(this.state)) {
                return true;
            }
        }
        return false;
    }

    public boolean isAuthenticated() {
        return hasState(ConversationState.LOGGED_IN);
    }

    public boolean isMessageCenterFeatureUsed() {
        return getConversationData().isMessageCenterFeatureUsed();
    }

    public boolean isMessageCenterWhoCardPreviouslyDisplayed() {
        return getConversationData().isMessageCenterWhoCardPreviouslyDisplayed();
    }

    public boolean isPollForInteractions() {
        if (this.pollForInteractions == null) {
            this.pollForInteractions = Boolean.valueOf(ApptentiveInternal.getInstance().getGlobalSharedPrefs().getBoolean("pollForInteractions", true));
        }
        return this.pollForInteractions.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void loadConversationData() throws SerializerException {
        long currentTimeMillis = System.currentTimeMillis();
        EncryptedFileSerializer encryptedFileSerializer = new EncryptedFileSerializer(this.conversationDataFile, this.encryption);
        ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Loading conversation data...", new Object[0]);
        this.conversationData = (ConversationData) encryptedFileSerializer.deserialize();
        ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Conversation data loaded (took %d ms)", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean migrateConversationData() throws SerializerException {
        long currentTimeMillis = System.currentTimeMillis();
        File unencryptedFilename = Util.getUnencryptedFilename(this.conversationDataFile);
        if (!unencryptedFilename.exists()) {
            return false;
        }
        try {
            ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Migrating %sconversation data...", hasState(ConversationState.LOGGED_IN) ? "encrypted " : "");
            this.conversationData = (ConversationData) (isAuthenticated() ? new EncryptedFileSerializer(unencryptedFilename, getEncryption()) : new FileSerializer(unencryptedFilename)).deserialize();
            ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Conversation data migrated (took %d ms)", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
            ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Legacy conversation file deleted: %b", Boolean.valueOf(unencryptedFilename.delete()));
            return true;
        } catch (Throwable th) {
            ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Legacy conversation file deleted: %b", Boolean.valueOf(unencryptedFilename.delete()));
            throw th;
        }
    }

    @Override // com.apptentive.android.sdk.storage.DataChangedListener
    public void onDataChanged() {
        notifyDataChanged();
        scheduleSaveConversationData();
    }

    @Override // com.apptentive.android.sdk.storage.DeviceDataChangedListener
    public void onDeviceDataChanged() {
        notifyDataChanged();
        scheduleDeviceUpdate();
    }

    @Override // com.apptentive.android.sdk.storage.PersonDataChangedListener
    public void onPersonDataChanged() {
        notifyDataChanged();
        schedulePersonUpdate();
    }

    public void scheduleSaveConversationData() {
        if (ApptentiveHelper.conversationDataQueue().dispatchAsyncOnce(this.saveConversationTask)) {
            ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Scheduling conversation save.", new Object[0]);
        } else {
            ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Conversation save already scheduled.", new Object[0]);
        }
    }

    public void setAppRelease(AppRelease appRelease) {
        getConversationData().setAppRelease(appRelease);
    }

    public void setConversationId(String str) {
        getConversationData().setConversationId(str);
    }

    public void setConversationToken(String str) {
        getConversationData().setConversationToken(str);
    }

    public void setDevice(Device device) {
        getConversationData().setDevice(device);
    }

    public void setEncryption(@NonNull Encryption encryption) {
        if (encryption != null) {
            this.encryption = encryption;
            this.messageStore.updateEncryption(encryption);
            return;
        }
        throw new IllegalArgumentException("Encryption is null");
    }

    public void setInteractionExpiration(double d) {
        getConversationData().setInteractionExpiration(d);
    }

    public void setInteractions(String str) {
        getConversationData().setInteractions(str);
    }

    public void setLastSeenSdkVersion(String str) {
        getConversationData().setLastSeenSdkVersion(str);
    }

    public void setLastSentDevice(Device device) {
        getConversationData().setLastSentDevice(device);
    }

    public void setLastSentPerson(Person person) {
        getConversationData().setLastSentPerson(person);
    }

    public void setMessageCenterFeatureUsed(boolean z) {
        getConversationData().setMessageCenterFeatureUsed(z);
    }

    public void setMessageCenterPendingAttachments(String str) {
        getConversationData().setMessageCenterPendingAttachments(str);
    }

    public void setMessageCenterPendingMessage(String str) {
        getConversationData().setMessageCenterPendingMessage(str);
    }

    public void setMessageCenterWhoCardPreviouslyDisplayed(boolean z) {
        getConversationData().setMessageCenterWhoCardPreviouslyDisplayed(z);
    }

    public void setPayloadEncryptionKey(@Nullable String str) {
        this.payloadEncryptionKey = str;
    }

    public void setPerson(Person person) {
        getConversationData().setPerson(person);
    }

    public void setPushIntegration(int i, String str) {
        ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Setting push provider: %d with token %s", Integer.valueOf(i), str);
        IntegrationConfig integrationConfig = getDevice().getIntegrationConfig();
        IntegrationConfigItem integrationConfigItem = new IntegrationConfigItem();
        integrationConfigItem.setToken(str);
        if (i == 0) {
            integrationConfig.setApptentive(integrationConfigItem);
        } else if (i == 1) {
            integrationConfig.setParse(integrationConfigItem);
        } else if (i == 2) {
            integrationConfig.setUrbanAirship(integrationConfigItem);
        } else if (i != 3) {
            ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Invalid pushProvider: %d", Integer.valueOf(i));
        } else {
            integrationConfig.setAmazonAwsSns(integrationConfigItem);
        }
    }

    public void setSdk(Sdk sdk) {
        getConversationData().setSdk(sdk);
    }

    public void setState(ConversationState conversationState) {
        this.prevState = this.state;
        this.state = conversationState;
    }

    public void setTargets(String str) {
        getConversationData().setTargets(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUserId(String str) {
        this.userId = str;
    }

    public void startListeningForChanges() {
        this.conversationData.setDataChangedListener(this);
        this.conversationData.setPersonDataListener(this);
        this.conversationData.setDeviceDataListener(this);
    }

    public void startSession() {
        Assert.assertNull(this.sessionId, "Another session is active");
        String generateSessionId = generateSessionId();
        this.sessionId = generateSessionId;
        ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Started session '%s'", generateSessionId);
    }

    public String toString() {
        return StringUtils.format("Conversation: localId=%s id=%s state=%s token=%s", getLocalIdentifier(), getConversationId(), getState(), ApptentiveLog.hideIfSanitized(getConversationToken()));
    }
}
