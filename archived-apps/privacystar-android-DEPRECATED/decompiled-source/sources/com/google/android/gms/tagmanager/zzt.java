package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzt.class */
final class zzt extends zzbq {

    /* renamed from: ID */
    private static final String f207ID = zza.CONSTANT.toString();
    private static final String VALUE = zzb.VALUE.toString();

    public zzt() {
        super(f207ID, VALUE);
    }

    public static String zznd() {
        return f207ID;
    }

    public static String zzne() {
        return VALUE;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        return map.get(VALUE);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}
