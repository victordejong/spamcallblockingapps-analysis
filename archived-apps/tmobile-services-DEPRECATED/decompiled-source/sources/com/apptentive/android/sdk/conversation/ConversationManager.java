package com.apptentive.android.sdk.conversation;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.comm.ApptentiveHttpClient;
import com.apptentive.android.sdk.conversation.ConversationMetadata;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.encryption.EncryptionFactory;
import com.apptentive.android.sdk.migration.Migrator;
import com.apptentive.android.sdk.model.Configuration;
import com.apptentive.android.sdk.model.ConversationTokenRequest;
import com.apptentive.android.sdk.module.engagement.EngagementModule;
import com.apptentive.android.sdk.network.HttpJsonRequest;
import com.apptentive.android.sdk.network.HttpRequest;
import com.apptentive.android.sdk.notifications.ApptentiveNotification;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver;
import com.apptentive.android.sdk.serialization.ObjectSerialization;
import com.apptentive.android.sdk.storage.AppRelease;
import com.apptentive.android.sdk.storage.AppReleaseManager;
import com.apptentive.android.sdk.storage.Device;
import com.apptentive.android.sdk.storage.DeviceManager;
import com.apptentive.android.sdk.storage.DevicePayloadDiff;
import com.apptentive.android.sdk.storage.Sdk;
import com.apptentive.android.sdk.storage.SdkManager;
import com.apptentive.android.sdk.storage.SerializerException;
import com.apptentive.android.sdk.util.Jwt;
import com.apptentive.android.sdk.util.ObjectUtils;
import com.apptentive.android.sdk.util.RuntimeUtils;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import org.json.JSONObject;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/ConversationManager.class */
public class ConversationManager {
    private static final Apptentive.LoginCallback NULL_LOGIN_CALLBACK = new Apptentive.LoginCallback() { // from class: com.apptentive.android.sdk.conversation.ConversationManager.6
        @Override // com.apptentive.android.sdk.Apptentive.LoginCallback
        public void onLoginFail(String str) {
        }

        @Override // com.apptentive.android.sdk.Apptentive.LoginCallback
        public void onLoginFinish() {
        }
    };
    private Conversation activeConversation;
    private boolean activeConversationFailedToResolve;
    private ConversationProxy activeConversationProxy;
    private boolean appIsInForeground;
    private final WeakReference<Context> contextRef;
    private ConversationMetadata conversationMetadata;
    private final File conversationsStorageDir;
    private final DeviceManager deviceManager;
    private final Encryption encryption;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apptentive.android.sdk.conversation.ConversationManager$11 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/ConversationManager$11.class */
    public static /* synthetic */ class C074111 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$conversation$ConversationState */
        static final /* synthetic */ int[] f6445x160c0ed;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConversationState.values().length];
            f6445x160c0ed = iArr;
            try {
                iArr[ConversationState.ANONYMOUS_PENDING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6445x160c0ed[ConversationState.LEGACY_PENDING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6445x160c0ed[ConversationState.ANONYMOUS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6445x160c0ed[ConversationState.LOGGED_IN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public ConversationManager(@NonNull Context context, @NonNull File file, @NonNull Encryption encryption, @NonNull DeviceManager deviceManager) {
        if (context == null) {
            throw new IllegalArgumentException("Context is null");
        } else if (file == null) {
            throw new IllegalArgumentException("Conversation storage dir is null");
        } else if (encryption == null) {
            throw new IllegalArgumentException("Encryption is null");
        } else if (deviceManager != null) {
            this.contextRef = new WeakReference<>(context.getApplicationContext());
            this.conversationsStorageDir = file;
            this.encryption = encryption;
            this.deviceManager = deviceManager;
            ApptentiveNotificationCenter.defaultCenter().addObserver("APP_ENTERED_FOREGROUND", new ApptentiveNotificationObserver() { // from class: com.apptentive.android.sdk.conversation.ConversationManager.1
                @Override // com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver
                public void onReceiveNotification(ApptentiveNotification apptentiveNotification) {
                    ApptentiveHelper.checkConversationQueue();
                    ConversationManager.this.appIsInForeground = true;
                    if (ConversationManager.this.activeConversation != null && ConversationManager.this.activeConversation.hasActiveState()) {
                        ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "App entered foreground notification received. Trying to fetch app configuration and interactions...", new Object[0]);
                        Context context2 = ConversationManager.this.getContext();
                        if (context2 != null) {
                            ConversationManager conversationManager = ConversationManager.this;
                            conversationManager.fetchAppConfiguration(conversationManager.activeConversation);
                            ConversationManager.this.activeConversation.fetchInteractions(context2);
                            return;
                        }
                        ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "Can't fetch app configuration and conversation interactions: context is lost", new Object[0]);
                    }
                }
            });
            ApptentiveNotificationCenter.defaultCenter().addObserver("APP_ENTERED_BACKGROUND", new ApptentiveNotificationObserver() { // from class: com.apptentive.android.sdk.conversation.ConversationManager.2
                @Override // com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver
                public void onReceiveNotification(ApptentiveNotification apptentiveNotification) {
                    ApptentiveHelper.checkConversationQueue();
                    ConversationManager.this.appIsInForeground = false;
                }
            });
        } else {
            throw new IllegalArgumentException("Device manager is null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Encryption createPayloadEncryption(String str) {
        return EncryptionFactory.createEncryption(str, "AES/CBC/PKCS5Padding");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchAppConfiguration(Conversation conversation) {
        ApptentiveHelper.checkConversationQueue();
        try {
            fetchAppConfigurationGuarded(conversation);
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while fetching app configuration", new Object[0]);
            ErrorMetrics.logException(e);
        }
    }

    private void fetchAppConfigurationGuarded(final Conversation conversation) {
        ApptentiveLog.m15646d(ApptentiveLogTag.APP_CONFIGURATION, "Fetching app configuration...", new Object[0]);
        if (getHttpClient().findRequest("fetch_app_configuration") != null) {
            ApptentiveLog.m15646d(ApptentiveLogTag.APP_CONFIGURATION, "Can't fetch app configuration: another request already pending", new Object[0]);
        } else if (Configuration.load().hasConfigurationCacheExpired() || RuntimeUtils.isAppDebuggable(getContext())) {
            HttpJsonRequest createAppConfigurationRequest = getHttpClient().createAppConfigurationRequest(conversation.getConversationId(), conversation.getConversationToken(), new HttpRequest.Listener<HttpJsonRequest>(this) { // from class: com.apptentive.android.sdk.conversation.ConversationManager.5
                public void onCancel(HttpJsonRequest httpJsonRequest) {
                }

                public void onFail(HttpJsonRequest httpJsonRequest, String str) {
                    ApptentiveLog.m15644e(ApptentiveLogTag.APP_CONFIGURATION, "App configuration request failed: %s", str);
                }

                public void onFinish(HttpJsonRequest httpJsonRequest) {
                    try {
                        Integer parseCacheControlHeader = Util.parseCacheControlHeader(httpJsonRequest.getResponseHeader("Cache-Control"));
                        Integer num = parseCacheControlHeader;
                        if (parseCacheControlHeader == null) {
                            num = 86400;
                        }
                        ApptentiveLog.m15646d(ApptentiveLogTag.APP_CONFIGURATION, "Caching configuration for %d seconds.", num);
                        Configuration configuration = new Configuration(httpJsonRequest.getResponseObject().toString());
                        configuration.setConfigurationCacheExpirationMillis(System.currentTimeMillis() + (num.intValue() * 1000));
                        configuration.save();
                        ApptentiveNotificationCenter.defaultCenter().postNotification("CONFIGURATION_FETCH_DID_FINISH", "configuration", configuration, "conversation", conversation);
                    } catch (Exception e) {
                        ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while parsing app configuration response", new Object[0]);
                        ErrorMetrics.logException(e);
                        ApptentiveNotificationCenter.defaultCenter().postNotification("CONFIGURATION_FETCH_DID_FINISH", "configuration", null);
                    }
                }
            });
            createAppConfigurationRequest.setTag("fetch_app_configuration");
            createAppConfigurationRequest.setCallbackQueue(ApptentiveHelper.conversationQueue());
            createAppConfigurationRequest.start();
        } else {
            ApptentiveLog.m15646d(ApptentiveLogTag.APP_CONFIGURATION, "Can't fetch app configuration: the old configuration is still valid", new Object[0]);
        }
    }

    private HttpRequest fetchConversationToken(final Conversation conversation) {
        ApptentiveHelper.checkConversationQueue();
        notifyFetchStarted(conversation);
        Context context = getContext();
        if (context == null) {
            ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "Unable to fetch conversation token: context reference is lost", new Object[0]);
            notifyFetchFinished(conversation, false);
            return null;
        }
        HttpRequest findRequest = getHttpClient().findRequest("fetch_conversation_token");
        if (findRequest != null) {
            ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Conversation already fetching", new Object[0]);
            return findRequest;
        }
        ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Started fetching conversation token...", new Object[0]);
        ConversationTokenRequest conversationTokenRequest = new ConversationTokenRequest();
        final Device generateNewDevice = this.deviceManager.generateNewDevice(context);
        final Sdk generateCurrentSdk = SdkManager.generateCurrentSdk(context);
        final AppRelease appRelease = ApptentiveInternal.getInstance().getAppRelease();
        conversationTokenRequest.setDevice(DevicePayloadDiff.getDiffPayload(null, generateNewDevice));
        conversationTokenRequest.setSdkAndAppRelease(SdkManager.getPayload(generateCurrentSdk), AppReleaseManager.getPayload(appRelease));
        HttpJsonRequest createConversationTokenRequest = getHttpClient().createConversationTokenRequest(conversationTokenRequest, new HttpRequest.Listener<HttpJsonRequest>() { // from class: com.apptentive.android.sdk.conversation.ConversationManager.4
            public void onCancel(HttpJsonRequest httpJsonRequest) {
                ConversationManager.this.notifyFetchFinished(conversation, false);
            }

            public void onFail(HttpJsonRequest httpJsonRequest, String str) {
                ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "Failed to fetch conversation token: %s", str);
                ConversationManager.this.notifyFetchFinished(conversation, false);
            }

            public void onFinish(HttpJsonRequest httpJsonRequest) {
                ApptentiveHelper.checkConversationQueue();
                try {
                    JSONObject responseObject = httpJsonRequest.getResponseObject();
                    String string = responseObject.getString("token");
                    ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.CONVERSATION;
                    ApptentiveLog.m15646d(apptentiveLogTag, "ConversationToken: " + ApptentiveLog.hideIfSanitized(string), new Object[0]);
                    String string2 = responseObject.getString(Name.MARK);
                    ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "New Conversation id: %s", string2);
                    if (StringUtils.isNullOrEmpty(string)) {
                        ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Can't fetch conversation: missing 'token'", new Object[0]);
                        ConversationManager.this.notifyFetchFinished(conversation, false);
                    } else if (StringUtils.isNullOrEmpty(string2)) {
                        ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Can't fetch conversation: missing 'id'", new Object[0]);
                        ConversationManager.this.notifyFetchFinished(conversation, false);
                    } else {
                        conversation.setState(ConversationState.ANONYMOUS);
                        conversation.setConversationToken(string);
                        conversation.setConversationId(string2);
                        conversation.setDevice(generateNewDevice);
                        conversation.setLastSentDevice(generateNewDevice.clone());
                        conversation.setAppRelease(appRelease);
                        conversation.setSdk(generateCurrentSdk);
                        conversation.setLastSeenSdkVersion(generateCurrentSdk.getVersion());
                        String string3 = responseObject.getString("person_id");
                        ApptentiveLogTag apptentiveLogTag2 = ApptentiveLogTag.CONVERSATION;
                        ApptentiveLog.m15646d(apptentiveLogTag2, "PersonId: " + string3, new Object[0]);
                        conversation.getPerson().setId(string3);
                        ConversationManager.this.notifyFetchFinished(conversation, true);
                        ConversationManager.this.handleConversationStateChange(conversation);
                    }
                } catch (Exception e) {
                    ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while handling conversation token", new Object[0]);
                    ErrorMetrics.logException(e);
                    ConversationManager.this.notifyFetchFinished(conversation, false);
                }
            }
        });
        createConversationTokenRequest.setCallbackQueue(ApptentiveHelper.conversationQueue());
        createConversationTokenRequest.setTag("fetch_conversation_token");
        createConversationTokenRequest.start();
        return createConversationTokenRequest;
    }

    private HttpRequest fetchLegacyConversation(final Conversation conversation) {
        Assert.assertNotNull(conversation);
        if (conversation != null) {
            Assert.assertEquals(conversation.getState(), ConversationState.LEGACY_PENDING);
            String conversationToken = conversation.getConversationToken();
            if (!StringUtils.isNullOrEmpty(conversationToken)) {
                Assert.assertFalse(StringUtils.isNullOrEmpty(conversationToken));
                if (!StringUtils.isNullOrEmpty(conversationToken)) {
                    HttpJsonRequest createLegacyConversationIdRequest = getHttpClient().createLegacyConversationIdRequest(conversationToken, new HttpRequest.Listener<HttpJsonRequest>() { // from class: com.apptentive.android.sdk.conversation.ConversationManager.3
                        public void onCancel(HttpJsonRequest httpJsonRequest) {
                        }

                        public void onFail(HttpJsonRequest httpJsonRequest, String str) {
                            ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Failed to fetch legacy conversation id: %s", str);
                        }

                        public void onFinish(HttpJsonRequest httpJsonRequest) {
                            ApptentiveHelper.checkConversationQueue();
                            try {
                                JSONObject responseObject = httpJsonRequest.getResponseObject();
                                String string = responseObject.getString("conversation_id");
                                ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Conversation id: %s", string);
                                if (StringUtils.isNullOrEmpty(string)) {
                                    ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Can't fetch legacy conversation: missing 'id'", new Object[0]);
                                    return;
                                }
                                String string2 = responseObject.getString("anonymous_jwt_token");
                                if (StringUtils.isNullOrEmpty(string)) {
                                    ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Can't fetch legacy conversation: missing 'anonymous_jwt_token'", new Object[0]);
                                    return;
                                }
                                ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Conversation JWT: %s", string2);
                                conversation.setState(ConversationState.ANONYMOUS);
                                conversation.setConversationToken(string2);
                                conversation.setConversationId(string);
                                ConversationManager.this.handleConversationStateChange(conversation);
                            } catch (Exception e) {
                                ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while handling legacy conversation id", new Object[0]);
                                ErrorMetrics.logException(e);
                            }
                        }
                    });
                    createLegacyConversationIdRequest.setCallbackQueue(ApptentiveHelper.conversationQueue());
                    createLegacyConversationIdRequest.setTag("fetch_conversation_token");
                    createLegacyConversationIdRequest.start();
                    return createLegacyConversationIdRequest;
                }
                throw new IllegalArgumentException("Conversation is null");
            }
            throw new IllegalStateException("Missing conversation token");
        }
        throw new IllegalArgumentException("Conversation is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public File generateConversationDataFilename() {
        File file = this.conversationsStorageDir;
        return Util.getEncryptedFilename(new File(file, "conversation-" + Util.generateRandomFilename()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public File generateMessagesFilename() {
        File file = this.conversationsStorageDir;
        return Util.getEncryptedFilename(new File(file, "messages-" + Util.generateRandomFilename()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        return this.contextRef.get();
    }

    private ApptentiveHttpClient getHttpClient() {
        return ApptentiveInternal.getInstance().getApptentiveHttpClient();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleConversationStateChange(Conversation conversation) {
        ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Conversation state changed: %s", conversation);
        ApptentiveHelper.checkConversationQueue();
        Assert.assertTrue(conversation != null && !conversation.hasState(ConversationState.UNDEFINED));
        if (conversation != null && !conversation.hasState(ConversationState.UNDEFINED)) {
            ApptentiveNotificationCenter.defaultCenter().postNotification("CONVERSATION_STATE_DID_CHANGE", "conversation", conversation);
            if (conversation.hasActiveState()) {
                if (this.appIsInForeground) {
                    conversation.fetchInteractions(getContext());
                    conversation.getMessageManager().attemptToStartMessagePolling();
                }
                fetchAppConfiguration(conversation);
                SharedPreferences globalSharedPrefs = ApptentiveInternal.getInstance().getGlobalSharedPrefs();
                int i = globalSharedPrefs.getInt("pushProvider", -1);
                String string = globalSharedPrefs.getString("pushToken", null);
                if (!(i == -1 || string == null)) {
                    conversation.setPushIntegration(i, string);
                }
            }
            updateMetadataItems(conversation);
            if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
                printMetadata(this.conversationMetadata, "Updated Metadata");
            }
        }
    }

    @Nullable
    private Conversation loadActiveConversationGuarded() throws ConversationLoadException {
        try {
            if (this.conversationMetadata.hasItems()) {
                return loadConversationFromMetadata(this.conversationMetadata);
            }
            Conversation migrateLegacyConversation = migrateLegacyConversation(getContext());
            if (migrateLegacyConversation != null) {
                return migrateLegacyConversation;
            }
            ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "Creating 'anonymous' conversation...", new Object[0]);
            Conversation conversation = new Conversation(generateConversationDataFilename(), generateMessagesFilename(), this.encryption, null);
            conversation.setState(ConversationState.ANONYMOUS_PENDING);
            fetchConversationToken(conversation);
            return conversation;
        } catch (Exception e) {
            ApptentiveLog.m15641e(e, "Exception while loading conversation", new Object[0]);
            ErrorMetrics.logException(e);
            throw new ConversationLoadException("Unable to load conversation", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Conversation loadConversation(ConversationMetadataItem conversationMetadataItem) throws SerializerException, ConversationLoadException {
        String str;
        ApptentiveHelper.checkConversationQueue();
        Encryption encryption = this.encryption;
        if (ConversationState.LOGGED_IN.equals(conversationMetadataItem.getConversationState())) {
            str = conversationMetadataItem.getConversationEncryptionKey();
            if (str != null) {
                encryption = createPayloadEncryption(str);
            } else {
                throw new ConversationLoadException("Missing conversation encryption key");
            }
        } else {
            str = null;
        }
        Conversation conversation = new Conversation(conversationMetadataItem.getDataFile(), conversationMetadataItem.getMessagesFile(), encryption, str);
        conversation.setState(conversationMetadataItem.getConversationState());
        conversation.setUserId(conversationMetadataItem.getUserId());
        conversation.setConversationToken(conversationMetadataItem.getConversationToken());
        if (!conversation.migrateConversationData()) {
            conversation.loadConversationData();
        }
        conversation.checkInternalConsistency();
        return conversation;
    }

    @Nullable
    private Conversation loadConversationFromMetadata(ConversationMetadata conversationMetadata) throws SerializerException, ConversationLoadException {
        ConversationMetadataItem findItem = conversationMetadata.findItem(ConversationState.LOGGED_IN);
        if (findItem != null) {
            ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "Loading 'logged-in' conversation...", new Object[0]);
            return loadConversation(findItem);
        }
        ConversationMetadataItem findItem2 = conversationMetadata.findItem(ConversationState.ANONYMOUS);
        if (findItem2 != null) {
            ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "Loading 'anonymous' conversation...", new Object[0]);
            return loadConversation(findItem2);
        }
        ConversationMetadataItem findItem3 = conversationMetadata.findItem(ConversationState.ANONYMOUS_PENDING);
        if (findItem3 != null) {
            ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "Loading 'anonymous pending' conversation...", new Object[0]);
            Conversation loadConversation = loadConversation(findItem3);
            fetchConversationToken(loadConversation);
            return loadConversation;
        }
        ConversationMetadataItem findItem4 = conversationMetadata.findItem(ConversationState.LEGACY_PENDING);
        if (findItem4 != null) {
            ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "Loading 'legacy pending' conversation...", new Object[0]);
            Conversation loadConversation2 = loadConversation(findItem4);
            fetchLegacyConversation(loadConversation2);
            return loadConversation2;
        }
        ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "No active conversations to load: only 'logged-out' conversations available", new Object[0]);
        return null;
    }

    @Nullable
    private Conversation migrateLegacyConversation(Context context) {
        SharedPreferences globalSharedPrefs = ApptentiveInternal.getInstance().getGlobalSharedPrefs();
        String string = globalSharedPrefs.getString("conversationToken", null);
        if (StringUtils.isNullOrEmpty(string)) {
            return null;
        }
        ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "Migrating an existing legacy conversation to the new format...", new Object[0]);
        globalSharedPrefs.edit().remove("conversationToken").remove("pollForInteractions").apply();
        String string2 = globalSharedPrefs.getString("lastSeenSdkVersion", null);
        Apptentive.Version version = new Apptentive.Version();
        version.setVersion("4.0.0");
        Apptentive.Version version2 = new Apptentive.Version();
        version2.setVersion(string2);
        if (string2 == null || version2.compareTo(version) >= 0) {
            return null;
        }
        ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "Creating 'legacy' conversation...", new Object[0]);
        Conversation conversation = new Conversation(generateConversationDataFilename(), generateMessagesFilename(), this.encryption, null);
        conversation.setState(ConversationState.LEGACY_PENDING);
        conversation.setConversationToken(string);
        new Migrator(context, globalSharedPrefs, conversation).migrate();
        ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Fetching legacy conversation...", new Object[0]);
        fetchLegacyConversation(conversation);
        return conversation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFetchFinished(Conversation conversation, boolean z) {
        ApptentiveNotificationCenter.defaultCenter().postNotification("CONVERSATION_TOKEN_DID_FETCH", "conversation", conversation, "successful", z ? Boolean.TRUE : Boolean.FALSE);
    }

    private void notifyFetchStarted(Conversation conversation) {
        ApptentiveNotificationCenter.defaultCenter().postNotification("CONVERSATION_TOKEN_WILL_FETCH", "conversation", conversation);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object[], java.lang.Object[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void printMetadata(com.apptentive.android.sdk.conversation.ConversationMetadata r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.conversation.ConversationManager.printMetadata(com.apptentive.android.sdk.conversation.ConversationMetadata, java.lang.String):void");
    }

    private void requestLoggedInConversation(final String str, final Apptentive.LoginCallback loginCallback) {
        ApptentiveHelper.checkConversationQueue();
        if (loginCallback != null) {
            try {
                final String optString = Jwt.decode(str).getPayload().optString("sub");
                if (StringUtils.isNullOrEmpty(optString)) {
                    ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Error while extracting user id: Missing field \"sub\"", new Object[0]);
                    loginCallback.onLoginFail("Error while extracting user id: Missing field \"sub\"");
                } else if (this.activeConversationFailedToResolve) {
                    ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Unable to login: active conversation was not loaded", new Object[0]);
                    loginCallback.onLoginFail("Unable to login: active conversation was not loaded");
                } else {
                    Conversation conversation = this.activeConversation;
                    if (conversation == null) {
                        ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "No active conversation. Performing login...", new Object[0]);
                        ConversationMetadataItem findItem = this.conversationMetadata.findItem(new ConversationMetadata.Filter(this) { // from class: com.apptentive.android.sdk.conversation.ConversationManager.7
                            @Override // com.apptentive.android.sdk.conversation.ConversationMetadata.Filter
                            public boolean accept(ConversationMetadataItem conversationMetadataItem) {
                                return StringUtils.equal(conversationMetadataItem.getUserId(), optString);
                            }
                        });
                        if (findItem == null) {
                            ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "No conversation found matching user: '%s'. Logging in as new user.", optString);
                            sendFirstLoginRequest(optString, str, loginCallback);
                            return;
                        }
                        sendLoginRequest(findItem.getConversationId(), optString, str, loginCallback);
                        return;
                    }
                    int i = C074111.f6445x160c0ed[conversation.getState().ordinal()];
                    if (i == 1 || i == 2) {
                        HttpRequest fetchConversationToken = this.activeConversation.hasState(ConversationState.ANONYMOUS_PENDING) ? fetchConversationToken(this.activeConversation) : fetchLegacyConversation(this.activeConversation);
                        if (fetchConversationToken == null) {
                            ApptentiveLog.m15644e(ApptentiveLogTag.CONVERSATION, "Unable to login: fetch request failed to send", new Object[0]);
                            loginCallback.onLoginFail("fetch request failed to send");
                            return;
                        }
                        fetchConversationToken.addListener(new HttpRequest.Listener<HttpRequest>() { // from class: com.apptentive.android.sdk.conversation.ConversationManager.8
                            @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
                            public void onCancel(HttpRequest httpRequest) {
                                ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Unable to login: conversation fetching cancelled.", new Object[0]);
                                loginCallback.onLoginFail("Conversation fetching was cancelled");
                            }

                            @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
                            public void onFail(HttpRequest httpRequest, String str2) {
                                ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Unable to login: conversation fetching failed.", new Object[0]);
                                Apptentive.LoginCallback loginCallback2 = loginCallback;
                                loginCallback2.onLoginFail("Conversation fetching failed: " + str2);
                            }

                            @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
                            public void onFinish(HttpRequest httpRequest) {
                                ApptentiveHelper.checkConversationQueue();
                                Assert.assertTrue(ConversationManager.this.activeConversation != null && ConversationManager.this.activeConversation.hasState(ConversationState.ANONYMOUS), "Active conversation is missing or in a wrong state: %s", ConversationManager.this.activeConversation);
                                if (ConversationManager.this.activeConversation == null || !ConversationManager.this.activeConversation.hasState(ConversationState.ANONYMOUS)) {
                                    loginCallback.onLoginFail("Conversation fetching completed abnormally");
                                    return;
                                }
                                ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Conversation fetching complete. Performing login...", new Object[0]);
                                ConversationManager conversationManager = ConversationManager.this;
                                conversationManager.sendLoginRequest(conversationManager.activeConversation.getConversationId(), optString, str, loginCallback);
                            }
                        });
                    } else if (i == 3) {
                        sendLoginRequest(this.activeConversation.getConversationId(), optString, str, loginCallback);
                    } else if (i != 4) {
                        Assert.assertFail("Unexpected conversation state: " + this.activeConversation.getState());
                        loginCallback.onLoginFail("internal error");
                    } else if (StringUtils.equal(this.activeConversation.getUserId(), optString)) {
                        ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "Refreshing auth token for logged in user: \"%s\"", optString);
                        sendLoginRequest(this.activeConversation.getConversationId(), optString, str, loginCallback);
                    } else {
                        loginCallback.onLoginFail("Already logged in. You must log out first.");
                    }
                }
            } catch (Exception e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while extracting user id", new Object[0]);
                ErrorMetrics.logException(e);
                loginCallback.onLoginFail("Exception while extracting user id");
            }
        } else {
            throw new IllegalArgumentException("Callback is null");
        }
    }

    private ConversationMetadata resolveMetadata() throws ConversationMetadataLoadException {
        ApptentiveHelper.checkConversationQueue();
        try {
            File file = new File(this.conversationsStorageDir, "conversation-v2.meta");
            if (file.exists()) {
                ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Loading metadata file: %s", file);
                return (ConversationMetadata) ObjectSerialization.deserialize(file, ConversationMetadata.class, this.encryption);
            }
            File file2 = new File(this.conversationsStorageDir, "conversation-v1.meta");
            if (file2.exists()) {
                ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Loading legacy v1 metadata file: %s", file2);
                ConversationMetadata conversationMetadata = (ConversationMetadata) ObjectSerialization.deserialize(file2, ConversationMetadata.class);
                ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Legacy metadata file deleted: %b", Boolean.valueOf(file2.delete()));
                return conversationMetadata;
            }
            ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "No metadata files", new Object[0]);
            return new ConversationMetadata();
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while loading conversation metadata", new Object[0]);
            ErrorMetrics.logException(e);
            throw new ConversationMetadataLoadException("Unable to load metadata", e);
        }
    }

    private void saveMetadata() {
        ApptentiveHelper.checkConversationQueue();
        try {
            if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
                ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Saving metadata: ", this.conversationMetadata.toString());
            }
            long currentTimeMillis = System.currentTimeMillis();
            ObjectSerialization.serialize(new File(this.conversationsStorageDir, "conversation-v2.meta"), this.conversationMetadata, this.encryption);
            ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Saved metadata (took %d ms)", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while saving metadata", new Object[0]);
            ErrorMetrics.logException(e);
        }
    }

    private void sendFirstLoginRequest(final String str, final String str2, final Apptentive.LoginCallback loginCallback) {
        ApptentiveHelper.checkConversationQueue();
        final AppRelease appRelease = ApptentiveInternal.getInstance().getAppRelease();
        final Sdk generateCurrentSdk = SdkManager.generateCurrentSdk(getContext());
        final Device generateNewDevice = this.deviceManager.generateNewDevice(getContext());
        HttpJsonRequest createFirstLoginRequest = getHttpClient().createFirstLoginRequest(str2, appRelease, generateCurrentSdk, generateNewDevice, new HttpRequest.Listener<HttpJsonRequest>() { // from class: com.apptentive.android.sdk.conversation.ConversationManager.10
            private void handleLoginFailed(String str3) {
                loginCallback.onLoginFail(str3);
            }

            private void handleLoginFinished(String str3, final String str4, String str5, String str6) {
                ApptentiveHelper.checkConversationQueue();
                Assert.assertNull(ConversationManager.this.activeConversation, "Finished logging into new conversation, but one was already active.");
                Assert.assertNotNull(str6, "Login finished with missing encryption key.");
                Assert.assertFalse(StringUtils.isNullOrEmpty(str5), "Login finished with missing token.");
                Encryption createPayloadEncryption = ConversationManager.this.createPayloadEncryption(str6);
                try {
                    ConversationMetadataItem findItem = ConversationManager.this.conversationMetadata.findItem(new ConversationMetadata.Filter(this) { // from class: com.apptentive.android.sdk.conversation.ConversationManager.10.1
                        @Override // com.apptentive.android.sdk.conversation.ConversationMetadata.Filter
                        public boolean accept(ConversationMetadataItem conversationMetadataItem) {
                            return StringUtils.equal(conversationMetadataItem.getUserId(), str4);
                        }
                    });
                    if (findItem != null) {
                        findItem.setConversationState(ConversationState.LOGGED_IN);
                        findItem.setConversationToken(str5);
                        findItem.setConversationEncryptionKey(str6);
                        ConversationManager.this.setActiveConversation(ConversationManager.this.loadConversation(findItem));
                    } else {
                        ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Creating new logged in conversation...", new Object[0]);
                        ConversationManager.this.setActiveConversation(new Conversation(ConversationManager.this.generateConversationDataFilename(), ConversationManager.this.generateMessagesFilename(), createPayloadEncryption, str6));
                        ConversationManager.this.activeConversation.setAppRelease(appRelease);
                        ConversationManager.this.activeConversation.setSdk(generateCurrentSdk);
                        ConversationManager.this.activeConversation.setDevice(generateNewDevice);
                    }
                    ConversationManager.this.activeConversation.setEncryption(createPayloadEncryption);
                    ConversationManager.this.activeConversation.setPayloadEncryptionKey(str6);
                    ConversationManager.this.activeConversation.setConversationToken(str5);
                    ConversationManager.this.activeConversation.setConversationId(str3);
                    ConversationManager.this.activeConversation.setUserId(str4);
                    ConversationManager.this.activeConversation.setState(ConversationState.LOGGED_IN);
                    ConversationManager.this.activeConversation.startListeningForChanges();
                    ConversationManager.this.activeConversation.scheduleSaveConversationData();
                    ConversationManager.this.handleConversationStateChange(ConversationManager.this.activeConversation);
                    loginCallback.onLoginFinish();
                } catch (Exception e) {
                    ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while creating logged-in conversation", new Object[0]);
                    ErrorMetrics.logException(e);
                    handleLoginFailed("Internal error");
                }
            }

            public void onCancel(HttpJsonRequest httpJsonRequest) {
                handleLoginFailed("Login request was cancelled");
            }

            public void onFail(HttpJsonRequest httpJsonRequest, String str3) {
                handleLoginFailed(str3);
            }

            public void onFinish(HttpJsonRequest httpJsonRequest) {
                try {
                    JSONObject responseObject = httpJsonRequest.getResponseObject();
                    handleLoginFinished(responseObject.getString(Name.MARK), str, str2, responseObject.getString("encryption_key"));
                } catch (Exception e) {
                    ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while parsing login response", new Object[0]);
                    ErrorMetrics.logException(e);
                    handleLoginFailed("Internal error");
                }
            }
        });
        createFirstLoginRequest.setCallbackQueue(ApptentiveHelper.conversationQueue());
        createFirstLoginRequest.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendLoginRequest(String str, final String str2, final String str3, final Apptentive.LoginCallback loginCallback) {
        HttpJsonRequest createLoginRequest = getHttpClient().createLoginRequest(str, str3, new HttpRequest.Listener<HttpJsonRequest>() { // from class: com.apptentive.android.sdk.conversation.ConversationManager.9
            private void handleLoginFailed(String str4) {
                loginCallback.onLoginFail(str4);
            }

            private void handleLoginFinished(String str4, final String str5, String str6, String str7) {
                ApptentiveHelper.checkConversationQueue();
                Assert.assertNotNull(str7, "Login finished with missing encryption key.");
                Assert.assertFalse(StringUtils.isNullOrEmpty(str6), "Login finished with missing token.");
                Encryption createPayloadEncryption = ConversationManager.this.createPayloadEncryption(str7);
                try {
                    if (ConversationManager.this.activeConversation == null) {
                        ConversationMetadataItem findItem = ConversationManager.this.conversationMetadata.findItem(new ConversationMetadata.Filter(this) { // from class: com.apptentive.android.sdk.conversation.ConversationManager.9.1
                            @Override // com.apptentive.android.sdk.conversation.ConversationMetadata.Filter
                            public boolean accept(ConversationMetadataItem conversationMetadataItem) {
                                return StringUtils.equal(conversationMetadataItem.getUserId(), str5);
                            }
                        });
                        if (findItem != null) {
                            findItem.setConversationState(ConversationState.LOGGED_IN);
                            findItem.setConversationToken(str6);
                            findItem.setConversationEncryptionKey(str7);
                            ConversationManager.this.setActiveConversation(ConversationManager.this.loadConversation(findItem));
                        } else {
                            ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Creating new logged in conversation...", new Object[0]);
                            ConversationManager.this.setActiveConversation(new Conversation(ConversationManager.this.generateConversationDataFilename(), ConversationManager.this.generateMessagesFilename(), createPayloadEncryption, str7));
                            ConversationManager.this.activeConversation.setDevice(ConversationManager.this.deviceManager.generateNewDevice(ConversationManager.this.getContext()));
                            ConversationManager.this.activeConversation.setAppRelease(ApptentiveInternal.getInstance().getAppRelease());
                            ConversationManager.this.activeConversation.setSdk(SdkManager.generateCurrentSdk(ConversationManager.this.getContext()));
                        }
                    }
                    ConversationManager.this.activeConversation.setEncryption(createPayloadEncryption);
                    ConversationManager.this.activeConversation.setPayloadEncryptionKey(str7);
                    ConversationManager.this.activeConversation.setConversationToken(str6);
                    ConversationManager.this.activeConversation.setConversationId(str4);
                    ConversationManager.this.activeConversation.setUserId(str5);
                    ConversationManager.this.activeConversation.setState(ConversationState.LOGGED_IN);
                    ConversationManager.this.activeConversation.startListeningForChanges();
                    ConversationManager.this.activeConversation.scheduleSaveConversationData();
                    ConversationManager.this.handleConversationStateChange(ConversationManager.this.activeConversation);
                    loginCallback.onLoginFinish();
                } catch (Exception e) {
                    ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while creating logged-in conversation", new Object[0]);
                    ErrorMetrics.logException(e);
                    handleLoginFailed("Internal error");
                }
            }

            public void onCancel(HttpJsonRequest httpJsonRequest) {
                handleLoginFailed("Login request was cancelled");
            }

            public void onFail(HttpJsonRequest httpJsonRequest, String str4) {
                handleLoginFailed(str4);
            }

            public void onFinish(HttpJsonRequest httpJsonRequest) {
                try {
                    JSONObject responseObject = httpJsonRequest.getResponseObject();
                    handleLoginFinished(responseObject.getString(Name.MARK), str2, str3, responseObject.getString("encryption_key"));
                } catch (Exception e) {
                    ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while parsing login response", new Object[0]);
                    ErrorMetrics.logException(e);
                    handleLoginFailed("Internal error");
                }
            }
        });
        createLoginRequest.setCallbackQueue(ApptentiveHelper.conversationQueue());
        createLoginRequest.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setActiveConversation(@Nullable Conversation conversation) {
        ApptentiveHelper.checkConversationQueue();
        this.activeConversation = conversation;
        this.activeConversationProxy = conversation != null ? new ConversationProxy(conversation) : null;
    }

    private void updateMetadataItems(Conversation conversation) {
        ApptentiveHelper.checkConversationQueue();
        ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Updating metadata: %s", conversation);
        if (conversation.hasState(ConversationState.LOGGED_IN)) {
            Iterator<ConversationMetadataItem> it = this.conversationMetadata.iterator();
            while (it.hasNext()) {
                ConversationMetadataItem next = it.next();
                if (ConversationState.LOGGED_IN.equals(next.getConversationState())) {
                    next.setConversationState(ConversationState.LOGGED_OUT);
                }
            }
        }
        Iterator<ConversationMetadataItem> it2 = this.conversationMetadata.iterator();
        while (it2.hasNext()) {
            ConversationMetadataItem next2 = it2.next();
            next2.setConversationEncryptionKey(null);
            next2.setConversationToken(null);
        }
        ConversationMetadataItem findItem = this.conversationMetadata.findItem(conversation);
        if (findItem == null) {
            findItem = new ConversationMetadataItem(conversation.getLocalIdentifier(), conversation.getConversationId(), conversation.getConversationDataFile(), conversation.getConversationMessagesFile());
            this.conversationMetadata.addItem(findItem);
        } else {
            Assert.assertTrue(conversation.getConversationId() != null || conversation.hasState(ConversationState.ANONYMOUS_PENDING) || conversation.hasState(ConversationState.LEGACY_PENDING), "Missing conversation id for state: %s", conversation.getState());
            findItem.setConversationId(conversation.getConversationId());
        }
        findItem.setConversationState(conversation.getState());
        if (conversation.hasActiveState()) {
            String conversationToken = conversation.getConversationToken();
            Assert.notNull(conversationToken);
            findItem.setConversationToken(conversationToken);
        }
        if (conversation.hasState(ConversationState.LOGGED_IN)) {
            String payloadEncryptionKey = conversation.getPayloadEncryptionKey();
            Assert.notNull(payloadEncryptionKey);
            findItem.setConversationEncryptionKey(payloadEncryptionKey);
            String userId = conversation.getUserId();
            Assert.notNull(userId);
            findItem.setUserId(userId);
        }
        saveMetadata();
    }

    @Nullable
    public Conversation getActiveConversation() {
        ApptentiveHelper.checkConversationQueue();
        return this.activeConversation;
    }

    @Nullable
    public ConversationProxy getActiveConversationProxy() {
        ConversationProxy conversationProxy;
        synchronized (this) {
            conversationProxy = this.activeConversationProxy;
        }
        return conversationProxy;
    }

    public boolean loadActiveConversation(Context context) {
        ApptentiveHelper.checkConversationQueue();
        if (context != null) {
            try {
                ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Resolving metadata...", new Object[0]);
                this.conversationMetadata = resolveMetadata();
                if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
                    printMetadata(this.conversationMetadata, "Loaded Metadata");
                }
                ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Loading active conversation...", new Object[0]);
                setActiveConversation(loadActiveConversationGuarded());
                if (this.activeConversation != null) {
                    ApptentiveNotificationCenter.defaultCenter().postNotification("CONVERSATION_LOAD_DID_FINISH", "conversation", this.activeConversation, "successful", Boolean.TRUE);
                    this.activeConversation.startListeningForChanges();
                    this.activeConversation.scheduleSaveConversationData();
                    handleConversationStateChange(this.activeConversation);
                    return true;
                }
            } catch (Exception e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while loading active conversation", new Object[0]);
                ErrorMetrics.logException(e);
                this.activeConversationFailedToResolve = true;
            }
            ApptentiveNotificationCenter.defaultCenter().postNotification("CONVERSATION_LOAD_DID_FINISH", "successful", Boolean.FALSE);
            return false;
        }
        throw new IllegalArgumentException("Context is null");
    }

    public void login(String str, Apptentive.LoginCallback loginCallback) {
        if (loginCallback == null) {
            loginCallback = NULL_LOGIN_CALLBACK;
        }
        requestLoggedInConversation(str, loginCallback);
    }

    public void logout() {
        ApptentiveHelper.checkConversationQueue();
        Conversation conversation = this.activeConversation;
        if (conversation == null) {
            ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "Attempted to logout(), but there was no Active Conversation.", new Object[0]);
        } else if (C074111.f6445x160c0ed[conversation.getState().ordinal()] != 4) {
            ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "Attempted to logout() from Conversation, but the Active Conversation was not in LOGGED_IN state.", new Object[0]);
        } else {
            ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Ending active conversation.", new Object[0]);
            EngagementModule.engageInternal(getContext(), this.activeConversation, "logout");
            ApptentiveNotificationCenter.defaultCenter().postNotification("CONVERSATION_WILL_LOGOUT", ObjectUtils.toMap("conversation", this.activeConversation));
            this.activeConversation.destroy();
            this.activeConversation.setState(ConversationState.LOGGED_OUT);
            handleConversationStateChange(this.activeConversation);
            setActiveConversation(null);
            ApptentiveInternal.dismissAllInteractions();
        }
    }
}
