package com.google.firebase.iid;

import android.app.Service;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.firebase_messaging.zza;
import com.google.android.gms.internal.firebase_messaging.zzb;
import com.google.android.gms.internal.firebase_messaging.zzf;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzc.class */
public abstract class zzc extends Service {

    /* renamed from: a */
    final ExecutorService f19165a;

    /* renamed from: b */
    private final Object f19166b;

    /* renamed from: c */
    private int f19167c;

    public zzc() {
        zzb zza = zza.zza();
        String valueOf = String.valueOf(getClass().getSimpleName());
        this.f19165a = zza.zza(new NamedThreadFactory(valueOf.length() != 0 ? "Firebase-".concat(valueOf) : new String("Firebase-")), zzf.zze);
        this.f19166b = new Object();
        this.f19167c = 0;
    }
}
