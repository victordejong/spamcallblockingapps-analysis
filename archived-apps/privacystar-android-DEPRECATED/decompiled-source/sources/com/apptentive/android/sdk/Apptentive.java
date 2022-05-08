package com.apptentive.android.sdk;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.conversation.ConversationProxy;
import com.apptentive.android.sdk.lifecycle.ApptentiveActivityLifecycleCallbacks;
import com.apptentive.android.sdk.model.CompoundMessage;
import com.apptentive.android.sdk.model.ExtendedData;
import com.apptentive.android.sdk.model.StoredFile;
import com.apptentive.android.sdk.module.engagement.EngagementModule;
import com.apptentive.android.sdk.module.messagecenter.UnreadMessagesListener;
import com.apptentive.android.sdk.module.metric.MetricModule;
import com.apptentive.android.sdk.module.rating.IRatingProvider;
import com.apptentive.android.sdk.module.survey.OnSurveyFinishedListener;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.ObjectUtils;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.google.android.gms.common.internal.ImagesContract;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive.class */
public class Apptentive {
    public static final String INTEGRATION_PUSH_TOKEN = "token";
    public static final int PUSH_PROVIDER_AMAZON_AWS_SNS = 3;
    public static final int PUSH_PROVIDER_APPTENTIVE = 0;
    public static final int PUSH_PROVIDER_PARSE = 1;
    public static final int PUSH_PROVIDER_URBAN_AIRSHIP = 2;
    private static OnPreInteractionListener preInteractionListener;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$AuthenticationFailedListener.class */
    public interface AuthenticationFailedListener {
        void onAuthenticationFailed(AuthenticationFailedReason authenticationFailedReason);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$AuthenticationFailedReason.class */
    public enum AuthenticationFailedReason {
        UNKNOWN,
        INVALID_ALGORITHM,
        MALFORMED_TOKEN,
        INVALID_TOKEN,
        MISSING_SUB_CLAIM,
        MISMATCHED_SUB_CLAIM,
        INVALID_SUB_CLAIM,
        EXPIRED_TOKEN,
        REVOKED_TOKEN,
        MISSING_APP_KEY,
        MISSING_APP_SIGNATURE,
        INVALID_KEY_SIGNATURE_PAIR;
        
        private String error;

        public static AuthenticationFailedReason parse(String str, String str2) {
            try {
                AuthenticationFailedReason valueOf = valueOf(str);
                valueOf.error = str2;
                return valueOf;
            } catch (Exception e) {
                ApptentiveLog.m411e(ApptentiveLogTag.CONVERSATION, "Error parsing unknown Apptentive.AuthenticationFailedReason: %s", str);
                return UNKNOWN;
            }
        }

