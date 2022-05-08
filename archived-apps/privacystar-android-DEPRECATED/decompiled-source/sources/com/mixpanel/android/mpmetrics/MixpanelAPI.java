package com.mixpanel.android.mpmetrics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentTransaction;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mixpanel.android.C1492R;
import com.mixpanel.android.mpmetrics.AnalyticsMessages;
import com.mixpanel.android.mpmetrics.DecideMessages;
import com.mixpanel.android.mpmetrics.InAppNotification;
import com.mixpanel.android.mpmetrics.SharedPreferencesLoader;
import com.mixpanel.android.mpmetrics.UpdateDisplayState;
import com.mixpanel.android.takeoverinapp.TakeoverInAppActivity;
import com.mixpanel.android.util.ActivityImageUtils;
import com.mixpanel.android.util.MPLog;
import com.mixpanel.android.viewcrawler.TrackingDebug;
import com.mixpanel.android.viewcrawler.UpdatesFromMixpanel;
import com.mixpanel.android.viewcrawler.ViewCrawler;
import com.privacystar.core.util.BlockingManager;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MixpanelAPI.class */
public class MixpanelAPI {
    private static final String APP_LINKS_LOGTAG = "MixpanelAPI.AL";
    private static final String ENGAGE_DATE_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ss";
    private static final String LOGTAG = "MixpanelAPI.API";
    public static final String VERSION = "5.2.2-SNAPSHOT";
    private static Future<SharedPreferences> sReferrerPrefs;
    private final MPConfig mConfig;
    private final Context mContext;
    private final DecideMessages mDecideMessages;
    private final Map<String, String> mDeviceInfo;
    private final Map<String, Long> mEventTimings;
    private final AnalyticsMessages mMessages;
    private MixpanelActivityLifecycleCallbacks mMixpanelActivityLifecycleCallbacks;
    private final PeopleImpl mPeople;
    private final PersistentIdentity mPersistentIdentity;
    private final String mToken;
    private final TrackingDebug mTrackingDebug;
    private final UpdatesFromMixpanel mUpdatesFromMixpanel;
    private final UpdatesListener mUpdatesListener;
    private static final Map<String, Map<Context, MixpanelAPI>> sInstanceMap = new HashMap();
    private static final SharedPreferencesLoader sPrefsLoader = new SharedPreferencesLoader();
    private static final Tweaks sSharedTweaks = new Tweaks();

