package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpj.class */
public class zzcpj {

    /* renamed from: a */
    private String f13692a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpj$zza.class */
    public static final class zza {

        /* renamed from: a */
        private String f13693a;

        public final zza zzgj(String str) {
            this.f13693a = str;
            return this;
        }
    }

    private zzcpj(zza zzaVar) {
        this.f13692a = zzaVar.f13693a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcpj(zza zzaVar, byte b) {
        this(zzaVar);
    }

    public final Set<String> zzamz() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.f13692a.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    public final String zzana() {
        return this.f13692a.toLowerCase(Locale.ROOT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int zzanb() {
        char c;
        String str = this.f13692a;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            return 1;
        }
        if (c == 1) {
            return 3;
        }
        if (c != 2) {
            return c != 3 ? 0 : 7;
        }
        return 6;
    }
}
