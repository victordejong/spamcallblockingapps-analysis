package com.apptentive.android.sdk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.appcompat.C0479R;
import android.text.TextUtils;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.comm.ApptentiveHttpClient;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationManager;
import com.apptentive.android.sdk.conversation.ConversationProxy;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.debug.LogMonitor;
import com.apptentive.android.sdk.encryption.SecurityManager;
import com.apptentive.android.sdk.lifecycle.ApptentiveActivityLifecycleCallbacks;
import com.apptentive.android.sdk.model.Configuration;
import com.apptentive.android.sdk.model.EventPayload;
import com.apptentive.android.sdk.model.LogoutPayload;
import com.apptentive.android.sdk.module.engagement.EngagementModule;
import com.apptentive.android.sdk.module.engagement.interaction.InteractionManager;
import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import com.apptentive.android.sdk.module.messagecenter.MessageManager;
import com.apptentive.android.sdk.module.metric.MetricModule;
import com.apptentive.android.sdk.module.rating.IRatingProvider;
import com.apptentive.android.sdk.module.rating.impl.GooglePlayRatingProvider;
import com.apptentive.android.sdk.module.survey.OnSurveyFinishedListener;
import com.apptentive.android.sdk.notifications.ApptentiveNotification;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver;
import com.apptentive.android.sdk.partners.apptimize.ApptentiveApptimize;
import com.apptentive.android.sdk.partners.apptimize.ApptentiveApptimizeTestInfo;
import com.apptentive.android.sdk.storage.AppRelease;
import com.apptentive.android.sdk.storage.AppReleaseManager;
import com.apptentive.android.sdk.storage.ApptentiveTaskManager;
import com.apptentive.android.sdk.util.AdvertiserManager;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.File;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveInternal.class */
public class ApptentiveInternal implements ApptentiveInstance, ApptentiveNotificationObserver {
    static final String APPTENTIVE_PUSH_EXTRA_KEY = "apptentive";
    static final String BODY_DEFAULT = "body";
    static final String BODY_PARSE = "alert";
    static final String BODY_UA = "com.urbanairship.push.ALERT";
    private static final int LOG_HISTORY_SIZE = 2;
    private static final ApptentiveInstance NULL_INSTANCE = new ApptentiveNullInstance();
    private static final String PUSH_ACTION = "action";
    private static final String PUSH_CONVERSATION_ID = "conversation_id";
    static final String PUSH_EXTRA_KEY_PARSE = "com.parse.Data";
    static final String PUSH_EXTRA_KEY_UA = "com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE";
    static final String TITLE_DEFAULT = "title";
    @SuppressLint({"StaticFieldLeak"})
    private static volatile ApptentiveInternal sApptentiveInternal;
    private final Context appContext;
    private int appDefaultAppCompatThemeId;
    private String appPackageName;
    private final AppRelease appRelease;
    private final ApptentiveHttpClient apptentiveHttpClient;
    private final String apptentiveKey;
    private final String apptentiveSignature;
    private Resources.Theme apptentiveToolbarTheme;
    private WeakReference<Apptentive.AuthenticationFailedListener> authenticationFailedListenerRef;
    private final ConversationManager conversationManager;
    private Map<String, Object> customData;
    private String defaultAppDisplayName;
    private final SharedPreferences globalSharedPrefs;
    private final LinkedBlockingQueue interactionUpdateListeners;
    private boolean loginInProgress;
    private final Object loginMutex;
    private WeakReference<OnSurveyFinishedListener> onSurveyFinishedListener;
    private IRatingProvider ratingProvider;
    private Map<String, String> ratingProviderArgs;
    private String serverUrl;
    private int statusBarColorDefault;
    private final ApptentiveTaskManager taskManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apptentive.android.sdk.ApptentiveInternal$5 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveInternal$5.class */
    public static /* synthetic */ class C07165 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$ApptentiveInternal$PushAction */
        static final /* synthetic */ int[] f52xfe8eccb7 = new int[PushAction.values().length];

