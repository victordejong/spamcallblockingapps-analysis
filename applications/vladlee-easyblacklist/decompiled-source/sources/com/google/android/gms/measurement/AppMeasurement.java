package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.p026b.C0529a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzgv;
import com.google.android.gms.measurement.internal.zzgw;
import com.google.android.gms.measurement.internal.zzgx;
import com.google.android.gms.measurement.internal.zzgy;
import com.google.android.gms.measurement.internal.zzgz;
import com.google.android.gms.measurement.internal.zzha;
import com.google.android.gms.measurement.internal.zzia;
import com.google.android.gms.measurement.internal.zzig;
import com.google.android.gms.measurement.internal.zzkl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {
    public static final String CRASH_ORIGIN = "crash";
    public static final String FCM_ORIGIN = "fcm";
    public static final String FIAM_ORIGIN = "fiam";

    /* renamed from: a */
    private static volatile AppMeasurement f16535a;

    /* renamed from: b */
    private final zzga f16536b;

    /* renamed from: c */
    private final zzia f16537c;

    /* renamed from: d */
    private final boolean f16538d;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty.class */
    public static class ConditionalUserProperty {
        public boolean mActive;
        public String mAppId;
        public long mCreationTimestamp;
        public String mExpiredEventName;
        public Bundle mExpiredEventParams;
        public String mName;
        public String mOrigin;
        public long mTimeToLive;
        public String mTimedOutEventName;
        public Bundle mTimedOutEventParams;
        public String mTriggerEventName;
        public long mTriggerTimeout;
        public String mTriggeredEventName;
        public Bundle mTriggeredEventParams;
        public long mTriggeredTimestamp;
        public Object mValue;

        public ConditionalUserProperty() {
        }

        private ConditionalUserProperty(Bundle bundle) {
            Preconditions.checkNotNull(bundle);
            this.mAppId = (String) zzgw.zza(bundle, "app_id", String.class, null);
            this.mOrigin = (String) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.ORIGIN, String.class, null);
            this.mName = (String) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null);
            this.mValue = zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.VALUE, Object.class, null);
            this.mTriggerEventName = (String) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
            this.mTriggerTimeout = ((Long) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
            this.mTimedOutEventParams = (Bundle) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
            this.mTriggeredEventName = (String) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
            this.mTriggeredEventParams = (Bundle) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
            this.mTimeToLive = ((Long) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
            this.mExpiredEventParams = (Bundle) zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        }

        /* synthetic */ ConditionalUserProperty(Bundle bundle, byte b) {
            this(bundle);
        }

        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            Preconditions.checkNotNull(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                this.mValue = zzig.zza(obj);
                if (this.mValue == null) {
                    this.mValue = conditionalUserProperty.mValue;
                }
            }
            this.mActive = conditionalUserProperty.mActive;
            this.mTriggerEventName = conditionalUserProperty.mTriggerEventName;
            this.mTriggerTimeout = conditionalUserProperty.mTriggerTimeout;
            this.mTimedOutEventName = conditionalUserProperty.mTimedOutEventName;
            Bundle bundle = conditionalUserProperty.mTimedOutEventParams;
            if (bundle != null) {
                this.mTimedOutEventParams = new Bundle(bundle);
            }
            this.mTriggeredEventName = conditionalUserProperty.mTriggeredEventName;
            Bundle bundle2 = conditionalUserProperty.mTriggeredEventParams;
            if (bundle2 != null) {
                this.mTriggeredEventParams = new Bundle(bundle2);
            }
            this.mTriggeredTimestamp = conditionalUserProperty.mTriggeredTimestamp;
            this.mTimeToLive = conditionalUserProperty.mTimeToLive;
            this.mExpiredEventName = conditionalUserProperty.mExpiredEventName;
            Bundle bundle3 = conditionalUserProperty.mExpiredEventParams;
            if (bundle3 != null) {
                this.mExpiredEventParams = new Bundle(bundle3);
            }
        }

        /* renamed from: a */
        static /* synthetic */ Bundle m2214a(ConditionalUserProperty conditionalUserProperty) {
            Bundle bundle = new Bundle();
            String str = conditionalUserProperty.mAppId;
            if (str != null) {
                bundle.putString("app_id", str);
            }
            String str2 = conditionalUserProperty.mOrigin;
            if (str2 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN, str2);
            }
            String str3 = conditionalUserProperty.mName;
            if (str3 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str3);
            }
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                zzgw.zza(bundle, obj);
            }
            String str4 = conditionalUserProperty.mTriggerEventName;
            if (str4 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, str4);
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, conditionalUserProperty.mTriggerTimeout);
            String str5 = conditionalUserProperty.mTimedOutEventName;
            if (str5 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, str5);
            }
            Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
            if (bundle2 != null) {
                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, bundle2);
            }
            String str6 = conditionalUserProperty.mTriggeredEventName;
            if (str6 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, str6);
            }
            Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
            if (bundle3 != null) {
                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, bundle3);
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, conditionalUserProperty.mTimeToLive);
            String str7 = conditionalUserProperty.mExpiredEventName;
            if (str7 != null) {
                bundle.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str7);
            }
            Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
            if (bundle4 != null) {
                bundle.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle4);
            }
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, conditionalUserProperty.mCreationTimestamp);
            bundle.putBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, conditionalUserProperty.mActive);
            bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, conditionalUserProperty.mTriggeredTimestamp);
            return bundle;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$Event.class */
    public static final class Event extends zzgv {
        public static final String AD_REWARD = "_ar";
        public static final String APP_EXCEPTION = "_ae";

        private Event() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$EventInterceptor.class */
    public interface EventInterceptor extends zzha {
        @Override // com.google.android.gms.measurement.internal.zzha
        void interceptEvent(String str, String str2, Bundle bundle, long j);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$OnEventListener.class */
    public interface OnEventListener extends zzgz {
        @Override // com.google.android.gms.measurement.internal.zzgz
        void onEvent(String str, String str2, Bundle bundle, long j);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$Param.class */
    public static final class Param extends zzgy {
        public static final String FATAL = "fatal";
        public static final String TIMESTAMP = "timestamp";
        public static final String TYPE = "type";

        private Param() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$UserProperty.class */
    public static final class UserProperty extends zzgx {
        public static final String FIREBASE_LAST_NOTIFICATION = "_ln";

        private UserProperty() {
        }
    }

    private AppMeasurement(zzga zzgaVar) {
        Preconditions.checkNotNull(zzgaVar);
        this.f16536b = zzgaVar;
        this.f16537c = null;
        this.f16538d = false;
    }

    private AppMeasurement(zzia zziaVar) {
        Preconditions.checkNotNull(zziaVar);
        this.f16537c = zziaVar;
        this.f16536b = null;
        this.f16538d = true;
    }

    /* renamed from: a */
    private static AppMeasurement m2216a(Context context) {
        if (f16535a == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f16535a == null) {
                        zzia a = m2215a(context, null);
                        if (a != null) {
                            f16535a = new AppMeasurement(a);
                        } else {
                            f16535a = new AppMeasurement(zzga.zza(context, null, null, null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16535a;
    }

    /* renamed from: a */
    private static zzia m2215a(Context context, Bundle bundle) {
        try {
            return (zzia) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, bundle);
        } catch (ClassNotFoundException | Exception e) {
            return null;
        }
    }

    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        return m2216a(context);
    }

    public static AppMeasurement zza(Context context, Bundle bundle) {
        if (f16535a == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f16535a == null) {
                        zzia a = m2215a(context, bundle);
                        if (a != null) {
                            f16535a = new AppMeasurement(a);
                        } else {
                            f16535a = new AppMeasurement(zzga.zza(context, null, null, bundle));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16535a;
    }

    public void beginAdUnitExposure(String str) {
        if (this.f16538d) {
            this.f16537c.zza(str);
        } else {
            this.f16536b.zzz().zza(str, this.f16536b.zzm().elapsedRealtime());
        }
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (this.f16538d) {
            this.f16537c.zzb(str, str2, bundle);
        } else {
            this.f16536b.zzh().zzc(str, str2, bundle);
        }
    }

    protected void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        if (!this.f16538d) {
            this.f16536b.zzh().zza(str, str2, str3, bundle);
            return;
        }
        throw new IllegalStateException("Unexpected call on client side");
    }

    public void endAdUnitExposure(String str) {
        if (this.f16538d) {
            this.f16537c.zzb(str);
        } else {
            this.f16536b.zzz().zzb(str, this.f16536b.zzm().elapsedRealtime());
        }
    }

    public long generateEventId() {
        return this.f16538d ? this.f16537c.zze() : this.f16536b.zzi().zzg();
    }

    public String getAppInstanceId() {
        return this.f16538d ? this.f16537c.zzc() : this.f16536b.zzh().zzah();
    }

    public Boolean getBoolean() {
        return this.f16538d ? (Boolean) this.f16537c.zza(4) : this.f16536b.zzh().zzac();
    }

    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List<Bundle> zza = this.f16538d ? this.f16537c.zza(str, str2) : this.f16536b.zzh().zza(str, str2);
        ArrayList arrayList = new ArrayList(zza == null ? 0 : zza.size());
        for (Bundle bundle : zza) {
            arrayList.add(new ConditionalUserProperty(bundle, (byte) 0));
        }
        return arrayList;
    }

    protected List<ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        if (!this.f16538d) {
            ArrayList<Bundle> zza = this.f16536b.zzh().zza(str, str2, str3);
            ArrayList arrayList = new ArrayList(zza == null ? 0 : zza.size());
            ArrayList<Bundle> arrayList2 = zza;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Bundle bundle = arrayList2.get(i);
                i++;
                arrayList.add(new ConditionalUserProperty(bundle, (byte) 0));
            }
            return arrayList;
        }
        throw new IllegalStateException("Unexpected call on client side");
    }

    public String getCurrentScreenClass() {
        return this.f16538d ? this.f16537c.zzb() : this.f16536b.zzh().zzak();
    }

    public String getCurrentScreenName() {
        return this.f16538d ? this.f16537c.zza() : this.f16536b.zzh().zzaj();
    }

    public Double getDouble() {
        return this.f16538d ? (Double) this.f16537c.zza(2) : this.f16536b.zzh().zzag();
    }

    public String getGmpAppId() {
        return this.f16538d ? this.f16537c.zzd() : this.f16536b.zzh().zzal();
    }

    public Integer getInteger() {
        return this.f16538d ? (Integer) this.f16537c.zza(3) : this.f16536b.zzh().zzaf();
    }

    public Long getLong() {
        return this.f16538d ? (Long) this.f16537c.zza(1) : this.f16536b.zzh().zzae();
    }

    public int getMaxUserProperties(String str) {
        if (this.f16538d) {
            return this.f16537c.zzc(str);
        }
        this.f16536b.zzh();
        Preconditions.checkNotEmpty(str);
        return 25;
    }

    public String getString() {
        return this.f16538d ? (String) this.f16537c.zza(0) : this.f16536b.zzh().zzad();
    }

    protected Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.f16538d ? this.f16537c.zza(str, str2, z) : this.f16536b.zzh().zza(str, str2, z);
    }

    public Map<String, Object> getUserProperties(boolean z) {
        if (this.f16538d) {
            return this.f16537c.zza((String) null, (String) null, z);
        }
        List<zzkl> zzc = this.f16536b.zzh().zzc(z);
        C0529a aVar = new C0529a(zzc.size());
        for (zzkl zzklVar : zzc) {
            aVar.put(zzklVar.zza, zzklVar.zza());
        }
        return aVar;
    }

    protected Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        if (!this.f16538d) {
            return this.f16536b.zzh().zza(str, str2, str3, z);
        }
        throw new IllegalStateException("Unexpected call on client side");
    }

    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (this.f16538d) {
            this.f16537c.zza(str, str2, bundle);
        } else {
            this.f16536b.zzh().zza(str, str2, bundle);
        }
    }

    public void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
        if (this.f16538d) {
            this.f16537c.zza(str, str2, bundle, j);
        } else {
            this.f16536b.zzh().zza(str, str2, bundle, true, false, j);
        }
    }

    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        if (this.f16538d) {
            this.f16537c.zza(onEventListener);
        } else {
            this.f16536b.zzh().zza(onEventListener);
        }
    }

    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        if (this.f16538d) {
            this.f16537c.zza(ConditionalUserProperty.m2214a(conditionalUserProperty));
        } else {
            this.f16536b.zzh().zza(ConditionalUserProperty.m2214a(conditionalUserProperty));
        }
    }

    protected void setConditionalUserPropertyAs(ConditionalUserProperty conditionalUserProperty) {
        Preconditions.checkNotNull(conditionalUserProperty);
        if (!this.f16538d) {
            this.f16536b.zzh().zzb(ConditionalUserProperty.m2214a(conditionalUserProperty));
            return;
        }
        throw new IllegalStateException("Unexpected call on client side");
    }

    public void setEventInterceptor(EventInterceptor eventInterceptor) {
        if (this.f16538d) {
            this.f16537c.zza(eventInterceptor);
        } else {
            this.f16536b.zzh().zza(eventInterceptor);
        }
    }

    @Deprecated
    public void setMeasurementEnabled(boolean z) {
        if (this.f16538d) {
            this.f16537c.zza(z);
        } else {
            this.f16536b.zzh().zza(z);
        }
    }

    public void setUserPropertyInternal(String str, String str2, Object obj) {
        Preconditions.checkNotEmpty(str);
        if (this.f16538d) {
            this.f16537c.zza(str, str2, obj);
        } else {
            this.f16536b.zzh().zza(str, str2, obj, true);
        }
    }

    public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        if (this.f16538d) {
            this.f16537c.zzb(onEventListener);
        } else {
            this.f16536b.zzh().zzb(onEventListener);
        }
    }

    public final void zza(boolean z) {
        if (this.f16538d) {
            this.f16537c.zzb(z);
        } else {
            this.f16536b.zzh().zzb(z);
        }
    }
}
