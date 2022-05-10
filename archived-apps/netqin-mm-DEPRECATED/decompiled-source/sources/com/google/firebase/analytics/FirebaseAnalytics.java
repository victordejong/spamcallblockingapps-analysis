package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.measurement.internal.zzia;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p131c.p161d.p282e.p285j.C5158b;
import p131c.p161d.p282e.p335s.C5895f;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/FirebaseAnalytics.class */
public final class FirebaseAnalytics {

    /* renamed from: b */
    public static volatile FirebaseAnalytics f30944b;

    /* renamed from: a */
    public final zzag f30945a;

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/FirebaseAnalytics$ConsentStatus.class */
    public enum ConsentStatus {
        GRANTED,
        DENIED
    }

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/FirebaseAnalytics$ConsentType.class */
    public enum ConsentType {
        AD_STORAGE,
        ANALYTICS_STORAGE
    }

    public FirebaseAnalytics(zzag zzagVar) {
        Preconditions.m17288a(zzagVar);
        this.f30945a = zzagVar;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f30944b == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f30944b == null) {
                        f30944b = new FirebaseAnalytics(zzag.m10475a(context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f30944b;
    }

    @Keep
    public static zzia getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzag a = zzag.m10473a(context, (String) null, (String) null, (String) null, bundle);
        if (a == null) {
            return null;
        }
        return new C5158b(a);
    }

    @Keep
    public final String getFirebaseInstanceId() {
        try {
            return (String) Tasks.m8594a(C5895f.m22784j().getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException e3) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @Deprecated
    public final void setCurrentScreen(Activity activity, String str, String str2) {
        this.f30945a.m10476a(activity, str, str2);
    }
}
