package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzae;
import com.google.android.gms.measurement.internal.zzfu;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzgw;
import com.google.android.gms.measurement.internal.zzgz;
import com.google.android.gms.measurement.internal.zzia;
import com.integralads.avid.library.mopub.AvidBridge;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@ShowFirstParty
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {

    /* renamed from: d */
    public static volatile AppMeasurement f29771d;

    /* renamed from: a */
    public final zzfu f29772a;

    /* renamed from: b */
    public final zzia f29773b;

    /* renamed from: c */
    public final boolean f29774c;

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty.class */
    public static class ConditionalUserProperty {
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public boolean mActive;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mAppId;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mCreationTimestamp;
        @Keep
        public String mExpiredEventName;
        @Keep
        public Bundle mExpiredEventParams;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mName;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mOrigin;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTimeToLive;
        @Keep
        public String mTimedOutEventName;
        @Keep
        public Bundle mTimedOutEventParams;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public String mTriggerEventName;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTriggerTimeout;
        @Keep
        public String mTriggeredEventName;
        @Keep
        public Bundle mTriggeredEventParams;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public long mTriggeredTimestamp;
        @ShowFirstParty
        @Keep
        @KeepForSdk
        public Object mValue;

        @KeepForSdk
        public ConditionalUserProperty() {
        }

        @VisibleForTesting
        public ConditionalUserProperty(Bundle bundle) {
            Preconditions.m17288a(bundle);
            this.mAppId = (String) zzgs.m9012a(bundle, "app_id", String.class, null);
            this.mOrigin = (String) zzgs.m9012a(bundle, "origin", String.class, null);
            this.mName = (String) zzgs.m9012a(bundle, "name", String.class, null);
            this.mValue = zzgs.m9012a(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) zzgs.m9012a(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) zzgs.m9012a(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) zzgs.m9012a(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) zzgs.m9012a(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) zzgs.m9012a(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) zzgs.m9012a(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) zzgs.m9012a(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) zzgs.m9012a(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) zzgs.m9012a(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) zzgs.m9012a(bundle, AvidBridge.APP_STATE_ACTIVE, Boolean.class, false)).booleanValue();
            this.mCreationTimestamp = ((Long) zzgs.m9012a(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) zzgs.m9012a(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }

        @VisibleForTesting
        /* renamed from: a */
        public final Bundle m9393a() {
            Bundle bundle = new Bundle();
            String str = this.mAppId;
            if (str != null) {
                bundle.putString("app_id", str);
            }
            String str2 = this.mOrigin;
            if (str2 != null) {
                bundle.putString("origin", str2);
            }
            String str3 = this.mName;
            if (str3 != null) {
                bundle.putString("name", str3);
            }
            Object obj = this.mValue;
            if (obj != null) {
                zzgs.m9013a(bundle, obj);
            }
            String str4 = this.mTriggerEventName;
            if (str4 != null) {
                bundle.putString("trigger_event_name", str4);
            }
            bundle.putLong("trigger_timeout", this.mTriggerTimeout);
            String str5 = this.mTimedOutEventName;
            if (str5 != null) {
                bundle.putString("timed_out_event_name", str5);
            }
            Bundle bundle2 = this.mTimedOutEventParams;
            if (bundle2 != null) {
                bundle.putBundle("timed_out_event_params", bundle2);
            }
            String str6 = this.mTriggeredEventName;
            if (str6 != null) {
                bundle.putString("triggered_event_name", str6);
            }
            Bundle bundle3 = this.mTriggeredEventParams;
            if (bundle3 != null) {
                bundle.putBundle("triggered_event_params", bundle3);
            }
            bundle.putLong("time_to_live", this.mTimeToLive);
            String str7 = this.mExpiredEventName;
            if (str7 != null) {
                bundle.putString("expired_event_name", str7);
            }
            Bundle bundle4 = this.mExpiredEventParams;
            if (bundle4 != null) {
                bundle.putBundle("expired_event_params", bundle4);
            }
            bundle.putLong("creation_timestamp", this.mCreationTimestamp);
            bundle.putBoolean(AvidBridge.APP_STATE_ACTIVE, this.mActive);
            bundle.putLong("triggered_timestamp", this.mTriggeredTimestamp);
            return bundle;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$EventInterceptor.class */
    public interface EventInterceptor extends zzgw {
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$OnEventListener.class */
    public interface OnEventListener extends zzgz {
    }

    public AppMeasurement(zzfu zzfuVar) {
        Preconditions.m17288a(zzfuVar);
        this.f29772a = zzfuVar;
        this.f29773b = null;
        this.f29774c = false;
    }

    public AppMeasurement(zzia zziaVar) {
        Preconditions.m17288a(zziaVar);
        this.f29773b = zziaVar;
        this.f29772a = null;
        this.f29774c = true;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static AppMeasurement m9394a(Context context, String str, String str2) {
        if (f29771d == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f29771d == null) {
                        zzia a = m9395a(context, null);
                        if (a != null) {
                            f29771d = new AppMeasurement(a);
                        } else {
                            f29771d = new AppMeasurement(zzfu.m9071a(context, new zzae(0L, 0L, true, null, null, null, null), null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f29771d;
    }

    /* renamed from: a */
    public static zzia m9395a(Context context, Bundle bundle) {
        try {
            return (zzia) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
        } catch (ClassNotFoundException | Exception e) {
            return null;
        }
    }

    @Keep
    @Deprecated
    @ShowFirstParty
    @KeepForSdk
    public static AppMeasurement getInstance(Context context) {
        return m9394a(context, null, null);
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        if (this.f29774c) {
            this.f29773b.mo8951c(str);
        } else {
            this.f29772a.m9073G().m9363a(str, this.f29772a.mo8779z().mo17092a());
        }
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (this.f29774c) {
            this.f29773b.mo8953b(str, str2, bundle);
        } else {
            this.f29772a.m9045r().m8961c(str, str2, bundle);
        }
    }

    @Keep
    public void endAdUnitExposure(String str) {
        if (this.f29774c) {
            this.f29773b.mo8958a(str);
        } else {
            this.f29772a.m9073G().m9359b(str, this.f29772a.mo8779z().mo17092a());
        }
    }

    @Keep
    public long generateEventId() {
        return this.f29774c ? this.f29773b.mo8952c() : this.f29772a.m9044s().m8675q();
    }

    @Keep
    public String getAppInstanceId() {
        return this.f29774c ? this.f29773b.zzc() : this.f29772a.m9045r().m9000G();
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List<Bundle> a = this.f29774c ? this.f29773b.mo8957a(str, str2) : this.f29772a.m9045r().m8978a(str, str2);
        ArrayList arrayList = new ArrayList(a == null ? 0 : a.size());
        for (Bundle bundle : a) {
            arrayList.add(new ConditionalUserProperty(bundle));
        }
        return arrayList;
    }

    @Keep
    public String getCurrentScreenClass() {
        return this.f29774c ? this.f29773b.zzb() : this.f29772a.m9045r().m8997J();
    }

    @Keep
    public String getCurrentScreenName() {
        return this.f29774c ? this.f29773b.zza() : this.f29772a.m9045r().m8998I();
    }

    @Keep
    public String getGmpAppId() {
        return this.f29774c ? this.f29773b.zzd() : this.f29772a.m9045r().m8996K();
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public int getMaxUserProperties(String str) {
        if (this.f29774c) {
            return this.f29773b.mo8954b(str);
        }
        this.f29772a.m9045r();
        Preconditions.m17281b(str);
        return 25;
    }

    @VisibleForTesting
    @Keep
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.f29774c ? this.f29773b.mo8955a(str, str2, z) : this.f29772a.m9045r().m8968a(str, str2, z);
    }

    @ShowFirstParty
    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (this.f29774c) {
            this.f29773b.mo8956a(str, str2, bundle);
        } else {
            this.f29772a.m9045r().m8974a(str, str2, bundle);
        }
    }

    @ShowFirstParty
    @Keep
    @KeepForSdk
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        Preconditions.m17288a(conditionalUserProperty);
        if (this.f29774c) {
            this.f29773b.mo8950d(conditionalUserProperty.m9393a());
        } else {
            this.f29772a.m9045r().m8993a(conditionalUserProperty.m9393a());
        }
    }
}
