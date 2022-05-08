package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzk.class */
public final class zzk extends zzbq {

    /* renamed from: ID */
    private static final String f204ID = zza.APP_VERSION.toString();
    private final Context zzri;

    public zzk(Context context) {
        super(f204ID, new String[0]);
        this.zzri = context;
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        try {
            return zzgj.zzj(Integer.valueOf(this.zzri.getPackageManager().getPackageInfo(this.zzri.getPackageName(), 0).versionCode));
        } catch (PackageManager.NameNotFoundException e) {
            String packageName = this.zzri.getPackageName();
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 25 + String.valueOf(message).length());
            sb.append("Package name ");
            sb.append(packageName);
            sb.append(" not found. ");
            sb.append(message);
            zzdi.m329e(sb.toString());
            return zzgj.zzqg();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}
