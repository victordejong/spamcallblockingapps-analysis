package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzax.class */
public class zzax extends zzq<String> {

    /* renamed from: a */
    private final Object f11491a = new Object();

    /* renamed from: b */
    private zzab<String> f11492b;

    public zzax(int i, String str, zzab<String> zzabVar, zzy zzyVar) {
        super(i, str, zzyVar);
        this.f11492b = zzabVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzq
    /* renamed from: a */
    public final zzz<String> mo3114a(zzo zzoVar) {
        String str;
        try {
            byte[] bArr = zzoVar.data;
            String str2 = zzoVar.zzab.get("Content-Type");
            String str3 = "ISO-8859-1";
            if (str2 != null) {
                String[] split = str2.split(";", 0);
                int i = 1;
                while (true) {
                    str3 = "ISO-8859-1";
                    if (i >= split.length) {
                        break;
                    }
                    String[] split2 = split[i].trim().split("=", 0);
                    if (split2.length == 2 && split2[0].equals("charset")) {
                        str3 = split2[1];
                        break;
                    }
                    i++;
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException e) {
            str = new String(zzoVar.data);
        }
        return zzz.zza(str, zzas.zzb(zzoVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    /* renamed from: a */
    public void mo3111a(String str) {
        zzab<String> zzabVar;
        synchronized (this.f11491a) {
            zzabVar = this.f11492b;
        }
        if (zzabVar != null) {
            zzabVar.zzb(str);
        }
    }
}
