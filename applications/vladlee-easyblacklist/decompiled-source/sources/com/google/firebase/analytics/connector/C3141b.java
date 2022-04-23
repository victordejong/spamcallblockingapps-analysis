package com.google.firebase.analytics.connector;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.C3134a;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p071a.AbstractC3138d;
import com.google.firebase.p071a.C3135a;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.firebase.analytics.connector.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/b.class */
public class C3141b implements AbstractC3140a {

    /* renamed from: b */
    private static volatile AbstractC3140a f18962b;

    /* renamed from: a */
    final Map<String, Object> f18963a = new ConcurrentHashMap();

    /* renamed from: c */
    private final AppMeasurement f18964c;

    private C3141b(AppMeasurement appMeasurement) {
        Preconditions.checkNotNull(appMeasurement);
        this.f18964c = appMeasurement;
    }

    /* renamed from: a */
    public static AbstractC3140a m645a(FirebaseApp firebaseApp, Context context, AbstractC3138d dVar) {
        Preconditions.checkNotNull(firebaseApp);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(dVar);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (f18962b == null) {
            synchronized (C3141b.class) {
                try {
                    if (f18962b == null) {
                        Bundle bundle = new Bundle(1);
                        if (firebaseApp.m656c()) {
                            dVar.mo586a(C3134a.class, ExecutorC3143d.f18966a, C3142c.f18965a);
                            bundle.putBoolean("dataCollectionDefaultEnabled", firebaseApp.isDataCollectionDefaultEnabled());
                        }
                        f18962b = new C3141b(AppMeasurement.zza(context, bundle));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18962b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ void m644a(C3135a aVar) {
        boolean z = ((C3134a) aVar.m647b()).f18953a;
        synchronized (C3141b.class) {
            try {
                ((C3141b) f18962b).f18964c.zza(z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
