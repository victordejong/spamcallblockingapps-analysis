package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.measurement.bd;
import com.google.android.gms.measurement.internal.AbstractC1606v6;
import com.google.android.gms.measurement.internal.C1560o5;
import com.google.android.gms.measurement.internal.r4;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement.class */
public class AppMeasurement {

    /* renamed from: c */
    private static volatile AppMeasurement f4056c;

    /* renamed from: a */
    private final r4 f4057a;

    /* renamed from: b */
    private final AbstractC1606v6 f4058b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty.class */
    public static class ConditionalUserProperty {
        @Keep
        public boolean mActive;
        @RecentlyNonNull
        @Keep
        public String mAppId;
        @Keep
        public long mCreationTimestamp;
        @RecentlyNonNull
        @Keep
        public String mExpiredEventName;
        @RecentlyNonNull
        @Keep
        public Bundle mExpiredEventParams;
        @RecentlyNonNull
        @Keep
        public String mName;
        @RecentlyNonNull
        @Keep
        public String mOrigin;
        @Keep
        public long mTimeToLive;
        @RecentlyNonNull
        @Keep
        public String mTimedOutEventName;
        @RecentlyNonNull
        @Keep
        public Bundle mTimedOutEventParams;
        @RecentlyNonNull
        @Keep
        public String mTriggerEventName;
        @Keep
        public long mTriggerTimeout;
        @RecentlyNonNull
        @Keep
        public String mTriggeredEventName;
        @RecentlyNonNull
        @Keep
        public Bundle mTriggeredEventParams;
        @Keep
        public long mTriggeredTimestamp;
        @RecentlyNonNull
        @Keep
        public Object mValue;

        public ConditionalUserProperty() {
        }

