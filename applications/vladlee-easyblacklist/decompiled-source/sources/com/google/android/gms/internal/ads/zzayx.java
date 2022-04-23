package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayx.class */
public final class zzayx {
    /* renamed from: a */
    private static DynamiteModule m4195a(Context context) {
        try {
            return DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, ModuleDescriptor.MODULE_ID);
        } catch (Exception e) {
            throw new zzayz(e);
        }
    }

    public static <T> T zza(Context context, String str, zzayw<IBinder, T> zzaywVar) {
        try {
            return zzaywVar.apply(m4195a(context).instantiate(str));
        } catch (Exception e) {
            throw new zzayz(e);
        }
    }

    public static Context zzbp(Context context) {
        return m4195a(context).getModuleContext();
    }
}