        public String error() {
            return this.error;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "AuthenticationFailedReason{error='" + this.error + "'errorType='" + name() + "'}";
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$BooleanCallback.class */
    public interface BooleanCallback {
        void onFinish(boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$DateTime.class */
    public static class DateTime implements Serializable, Comparable<DateTime> {
        public static final String KEY_TYPE = "_type";
        public static final String SEC = "sec";
        public static final String TYPE = "datetime";
        private String sec;

        public DateTime(double d) {
            setDateTime(d);
        }

        public DateTime(JSONObject jSONObject) throws JSONException {
            this.sec = jSONObject.optString(SEC);
        }

        public int compareTo(DateTime dateTime) {
            return Double.compare(getDateTime(), dateTime.getDateTime());
        }

        public double getDateTime() {
            return Double.valueOf(this.sec).doubleValue();
        }

        public void setDateTime(double d) {
            this.sec = String.valueOf(d);
        }

        public JSONObject toJSONObject() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("_type", TYPE);
                jSONObject.put(SEC, this.sec);
            } catch (JSONException e) {
                ApptentiveLog.m408e(e, "Error creating Apptentive.DateTime.", new Object[0]);
            }
            return jSONObject;
        }

        public String toString() {
            return Double.toString(getDateTime());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$LoginCallback.class */
    public interface LoginCallback {
        void onLoginFail(String str);

        void onLoginFinish();
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$OnPreInteractionListener.class */
    public interface OnPreInteractionListener {
        boolean shouldEngageInteraction(String str, @Nullable Map<String, Object> map);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$PendingIntentCallback.class */
    public interface PendingIntentCallback {
        void onPendingIntent(PendingIntent pendingIntent);
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/Apptentive$Version.class */
    public static class Version implements Serializable, Comparable<Version> {
        public static final String KEY_TYPE = "_type";
        public static final String TYPE = "version";
        private static final long serialVersionUID = 1;
        private String version;

        public Version() {
        }

        public Version(long j) {
            this.version = Long.toString(j);
        }

        public Version(JSONObject jSONObject) throws JSONException {
            this.version = jSONObject.optString(TYPE, null);
        }

        public int compareTo(Version version) {
            String version2 = getVersion();
            String version3 = version.getVersion();
            String[] split = version2.split("\\.");
            String[] split2 = version3.split("\\.");
            int max = Math.max(split.length, split2.length);
            int i = 0;
            while (i < max) {
                long j = 0;
                long parseLong = split.length > i ? Long.parseLong(split[i]) : 0L;
                if (split2.length > i) {
                    j = Long.parseLong(split2[i]);
                }
                int i2 = (parseLong > j ? 1 : (parseLong == j ? 0 : -1));
                if (i2 < 0) {
                    return -1;
                }
                if (i2 > 0) {
                    return 1;
                }
                i++;
            }
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Version)) {
                return false;
            }
            if (compareTo((Version) obj) != 0) {
                z = false;
            }
            return z;
        }

        public String getVersion() {
            return this.version;
        }

        public void setVersion(long j) {
            setVersion(Long.toString(j));
        }

        public void setVersion(String str) {
            this.version = str;
        }

        public void toJsonObject() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("_type", TYPE);
                jSONObject.put(TYPE, this.version);
            } catch (JSONException e) {
                ApptentiveLog.m408e(e, "Error creating Apptentive.Version.", new Object[0]);
            }
        }

        public String toString() {
            return getVersion();
        }
    }

    private static void addCustomDeviceData(final String str, final DateTime dateTime) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.7
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getDevice().getCustomData().put(str, (Serializable) dateTime);
                return true;
            }
        }, "add custom device data");
    }