        ConditionalUserProperty(Bundle bundle) {
            C0931r.m3308k(bundle);
            this.mAppId = (String) C1560o5.m1545b(bundle, "app_id", String.class, null);
            this.mOrigin = (String) C1560o5.m1545b(bundle, "origin", String.class, null);
            this.mName = (String) C1560o5.m1545b(bundle, "name", String.class, null);
            this.mValue = C1560o5.m1545b(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) C1560o5.m1545b(bundle, "trigger_event_name", String.class, null);
            this.mTriggerTimeout = ((Long) C1560o5.m1545b(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) C1560o5.m1545b(bundle, "timed_out_event_name", String.class, null);
            this.mTimedOutEventParams = (Bundle) C1560o5.m1545b(bundle, "timed_out_event_params", Bundle.class, null);
            this.mTriggeredEventName = (String) C1560o5.m1545b(bundle, "triggered_event_name", String.class, null);
            this.mTriggeredEventParams = (Bundle) C1560o5.m1545b(bundle, "triggered_event_params", Bundle.class, null);
            this.mTimeToLive = ((Long) C1560o5.m1545b(bundle, "time_to_live", Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) C1560o5.m1545b(bundle, "expired_event_name", String.class, null);
            this.mExpiredEventParams = (Bundle) C1560o5.m1545b(bundle, "expired_event_params", Bundle.class, null);
            this.mActive = ((Boolean) C1560o5.m1545b(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) C1560o5.m1545b(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) C1560o5.m1545b(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
        }

        /* renamed from: a */
        final Bundle m1722a() {
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
                C1560o5.m1546a(bundle, obj);
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
            bundle.putBoolean("active", this.mActive);
            bundle.putLong("triggered_timestamp", this.mTriggeredTimestamp);
            return bundle;
        }
    }

    public AppMeasurement(r4 r4Var) {
        C0931r.m3308k(r4Var);
        this.f4057a = r4Var;
        this.f4058b = null;
    }

    public AppMeasurement(AbstractC1606v6 abstractC1606v6) {
        C0931r.m3308k(abstractC1606v6);
        this.f4058b = abstractC1606v6;
        this.f4057a = null;
    }

    @RecentlyNonNull
    @Keep
    @Deprecated
    public static AppMeasurement getInstance(@RecentlyNonNull Context context) {
        AbstractC1606v6 abstractC1606v6;
        if (f4056c == null) {
            synchronized (AppMeasurement.class) {
                try {
                    if (f4056c == null) {
                        try {
                            abstractC1606v6 = (AbstractC1606v6) Class.forName("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                        } catch (ClassNotFoundException | Exception e) {
                            abstractC1606v6 = null;
                        }
                        if (abstractC1606v6 != null) {
                            f4056c = new AppMeasurement(abstractC1606v6);
                        } else {
                            f4056c = new AppMeasurement(r4.h(context, new bd(0L, 0L, true, (String) null, (String) null, (String) null, (Bundle) null, (String) null), (Long) null));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4056c;
    }

    @Keep
    public void beginAdUnitExposure(@RecentlyNonNull String str) {
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            abstractC1606v6.m1500o(str);
            return;
        }
        C0931r.m3308k(this.f4057a);
        this.f4057a.g().i(str, this.f4057a.a().m3165c());
    }

    @Keep
    public void clearConditionalUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            abstractC1606v6.m1506g(str, str2, bundle);
            return;
        }
        C0931r.m3308k(this.f4057a);
        this.f4057a.F().B(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(@RecentlyNonNull String str) {
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            abstractC1606v6.m1509d(str);
            return;
        }
        C0931r.m3308k(this.f4057a);
        this.f4057a.g().j(str, this.f4057a.a().m3165c());
    }

    @Keep
    public long generateEventId() {
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            return abstractC1606v6.m1501n();
        }
        C0931r.m3308k(this.f4057a);
        return this.f4057a.G().g0();
    }

    @RecentlyNonNull
    @Keep
    public String getAppInstanceId() {
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            return abstractC1606v6.m1508e();
        }
        C0931r.m3308k(this.f4057a);
        return this.f4057a.F().q();
    }

    @RecentlyNonNull
    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        ArrayList arrayList;
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            arrayList = abstractC1606v6.m1512a(str, str2);
        } else {
            C0931r.m3308k(this.f4057a);
            arrayList = this.f4057a.F().C(str, str2);
        }
        ArrayList arrayList2 = new ArrayList(arrayList == null ? 0 : arrayList.size());
        for (Bundle bundle : arrayList) {
            arrayList2.add(new ConditionalUserProperty(bundle));
        }
        return arrayList2;
    }

    @RecentlyNonNull
    @Keep
    public String getCurrentScreenClass() {
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            return abstractC1606v6.m1507f();
        }
        C0931r.m3308k(this.f4057a);
        return this.f4057a.F().F();
    }

    @RecentlyNonNull
    @Keep
    public String getCurrentScreenName() {
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            return abstractC1606v6.m1502m();
        }
        C0931r.m3308k(this.f4057a);
        return this.f4057a.F().E();
    }

    @RecentlyNonNull
    @Keep
    public String getGmpAppId() {
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            return abstractC1606v6.m1505h();
        }
        C0931r.m3308k(this.f4057a);
        return this.f4057a.F().G();
    }

    @Keep
    public int getMaxUserProperties(@RecentlyNonNull String str) {
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            return abstractC1606v6.m1504i(str);
        }
        C0931r.m3308k(this.f4057a);
        this.f4057a.F().y(str);
        return 25;
    }

    @RecentlyNonNull
    @Keep
    protected Map<String, Object> getUserProperties(@RecentlyNonNull String str, @RecentlyNonNull String str2, boolean z) {
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            return abstractC1606v6.m1503j(str, str2, z);
        }
        C0931r.m3308k(this.f4057a);
        return this.f4057a.F().D(str, str2, z);
    }

    @Keep
    public void logEventInternal(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            abstractC1606v6.m1510c(str, str2, bundle);
            return;
        }
        C0931r.m3308k(this.f4057a);
        this.f4057a.F().X(str, str2, bundle);
    }

    @Keep
    public void setConditionalUserProperty(@RecentlyNonNull ConditionalUserProperty conditionalUserProperty) {
        C0931r.m3308k(conditionalUserProperty);
        AbstractC1606v6 abstractC1606v6 = this.f4058b;
        if (abstractC1606v6 != null) {
            abstractC1606v6.m1511b(conditionalUserProperty.m1722a());
            return;
        }
        C0931r.m3308k(this.f4057a);
        this.f4057a.F().z(conditionalUserProperty.m1722a());
    }
}
