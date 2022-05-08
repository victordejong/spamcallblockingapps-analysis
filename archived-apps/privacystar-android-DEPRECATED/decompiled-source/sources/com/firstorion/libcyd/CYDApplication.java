package com.firstorion.libcyd;

import android.annotation.TargetApi;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.provider.Settings;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.content.LocalBroadcastManager;
import android.telephony.SmsMessage;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import com.firstorion.libcyd.TemplateParser;
import com.google.firebase.messaging.RemoteMessage;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CYDApplication.class */
public final class CYDApplication {
    private static final long BINARY_SMS_MAGIC = 788618020;
    static final String CYD_OS = "android";
    static final String CYD_SDK_VERSION = "1.1.2";
    private static final String CYD_SHARED_PREFERENCES_API_KEY = "cyd_storage_apiKey";
    private static final String CYD_SHARED_PREFERENCES_IS_ENABLED = "cyd_storage_isEnabled";
    static final String CYD_SHARED_PREFERENCES_KEY = "cyd_storage";
    static final String HEADER_REFRESH_API_KEY = "x-cyd-refresh-key";
    static final String LIBCYD_SENDER_ID = "674119330619";
    static final String TAG_CYD_APPLICATION = "libcyd.app";
    private static CYDApplication instance;
    private static final Object syncObject = new Object();
    private final int dpi;
    private HideAction hideAction;
    private View overlayView;
    private final TelemetryHost telemetryHost = new TelemetryHost(this);
    private boolean incall = false;
    private String callId = null;