    private static void addCustomDeviceData(final String str, final Version version) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.6
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getDevice().getCustomData().put(str, (Serializable) version);
                return true;
            }
        }, "add custom device data");
    }

    public static void addCustomDeviceData(final String str, final Boolean bool) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.5
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getDevice().getCustomData().put(str, (Serializable) bool);
                return true;
            }
        }, "add custom device data");
    }

    public static void addCustomDeviceData(final String str, final Number number) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.4
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getDevice().getCustomData().put(str, (Serializable) number);
                return true;
            }
        }, "add custom device data");
    }

    public static void addCustomDeviceData(final String str, final String str2) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.3
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getDevice().getCustomData().put(str, (Serializable) StringUtils.trim(str2));
                return true;
            }
        }, "add custom device data");
    }

    private static void addCustomPersonData(final String str, final DateTime dateTime) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.13
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getPerson().getCustomData().put(str, (Serializable) dateTime);
                return true;
            }
        }, "add custom person data");
    }

    private static void addCustomPersonData(final String str, final Version version) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.12
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getPerson().getCustomData().put(str, (Serializable) version);
                return true;
            }
        }, "add custom person data");
    }

    public static void addCustomPersonData(final String str, final Boolean bool) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.11
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getPerson().getCustomData().put(str, (Serializable) bool);
                return true;
            }
        }, "add custom person data");
    }

    public static void addCustomPersonData(final String str, final Number number) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.10
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getPerson().getCustomData().put(str, (Serializable) number);
                return true;
            }
        }, "add custom person data");
    }

    public static void addCustomPersonData(final String str, final String str2) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.9
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getPerson().getCustomData().put(str, (Serializable) StringUtils.trim(str2));
                return true;
            }
        }, "add custom person data");
    }

    public static void addUnreadMessagesListener(final UnreadMessagesListener unreadMessagesListener) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.22
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getMessageManager().addHostUnreadMessagesListener(UnreadMessagesListener.this);
                return true;
            }
        }, "add unread message listener");
    }

    public static void buildPendingIntentFromPushNotification(@NonNull final PendingIntentCallback pendingIntentCallback, @NonNull final Intent intent) {
        if (pendingIntentCallback == null) {
            throw new IllegalArgumentException("Callback is null");
        }
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.16
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                final PendingIntent generatePendingIntentFromApptentivePushData = ApptentiveInternal.generatePendingIntentFromApptentivePushData(conversation, ApptentiveInternal.getApptentivePushNotificationData(intent));
                DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.16.1
                    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                    protected void execute() {
                        pendingIntentCallback.onPendingIntent(generatePendingIntentFromApptentivePushData);
                    }
                });
                return true;
            }
        }, "build pending intent");
    }

    public static void buildPendingIntentFromPushNotification(@NonNull final PendingIntentCallback pendingIntentCallback, @NonNull final Bundle bundle) {
        if (pendingIntentCallback == null) {
            throw new IllegalArgumentException("Callback is null");
        }
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.17
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                final PendingIntent generatePendingIntentFromApptentivePushData = ApptentiveInternal.generatePendingIntentFromApptentivePushData(conversation, ApptentiveInternal.getApptentivePushNotificationData(bundle));
                DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.17.1
                    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                    protected void execute() {
                        pendingIntentCallback.onPendingIntent(generatePendingIntentFromApptentivePushData);
                    }
                });
                return true;
            }
        }, "build pending intent");
    }

    public static void buildPendingIntentFromPushNotification(final PendingIntentCallback pendingIntentCallback, @NonNull final Map<String, String> map) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.18
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                final PendingIntent generatePendingIntentFromApptentivePushData = ApptentiveInternal.generatePendingIntentFromApptentivePushData(conversation, ApptentiveInternal.getApptentivePushNotificationData(map));
                DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.18.1
                    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                    protected void execute() {
                        pendingIntentCallback.onPendingIntent(generatePendingIntentFromApptentivePushData);
                    }
                });
                return true;
            }
        }, "build pending intent");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean canShowLocalAppInteraction(Conversation conversation, String str) {
        return EngagementModule.canShowInteraction(conversation, SettingsJsonConstants.APP_KEY, str, ImagesContract.LOCAL);
    }

    public static void canShowMessageCenter(BooleanCallback booleanCallback) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(booleanCallback, DispatchQueue.mainQueue()) { // from class: com.apptentive.android.sdk.Apptentive.20
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                return ApptentiveInternal.canShowMessageCenterInternal(conversation);
            }
        }, "check message center availability");
    }

    public static void clearAuthenticationFailedListener() {
        try {
            if (ApptentiveInternal.checkRegistered()) {
                ApptentiveInternal.getInstance().setAuthenticationFailedListener(null);
            }
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Exception while clearing authentication listener", new Object[0]);
            MetricModule.sendError(e, null, null);
        }
    }

    public static void engage(Context context, String str) {
        synchronized (Apptentive.class) {
            try {
                engage(context, str, null, null, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void engage(Context context, String str, BooleanCallback booleanCallback) {
        synchronized (Apptentive.class) {
            try {
                engage(context, str, booleanCallback, null, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void engage(Context context, String str, BooleanCallback booleanCallback, Map<String, Object> map) {
        synchronized (Apptentive.class) {
            try {
                engage(context, str, booleanCallback, map, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void engage(final Context context, final String str, BooleanCallback booleanCallback, final Map<String, Object> map, final ExtendedData... extendedDataArr) {
        synchronized (Apptentive.class) {
            try {
                if (context == null) {
                    throw new IllegalArgumentException("Context is null");
                } else if (StringUtils.isNullOrEmpty(str)) {
                    throw new IllegalArgumentException("Event is null or empty");
                } else {
                    final OnPreInteractionListener onPreInteractionListener = preInteractionListener;
                    if (onPreInteractionListener != null) {
                        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(booleanCallback, DispatchQueue.mainQueue()) { // from class: com.apptentive.android.sdk.Apptentive.27
                            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                            protected boolean execute(Conversation conversation) {
                                if (!Apptentive.canShowLocalAppInteraction(conversation, str)) {
                                    return false;
                                }
                                boolean shouldEngageInteraction = onPreInteractionListener.shouldEngageInteraction(str, map);
                                ApptentiveLog.m405i("Engagement callback allows interaction for event '%s': %b", str, Boolean.valueOf(shouldEngageInteraction));
                                if (!shouldEngageInteraction) {
                                    return false;
                                }
                                return Apptentive.engageLocalAppEvent(context, conversation, str, map, extendedDataArr);
                            }
                        }, StringUtils.format("engage '%s' event", str));
                    } else {
                        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(booleanCallback, DispatchQueue.mainQueue()) { // from class: com.apptentive.android.sdk.Apptentive.28
                            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                            protected boolean execute(Conversation conversation) {
                                return Apptentive.engageLocalAppEvent(context, conversation, str, map, extendedDataArr);
                            }
                        }, StringUtils.format("engage '%s' event", str));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void engage(Context context, String str, Map<String, Object> map) {
        synchronized (Apptentive.class) {
            try {
                engage(context, str, null, map, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void engage(Context context, String str, Map<String, Object> map, ExtendedData... extendedDataArr) {
        synchronized (Apptentive.class) {
            try {
                engage(context, str, null, map, extendedDataArr);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean engageLocalAppEvent(Context context, Conversation conversation, String str, Map<String, Object> map, ExtendedData[] extendedDataArr) {
        return EngagementModule.engage(context, conversation, ImagesContract.LOCAL, SettingsJsonConstants.APP_KEY, null, str, null, map, extendedDataArr);
    }

    public static String getBodyFromApptentivePush(Intent intent) {
        if (ApptentiveInternal.checkRegistered() && intent != null) {
            return getBodyFromApptentivePush(intent.getExtras());
        }
        return null;
    }

    public static String getBodyFromApptentivePush(Bundle bundle) {
        try {
            if (!ApptentiveInternal.checkRegistered() || bundle == null) {
                return null;
            }
            if (bundle.containsKey("body")) {
                return bundle.getString("body");
            }
            if (bundle.containsKey("com.parse.Data")) {
                String string = bundle.getString("com.parse.Data");
                if (string == null) {
                    return null;
                }
                try {
                    return new JSONObject(string).optString("alert", null);
                } catch (JSONException e) {
                    return null;
                }
            } else if (bundle.containsKey("com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE")) {
                Bundle bundle2 = bundle.getBundle("com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE");
                if (bundle2 == null) {
                    return null;
                }
                return bundle2.getString("com.urbanairship.push.ALERT");
            } else if (bundle.containsKey("com.urbanairship.push.ALERT")) {
                return bundle.getString("com.urbanairship.push.ALERT");
            } else {
                return null;
            }
        } catch (Exception e2) {
            ApptentiveLog.m410e(ApptentiveLogTag.PUSH, e2, "Exception while getting body from Apptentive push", new Object[0]);
            return null;
        }
    }

    public static String getBodyFromApptentivePush(Map<String, String> map) {
        try {
            if (ApptentiveInternal.checkRegistered() && map != null) {
                return map.get("body");
            }
            return null;
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.PUSH, e, "Exception while getting body from Apptentive push", new Object[0]);
            return null;
        }
    }

    public static String getPersonEmail() {
        ConversationProxy conversationProxy;
        try {
            if (!ApptentiveInternal.isApptentiveRegistered() || (conversationProxy = ApptentiveInternal.getInstance().getConversationProxy()) == null) {
                return null;
            }
            return conversationProxy.getPersonEmail();
        } catch (Exception e) {
            ApptentiveLog.m411e(ApptentiveLogTag.CONVERSATION, "Exception while getting person email", new Object[0]);
            return null;
        }
    }

    public static String getPersonName() {
        ConversationProxy conversationProxy;
        try {
            if (!ApptentiveInternal.isApptentiveRegistered() || (conversationProxy = ApptentiveInternal.getInstance().getConversationProxy()) == null) {
                return null;
            }
            return conversationProxy.getPersonName();
        } catch (Exception e) {
            ApptentiveLog.m411e(ApptentiveLogTag.CONVERSATION, "Exception while getting person name", new Object[0]);
            return null;
        }
    }

    public static String getTitleFromApptentivePush(Intent intent) {
        if (ApptentiveInternal.checkRegistered() && intent != null) {
            return getTitleFromApptentivePush(intent.getExtras());
        }
        return null;
    }

    public static String getTitleFromApptentivePush(Bundle bundle) {
        Bundle bundle2;
        try {
            if (!ApptentiveInternal.checkRegistered() || bundle == null) {
                return null;
            }
            if (bundle.containsKey("title")) {
                return bundle.getString("title");
            }
            if (bundle.containsKey("com.parse.Data")) {
                String string = bundle.getString("com.parse.Data");
                if (string == null) {
                    return null;
                }
                try {
                    return new JSONObject(string).optString("title", null);
                } catch (JSONException e) {
                    return null;
                }
            } else if (!bundle.containsKey("com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE") || (bundle2 = bundle.getBundle("com.urbanairship.push.EXTRA_PUSH_MESSAGE_BUNDLE")) == null) {
                return null;
            } else {
                return bundle2.getString("title");
            }
        } catch (Exception e2) {
            ApptentiveLog.m410e(ApptentiveLogTag.PUSH, e2, "Exception while getting title from Apptentive push", new Object[0]);
            return null;
        }
    }

    public static String getTitleFromApptentivePush(Map<String, String> map) {
        try {
            if (ApptentiveInternal.checkRegistered() && map != null) {
                return map.get("title");
            }
            return null;
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.PUSH, e, "Exception while getting title from Apptentive push", new Object[0]);
            return null;
        }
    }

    public static int getUnreadMessageCount() {
        int i = 0;
        try {
            if (!ApptentiveInternal.isApptentiveRegistered()) {
                return 0;
            }
            ConversationProxy conversationProxy = ApptentiveInternal.getInstance().getConversationProxy();
            if (conversationProxy != null) {
                i = conversationProxy.getUnreadMessageCount();
            }
            return i;
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.MESSAGES, e, "Exception while getting unread message count", new Object[0]);
            MetricModule.sendError(e, null, null);
            return 0;
        }
    }

    public static boolean isApptentivePushNotification(Intent intent) {
        boolean z = false;
        try {
            if (!ApptentiveInternal.checkRegistered()) {
                return false;
            }
            if (ApptentiveInternal.getApptentivePushNotificationData(intent) != null) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.PUSH, e, "Exception while checking for Apptentive push notification intent", new Object[0]);
            return false;
        }
    }

    public static boolean isApptentivePushNotification(Bundle bundle) {
        boolean z = false;
        try {
            if (!ApptentiveInternal.checkRegistered()) {
                return false;
            }
            if (ApptentiveInternal.getApptentivePushNotificationData(bundle) != null) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.PUSH, e, "Exception while checking for Apptentive push notification bundle", new Object[0]);
            return false;
        }
    }

    public static boolean isApptentivePushNotification(Map<String, String> map) {
        boolean z = false;
        try {
            if (!ApptentiveInternal.checkRegistered()) {
                return false;
            }
            if (ApptentiveInternal.getApptentivePushNotificationData(map) != null) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.PUSH, e, "Exception while checking for Apptentive push notification data", new Object[0]);
            return false;
        }
    }

    public static void login(final String str, final LoginCallback loginCallback) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Token is null or empty");
        }
        ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.31
            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
            protected void execute() {
                try {
                    Apptentive.loginGuarded(str, loginCallback);
                } catch (Exception e) {
                    ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Exception while trying to login", new Object[0]);
                    Apptentive.notifyFailure(loginCallback, "Exception while trying to login");
                    MetricModule.sendError(e, null, null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loginGuarded(String str, LoginCallback loginCallback) {
        ApptentiveHelper.checkConversationQueue();
        ApptentiveInstance instance = ApptentiveInternal.getInstance();
        if (instance.isNull()) {
            ApptentiveLog.m411e(ApptentiveLogTag.CONVERSATION, "Unable to login: Apptentive instance is not properly initialized", new Object[0]);
            notifyFailure(loginCallback, "Apptentive instance is not properly initialized");
            return;
        }
        instance.login(str, loginCallback);
    }

    public static void logout() {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.33
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                ApptentiveInternal.getInstance().logout();
                return true;
            }
        }, "logout");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyFailure(final LoginCallback loginCallback, final String str) {
        if (loginCallback != null) {
            DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.32
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    LoginCallback.this.onLoginFail(str);
                }
            });
        }
    }

    public static void onApptimizeExperimentRun(String str, String str2, boolean z) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.34
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                ApptentiveInternal apptentiveInternal = (ApptentiveInternal) ObjectUtils.m395as(ApptentiveInternal.getInstance(), ApptentiveInternal.class);
                if (apptentiveInternal == null) {
                    return false;
                }
                apptentiveInternal.tryUpdateApptimizeData();
                return true;
            }
        }, "update Apptimize experiment data");
    }

    public static void onApptimizeExperimentsProcessed() {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.35
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                ApptentiveInternal apptentiveInternal = (ApptentiveInternal) ObjectUtils.m395as(ApptentiveInternal.getInstance(), ApptentiveInternal.class);
                if (apptentiveInternal == null) {
                    return false;
                }
                apptentiveInternal.tryUpdateApptimizeData();
                return true;
            }
        }, "update Apptimize experiments data");
    }

    public static void putRatingProviderArg(String str, String str2) {
        try {
            if (ApptentiveInternal.isApptentiveRegistered()) {
                ApptentiveInternal.getInstance().putRatingProviderArg(str, str2);
            }
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Exception while putting rating provider arg", new Object[0]);
        }
    }

    public static void queryCanShowInteraction(final String str, BooleanCallback booleanCallback) {
        synchronized (Apptentive.class) {
            try {
                ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(booleanCallback, DispatchQueue.mainQueue()) { // from class: com.apptentive.android.sdk.Apptentive.29
                    @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                    protected boolean execute(Conversation conversation) {
                        return Apptentive.canShowLocalAppInteraction(conversation, str);
                    }
                }, "check if interaction can be shown");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    public static void register(Application application) {
        if (application == null) {
            throw new IllegalArgumentException("Application is null");
        }
        String manifestMetadataString = Util.getManifestMetadataString(application, Constants.MANIFEST_KEY_APPTENTIVE_KEY);
        if (StringUtils.isNullOrEmpty(manifestMetadataString)) {
            ApptentiveLog.m409e("Unable to initialize Apptentive SDK: '%s' manifest key is missing", Constants.MANIFEST_KEY_APPTENTIVE_KEY);
            return;
        }
        String manifestMetadataString2 = Util.getManifestMetadataString(application, Constants.MANIFEST_KEY_APPTENTIVE_SIGNATURE);
        if (StringUtils.isNullOrEmpty(manifestMetadataString2)) {
            ApptentiveLog.m409e("Unable to initialize Apptentive SDK: '%s' manifest key is missing", Constants.MANIFEST_KEY_APPTENTIVE_SIGNATURE);
            return;
        }
        ApptentiveConfiguration apptentiveConfiguration = new ApptentiveConfiguration(manifestMetadataString, manifestMetadataString2);
        ApptentiveLog.Level parse = ApptentiveLog.Level.parse(Util.getManifestMetadataString(application, Constants.MANIFEST_KEY_APPTENTIVE_LOG_LEVEL));
        if (parse != ApptentiveLog.Level.UNKNOWN) {
            apptentiveConfiguration.setLogLevel(parse);
        }
        register(application, apptentiveConfiguration);
    }

    public static void register(Application application, ApptentiveConfiguration apptentiveConfiguration) {
        if (application == null) {
            throw new IllegalArgumentException("Application is null");
        } else if (apptentiveConfiguration == null) {
            throw new IllegalArgumentException("Apptentive configuration is null");
        } else {
            try {
                ApptentiveInternal.createInstance(application, apptentiveConfiguration);
            } catch (Exception e) {
                ApptentiveLog.m408e(e, "Exception while registering Apptentive SDK", new Object[0]);
            }
        }
    }

    public static void register(Application application, String str, String str2) {
        register(application, new ApptentiveConfiguration(str, str2));
    }

    public static void registerCallbacks(Application application) {
        ApptentiveActivityLifecycleCallbacks.register(application);
    }

    public static void removeCustomDeviceData(final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.8
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getDevice().getCustomData().remove((Object) str);
                return true;
            }
        }, "remove custom device data");
    }

    public static void removeCustomPersonData(final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.14
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getPerson().getCustomData().remove((Object) str);
                return true;
            }
        }, "remove custom person data");
    }

    public static void sendAttachmentFile(final InputStream inputStream, final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.26
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                if (inputStream == null) {
                    return false;
                }
                CompoundMessage compoundMessage = new CompoundMessage();
                compoundMessage.setBody(null);
                compoundMessage.setRead(true);
                compoundMessage.setHidden(true);
                compoundMessage.setSenderId(conversation.getPerson().getId());
                ArrayList arrayList = new ArrayList();
                String generateCacheFilePathFromNonceOrPrefix = Util.generateCacheFilePathFromNonceOrPrefix(ApptentiveInternal.getInstance().getApplicationContext(), compoundMessage.getNonce(), null);
                String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
                String str2 = generateCacheFilePathFromNonceOrPrefix;
                if (!TextUtils.isEmpty(extensionFromMimeType)) {
                    str2 = generateCacheFilePathFromNonceOrPrefix + "." + extensionFromMimeType;
                }
                StoredFile createLocalStoredFile = Util.createLocalStoredFile(inputStream, str2, str2, str);
                if (createLocalStoredFile == null) {
                    return false;
                }
                createLocalStoredFile.setId(compoundMessage.getNonce());
                arrayList.add(createLocalStoredFile);
                compoundMessage.setAssociatedFiles(arrayList);
                conversation.getMessageManager().sendMessage(compoundMessage);
                return true;
            }
        }, "add unread message listener");
    }

    public static void sendAttachmentFile(final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.24
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                CompoundMessage compoundMessage = new CompoundMessage();
                compoundMessage.setBody(null);
                compoundMessage.setRead(true);
                compoundMessage.setHidden(true);
                compoundMessage.setSenderId(conversation.getPerson().getId());
                ArrayList arrayList = new ArrayList();
                Context applicationContext = ApptentiveInternal.getInstance().getApplicationContext();
                String generateCacheFilePathFromNonceOrPrefix = Util.generateCacheFilePathFromNonceOrPrefix(applicationContext, compoundMessage.getNonce(), Uri.parse(str).getLastPathSegment());
                String mimeTypeFromUri = Util.getMimeTypeFromUri(applicationContext, Uri.parse(str));
                MimeTypeMap singleton = MimeTypeMap.getSingleton();
                String extensionFromMimeType = singleton.getExtensionFromMimeType(mimeTypeFromUri);
                String str2 = extensionFromMimeType;
                if (extensionFromMimeType == null) {
                    str2 = MimeTypeMap.getFileExtensionFromUrl(str);
                }
                String str3 = mimeTypeFromUri;
                if (mimeTypeFromUri == null) {
                    str3 = mimeTypeFromUri;
                    if (str2 != null) {
                        str3 = singleton.getMimeTypeFromExtension(str2);
                    }
                }
                String str4 = generateCacheFilePathFromNonceOrPrefix;
                if (!TextUtils.isEmpty(str2)) {
                    str4 = generateCacheFilePathFromNonceOrPrefix + "." + str2;
                }
                StoredFile createLocalStoredFile = Util.createLocalStoredFile(str, str4, str3);
                if (createLocalStoredFile == null) {
                    return false;
                }
                createLocalStoredFile.setId(compoundMessage.getNonce());
                arrayList.add(createLocalStoredFile);
                compoundMessage.setAssociatedFiles(arrayList);
                conversation.getMessageManager().sendMessage(compoundMessage);
                return true;
            }
        }, "send attachment file");
    }

    public static void sendAttachmentFile(final byte[] bArr, final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.25
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                Throwable th;
                ByteArrayInputStream byteArrayInputStream = null;
                try {
                    byteArrayInputStream = new ByteArrayInputStream(bArr);
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    Apptentive.sendAttachmentFile(byteArrayInputStream, str);
                    Util.ensureClosed(byteArrayInputStream);
                    return true;
                } catch (Throwable th3) {
                    th = th3;
                    Util.ensureClosed(byteArrayInputStream);
                    throw th;
                }
            }
        }, "send attachment file");
    }

    public static void sendAttachmentText(final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.23
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                CompoundMessage compoundMessage = new CompoundMessage();
                compoundMessage.setBody(str);
                compoundMessage.setRead(true);
                compoundMessage.setHidden(true);
                compoundMessage.setSenderId(conversation.getPerson().getId());
                compoundMessage.setAssociatedFiles(null);
                conversation.getMessageManager().sendMessage(compoundMessage);
                return true;
            }
        }, "send attachment text");
    }

    public static void setAuthenticationFailedListener(AuthenticationFailedListener authenticationFailedListener) {
        try {
            if (ApptentiveInternal.checkRegistered()) {
                ApptentiveInternal.getInstance().setAuthenticationFailedListener(authenticationFailedListener);
            }
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Error in Apptentive.setUnreadMessagesListener()", new Object[0]);
            MetricModule.sendError(e, null, null);
        }
    }

    public static void setOnPreInteractionListener(@Nullable OnPreInteractionListener onPreInteractionListener) {
        synchronized (Apptentive.class) {
            try {
                preInteractionListener = onPreInteractionListener;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setOnSurveyFinishedListener(final OnSurveyFinishedListener onSurveyFinishedListener) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.30
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                ApptentiveInternal.getInstance().setOnSurveyFinishedListener(OnSurveyFinishedListener.this);
                return true;
            }
        }, "set survey finish listener");
    }

    public static void setPersonEmail(final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.1
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                ApptentiveInternal.getInstance().getConversationProxy().setPersonEmail(str);
                return true;
            }
        }, "set person email");
    }

    public static void setPersonName(final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.2
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                ApptentiveInternal.getInstance().getConversationProxy().setPersonName(str);
                return true;
            }
        }, "set person name");
    }

    public static void setPushNotificationIntegration(final int i, final String str) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.15
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                ApptentiveInternal.getInstance().getGlobalSharedPrefs().edit().putInt(Constants.PREF_KEY_PUSH_PROVIDER, i).putString(Constants.PREF_KEY_PUSH_TOKEN, str).apply();
                conversation.setPushIntegration(i, str);
                return true;
            }
        }, "set push notification integration");
    }

    public static void setRatingProvider(IRatingProvider iRatingProvider) {
        try {
            if (ApptentiveInternal.isApptentiveRegistered()) {
                ApptentiveInternal.getInstance().setRatingProvider(iRatingProvider);
            }
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Exception while setting rating provider", new Object[0]);
        }
    }

    @Deprecated
    public static void setUnreadMessagesListener(final UnreadMessagesListener unreadMessagesListener) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.Apptentive.21
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                conversation.getMessageManager().setHostUnreadMessagesListener(UnreadMessagesListener.this);
                return true;
            }
        }, "set unread message listener");
    }

    public static void showMessageCenter(Context context) {
        showMessageCenter(context, null, null);
    }

    public static void showMessageCenter(Context context, BooleanCallback booleanCallback) {
        showMessageCenter(context, booleanCallback, null);
    }

    public static void showMessageCenter(final Context context, BooleanCallback booleanCallback, final Map<String, Object> map) {
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask(booleanCallback, DispatchQueue.mainQueue()) { // from class: com.apptentive.android.sdk.Apptentive.19
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                return ApptentiveInternal.getInstance().showMessageCenterInternal(context, map);
            }
        }, "show message center");
    }

    public static void showMessageCenter(Context context, Map<String, Object> map) {
        showMessageCenter(context, null, map);
    }
}
