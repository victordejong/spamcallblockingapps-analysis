package com.google.android.gms.internal.icing;

import android.accounts.Account;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.appindexing.Action;
import com.google.android.gms.common.internal.AccountType;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzah.class */
public final class zzah {
    private static zzam zza(String str, Bundle bundle) {
        zzam zzamVar = new zzam();
        zzamVar.name = str;
        zzamVar.zzbd = new zzao();
        zzamVar.zzbd.zzbj = zza(bundle);
        return zzamVar;
    }

    private static zzan zza(Bundle bundle) {
        zzam zzb;
        String[] strArr;
        Bundle[] bundleArr;
        ArrayList arrayList = new ArrayList();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj instanceof String) {
                zzb = zzb(str, (String) obj);
            } else if (obj instanceof Bundle) {
                zzb = zza(str, (Bundle) obj);
            } else {
                if (obj instanceof String[]) {
                    for (String str2 : (String[]) obj) {
                        if (str2 != null) {
                            arrayList.add(zzb(str, str2));
                        }
                    }
                } else if (obj instanceof Bundle[]) {
                    for (Bundle bundle2 : (Bundle[]) obj) {
                        if (bundle2 != null) {
                            arrayList.add(zza(str, bundle2));
                        }
                    }
                } else if (obj instanceof Boolean) {
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    zzam zzamVar = new zzam();
                    zzamVar.name = str;
                    zzamVar.zzbd = new zzao();
                    zzamVar.zzbd.zzbf = booleanValue;
                    arrayList.add(zzamVar);
                } else {
                    String valueOf = String.valueOf(obj);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 19);
                    sb.append("Unsupported value: ");
                    sb.append(valueOf);
                    Log.e("SearchIndex", sb.toString());
                }
            }
            arrayList.add(zzb);
        }
        zzan zzanVar = new zzan();
        if (bundle.containsKey("type")) {
            zzanVar.type = bundle.getString("type");
        }
        zzanVar.zzbe = (zzam[]) arrayList.toArray(new zzam[arrayList.size()]);
        return zzanVar;
    }

    public static zzx zza(Action action, long j, String str, int i) {
        int i2;
        Bundle bundle = new Bundle();
        bundle.putAll(action.zzd());
        Bundle bundle2 = bundle.getBundle("object");
        Uri parse = bundle2.containsKey("id") ? Uri.parse(bundle2.getString("id")) : null;
        String string = bundle2.getString("name");
        String string2 = bundle2.getString("type");
        Intent zza = zzai.zza(str, Uri.parse(bundle2.getString("url")));
        zzh zza2 = zzx.zza(zza, string, parse, string2, null);
        if (bundle.containsKey(".private:ssbContext")) {
            zza2.zza(zzl.zza(bundle.getByteArray(".private:ssbContext")));
            bundle.remove(".private:ssbContext");
        }
        if (bundle.containsKey(".private:accountName")) {
            zza2.zza(new Account(bundle.getString(".private:accountName"), AccountType.GOOGLE));
            bundle.remove(".private:accountName");
        }
        boolean z = false;
        if (!bundle.containsKey(".private:isContextOnly") || !bundle.getBoolean(".private:isContextOnly")) {
            i2 = 0;
        } else {
            i2 = 4;
            bundle.remove(".private:isContextOnly");
        }
        if (bundle.containsKey(".private:isDeviceOnly")) {
            z = bundle.getBoolean(".private:isDeviceOnly", false);
            bundle.remove(".private:isDeviceOnly");
        }
        zza2.zza(new zzl(zzfz.zza(zza(bundle)), new zzt(".private:action").zzb(true).zzd(".private:action").zzc("blob").zzb()));
        return new zzy().zza(zzx.zza(str, zza)).zza(j).zzb(i2).zza(zza2.zza()).zzd(z).zzc(i).zzc();
    }

    private static zzam zzb(String str, String str2) {
        zzam zzamVar = new zzam();
        zzamVar.name = str;
        zzamVar.zzbd = new zzao();
        zzamVar.zzbd.zzbg = str2;
        return zzamVar;
    }
}