    /* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CYDApplication$CYDBroadcastReceiver.class */
    private class CYDBroadcastReceiver extends BroadcastReceiver {
        private CYDBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!RefreshTokenHandler.handle(context, intent) && !RefreshApiKeyHandler.handle(context, intent) && !PushMessageHandler.handle(context, intent)) {
                Log.w(CYDApplication.TAG_CYD_APPLICATION, "Unknown intent action: " + intent.getAction());
            }
        }
    }

    private CYDApplication(int i) {
        this.dpi = i;
    }

    @TargetApi(23)
    private boolean canDrawOverlays(Context context) {
        return Settings.canDrawOverlays(context);
    }

    public static CYDApplication getInstance() {
        if (instance != null) {
            return instance;
        }
        throw new IllegalStateException("Must call initialize CYDApplication.initialize() before accessing CYDApplication.");
    }

    @TargetApi(19)
    private boolean getInteractive19(PowerManager powerManager) {
        return powerManager.isScreenOn();
    }

    @TargetApi(20)
    private boolean getInteractiveGT19(PowerManager powerManager) {
        return powerManager.isInteractive();
    }

    public static String getSdkVersion() {
        return "1.1.2";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleContent(Context context, CydContent cydContent, boolean z, String str, String str2, boolean z2) {
        Throwable th;
        try {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap2.put("callingNumber", str2);
            parseVariables(context, cydContent, hashMap, hashMap2, str);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            TemplateParser.TemplateParseResult create = TemplateParser.create(cydContent.content, context, displayMetrics, hashMap2, hashMap, z);
            this.overlayView = create.view;
            this.overlayView.setOnTouchListener(new ContentMoveManager(windowManager));
            this.overlayView.setY(-create.height);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, Build.VERSION.SDK_INT < 26 ? 2010 : 2038, 2883624, -3);
            layoutParams.gravity = 51;
            layoutParams.x = 0;
            layoutParams.y = z ? 0 : displayMetrics.heightPixels / 4;
            layoutParams.screenOrientation = 1;
            layoutParams.width = create.width;
            layoutParams.height = create.height;
            this.overlayView.animate().y(0.0f).setDuration(500L).setStartDelay(0L).setListener(new LottieAnimationStarter(this.overlayView)).start();
            windowManager.addView(this.overlayView, layoutParams);
            try {
                this.telemetryHost.putTelemetryEvent(new TelemetryEvent(str, null, 50, 0));
                try {
                    this.hideAction = new HideAction(context, this.telemetryHost, cydContent, this.overlayView, str, str2, z2);
                    View findViewWithTag = this.overlayView.findViewWithTag(MessageCenterInteraction.EVENT_NAME_CLOSE);
                    if (findViewWithTag != null) {
                        findViewWithTag.setOnClickListener(new View.OnClickListener() { // from class: com.firstorion.libcyd.CYDApplication.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                synchronized (CYDApplication.syncObject) {
                                    if (CYDApplication.this.hideAction != null) {
                                        CYDApplication.this.hideAction.hideFromClose();
                                        CYDApplication.this.incall = false;
                                    }
                                }
                            }
                        });
                    }
                } catch (Throwable th2) {
                    th = th2;
                    this.incall = false;
                    Log.e(TAG_CYD_APPLICATION, "Unable to turn content into something displayable.", th);
                    this.hideAction = null;
                    try {
                        CydContentManager.removeContentForReason(context, this.telemetryHost, cydContent.metadata.cvid, CleanReason.TemplateError);
                    } catch (Throwable th3) {
                    }
                    this.telemetryHost.putTelemetryEvent(new TelemetryEvent(str, null, 50, 5, Globals.convertExceptionToString(th)));
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private boolean handleNewCall(Context context, Intent intent, final boolean z) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (intent == null) {
            throw new NullPointerException("intent");
        } else {
            final Context applicationContext = context.getApplicationContext();
            synchronized (syncObject) {
                try {
                    KeyguardManager keyguardManager = (KeyguardManager) applicationContext.getSystemService("keyguard");
                    PowerManager powerManager = (PowerManager) applicationContext.getSystemService("power");
                    boolean inKeyguardRestrictedInputMode = keyguardManager.inKeyguardRestrictedInputMode();
                    boolean interactiveGT19 = Build.VERSION.SDK_INT > 19 ? getInteractiveGT19(powerManager) : getInteractive19(powerManager);
                    String stringExtra = intent.getStringExtra("incoming_number");
                    final String parse = PhoneNumberParser.parse(stringExtra, applicationContext);
                    if (parse == null) {
                        Log.e(TAG_CYD_APPLICATION, String.format("Unable to parse %s as a phone number.", stringExtra));
                        return false;
                    }
                    final CydContent content = CydContentManager.getContent(applicationContext, parse);
                    if (content == null) {
                        Log.i(TAG_CYD_APPLICATION, "Ignore. Cause: existence check.");
                        return false;
                    }
                    this.callId = UUID.randomUUID().toString();
                    Log.d(TAG_CYD_APPLICATION, "cyd id: " + this.callId);
                    this.telemetryHost.putTelemetryEvent(new TelemetryEvent(this.callId, content.metadata.tid, 50, 9, parse));
                    long currentTimeMillis = System.currentTimeMillis();
                    if (currentTimeMillis > content.metadata.exp) {
                        Log.i(TAG_CYD_APPLICATION, "Ignore. Cause: exp check.");
                        this.telemetryHost.putTelemetryEvent(new TelemetryEvent(this.callId, null, 50, 12));
                        CydContentManager.cleanExpiredContent(applicationContext, this.telemetryHost);
                        this.telemetryHost.uploadTelemetry(applicationContext);
                        return false;
                    } else if (this.incall) {
                        Log.i(TAG_CYD_APPLICATION, "Ignore. Cause: incall check.");
                        this.telemetryHost.putTelemetryEvent(new TelemetryEvent(this.callId, null, 50, 13));
                        CydContentManager.cleanExpiredContent(applicationContext, this.telemetryHost);
                        this.telemetryHost.uploadTelemetry(applicationContext);
                        return true;
                    } else if (currentTimeMillis < content.metadata.nbf) {
                        Log.i(TAG_CYD_APPLICATION, "Ignore. Cause: nbf check.");
                        this.telemetryHost.putTelemetryEvent(new TelemetryEvent(this.callId, null, 50, 14));
                        CydContentManager.cleanExpiredContent(applicationContext, this.telemetryHost);
                        this.telemetryHost.uploadTelemetry(applicationContext);
                        return false;
                    } else if (!getIsEnabled(applicationContext)) {
                        Log.w(TAG_CYD_APPLICATION, "Bundle exists but cyd is disabled.");
                        this.telemetryHost.putTelemetryEvent(new TelemetryEvent(this.callId, null, 50, 6));
                        CydContentManager.removeContentForReason(applicationContext, this.telemetryHost, content.metadata.cvid, CleanReason.NoOverlayPermissions);
                        this.telemetryHost.uploadTelemetry(applicationContext);
                        return false;
                    } else {
                        if (content.contact != null) {
                            this.telemetryHost.putTelemetryEvent(new TelemetryEvent(this.callId, null, 50, 23));
                        }
                        final boolean hasOverlayPermission = hasOverlayPermission(applicationContext);
                        if (!hasOverlayPermission) {
                            Log.w(TAG_CYD_APPLICATION, "Bundle exists but cyd does not have contact or overlay permission.");
                            this.telemetryHost.putTelemetryEvent(new TelemetryEvent(this.callId, null, 50, 7));
                            if (!hasContactPermission(applicationContext)) {
                                CydContentManager.removeContentForReason(applicationContext, this.telemetryHost, content.metadata.cvid, CleanReason.NoOverlayPermissions);
                            }
                            this.telemetryHost.uploadTelemetry(applicationContext);
                            return false;
                        }
                        final boolean z2 = inKeyguardRestrictedInputMode || !interactiveGT19;
                        if (z2 || content.contact == null) {
                            this.telemetryHost.putTelemetryEvent(new TelemetryEvent(this.callId, null, 50, z2 ? 10 : 11));
                            this.incall = true;
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.firstorion.libcyd.CYDApplication.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (hasOverlayPermission) {
                                        CYDApplication.this.handleContent(applicationContext, content, z2, CYDApplication.this.callId, parse, z);
                                    }
                                    CYDApplication.this.telemetryHost.uploadTelemetry(applicationContext);
                                }
                            });
                            return true;
                        }
                        this.telemetryHost.uploadTelemetry(applicationContext);
                        return true;
                    }
                } catch (InternalErrorException e) {
                    Log.e(TAG_CYD_APPLICATION, "Encountered an internal error.", e);
                    return false;
                } catch (Throwable th) {
                    Log.e(TAG_CYD_APPLICATION, "Encountered an unexcpected error.", th);
                    return false;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void initialize(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        synchronized (syncObject) {
            if (instance == null) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                instance = new CYDApplication(displayMetrics.densityDpi);
                IntentFilter intentFilter = new IntentFilter();
                RefreshTokenHandler.addFilters(intentFilter);
                RefreshApiKeyHandler.addFilters(intentFilter);
                PushMessageHandler.addFilters(intentFilter);
                LocalBroadcastManager instance2 = LocalBroadcastManager.getInstance(context);
                CYDApplication cYDApplication = instance;
                cYDApplication.getClass();
                instance2.registerReceiver(new CYDBroadcastReceiver(), intentFilter);
                WorkerHelper.scheduleCleanAndRefreshTask();
                try {
                    CydContentManager.cleanExpiredContent(context, instance.telemetryHost);
                } catch (Exception e) {
                    Log.e(TAG_CYD_APPLICATION, "Encountered exception while cleaning data", e);
                }
            }
        }
    }

    private void innerSetIsEnabled(Context context, boolean z) {
        context.getSharedPreferences(CYD_SHARED_PREFERENCES_KEY, 0).edit().putString(CYD_SHARED_PREFERENCES_IS_ENABLED, Boolean.toString(z)).apply();
    }

    public static boolean isCYDMessage(RemoteMessage remoteMessage) {
        if (remoteMessage == null) {
            return false;
        }
        return "674119330619".equals(remoteMessage.getFrom());
    }

    public static boolean isInitialized() {
        boolean z;
        synchronized (syncObject) {
            z = instance != null;
        }
        return z;
    }

    private void parseVariables(Context context, CydContent cydContent, Map<String, String> map, Map<String, String> map2, String str) {
        Throwable th;
        String charSequence = context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
        JSONObject jSONObject = cydContent.variables;
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    Object obj = jSONObject.get(next);
                    if (obj instanceof String) {
                        if (next.startsWith("$")) {
                            try {
                                map.put(next.substring(1), (String) obj);
                            } catch (Throwable th2) {
                                th = th2;
                                Log.e(TAG_CYD_APPLICATION, String.format("Encountered error extracting data with key %s.", next), th);
                                this.telemetryHost.putTelemetryEvent(new TelemetryEvent(str, null, 50, 4, Globals.convertExceptionToString(th)));
                            }
                        } else if (next.startsWith("#")) {
                            map2.put(next.substring(1), (String) obj);
                        } else {
                            Log.w(TAG_CYD_APPLICATION, "Variables should start with $ or #. Was: " + obj.toString());
                            this.telemetryHost.putTelemetryEvent(new TelemetryEvent(str, null, 50, 3));
                        }
                    } else if (obj != null) {
                        Log.w(TAG_CYD_APPLICATION, String.format("Variable with key %s is not a string. Was: %s", next, obj.getClass().getName()));
                        this.telemetryHost.putTelemetryEvent(new TelemetryEvent(str, null, 50, 3));
                    } else {
                        Log.w(TAG_CYD_APPLICATION, String.format("Variable with key %s was null.", next));
                        this.telemetryHost.putTelemetryEvent(new TelemetryEvent(str, cydContent.metadata.ctid, 50, 3));
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }
        map2.put("appName", charSequence);
    }

    static long toUnsignedByte(byte b) {
        return b & 255;
    }

    static long toUnsignedInt(byte b, byte b2, byte b3, byte b4) {
        return (toUnsignedByte(b2) << 16) | (toUnsignedByte(b) << 24) | (toUnsignedByte(b3) << 8) | toUnsignedByte(b4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean forceRemoveOverlay(Context context) {
        if (this.overlayView != null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null || !this.overlayView.isAttachedToWindow()) {
                return false;
            }
            windowManager.removeView(this.overlayView);
            return true;
        }
        Log.d(TAG_CYD_APPLICATION, "Overlay is null, cannot remove view");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getApiKey(Context context) {
        if (context != null) {
            return context.getApplicationContext().getSharedPreferences(CYD_SHARED_PREFERENCES_KEY, 0).getString(CYD_SHARED_PREFERENCES_API_KEY, null);
        }
        throw new NullPointerException("context");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDpi() {
        return this.dpi;
    }

    public boolean getIsEnabled(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        Context applicationContext = context.getApplicationContext();
        String string = applicationContext.getSharedPreferences(CYD_SHARED_PREFERENCES_KEY, 0).getString(CYD_SHARED_PREFERENCES_IS_ENABLED, null);
        if (string != null) {
            return Boolean.valueOf(string).booleanValue();
        }
        innerSetIsEnabled(applicationContext, true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TelemetryHost getTelemetryHost() {
        return this.telemetryHost;
    }

    public void handleFinishedCallEvent(Context context, Intent intent) {
        String stringExtra;
        String parse;
        try {
            try {
                stringExtra = intent.getStringExtra("incoming_number");
                parse = PhoneNumberParser.parse(stringExtra, context);
            } catch (InternalErrorException e) {
                Log.e(TAG_CYD_APPLICATION, "Encountered an internal error.", e);
            }
            if (parse == null) {
                Log.e(TAG_CYD_APPLICATION, String.format("Unable to parse %s as a phone number.", stringExtra));
                return;
            }
            CydContent content = CydContentManager.getContent(context, parse);
            if (content == null) {
                Log.i(TAG_CYD_APPLICATION, "Ignore. Cause: existence check.");
                return;
            }
            if (!content.metadata.keep) {
                try {
                    CydContentManager.removeContentForReason(context, this.telemetryHost, content.metadata.cvid, CleanReason.CallEnded);
                } catch (Throwable th) {
                }
            }
            this.telemetryHost.uploadTelemetry(context);
        } finally {
            this.callId = null;
        }
    }

    public void handlePushMessage(Context context, Map<String, String> map) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (map == null) {
            throw new NullPointerException("pushMessageData");
        } else {
            String str = map.get("cyd.owner");
            if (str == null || !"cyd".equals(str)) {
                Log.d(TAG_CYD_APPLICATION, "Ignoring push message because the owner was: " + str);
                return;
            }
            PushMessageHandler.sendHandlePushMessageBroadcast(context, map);
        }
    }

    public boolean hasCallLogPermission(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        return ContextCompat.checkSelfPermission(context.getApplicationContext(), "android.permission.READ_CALL_LOG") == 0;
    }

    public boolean hasContactPermission(Context context) {
        return ContactManager.hasContactPermission(context);
    }

    public boolean hasOverlayPermission(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        return Build.VERSION.SDK_INT < 23 || canDrawOverlays(context.getApplicationContext());
    }

    public boolean isPhoneNumberVerified(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        return getApiKey(context) != null;
    }

    public void onBinarySms(Context context, Intent intent) {
        Throwable th;
        if (context == null) {
            throw new NullPointerException("context");
        } else if (intent == null) {
            throw new NullPointerException("intent");
        } else {
            Context applicationContext = context.getApplicationContext();
            try {
                Bundle extras = intent.getExtras();
                if (!(extras == null || (r0 = (Object[]) extras.get("pdus")) == null)) {
                    String stringExtra = intent.getStringExtra("format");
                    for (Object obj : r0) {
                        byte[] bArr = (byte[]) obj;
                        byte[] userData = (Build.VERSION.SDK_INT >= 23 ? SmsMessage.createFromPdu(bArr, stringExtra) : SmsMessage.createFromPdu(bArr)).getUserData();
                        if (userData.length < 4) {
                            Log.d(TAG_CYD_APPLICATION, String.format("Not enough bytes in message to determine magic: %d", Integer.valueOf(userData.length)));
                        } else {
                            long unsignedInt = toUnsignedInt(userData[0], userData[1], userData[2], userData[3]);
                            if (unsignedInt != BINARY_SMS_MAGIC) {
                                Log.d(TAG_CYD_APPLICATION, String.format("Magic header not correct: %X", Long.valueOf(unsignedInt)));
                            } else if (userData.length < 5) {
                                Log.d(TAG_CYD_APPLICATION, String.format("Not enough bytes in message to determine message type: %d", Integer.valueOf(userData.length)));
                            } else {
                                long unsignedByte = toUnsignedByte(userData[4]);
                                if (userData.length < 6) {
                                    Log.d(TAG_CYD_APPLICATION, String.format("Not enough bytes in message to determine message version. Length: %d, Message type: %X", Integer.valueOf(userData.length), Long.valueOf(unsignedByte)));
                                } else {
                                    long unsignedByte2 = toUnsignedByte(userData[5]);
                                    byte[] bArr2 = new byte[userData.length - 6];
                                    for (int i = 0; i < userData.length - 6; i++) {
                                        bArr2[i] = userData[i + 6];
                                    }
                                    if (unsignedByte == 1) {
                                        Intent intent2 = new Intent();
                                        intent2.setAction("com.firstorion.libcyd.smschallenge.COMPLETE_WITH_BINARY_SMS");
                                        intent2.putExtra("com.firstorion.libcyd.smschallenge.BINARY_SMS_VERSION", unsignedByte2);
                                        intent2.putExtra("com.firstorion.libcyd.smschallenge.BINARY_SMS_PAYLOAD", bArr2);
                                        try {
                                            sendLocalBroadcast(applicationContext, intent2);
                                        } catch (Throwable th2) {
                                            th = th2;
                                            Log.e(TAG_CYD_APPLICATION, "Caught exception unpacking binary sms.", th);
                                            return;
                                        }
                                    } else {
                                        Log.w(TAG_CYD_APPLICATION, String.format("Don't know what to do with message type: %X", Long.valueOf(unsignedByte)));
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public void onCallEnded(Context context, Intent intent) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (intent == null) {
            throw new NullPointerException("intent");
        } else {
            Context applicationContext = context.getApplicationContext();
            synchronized (syncObject) {
                handleFinishedCallEvent(applicationContext, intent);
            }
        }
    }

    public boolean onIncomingCall(Context context, Intent intent) {
        return handleNewCall(context, intent, false);
    }

    public boolean onIncomingMulticall(Context context, Intent intent) {
        return handleNewCall(context, intent, true);
    }

    public void onOverlayPermissionChanged(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        RefreshTokenHandler.sendRefreshExistingTokenBroadcast(context, getApiKey(context));
    }

    public void onRingingStopped(Context context, PhoneRingingStoppedReason phoneRingingStoppedReason, Intent intent) {
        PhoneRingingStoppedReason phoneRingingStoppedReason2 = phoneRingingStoppedReason;
        if (phoneRingingStoppedReason == null) {
            phoneRingingStoppedReason2 = PhoneRingingStoppedReason.Unknown;
        }
        synchronized (syncObject) {
            this.incall = false;
            if (this.hideAction != null) {
                this.hideAction.hideFromPhoneState(phoneRingingStoppedReason2);
            }
            this.hideAction = null;
            if (phoneRingingStoppedReason2 == PhoneRingingStoppedReason.CallIgnored) {
                handleFinishedCallEvent(context.getApplicationContext(), intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void putApiKey(Context context, String str) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        context.getApplicationContext().getSharedPreferences(CYD_SHARED_PREFERENCES_KEY, 0).edit().putString(CYD_SHARED_PREFERENCES_API_KEY, str).apply();
    }

    public void refreshCustomToken(Context context, String str) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (str == null) {
            throw new NullPointerException("token");
        } else {
            TokenHelper.handleRefreshedToken(context, str, getApiKey(context));
        }
    }

    public void refreshExistingToken(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        TokenHelper.attemptExistingTokenRefresh(context, getApiKey(context));
    }

    public void refreshFirstOrionFirebaseToken(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        FirebaseTokenService.refreshToken(context);
    }

    public void resetPhoneNumberVerification(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        Log.d(TAG_CYD_APPLICATION, "Reset: Resetting phone number verification.");
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(CYD_SHARED_PREFERENCES_KEY, 0);
        if (sharedPreferences.getString(CYD_SHARED_PREFERENCES_API_KEY, null) != null) {
            Log.d(TAG_CYD_APPLICATION, "Reset: Purging existing api key.");
            sharedPreferences.edit().remove(CYD_SHARED_PREFERENCES_API_KEY).apply();
        } else {
            Log.d(TAG_CYD_APPLICATION, "Reset: Api key does not exist.");
        }
        TokenHelper.stageForRefresh(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendLocalBroadcast(Context context, Intent intent) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        LocalBroadcastManager.getInstance(context.getApplicationContext()).sendBroadcast(intent);
    }

    public void setIsEnabled(Context context, boolean z) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (getIsEnabled(context) != z) {
            Log.d(TAG_CYD_APPLICATION, String.format("Enabled: Setting value for enabled to '%b'.", Boolean.valueOf(z)));
            Context applicationContext = context.getApplicationContext();
            innerSetIsEnabled(context, z);
            RefreshTokenHandler.sendRefreshExistingTokenBroadcast(applicationContext, getApiKey(applicationContext));
        } else {
            Log.d(TAG_CYD_APPLICATION, String.format("Enabled: Value for enabled is already '%b'.", Boolean.valueOf(z)));
        }
    }
}