    /* renamed from: com.mixpanel.android.mpmetrics.MixpanelAPI$3 */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MixpanelAPI$3.class */
    static /* synthetic */ class C15153 {
        static final /* synthetic */ int[] $SwitchMap$com$mixpanel$android$mpmetrics$InAppNotification$Type = new int[InAppNotification.Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$mixpanel$android$mpmetrics$InAppNotification$Type[InAppNotification.Type.MINI.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$mixpanel$android$mpmetrics$InAppNotification$Type[InAppNotification.Type.TAKEOVER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MixpanelAPI$InstanceProcessor.class */
    interface InstanceProcessor {
        void process(MixpanelAPI mixpanelAPI);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MixpanelAPI$NoOpUpdatesFromMixpanel.class */
    public class NoOpUpdatesFromMixpanel implements UpdatesFromMixpanel {
        private final Tweaks mTweaks;

        public NoOpUpdatesFromMixpanel(Tweaks tweaks) {
            this.mTweaks = tweaks;
        }

        @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
        public void addOnMixpanelTweaksUpdatedListener(OnMixpanelTweaksUpdatedListener onMixpanelTweaksUpdatedListener) {
        }

        @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
        public void applyPersistedUpdates() {
        }

        @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
        public Tweaks getTweaks() {
            return this.mTweaks;
        }

        @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
        public void removeOnMixpanelTweaksUpdatedListener(OnMixpanelTweaksUpdatedListener onMixpanelTweaksUpdatedListener) {
        }

        @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
        public void setEventBindings(JSONArray jSONArray) {
        }

        @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
        public void setVariants(JSONArray jSONArray) {
        }

        @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
        public void startUpdates() {
        }

        @Override // com.mixpanel.android.viewcrawler.UpdatesFromMixpanel
        public void storeVariants(JSONArray jSONArray) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MixpanelAPI$People.class */
    public interface People {
        void addOnMixpanelTweaksUpdatedListener(OnMixpanelTweaksUpdatedListener onMixpanelTweaksUpdatedListener);

        void addOnMixpanelUpdatesReceivedListener(OnMixpanelUpdatesReceivedListener onMixpanelUpdatesReceivedListener);

        void append(String str, Object obj);

        void clearCharges();

        void clearPushRegistrationId();

        void clearPushRegistrationId(String str);

        void deleteUser();

        String getDistinctId();

        InAppNotification getNotificationIfAvailable();

        String getPushRegistrationId();

        void identify(String str);

        void increment(String str, double d);

        void increment(Map<String, ? extends Number> map);

        @Deprecated
        void initPushHandling(String str);

        void joinExperimentIfAvailable();

        void merge(String str, JSONObject jSONObject);

        void remove(String str, Object obj);

        void removeOnMixpanelTweaksUpdatedListener(OnMixpanelTweaksUpdatedListener onMixpanelTweaksUpdatedListener);

        void removeOnMixpanelUpdatesReceivedListener(OnMixpanelUpdatesReceivedListener onMixpanelUpdatesReceivedListener);

        void set(String str, Object obj);

        void set(JSONObject jSONObject);

        void setMap(Map<String, Object> map);

        void setOnce(String str, Object obj);

        void setOnce(JSONObject jSONObject);

        void setOnceMap(Map<String, Object> map);

        void setPushRegistrationId(String str);

        void showGivenNotification(InAppNotification inAppNotification, Activity activity);

        void showNotificationById(int i, Activity activity);

        void showNotificationIfAvailable(Activity activity);

        void trackCharge(double d, JSONObject jSONObject);

        void trackNotification(String str, InAppNotification inAppNotification, JSONObject jSONObject);

        void trackNotificationSeen(InAppNotification inAppNotification);

        void union(String str, JSONArray jSONArray);

        void unset(String str);

        People withIdentity(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl.class */
    public class PeopleImpl implements People {
        private PeopleImpl() {
        }

        private void showGivenOrAvailableNotification(final InAppNotification inAppNotification, final Activity activity) {
            if (Build.VERSION.SDK_INT < 16) {
                MPLog.m307v(MixpanelAPI.LOGTAG, "Will not show notifications, os version is too low.");
            } else {
                activity.runOnUiThread(new Runnable() { // from class: com.mixpanel.android.mpmetrics.MixpanelAPI.PeopleImpl.2
                    @Override // java.lang.Runnable
                    @TargetApi(16)
                    public void run() {
                        ReentrantLock lockObject = UpdateDisplayState.getLockObject();
                        lockObject.lock();
                        try {
                            if (UpdateDisplayState.hasCurrentProposal()) {
                                MPLog.m307v(MixpanelAPI.LOGTAG, "DisplayState is locked, will not show notifications.");
                                return;
                            }
                            InAppNotification inAppNotification2 = inAppNotification;
                            InAppNotification inAppNotification3 = inAppNotification2;
                            if (inAppNotification2 == null) {
                                inAppNotification3 = PeopleImpl.this.getNotificationIfAvailable();
                            }
                            if (inAppNotification3 == null) {
                                MPLog.m307v(MixpanelAPI.LOGTAG, "No notification available, will not show.");
                                return;
                            }
                            InAppNotification.Type type = inAppNotification3.getType();
                            if (type != InAppNotification.Type.TAKEOVER || ConfigurationChecker.checkTakeoverInAppActivityAvailable(activity.getApplicationContext())) {
                                int proposeDisplay = UpdateDisplayState.proposeDisplay(new UpdateDisplayState.DisplayState.InAppNotificationState(inAppNotification3, ActivityImageUtils.getHighlightColorFromBackground(activity)), PeopleImpl.this.getDistinctId(), MixpanelAPI.this.mToken);
                                if (proposeDisplay <= 0) {
                                    MPLog.m311e(MixpanelAPI.LOGTAG, "DisplayState Lock in inconsistent state! Please report this issue to Mixpanel");
                                    return;
                                }
                                switch (C15153.$SwitchMap$com$mixpanel$android$mpmetrics$InAppNotification$Type[type.ordinal()]) {
                                    case 1:
                                        UpdateDisplayState claimDisplayState = UpdateDisplayState.claimDisplayState(proposeDisplay);
                                        if (claimDisplayState != null) {
                                            InAppFragment inAppFragment = new InAppFragment();
                                            inAppFragment.setDisplayState(MixpanelAPI.this, proposeDisplay, (UpdateDisplayState.DisplayState.InAppNotificationState) claimDisplayState.getDisplayState());
                                            inAppFragment.setRetainInstance(true);
                                            MPLog.m307v(MixpanelAPI.LOGTAG, "Attempting to show mini notification.");
                                            FragmentTransaction beginTransaction = activity.getFragmentManager().beginTransaction();
                                            beginTransaction.setCustomAnimations(0, C1492R.animator.com_mixpanel_android_slide_down);
                                            beginTransaction.add(16908290, inAppFragment);
                                            try {
                                                beginTransaction.commit();
                                                break;
                                            } catch (IllegalStateException e) {
                                                MPLog.m307v(MixpanelAPI.LOGTAG, "Unable to show notification.");
                                                MixpanelAPI.this.mDecideMessages.markNotificationAsUnseen(inAppNotification3);
                                                break;
                                            }
                                        } else {
                                            MPLog.m307v(MixpanelAPI.LOGTAG, "Notification's display proposal was already consumed, no notification will be shown.");
                                            return;
                                        }
                                    case 2:
                                        MPLog.m307v(MixpanelAPI.LOGTAG, "Sending intent for takeover notification.");
                                        Intent intent = new Intent(activity.getApplicationContext(), TakeoverInAppActivity.class);
                                        intent.addFlags(268435456);
                                        intent.addFlags(131072);
                                        intent.putExtra(TakeoverInAppActivity.INTENT_ID_KEY, proposeDisplay);
                                        activity.startActivity(intent);
                                        break;
                                    default:
                                        MPLog.m311e(MixpanelAPI.LOGTAG, "Unrecognized notification type " + type + " can't be shown");
                                        break;
                                }
                                if (!MixpanelAPI.this.mConfig.getTestMode()) {
                                    PeopleImpl.this.trackNotificationSeen(inAppNotification3);
                                }
                                return;
                            }
                            MPLog.m307v(MixpanelAPI.LOGTAG, "Application is not configured to show takeover notifications, none will be shown.");
                        } finally {
                            lockObject.unlock();
                        }
                    }
                });
            }
        }

        private JSONObject stdPeopleMessage(String str, Object obj) throws JSONException {
            JSONObject jSONObject = new JSONObject();
            String distinctId = getDistinctId();
            jSONObject.put(str, obj);
            jSONObject.put("$token", MixpanelAPI.this.mToken);
            jSONObject.put("$time", System.currentTimeMillis());
            if (distinctId != null) {
                jSONObject.put("$distinct_id", distinctId);
            }
            return jSONObject;
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void addOnMixpanelTweaksUpdatedListener(OnMixpanelTweaksUpdatedListener onMixpanelTweaksUpdatedListener) {
            if (onMixpanelTweaksUpdatedListener == null) {
                throw new NullPointerException("Listener cannot be null");
            }
            MixpanelAPI.this.mUpdatesFromMixpanel.addOnMixpanelTweaksUpdatedListener(onMixpanelTweaksUpdatedListener);
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void addOnMixpanelUpdatesReceivedListener(OnMixpanelUpdatesReceivedListener onMixpanelUpdatesReceivedListener) {
            MixpanelAPI.this.mUpdatesListener.addOnMixpanelUpdatesReceivedListener(onMixpanelUpdatesReceivedListener);
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void append(String str, Object obj) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(str, obj);
                MixpanelAPI.this.recordPeopleMessage(stdPeopleMessage("$append", jSONObject));
            } catch (JSONException e) {
                MPLog.m310e(MixpanelAPI.LOGTAG, "Exception appending a property", e);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void clearCharges() {
            unset("$transactions");
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void clearPushRegistrationId() {
            MixpanelAPI.this.mPersistentIdentity.clearPushId();
            set("$android_devices", new JSONArray());
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void clearPushRegistrationId(String str) {
            if (str != null) {
                if (str.equals(MixpanelAPI.this.mPersistentIdentity.getPushId())) {
                    MixpanelAPI.this.mPersistentIdentity.clearPushId();
                }
                remove("$android_devices", str);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void deleteUser() {
            try {
                MixpanelAPI.this.recordPeopleMessage(stdPeopleMessage("$delete", JSONObject.NULL));
            } catch (JSONException e) {
                MPLog.m311e(MixpanelAPI.LOGTAG, "Exception deleting a user");
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public String getDistinctId() {
            return MixpanelAPI.this.mPersistentIdentity.getPeopleDistinctId();
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public InAppNotification getNotificationIfAvailable() {
            return MixpanelAPI.this.mDecideMessages.getNotification(MixpanelAPI.this.mConfig.getTestMode());
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public String getPushRegistrationId() {
            return MixpanelAPI.this.mPersistentIdentity.getPushId();
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void identify(String str) {
            synchronized (MixpanelAPI.this.mPersistentIdentity) {
                MixpanelAPI.this.mPersistentIdentity.setPeopleDistinctId(str);
                MixpanelAPI.this.mDecideMessages.setDistinctId(str);
            }
            MixpanelAPI.this.pushWaitingPeopleRecord();
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void increment(String str, double d) {
            HashMap hashMap = new HashMap();
            hashMap.put(str, Double.valueOf(d));
            increment(hashMap);
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void increment(Map<String, ? extends Number> map) {
            try {
                MixpanelAPI.this.recordPeopleMessage(stdPeopleMessage("$add", new JSONObject(map)));
            } catch (JSONException e) {
                MPLog.m310e(MixpanelAPI.LOGTAG, "Exception incrementing properties", e);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void initPushHandling(String str) {
            MPLog.m309i(MixpanelAPI.LOGTAG, "Can't register for push notification services. Push notifications will not work.");
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void joinExperimentIfAvailable() {
            MixpanelAPI.this.mUpdatesFromMixpanel.setVariants(MixpanelAPI.this.mDecideMessages.getVariants());
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void merge(String str, JSONObject jSONObject) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(str, jSONObject);
                MixpanelAPI.this.recordPeopleMessage(stdPeopleMessage("$merge", jSONObject2));
            } catch (JSONException e) {
                MPLog.m310e(MixpanelAPI.LOGTAG, "Exception merging a property", e);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void remove(String str, Object obj) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(str, obj);
                MixpanelAPI.this.recordPeopleMessage(stdPeopleMessage("$remove", jSONObject));
            } catch (JSONException e) {
                MPLog.m310e(MixpanelAPI.LOGTAG, "Exception appending a property", e);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void removeOnMixpanelTweaksUpdatedListener(OnMixpanelTweaksUpdatedListener onMixpanelTweaksUpdatedListener) {
            MixpanelAPI.this.mUpdatesFromMixpanel.removeOnMixpanelTweaksUpdatedListener(onMixpanelTweaksUpdatedListener);
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void removeOnMixpanelUpdatesReceivedListener(OnMixpanelUpdatesReceivedListener onMixpanelUpdatesReceivedListener) {
            MixpanelAPI.this.mUpdatesListener.removeOnMixpanelUpdatesReceivedListener(onMixpanelUpdatesReceivedListener);
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void set(String str, Object obj) {
            try {
                set(new JSONObject().put(str, obj));
            } catch (JSONException e) {
                MPLog.m310e(MixpanelAPI.LOGTAG, "set", e);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void set(JSONObject jSONObject) {
            try {
                JSONObject jSONObject2 = new JSONObject(MixpanelAPI.this.mDeviceInfo);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject2.put(next, jSONObject.get(next));
                }
                MixpanelAPI.this.recordPeopleMessage(stdPeopleMessage("$set", jSONObject2));
            } catch (JSONException e) {
                MPLog.m310e(MixpanelAPI.LOGTAG, "Exception setting people properties", e);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void setMap(Map<String, Object> map) {
            if (map == null) {
                MPLog.m311e(MixpanelAPI.LOGTAG, "setMap does not accept null properties");
                return;
            }
            try {
                set(new JSONObject(map));
            } catch (NullPointerException e) {
                MPLog.m305w(MixpanelAPI.LOGTAG, "Can't have null keys in the properties of setMap!");
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void setOnce(String str, Object obj) {
            try {
                setOnce(new JSONObject().put(str, obj));
            } catch (JSONException e) {
                MPLog.m310e(MixpanelAPI.LOGTAG, "set", e);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void setOnce(JSONObject jSONObject) {
            try {
                MixpanelAPI.this.recordPeopleMessage(stdPeopleMessage("$set_once", jSONObject));
            } catch (JSONException e) {
                MPLog.m311e(MixpanelAPI.LOGTAG, "Exception setting people properties");
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void setOnceMap(Map<String, Object> map) {
            if (map == null) {
                MPLog.m311e(MixpanelAPI.LOGTAG, "setOnceMap does not accept null properties");
                return;
            }
            try {
                setOnce(new JSONObject(map));
            } catch (NullPointerException e) {
                MPLog.m305w(MixpanelAPI.LOGTAG, "Can't have null keys in the properties setOnceMap!");
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void setPushRegistrationId(String str) {
            synchronized (MixpanelAPI.this.mPersistentIdentity) {
                if (MixpanelAPI.this.mPersistentIdentity.getPeopleDistinctId() != null) {
                    MixpanelAPI.this.mPersistentIdentity.storePushId(str);
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(str);
                    union("$android_devices", jSONArray);
                }
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void showGivenNotification(InAppNotification inAppNotification, Activity activity) {
            if (inAppNotification != null) {
                showGivenOrAvailableNotification(inAppNotification, activity);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void showNotificationById(int i, Activity activity) {
            showGivenNotification(MixpanelAPI.this.mDecideMessages.getNotification(i, MixpanelAPI.this.mConfig.getTestMode()), activity);
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void showNotificationIfAvailable(Activity activity) {
            if (Build.VERSION.SDK_INT >= 16) {
                showGivenOrAvailableNotification(null, activity);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void trackCharge(double d, JSONObject jSONObject) {
            Date date = new Date();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(MixpanelAPI.ENGAGE_DATE_FORMAT_STRING, Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("$amount", d);
                jSONObject2.put("$time", simpleDateFormat.format(date));
                if (jSONObject != null) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        jSONObject2.put(next, jSONObject.get(next));
                    }
                }
                append("$transactions", jSONObject2);
            } catch (JSONException e) {
                MPLog.m310e(MixpanelAPI.LOGTAG, "Exception creating new charge", e);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void trackNotification(String str, InAppNotification inAppNotification, JSONObject jSONObject) {
            JSONObject campaignProperties = inAppNotification.getCampaignProperties();
            if (jSONObject != null) {
                try {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        campaignProperties.put(next, jSONObject.get(next));
                    }
                } catch (JSONException e) {
                    MPLog.m310e(MixpanelAPI.LOGTAG, "Exception merging provided properties with notification properties", e);
                }
            }
            MixpanelAPI.this.track(str, campaignProperties);
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void trackNotificationSeen(InAppNotification inAppNotification) {
            if (inAppNotification != null) {
                MixpanelAPI.this.mPersistentIdentity.saveCampaignAsSeen(Integer.valueOf(inAppNotification.getId()));
                trackNotification("$campaign_delivery", inAppNotification, null);
                People withIdentity = MixpanelAPI.this.getPeople().withIdentity(getDistinctId());
                if (withIdentity != null) {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(MixpanelAPI.ENGAGE_DATE_FORMAT_STRING, Locale.US);
                    JSONObject campaignProperties = inAppNotification.getCampaignProperties();
                    try {
                        campaignProperties.put("$time", simpleDateFormat.format(new Date()));
                    } catch (JSONException e) {
                        MPLog.m310e(MixpanelAPI.LOGTAG, "Exception trying to track an in-app notification seen", e);
                    }
                    withIdentity.append("$campaigns", Integer.valueOf(inAppNotification.getId()));
                    withIdentity.append("$notifications", campaignProperties);
                    return;
                }
                MPLog.m311e(MixpanelAPI.LOGTAG, "No identity found. Make sure to call getPeople().identify() before showing in-app notifications.");
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void union(String str, JSONArray jSONArray) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(str, jSONArray);
                MixpanelAPI.this.recordPeopleMessage(stdPeopleMessage("$union", jSONObject));
            } catch (JSONException e) {
                MPLog.m311e(MixpanelAPI.LOGTAG, "Exception union-ing a property");
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public void unset(String str) {
            try {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(str);
                MixpanelAPI.this.recordPeopleMessage(stdPeopleMessage("$unset", jSONArray));
            } catch (JSONException e) {
                MPLog.m310e(MixpanelAPI.LOGTAG, "Exception un-setting a property", e);
            }
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.People
        public People withIdentity(final String str) {
            if (str == null) {
                return null;
            }
            return new PeopleImpl() { // from class: com.mixpanel.android.mpmetrics.MixpanelAPI.PeopleImpl.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.PeopleImpl, com.mixpanel.android.mpmetrics.MixpanelAPI.People
                public String getDistinctId() {
                    return str;
                }

                @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.PeopleImpl, com.mixpanel.android.mpmetrics.MixpanelAPI.People
                public void identify(String str2) {
                    throw new RuntimeException("This MixpanelPeople object has a fixed, constant distinctId");
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MixpanelAPI$SupportedUpdatesListener.class */
    public class SupportedUpdatesListener implements UpdatesListener, Runnable {
        private final Executor mExecutor;
        private final Set<OnMixpanelUpdatesReceivedListener> mListeners;

        private SupportedUpdatesListener() {
            this.mListeners = Collections.newSetFromMap(new ConcurrentHashMap());
            this.mExecutor = Executors.newSingleThreadExecutor();
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.UpdatesListener
        public void addOnMixpanelUpdatesReceivedListener(OnMixpanelUpdatesReceivedListener onMixpanelUpdatesReceivedListener) {
            this.mListeners.add(onMixpanelUpdatesReceivedListener);
            if (MixpanelAPI.this.mDecideMessages.hasUpdatesAvailable()) {
                onNewResults();
            }
        }

        @Override // com.mixpanel.android.mpmetrics.DecideMessages.OnNewResultsListener
        public void onNewResults() {
            this.mExecutor.execute(this);
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.UpdatesListener
        public void removeOnMixpanelUpdatesReceivedListener(OnMixpanelUpdatesReceivedListener onMixpanelUpdatesReceivedListener) {
            this.mListeners.remove(onMixpanelUpdatesReceivedListener);
        }

        @Override // java.lang.Runnable
        public void run() {
            for (OnMixpanelUpdatesReceivedListener onMixpanelUpdatesReceivedListener : this.mListeners) {
                onMixpanelUpdatesReceivedListener.onMixpanelUpdatesReceived();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MixpanelAPI$UnsupportedUpdatesListener.class */
    public class UnsupportedUpdatesListener implements UpdatesListener {
        private UnsupportedUpdatesListener() {
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.UpdatesListener
        public void addOnMixpanelUpdatesReceivedListener(OnMixpanelUpdatesReceivedListener onMixpanelUpdatesReceivedListener) {
        }

        @Override // com.mixpanel.android.mpmetrics.DecideMessages.OnNewResultsListener
        public void onNewResults() {
        }

        @Override // com.mixpanel.android.mpmetrics.MixpanelAPI.UpdatesListener
        public void removeOnMixpanelUpdatesReceivedListener(OnMixpanelUpdatesReceivedListener onMixpanelUpdatesReceivedListener) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener.class */
    private interface UpdatesListener extends DecideMessages.OnNewResultsListener {
        void addOnMixpanelUpdatesReceivedListener(OnMixpanelUpdatesReceivedListener onMixpanelUpdatesReceivedListener);

        void removeOnMixpanelUpdatesReceivedListener(OnMixpanelUpdatesReceivedListener onMixpanelUpdatesReceivedListener);
    }

    MixpanelAPI(Context context, Future<SharedPreferences> future, String str) {
        this(context, future, str, MPConfig.getInstance(context));
    }

    MixpanelAPI(Context context, Future<SharedPreferences> future, String str, MPConfig mPConfig) {
        this.mContext = context;
        this.mToken = str;
        this.mPeople = new PeopleImpl();
        this.mConfig = mPConfig;
        HashMap hashMap = new HashMap();
        hashMap.put("android_lib_version", "5.2.2-SNAPSHOT");
        hashMap.put("android_os", "Android");
        hashMap.put("android_os_version", Build.VERSION.RELEASE == null ? BlockingManager.MATCHVALUE_UNKNOWN : Build.VERSION.RELEASE);
        hashMap.put("android_manufacturer", Build.MANUFACTURER == null ? BlockingManager.MATCHVALUE_UNKNOWN : Build.MANUFACTURER);
        hashMap.put("android_brand", Build.BRAND == null ? BlockingManager.MATCHVALUE_UNKNOWN : Build.BRAND);
        hashMap.put("android_model", Build.MODEL == null ? BlockingManager.MATCHVALUE_UNKNOWN : Build.MODEL);
        try {
            PackageInfo packageInfo = this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0);
            hashMap.put("android_app_version", packageInfo.versionName);
            hashMap.put("android_app_version_code", Integer.toString(packageInfo.versionCode));
        } catch (PackageManager.NameNotFoundException e) {
            MPLog.m310e(LOGTAG, "Exception getting app version name", e);
        }
        this.mDeviceInfo = Collections.unmodifiableMap(hashMap);
        this.mUpdatesFromMixpanel = constructUpdatesFromMixpanel(context, str);
        this.mTrackingDebug = constructTrackingDebug();
        this.mPersistentIdentity = getPersistentIdentity(context, future, str);
        this.mEventTimings = this.mPersistentIdentity.getTimeEvents();
        this.mUpdatesListener = constructUpdatesListener();
        this.mDecideMessages = constructDecideUpdates(str, this.mUpdatesListener, this.mUpdatesFromMixpanel);
        String peopleDistinctId = this.mPersistentIdentity.getPeopleDistinctId();
        this.mDecideMessages.setDistinctId(peopleDistinctId == null ? this.mPersistentIdentity.getEventsDistinctId() : peopleDistinctId);
        this.mMessages = getAnalyticsMessages();
        if (this.mPersistentIdentity.isFirstLaunch(MPDbAdapter.getInstance(this.mContext).getDatabaseFile().exists())) {
            this.mPersistentIdentity.setHasLaunched();
        }
        if (!this.mConfig.getDisableDecideChecker()) {
            this.mMessages.installDecideCheck(this.mDecideMessages);
        }
        registerMixpanelActivityLifecycleCallbacks();
        if (sendAppOpen()) {
            track(FirebaseAnalytics.Event.APP_OPEN, null);
        }
        this.mUpdatesFromMixpanel.startUpdates();
        ExceptionHandler.init();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void allInstances(InstanceProcessor instanceProcessor) {
        synchronized (sInstanceMap) {
            for (Map<Context, MixpanelAPI> map : sInstanceMap.values()) {
                for (MixpanelAPI mixpanelAPI : map.values()) {
                    instanceProcessor.process(mixpanelAPI);
                }
            }
        }
    }

    public static Tweak<Boolean> booleanTweak(String str, boolean z) {
        return sSharedTweaks.booleanTweak(str, z);
    }

    public static Tweak<Byte> byteTweak(String str, byte b) {
        return sSharedTweaks.byteTweak(str, b);
    }

    private static void checkIntentForInboundAppLink(Context context) {
        if (context instanceof Activity) {
            try {
                Class.forName("bolts.AppLinks").getMethod("getTargetUrlFromInboundIntent", Context.class, Intent.class).invoke(null, context, ((Activity) context).getIntent());
            } catch (ClassNotFoundException e) {
                MPLog.m313d(APP_LINKS_LOGTAG, "Please install the Bolts library >= 1.1.2 to track App Links: " + e.getMessage());
            } catch (IllegalAccessException e2) {
                MPLog.m313d(APP_LINKS_LOGTAG, "Unable to detect inbound App Links: " + e2.getMessage());
            } catch (NoSuchMethodException e3) {
                MPLog.m313d(APP_LINKS_LOGTAG, "Please install the Bolts library >= 1.1.2 to track App Links: " + e3.getMessage());
            } catch (InvocationTargetException e4) {
                MPLog.m312d(APP_LINKS_LOGTAG, "Failed to invoke bolts.AppLinks.getTargetUrlFromInboundIntent() -- Unable to detect inbound App Links", e4);
            }
        } else {
            MPLog.m313d(APP_LINKS_LOGTAG, "Context is not an instance of Activity. To detect inbound App Links, pass an instance of an Activity to getInstance.");
        }
    }

    public static Tweak<Double> doubleTweak(String str, double d) {
        return sSharedTweaks.doubleTweak(str, d);
    }

    public static Tweak<Double> doubleTweak(String str, double d, double d2, double d3) {
        return sSharedTweaks.doubleTweak(str, d, d2, d3);
    }

    public static Tweak<Float> floatTweak(String str, float f) {
        return sSharedTweaks.floatTweak(str, f);
    }

    public static Tweak<Float> floatTweak(String str, float f, float f2, float f3) {
        return sSharedTweaks.floatTweak(str, f, f2, f3);
    }

    public static MixpanelAPI getInstance(Context context, String str) {
        MixpanelAPI mixpanelAPI;
        if (str == null || context == null) {
            return null;
        }
        synchronized (sInstanceMap) {
            Context applicationContext = context.getApplicationContext();
            if (sReferrerPrefs == null) {
                sReferrerPrefs = sPrefsLoader.loadPreferences(context, "com.mixpanel.android.mpmetrics.ReferralInfo", null);
            }
            Map<Context, MixpanelAPI> map = sInstanceMap.get(str);
            Map<Context, MixpanelAPI> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                sInstanceMap.put(str, map2);
            }
            MixpanelAPI mixpanelAPI2 = map2.get(applicationContext);
            mixpanelAPI = mixpanelAPI2;
            if (mixpanelAPI2 == null) {
                mixpanelAPI = mixpanelAPI2;
                if (ConfigurationChecker.checkBasicConfiguration(applicationContext)) {
                    mixpanelAPI = new MixpanelAPI(applicationContext, sReferrerPrefs, str);
                    registerAppLinksListeners(context, mixpanelAPI);
                    map2.put(applicationContext, mixpanelAPI);
                }
            }
            checkIntentForInboundAppLink(context);
        }
        return mixpanelAPI;
    }

    public static Tweak<Integer> intTweak(String str, int i) {
        return sSharedTweaks.intTweak(str, i);
    }

    public static Tweak<Integer> intTweak(String str, int i, int i2, int i3) {
        return sSharedTweaks.intTweak(str, i, i2, i3);
    }

    public static Tweak<Long> longTweak(String str, long j) {
        return sSharedTweaks.longTweak(str, j);
    }

    public static Tweak<Long> longTweak(String str, long j, long j2, long j3) {
        return sSharedTweaks.longTweak(str, j, j2, j3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushWaitingPeopleRecord() {
        JSONArray waitingPeopleRecordsForSending = this.mPersistentIdentity.waitingPeopleRecordsForSending();
        if (waitingPeopleRecordsForSending != null) {
            sendAllPeopleRecords(waitingPeopleRecordsForSending);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recordPeopleMessage(JSONObject jSONObject) {
        if (jSONObject.has("$distinct_id")) {
            this.mMessages.peopleMessage(new AnalyticsMessages.PeopleDescription(jSONObject, this.mToken));
        } else {
            this.mPersistentIdentity.storeWaitingPeopleRecord(jSONObject);
        }
    }

    private static void registerAppLinksListeners(Context context, MixpanelAPI mixpanelAPI) {
        try {
            Class<?> cls = Class.forName("android.support.v4.content.LocalBroadcastManager");
            cls.getMethod("registerReceiver", BroadcastReceiver.class, IntentFilter.class).invoke(cls.getMethod("getInstance", Context.class).invoke(null, context), new BroadcastReceiver() { // from class: com.mixpanel.android.mpmetrics.MixpanelAPI.2
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    JSONObject jSONObject = new JSONObject();
                    Bundle bundleExtra = intent.getBundleExtra("event_args");
                    if (bundleExtra != null) {
                        for (String str : bundleExtra.keySet()) {
                            try {
                                jSONObject.put(str, bundleExtra.get(str));
                            } catch (JSONException e) {
                                MPLog.m310e(MixpanelAPI.APP_LINKS_LOGTAG, "failed to add key \"" + str + "\" to properties for tracking bolts event", e);
                            }
                        }
                    }
                    MixpanelAPI mixpanelAPI2 = MixpanelAPI.this;
                    mixpanelAPI2.track("$" + intent.getStringExtra("event_name"), jSONObject);
                }
            }, new IntentFilter("com.parse.bolts.measurement_event"));
        } catch (ClassNotFoundException e) {
            MPLog.m313d(APP_LINKS_LOGTAG, "To enable App Links tracking android.support.v4 must be installed: " + e.getMessage());
        } catch (IllegalAccessException e2) {
            MPLog.m313d(APP_LINKS_LOGTAG, "App Links tracking will not be enabled due to this exception: " + e2.getMessage());
        } catch (NoSuchMethodException e3) {
            MPLog.m313d(APP_LINKS_LOGTAG, "To enable App Links tracking android.support.v4 must be installed: " + e3.getMessage());
        } catch (InvocationTargetException e4) {
            MPLog.m312d(APP_LINKS_LOGTAG, "Failed to invoke LocalBroadcastManager.registerReceiver() -- App Links tracking will not be enabled due to this exception", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAllPeopleRecords(JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                this.mMessages.peopleMessage(new AnalyticsMessages.PeopleDescription(jSONArray.getJSONObject(i), this.mToken));
            } catch (JSONException e) {
                MPLog.m310e(LOGTAG, "Malformed people record stored pending identity, will not send it.", e);
            }
        }
    }

    @Deprecated
    public static void setFlushInterval(Context context, long j) {
        MPLog.m309i(LOGTAG, "MixpanelAPI.setFlushInterval is deprecated. Calling is now a no-op.\n    To set a custom Mixpanel flush interval for your application, add\n    <meta-data android:name=\"com.mixpanel.android.MPConfig.FlushInterval\" android:value=\"YOUR_INTERVAL\" />\n    to the <application> section of your AndroidManifest.xml.");
    }

    public static Tweak<Short> shortTweak(String str, short s) {
        return sSharedTweaks.shortTweak(str, s);
    }

    public static Tweak<String> stringTweak(String str, String str2) {
        return sSharedTweaks.stringTweak(str, str2);
    }

    public void alias(String str, String str2) {
        String str3 = str2;
        if (str2 == null) {
            str3 = getDistinctId();
        }
        if (str.equals(str3)) {
            MPLog.m305w(LOGTAG, "Attempted to alias identical distinct_ids " + str + ". Alias message will not be sent.");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("alias", str);
            jSONObject.put("original", str3);
            track("$create_alias", jSONObject);
        } catch (JSONException e) {
            MPLog.m310e(LOGTAG, "Failed to alias", e);
        }
        flush();
    }

    public void clearSuperProperties() {
        this.mPersistentIdentity.clearSuperProperties();
    }

    DecideMessages constructDecideUpdates(String str, DecideMessages.OnNewResultsListener onNewResultsListener, UpdatesFromMixpanel updatesFromMixpanel) {
        return new DecideMessages(this.mContext, str, onNewResultsListener, updatesFromMixpanel, this.mPersistentIdentity.getSeenCampaignIds());
    }

    TrackingDebug constructTrackingDebug() {
        if (this.mUpdatesFromMixpanel instanceof ViewCrawler) {
            return (TrackingDebug) this.mUpdatesFromMixpanel;
        }
        return null;
    }

    UpdatesFromMixpanel constructUpdatesFromMixpanel(Context context, String str) {
        if (Build.VERSION.SDK_INT < 16) {
            MPLog.m309i(LOGTAG, "SDK version is lower than 16. Web Configuration, A/B Testing, and Dynamic Tweaks are disabled.");
            return new NoOpUpdatesFromMixpanel(sSharedTweaks);
        } else if (!this.mConfig.getDisableViewCrawler() && !Arrays.asList(this.mConfig.getDisableViewCrawlerForProjects()).contains(str)) {
            return new ViewCrawler(this.mContext, this.mToken, this, sSharedTweaks);
        } else {
            MPLog.m309i(LOGTAG, "DisableViewCrawler is set to true. Web Configuration, A/B Testing, and Dynamic Tweaks are disabled.");
            return new NoOpUpdatesFromMixpanel(sSharedTweaks);
        }
    }

    UpdatesListener constructUpdatesListener() {
        if (Build.VERSION.SDK_INT >= 16) {
            return new SupportedUpdatesListener();
        }
        MPLog.m309i(LOGTAG, "Notifications are not supported on this Android OS Version");
        return new UnsupportedUpdatesListener();
    }

    public double eventElapsedTime(String str) {
        Long l;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.mEventTimings) {
            l = this.mEventTimings.get(str);
        }
        return l == null ? 0.0d : (currentTimeMillis - l.longValue()) / 1000;
    }

    public void flush() {
        this.mMessages.postToServer(new AnalyticsMessages.FlushDescription(this.mToken));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void flushNoDecideCheck() {
        this.mMessages.postToServer(new AnalyticsMessages.FlushDescription(this.mToken, false));
    }

    AnalyticsMessages getAnalyticsMessages() {
        return AnalyticsMessages.getInstance(this.mContext);
    }

    public Map<String, String> getDeviceInfo() {
        return this.mDeviceInfo;
    }

    public String getDistinctId() {
        return this.mPersistentIdentity.getEventsDistinctId();
    }

    public People getPeople() {
        return this.mPeople;
    }

    PersistentIdentity getPersistentIdentity(Context context, Future<SharedPreferences> future, String str) {
        SharedPreferencesLoader.OnPrefsLoadedListener onPrefsLoadedListener = new SharedPreferencesLoader.OnPrefsLoadedListener() { // from class: com.mixpanel.android.mpmetrics.MixpanelAPI.1
            @Override // com.mixpanel.android.mpmetrics.SharedPreferencesLoader.OnPrefsLoadedListener
            public void onPrefsLoaded(SharedPreferences sharedPreferences) {
                JSONArray waitingPeopleRecordsForSending = PersistentIdentity.waitingPeopleRecordsForSending(sharedPreferences);
                if (waitingPeopleRecordsForSending != null) {
                    MixpanelAPI.this.sendAllPeopleRecords(waitingPeopleRecordsForSending);
                }
            }
        };
        Future<SharedPreferences> loadPreferences = sPrefsLoader.loadPreferences(context, "com.mixpanel.android.mpmetrics.MixpanelAPI_" + str, onPrefsLoadedListener);
        return new PersistentIdentity(future, loadPreferences, sPrefsLoader.loadPreferences(context, "com.mixpanel.android.mpmetrics.MixpanelAPI.TimeEvents_" + str, null), sPrefsLoader.loadPreferences(context, "com.mixpanel.android.mpmetrics.Mixpanel", null));
    }

    public JSONObject getSuperProperties() {
        JSONObject jSONObject = new JSONObject();
        this.mPersistentIdentity.addSuperPropertiesToObject(jSONObject);
        return jSONObject;
    }

    public void identify(String str) {
        synchronized (this.mPersistentIdentity) {
            this.mPersistentIdentity.setEventsDistinctId(str);
            String peopleDistinctId = this.mPersistentIdentity.getPeopleDistinctId();
            String str2 = peopleDistinctId;
            if (peopleDistinctId == null) {
                str2 = this.mPersistentIdentity.getEventsDistinctId();
            }
            this.mDecideMessages.setDistinctId(str2);
        }
    }

    public boolean isAppInForeground() {
        if (Build.VERSION.SDK_INT < 14) {
            MPLog.m311e(LOGTAG, "Your build version is below 14. This method will always return false.");
            return false;
        } else if (this.mMixpanelActivityLifecycleCallbacks != null) {
            return this.mMixpanelActivityLifecycleCallbacks.isInForeground();
        } else {
            return false;
        }
    }

    @Deprecated
    public void logPosts() {
        MPLog.m309i(LOGTAG, "MixpanelAPI.logPosts() is deprecated.\n    To get verbose debug level logging, add\n    <meta-data android:name=\"com.mixpanel.android.MPConfig.EnableDebugLogging\" value=\"true\" />\n    to the <application> section of your AndroidManifest.xml.");
    }

    void onBackground() {
        flush();
        this.mUpdatesFromMixpanel.applyPersistedUpdates();
    }

    @TargetApi(14)
    void registerMixpanelActivityLifecycleCallbacks() {
        if (Build.VERSION.SDK_INT < 14) {
            return;
        }
        if (this.mContext.getApplicationContext() instanceof Application) {
            this.mMixpanelActivityLifecycleCallbacks = new MixpanelActivityLifecycleCallbacks(this, this.mConfig);
            ((Application) this.mContext.getApplicationContext()).registerActivityLifecycleCallbacks(this.mMixpanelActivityLifecycleCallbacks);
            return;
        }
        MPLog.m309i(LOGTAG, "Context is not an Application, Mixpanel will not automatically show in-app notifications or A/B test experiments. We won't be able to automatically flush on an app background.");
    }

    public void registerSuperProperties(JSONObject jSONObject) {
        this.mPersistentIdentity.registerSuperProperties(jSONObject);
    }

    public void registerSuperPropertiesMap(Map<String, Object> map) {
        if (map == null) {
            MPLog.m311e(LOGTAG, "registerSuperPropertiesMap does not accept null properties");
            return;
        }
        try {
            registerSuperProperties(new JSONObject(map));
        } catch (NullPointerException e) {
            MPLog.m305w(LOGTAG, "Can't have null keys in the properties of registerSuperPropertiesMap");
        }
    }

    public void registerSuperPropertiesOnce(JSONObject jSONObject) {
        this.mPersistentIdentity.registerSuperPropertiesOnce(jSONObject);
    }

    public void registerSuperPropertiesOnceMap(Map<String, Object> map) {
        if (map == null) {
            MPLog.m311e(LOGTAG, "registerSuperPropertiesOnceMap does not accept null properties");
            return;
        }
        try {
            registerSuperPropertiesOnce(new JSONObject(map));
        } catch (NullPointerException e) {
            MPLog.m305w(LOGTAG, "Can't have null keys in the properties of registerSuperPropertiesOnce!");
        }
    }

    public void reset() {
        this.mPersistentIdentity.clearPreferences();
        identify(getDistinctId());
        flush();
    }

    boolean sendAppOpen() {
        return !this.mConfig.getDisableAppOpenEvent();
    }

    public void timeEvent(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.mEventTimings) {
            this.mEventTimings.put(str, Long.valueOf(currentTimeMillis));
            this.mPersistentIdentity.addTimeEvent(str, Long.valueOf(currentTimeMillis));
        }
    }

    public void track(String str) {
        track(str, null);
    }

    public void track(String str, JSONObject jSONObject) {
        track(str, jSONObject, false);
    }

    protected void track(String str, JSONObject jSONObject, boolean z) {
        Long l;
        if (!z || this.mDecideMessages.shouldTrackAutomaticEvent()) {
            synchronized (this.mEventTimings) {
                l = this.mEventTimings.get(str);
                this.mEventTimings.remove(str);
                this.mPersistentIdentity.removeTimeEvent(str);
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                for (Map.Entry<String, String> entry : this.mPersistentIdentity.getReferrerProperties().entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                this.mPersistentIdentity.addSuperPropertiesToObject(jSONObject2);
                double currentTimeMillis = System.currentTimeMillis() / 1000.0d;
                jSONObject2.put("distinct_id", getDistinctId());
                if (l != null) {
                    jSONObject2.put("$duration", currentTimeMillis - (l.longValue() / 1000.0d));
                }
                if (jSONObject != null) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        jSONObject2.put(next, jSONObject.get(next));
                    }
                }
                this.mMessages.eventsMessage(new AnalyticsMessages.EventDescription(str, jSONObject2, this.mToken, z));
                if (this.mTrackingDebug != null) {
                    this.mTrackingDebug.reportTrack(str);
                }
            } catch (JSONException e) {
                MPLog.m310e(LOGTAG, "Exception tracking event " + str, e);
            }
        }
    }

    public void trackMap(String str, Map<String, Object> map) {
        if (map == null) {
            track(str, null);
            return;
        }
        try {
            track(str, new JSONObject(map));
        } catch (NullPointerException e) {
            MPLog.m305w(LOGTAG, "Can't have null keys in the properties of trackMap!");
        }
    }

    public void unregisterSuperProperty(String str) {
        this.mPersistentIdentity.unregisterSuperProperty(str);
    }

    public void updateSuperProperties(SuperPropertyUpdate superPropertyUpdate) {
        this.mPersistentIdentity.updateSuperProperties(superPropertyUpdate);
    }
}