        static {
            try {
                f52xfe8eccb7[PushAction.pmc.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveInternal$PushAction.class */
    public enum PushAction {
        pmc,
        unknown;

        public static PushAction parse(String str) {
            try {
                return valueOf(str);
            } catch (IllegalArgumentException e) {
                ApptentiveLog.m399w(ApptentiveLogTag.PUSH, "This version of the SDK can't handle push action '%s'", str);
                return unknown;
            }
        }
    }

    private ApptentiveInternal(Application application, String str, String str2, String str3) {
        this.defaultAppDisplayName = "this app";
        this.interactionUpdateListeners = new LinkedBlockingQueue();
        this.authenticationFailedListenerRef = null;
        this.loginMutex = new Object();
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Apptentive Key is null or empty");
        } else if (StringUtils.isNullOrEmpty(str2)) {
            throw new IllegalArgumentException("Apptentive Signature is null or empty");
        } else {
            this.apptentiveKey = str;
            this.apptentiveSignature = str2;
            this.serverUrl = str3;
            SecurityManager.init(application.getApplicationContext());
            this.appContext = application.getApplicationContext();
            this.globalSharedPrefs = application.getSharedPreferences(Constants.PREF_NAME, 0);
            this.apptentiveHttpClient = new ApptentiveHttpClient(str, str2, getEndpointBase(this.globalSharedPrefs));
            this.conversationManager = new ConversationManager(this.appContext, Util.getInternalDir(this.appContext, Constants.CONVERSATIONS_DIR, true), SecurityManager.getMasterKey());
            this.appRelease = AppReleaseManager.generateCurrentAppRelease(application, this);
            this.taskManager = new ApptentiveTaskManager(this.appContext, this.apptentiveHttpClient, SecurityManager.getMasterKey());
            ApptentiveNotificationCenter.defaultCenter().addObserver(ApptentiveNotifications.NOTIFICATION_CONVERSATION_STATE_DID_CHANGE, this).addObserver(ApptentiveNotifications.NOTIFICATION_CONVERSATION_WILL_LOGOUT, this).addObserver(ApptentiveNotifications.NOTIFICATION_AUTHENTICATION_FAILED, this).addObserver(ApptentiveNotifications.NOTIFICATION_INTERACTION_MANIFEST_FETCHED, this).addObserver(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_FOREGROUND, this).addObserver(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_BACKGROUND, this).addObserver(ApptentiveNotifications.NOTIFICATION_CONFIGURATION_FETCH_DID_FINISH, this);
        }
    }

    public ApptentiveInternal(Context context) {
        this.defaultAppDisplayName = "this app";
        this.interactionUpdateListeners = new LinkedBlockingQueue();
        this.authenticationFailedListenerRef = null;
        this.loginMutex = new Object();
        this.taskManager = null;
        this.globalSharedPrefs = null;
        this.apptentiveKey = null;
        this.apptentiveSignature = null;
        this.apptentiveHttpClient = null;
        this.conversationManager = null;
        this.appContext = context;
        this.appRelease = null;
    }

    private boolean canShowMessageCenterInternal() {
        Conversation conversation = getConversation();
        return conversation != null && canShowMessageCenterInternal(conversation);
    }

    public static boolean canShowMessageCenterInternal(Conversation conversation) {
        return EngagementModule.canShowInteraction(conversation, SettingsJsonConstants.APP_KEY, MessageCenterInteraction.DEFAULT_INTERNAL_EVENT_NAME, "com.apptentive");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean checkRegistered() {
        if (isApptentiveRegistered()) {
            return true;
        }
        ApptentiveLog.m411e(ApptentiveLogTag.CONVERSATION, "Error: You have failed to call Apptentive.register() in your Application.onCreate()", new Object[0]);
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkSendVersionChanges(com.apptentive.android.sdk.conversation.Conversation r8) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.ApptentiveInternal.checkSendVersionChanges(com.apptentive.android.sdk.conversation.Conversation):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void createInstance(@NonNull Application application, @NonNull ApptentiveConfiguration apptentiveConfiguration) {
        String apptentiveKey = apptentiveConfiguration.getApptentiveKey();
        String apptentiveSignature = apptentiveConfiguration.getApptentiveSignature();
        String baseURL = apptentiveConfiguration.getBaseURL();
        ApptentiveLog.setShouldSanitizeLogMessages(apptentiveConfiguration.shouldSanitizeLogMessages());
        ApptentiveLog.overrideLogLevel(apptentiveConfiguration.getLogLevel());
        if (apptentiveConfiguration.isTroubleshootingModeEnabled()) {
            ApptentiveLog.initializeLogWriter(application.getApplicationContext(), 2);
            LogMonitor.startSession(application.getApplicationContext(), apptentiveKey, apptentiveSignature);
        } else {
            ApptentiveLog.m407i(ApptentiveLogTag.TROUBLESHOOT, "Troubleshooting is disabled in the app configuration", new Object[0]);
        }
        synchronized (ApptentiveInternal.class) {
            try {
                if (sApptentiveInternal == null) {
                    try {
                        ApptentiveLog.m405i("Registering Apptentive Android SDK %s", Constants.getApptentiveSdkVersion());
                        ApptentiveLog.m401v("ApptentiveKey=%s ApptentiveSignature=%s", apptentiveKey, apptentiveSignature);
                        sApptentiveInternal = new ApptentiveInternal(application, apptentiveKey, apptentiveSignature, baseURL);
                        ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.ApptentiveInternal.1
                            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                            protected void execute() {
                                ApptentiveInternal.sApptentiveInternal.start();
                            }
                        });
                        ApptentiveActivityLifecycleCallbacks.register(application);
                    } catch (Exception e) {
                        ApptentiveLog.m408e(e, "Exception while initializing ApptentiveInternal instance", new Object[0]);
                    }
                } else {
                    ApptentiveLog.m397w("Apptentive instance is already initialized", new Object[0]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void dismissAllInteractions() {
        if (!ApptentiveHelper.isConversationQueue()) {
            ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.ApptentiveInternal.4
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    ApptentiveInternal.dismissAllInteractions();
                }
            });
        } else {
            ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_INTERACTIONS_SHOULD_DISMISS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean engageInternal(Context context, String str) {
        Conversation conversation = getConversation();
        boolean z = true;
        Assert.assertNotNull(conversation, "Attempted to engage '%s' internal event without an active conversation", str);
        if (conversation == null || !EngagementModule.engageInternal(context, conversation, str)) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PendingIntent generatePendingIntentFromApptentivePushData(Conversation conversation, String str) {
        ApptentiveLog.m415d(ApptentiveLogTag.PUSH, "Generating Apptentive push PendingIntent.", new Object[0]);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(PUSH_CONVERSATION_ID, null);
            if (optString == null || StringUtils.equal(conversation.getConversationId(), optString)) {
                PushAction pushAction = PushAction.unknown;
                if (jSONObject.has("action")) {
                    pushAction = PushAction.parse(jSONObject.getString("action"));
                }
                if (C07165.f52xfe8eccb7[pushAction.ordinal()] != 1) {
                    ApptentiveLog.m399w(ApptentiveLogTag.PUSH, "Unknown Apptentive push notification action: \"%s\"", pushAction.name());
                    return null;
                }
                MessageManager messageManager = conversation.getMessageManager();
                if (messageManager != null) {
                    messageManager.startMessagePreFetchTask();
                }
                return prepareMessageCenterPendingIntent(getInstance().getApplicationContext(), conversation);
            }
            ApptentiveLog.m407i(ApptentiveLogTag.PUSH, "Can't generate pending intent from Apptentive push data: push conversation id doesn't match active conversation", new Object[0]);
            return null;
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.PUSH, e, "Error parsing JSON from push notification.", new Object[0]);
            MetricModule.sendError(e, "Parsing Apptentive Push", str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getApptentivePushNotificationData(Intent intent) {
        if (intent == null) {
            return null;
        }
        ApptentiveLog.m403v(ApptentiveLogTag.PUSH, "Got an Intent.", new Object[0]);
        return getApptentivePushNotificationData(intent.getExtras());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getApptentivePushNotificationData(Bundle bundle) {
        if (bundle != null) {
            if (bundle.containsKey(PUSH_EXTRA_KEY_PARSE)) {
                ApptentiveLog.m403v(ApptentiveLogTag.PUSH, "Got a Parse Push.", new Object[0]);
                String string = bundle.getString(PUSH_EXTRA_KEY_PARSE);
                if (string == null) {
                    ApptentiveLog.m411e(ApptentiveLogTag.PUSH, "com.parse.Data is null.", new Object[0]);
                    return null;
                }
                try {
                    return new JSONObject(string).optString("apptentive", null);
                } catch (JSONException e) {
                    ApptentiveLog.m411e(ApptentiveLogTag.PUSH, "com.parse.Data is corrupt: %s", string);
                    return null;
                }
            } else if (bundle.containsKey(PUSH_EXTRA_KEY_UA)) {
                ApptentiveLog.m403v(ApptentiveLogTag.PUSH, "Got an Urban Airship push.", new Object[0]);
                Bundle bundle2 = bundle.getBundle(PUSH_EXTRA_KEY_UA);
                if (bundle2 != null) {
                    return bundle2.getString("apptentive");
                }
                ApptentiveLog.m411e(ApptentiveLogTag.PUSH, "Urban Airship push extras bundle is null", new Object[0]);
                return null;
            } else if (bundle.containsKey("apptentive")) {
                ApptentiveLog.m403v(ApptentiveLogTag.PUSH, "Found apptentive push data.", new Object[0]);
                return bundle.getString("apptentive");
            } else {
                ApptentiveLog.m411e(ApptentiveLogTag.PUSH, "Got an unrecognizable push.", new Object[0]);
            }
        }
        ApptentiveLog.m411e(ApptentiveLogTag.PUSH, "Push bundle was null.", new Object[0]);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getApptentivePushNotificationData(Map<String, String> map) {
        if (map != null) {
            return map.get("apptentive");
        }
        return null;
    }

    private String getEndpointBase(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString(Constants.PREF_KEY_SERVER_URL, null);
        String str = string;
        if (string == null) {
            str = Constants.CONFIG_DEFAULT_SERVER_URL;
            sharedPreferences.edit().putString(Constants.PREF_KEY_SERVER_URL, Constants.CONFIG_DEFAULT_SERVER_URL).apply();
        }
        return str;
    }

    @NonNull
    public static ApptentiveInstance getInstance() {
        ApptentiveInstance apptentiveInstance;
        synchronized (ApptentiveInternal.class) {
            try {
                apptentiveInstance = sApptentiveInternal != null ? sApptentiveInternal : NULL_INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return apptentiveInstance;
    }

    private void invalidateCaches(Conversation conversation) {
        ApptentiveHelper.checkConversationQueue();
        conversation.setInteractionExpiration(0.0d);
        Configuration load = Configuration.load();
        load.setConfigurationCacheExpirationMillis(System.currentTimeMillis());
        load.save();
    }

    public static boolean isApptentiveRegistered() {
        return sApptentiveInternal != null;
    }

    public static boolean isConversationActive() {
        return (sApptentiveInternal == null || sApptentiveInternal.getConversation() == null) ? false : true;
    }

    private void onAppEnterBackground() {
        ApptentiveHelper.checkConversationQueue();
        onAppExit(getApplicationContext());
    }

    private void onAppEnterForeground() {
        ApptentiveHelper.checkConversationQueue();
        if (ApptentiveLog.isLogWriterInitialized()) {
            LogMonitor.startSession(this.appContext, this.apptentiveKey, this.apptentiveSignature);
        }
        onAppLaunch(getApplicationContext());
    }

    private void onAppExit(Context context) {
        ApptentiveHelper.checkConversationQueue();
        if (isConversationActive()) {
            engageInternal(context, EventPayload.EventLabel.app__exit.getLabelName());
        }
    }

    private void onAppLaunch(Context context) {
        ApptentiveHelper.checkConversationQueue();
        if (isConversationActive()) {
            engageInternal(context, EventPayload.EventLabel.app__launch.getLabelName());
        }
    }

    public static PendingIntent prepareMessageCenterPendingIntent(Context context, Conversation conversation) {
        Intent intent;
        if (canShowMessageCenterInternal(conversation)) {
            intent = new Intent();
            intent.setClass(context, ApptentiveViewActivity.class);
            intent.putExtra(Constants.FragmentConfigKeys.TYPE, 4);
            intent.putExtra(Constants.FragmentConfigKeys.EXTRA, MessageCenterInteraction.DEFAULT_INTERNAL_EVENT_NAME);
        } else {
            intent = MessageCenterInteraction.generateMessageCenterErrorIntent(context);
        }
        return intent != null ? PendingIntent.getActivity(context, 0, intent, 1207959552) : null;
    }

    private boolean setApplicationDefaultTheme(int i) {
        if (i == 0) {
            return false;
        }
        try {
            this.appContext.getResources().getResourceName(i);
            Resources.Theme newTheme = this.appContext.getResources().newTheme();
            newTheme.applyStyle(i, true);
            TypedArray obtainStyledAttributes = newTheme.obtainStyledAttributes(C0479R.styleable.AppCompatTheme);
            if (obtainStyledAttributes.hasValue(C0479R.styleable.AppCompatTheme_colorPrimaryDark)) {
                this.appDefaultAppCompatThemeId = i;
                obtainStyledAttributes.recycle();
                return true;
            }
            obtainStyledAttributes.recycle();
            return false;
        } catch (Resources.NotFoundException e) {
            ApptentiveLog.m409e("Theme Res id not found", new Object[0]);
            return false;
        }
    }

    public static void setInstance(ApptentiveInternal apptentiveInternal) {
        sApptentiveInternal = apptentiveInternal;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean start() {
        boolean z;
        ApptentiveHelper.checkConversationQueue();
        if (!this.conversationManager.loadActiveConversation(getApplicationContext())) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "There is no active conversation. The SDK will be disabled until a conversation becomes active.", new Object[0]);
        }
        this.apptentiveToolbarTheme = this.appContext.getResources().newTheme();
        try {
            this.appPackageName = this.appContext.getPackageName();
            PackageManager packageManager = this.appContext.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(this.appPackageName, 130);
            setApplicationDefaultTheme(packageInfo.applicationInfo.theme);
            this.defaultAppDisplayName = packageManager.getApplicationLabel(packageManager.getApplicationInfo(packageInfo.packageName, 0)).toString();
            ActivityInfo[] activityInfoArr = packageInfo.receivers;
            if (activityInfoArr != null) {
                for (ActivityInfo activityInfo : activityInfoArr) {
                    if (activityInfo.name.equals("com.apptentive.android.sdk.comm.NetworkStateReceiver")) {
                        throw new AssertionError("NetworkStateReceiver has been removed from Apptentive SDK, please make sure it's also removed from manifest file");
                    }
                }
            }
            tryInitializeApptimizeSDK();
            z = true;
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Unexpected error while reading application or package info.", new Object[0]);
            z = false;
        }
        ApptentiveLog.m401v("Application Info:\n\tApptentive Key: %s\n\tApptentive Key: %s\n\tDebuggable APK: %b\n\tDefault locale: %s", this.apptentiveKey, this.apptentiveSignature, Boolean.valueOf(this.appRelease.isDebug()), Locale.getDefault());
        return z;
    }

    private void storeManifestResponse(Context context, String str) {
        try {
            Util.writeText(new File(ApptentiveLog.getLogsDirectory(context), Constants.FILE_APPTENTIVE_ENGAGEMENT_MANIFEST), str);
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Exception while trying to save engagement manifest data", new Object[0]);
        }
    }

    private void tryInitializeApptimizeSDK() {
        ApptentiveHelper.checkConversationQueue();
        tryUpdateApptimizeData();
    }

    private void updateConversationAdvertiserIdentifier(Conversation conversation) {
        ApptentiveHelper.checkConversationQueue();
        try {
            if (Configuration.load().isCollectingAdID()) {
                AdvertiserManager.AdvertisingIdClientInfo advertisingIdClientInfo = AdvertiserManager.getAdvertisingIdClientInfo();
                conversation.getDevice().setAdvertiserId((advertisingIdClientInfo == null || advertisingIdClientInfo.isLimitAdTrackingEnabled()) ? null : advertisingIdClientInfo.getId());
            }
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.ADVERTISER_ID, e, "Exception while updating conversation advertiser id", new Object[0]);
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void addInteractionUpdateListener(InteractionManager.InteractionUpdateListener interactionUpdateListener) {
        this.interactionUpdateListeners.add(interactionUpdateListener);
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Map<String, Object> getAndClearCustomData() {
        Map<String, Object> map = this.customData;
        this.customData = null;
        return map;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public AppRelease getAppRelease() {
        return this.appRelease;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Context getApplicationContext() {
        return this.appContext;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public int getApplicationVersionCode() {
        return this.appRelease.getVersionCode();
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public String getApplicationVersionName() {
        return this.appRelease.getVersionName();
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public ApptentiveHttpClient getApptentiveHttpClient() {
        return this.apptentiveHttpClient;
    }

    public String getApptentiveKey() {
        return this.apptentiveKey;
    }

    public String getApptentiveSignature() {
        return this.apptentiveSignature;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public ApptentiveTaskManager getApptentiveTaskManager() {
        return this.taskManager;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Resources.Theme getApptentiveToolbarTheme() {
        return this.apptentiveToolbarTheme;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Conversation getConversation() {
        return this.conversationManager.getActiveConversation();
    }

    public ConversationManager getConversationManager() {
        return this.conversationManager;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public ConversationProxy getConversationProxy() {
        return this.conversationManager.getActiveConversationProxy();
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public Activity getCurrentTaskStackTopActivity() {
        return ApptentiveActivityLifecycleCallbacks.getCurrentTopActivity();
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public String getDefaultAppDisplayName() {
        return this.defaultAppDisplayName;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public int getDefaultStatusBarColor() {
        return this.statusBarColorDefault;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public SharedPreferences getGlobalSharedPrefs() {
        return this.globalSharedPrefs;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public OnSurveyFinishedListener getOnSurveyFinishedListener() {
        return this.onSurveyFinishedListener == null ? null : this.onSurveyFinishedListener.get();
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public IRatingProvider getRatingProvider() {
        if (this.ratingProvider == null) {
            this.ratingProvider = new GooglePlayRatingProvider();
        }
        return this.ratingProvider;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Map<String, String> getRatingProviderArgs() {
        return this.ratingProviderArgs;
    }

    public String getServerUrl() {
        return this.serverUrl == null ? Constants.CONFIG_DEFAULT_SERVER_URL : this.serverUrl;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public boolean isAppUsingAppCompatTheme() {
        return this.appDefaultAppCompatThemeId != 0;
    }

    public boolean isApptentiveDebuggable() {
        return this.appRelease.isDebug();
    }

    @Override // com.apptentive.android.sdk.util.Nullsafe
    public boolean isNull() {
        return false;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void login(String str, final Apptentive.LoginCallback loginCallback) {
        synchronized (this.loginMutex) {
            if (this.loginInProgress) {
                if (loginCallback != null) {
                    loginCallback.onLoginFail("Another login request is currently in progress");
                }
                return;
            }
            this.loginInProgress = true;
            this.conversationManager.login(str, new Apptentive.LoginCallback() { // from class: com.apptentive.android.sdk.ApptentiveInternal.3
                @Override // com.apptentive.android.sdk.Apptentive.LoginCallback
                public void onLoginFail(String str2) {
                    synchronized (ApptentiveInternal.this.loginMutex) {
                        Assert.assertTrue(ApptentiveInternal.this.loginInProgress);
                        if (loginCallback != null) {
                            loginCallback.onLoginFail(str2);
                        }
                        ApptentiveInternal.this.loginInProgress = false;
                    }
                }

                @Override // com.apptentive.android.sdk.Apptentive.LoginCallback
                public void onLoginFinish() {
                    synchronized (ApptentiveInternal.this.loginMutex) {
                        Assert.assertTrue(ApptentiveInternal.this.loginInProgress);
                        ApptentiveInternal.this.engageInternal(ApptentiveInternal.this.getApplicationContext(), FirebaseAnalytics.Event.LOGIN);
                        if (loginCallback != null) {
                            loginCallback.onLoginFinish();
                        }
                        ApptentiveInternal.this.loginInProgress = false;
                    }
                }
            });
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void logout() {
        this.conversationManager.logout();
    }

    public void notifyAuthenticationFailedListener(final Apptentive.AuthenticationFailedReason authenticationFailedReason, String str) {
        ApptentiveHelper.checkConversationQueue();
        if (isConversationActive() && StringUtils.equal(getConversation().getConversationId(), str)) {
            final Apptentive.AuthenticationFailedListener authenticationFailedListener = this.authenticationFailedListenerRef != null ? this.authenticationFailedListenerRef.get() : null;
            if (authenticationFailedListener != null) {
                DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.ApptentiveInternal.2
                    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                    protected void execute() {
                        authenticationFailedListener.onAuthenticationFailed(authenticationFailedReason);
                    }
                });
            }
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void notifyInteractionUpdated(boolean z) {
        ApptentiveHelper.checkConversationQueue();
        ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_INTERACTIONS_DID_FETCH, ApptentiveNotifications.NOTIFICATION_KEY_SUCCESSFUL, Boolean.valueOf(z));
        Iterator it = this.interactionUpdateListeners.iterator();
        while (it.hasNext()) {
            InteractionManager.InteractionUpdateListener interactionUpdateListener = (InteractionManager.InteractionUpdateListener) it.next();
            if (interactionUpdateListener != null) {
                interactionUpdateListener.onInteractionUpdated(z);
            }
        }
    }

    @Override // com.apptentive.android.sdk.notifications.ApptentiveNotificationObserver
    public void onReceiveNotification(ApptentiveNotification apptentiveNotification) {
        Configuration configuration;
        Conversation conversation;
        Conversation conversation2;
        ApptentiveHelper.checkConversationQueue();
        if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_CONVERSATION_STATE_DID_CHANGE)) {
            Conversation conversation3 = (Conversation) apptentiveNotification.getRequiredUserInfo(ApptentiveNotifications.NOTIFICATION_KEY_CONVERSATION, Conversation.class);
            if (conversation3.hasActiveState()) {
                checkSendVersionChanges(conversation3);
                updateConversationAdvertiserIdentifier(conversation3);
            }
        } else if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_CONVERSATION_WILL_LOGOUT)) {
            ((Conversation) apptentiveNotification.getRequiredUserInfo(ApptentiveNotifications.NOTIFICATION_KEY_CONVERSATION, Conversation.class)).addPayload(new LogoutPayload());
        } else if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_AUTHENTICATION_FAILED)) {
            notifyAuthenticationFailedListener((Apptentive.AuthenticationFailedReason) apptentiveNotification.getUserInfo(ApptentiveNotifications.NOTIFICATION_KEY_AUTHENTICATION_FAILED_REASON, Apptentive.AuthenticationFailedReason.class), (String) apptentiveNotification.getUserInfo("conversationId", String.class));
        } else if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_INTERACTION_MANIFEST_FETCHED)) {
            storeManifestResponse(this.appContext, (String) apptentiveNotification.getRequiredUserInfo(ApptentiveNotifications.NOTIFICATION_KEY_MANIFEST, String.class));
        } else if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_FOREGROUND)) {
            onAppEnterForeground();
            if (Configuration.load().isCollectingAdID() && AdvertiserManager.updateAdvertisingIdClientInfo(this.appContext) && (conversation2 = getConversation()) != null) {
                updateConversationAdvertiserIdentifier(conversation2);
            }
        } else if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_APP_ENTERED_BACKGROUND)) {
            onAppEnterBackground();
        } else if (apptentiveNotification.hasName(ApptentiveNotifications.NOTIFICATION_CONFIGURATION_FETCH_DID_FINISH) && (configuration = (Configuration) apptentiveNotification.getUserInfo(ApptentiveNotifications.NOTIFICATION_KEY_CONFIGURATION, Configuration.class)) != null) {
            if (configuration.isCollectingAdID() && AdvertiserManager.updateAdvertisingIdClientInfo(this.appContext) && (conversation = getConversation()) != null) {
                updateConversationAdvertiserIdentifier(conversation);
            }
            if (configuration.isCollectingApptimizeData()) {
                tryUpdateApptimizeData();
            }
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void putRatingProviderArg(@NonNull String str, String str2) {
        if (this.ratingProviderArgs == null) {
            this.ratingProviderArgs = new HashMap();
        }
        this.ratingProviderArgs.put(str, str2);
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void removeInteractionUpdateListener(InteractionManager.InteractionUpdateListener interactionUpdateListener) {
        this.interactionUpdateListeners.remove(interactionUpdateListener);
    }

    public void resetSdkState() {
        this.globalSharedPrefs.edit().clear().apply();
        this.taskManager.reset(this.appContext);
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void setAuthenticationFailedListener(Apptentive.AuthenticationFailedListener authenticationFailedListener) {
        this.authenticationFailedListenerRef = new WeakReference<>(authenticationFailedListener);
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void setOnSurveyFinishedListener(OnSurveyFinishedListener onSurveyFinishedListener) {
        if (onSurveyFinishedListener != null) {
            this.onSurveyFinishedListener = new WeakReference<>(onSurveyFinishedListener);
        } else {
            this.onSurveyFinishedListener = null;
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void setRatingProvider(@NonNull IRatingProvider iRatingProvider) {
        this.ratingProvider = iRatingProvider;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void showAboutInternal(Context context, boolean z) {
        Intent intent = new Intent();
        intent.setClass(context, ApptentiveViewActivity.class);
        intent.putExtra(Constants.FragmentConfigKeys.TYPE, 1);
        intent.putExtra(Constants.FragmentConfigKeys.EXTRA, z);
        if (!(context instanceof Activity)) {
            intent.addFlags(402653184);
        }
        context.startActivity(intent);
    }

    public void showMessageCenterFallback(Context context) {
        EngagementModule.launchMessageCenterErrorActivity(context);
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public boolean showMessageCenterInternal(@NonNull Context context, Map<String, Object> map) {
        boolean z = false;
        if (canShowMessageCenterInternal()) {
            if (map != null) {
                Iterator<String> it = map.keySet().iterator();
                while (it.hasNext()) {
                    Object obj = map.get(it.next());
                    if (obj != null && !(obj instanceof String) && !(obj instanceof Boolean) && !(obj instanceof Long) && !(obj instanceof Double) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Short)) {
                        ApptentiveLog.m399w(ApptentiveLogTag.MESSAGES, "Removing invalid customData type: %s", obj.getClass().getSimpleName());
                        it.remove();
                    }
                }
            }
            this.customData = map;
            boolean engageInternal = engageInternal(context, MessageCenterInteraction.DEFAULT_INTERNAL_EVENT_NAME);
            z = engageInternal;
            if (!engageInternal) {
                this.customData = null;
                z = engageInternal;
            }
        } else {
            showMessageCenterFallback(context);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void tryUpdateApptimizeData() {
        ApptentiveHelper.checkConversationQueue();
        if (Configuration.load().isCollectingApptimizeData()) {
            Conversation conversation = getConversation();
            if (conversation == null) {
                ApptentiveLog.m399w(ApptentiveLogTag.PARTNERS, "Unable to update Apptimize data: no active conversation", new Object[0]);
            } else if (!ApptentiveApptimize.isApptimizeSDKAvailable()) {
                ApptentiveLog.m399w(ApptentiveLogTag.PARTNERS, "Unable to initialize Apptimize SDK support: SDK integration not found", new Object[0]);
            } else if (!ApptentiveApptimize.isSupportedLibraryVersion()) {
                ApptentiveLog.m399w(ApptentiveLogTag.PARTNERS, "Unable to update Apptimize data: unsupported library version '%s'", ApptentiveApptimize.getLibraryVersion());
            } else {
                Map<String, ApptentiveApptimizeTestInfo> testInfo = ApptentiveApptimize.getTestInfo();
                if (testInfo == null || testInfo.size() == 0) {
                    ApptentiveLog.m399w(ApptentiveLogTag.PARTNERS, "Unable to update Apptimize data: no experiments", new Object[0]);
                    return;
                }
                for (ApptentiveApptimizeTestInfo apptentiveApptimizeTestInfo : testInfo.values()) {
                    if (apptentiveApptimizeTestInfo != null) {
                        conversation.getDevice().getCustomData().put(StringUtils.format("Apptimize: %s %s", apptentiveApptimizeTestInfo.getTestName(), apptentiveApptimizeTestInfo.userHasParticipated() ? "participated" : "enrolled"), (Serializable) apptentiveApptimizeTestInfo.getEnrolledVariantName());
                    }
                }
            }
        }
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void updateApptentiveInteractionTheme(Context context, Resources.Theme theme) {
        if (!(context instanceof Activity)) {
            theme.applyStyle(C0724R.C0730style.ApptentiveTheme_Base_Versioned, true);
        }
        if (this.appDefaultAppCompatThemeId != 0) {
            theme.applyStyle(this.appDefaultAppCompatThemeId, true);
        }
        theme.applyStyle(C0724R.C0730style.ApptentiveBaseFrameTheme, true);
        int identifier = context.getResources().getIdentifier("ApptentiveThemeOverride", "style", getApplicationContext().getPackageName());
        if (identifier != 0) {
            theme.applyStyle(identifier, true);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            int color = ContextCompat.getColor(context, 17170445);
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(new int[]{16843857});
            try {
                this.statusBarColorDefault = obtainStyledAttributes.getColor(0, color);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        int resourceIdFromAttribute = Util.getResourceIdFromAttribute(theme, C0724R.C0725attr.apptentiveToolbarTheme);
        this.apptentiveToolbarTheme.setTo(theme);
        this.apptentiveToolbarTheme.applyStyle(resourceIdFromAttribute, true);
    }
}
