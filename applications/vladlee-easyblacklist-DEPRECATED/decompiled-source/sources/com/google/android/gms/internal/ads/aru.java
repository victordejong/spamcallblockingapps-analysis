package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aru.class */
public abstract class aru<T> {

    /* renamed from: a */
    private static final zzwd f8237a = m4753c();

    /* renamed from: c */
    private static zzwd m4753c() {
        try {
            Object newInstance = zzup.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzayu.zzez("ClientApi class is not an instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
            return queryLocalInterface instanceof zzwd ? (zzwd) queryLocalInterface : new zzwf(iBinder);
        } catch (Exception e) {
            zzayu.zzez("Failed to instantiate ClientApi class.");
            return null;
        }
    }

    /* renamed from: d */
    private final T m4752d() {
        zzwd zzwdVar = f8237a;
        if (zzwdVar == null) {
            zzayu.zzez("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return mo4749a(zzwdVar);
        } catch (RemoteException e) {
            zzayu.zzd("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    /* renamed from: e */
    private final T m4751e() {
        try {
            return mo4748b();
        } catch (RemoteException e) {
            zzayu.zzd("Cannot invoke remote loader.", e);
            return null;
        }
    }

    /* renamed from: a */
    protected abstract T mo4750a();

    /* renamed from: a */
    public final T m4754a(Context context, boolean z) {
        T t;
        boolean z2 = z;
        if (!z) {
            zzve.zzou();
            z2 = z;
            if (!zzayk.zzc(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                zzayu.zzea("Google Play Services is not available.");
                z2 = true;
            }
        }
        if (DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID) > DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID)) {
            z2 = true;
        }
        zzzn.initialize(context);
        boolean z3 = false;
        if (zzaay.zzctf.get().booleanValue()) {
            z2 = false;
        }
        if (z2) {
            T d = m4752d();
            t = d;
            if (d == null) {
                t = m4751e();
            }
        } else {
            T e = m4751e();
            if (e == null) {
                if (zzve.zzpb().nextInt(zzabi.zzcuj.get().intValue()) == 0) {
                    z3 = true;
                }
                if (z3) {
                    Bundle bundle = new Bundle();
                    bundle.putString("action", "dynamite_load");
                    bundle.putInt("is_missing", 1);
                    zzve.zzou().zza(context, zzve.zzpa().zzbma, "gmob-apps", bundle, true);
                }
            }
            t = e == null ? m4752d() : e;
        }
        return t == null ? mo4750a() : t;
    }

    /* renamed from: a */
    protected abstract T mo4749a(zzwd zzwdVar);

    /* renamed from: b */
    protected abstract T mo4748b();
}
