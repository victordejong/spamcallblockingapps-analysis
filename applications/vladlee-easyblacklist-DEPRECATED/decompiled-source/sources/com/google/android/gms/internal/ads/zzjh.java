package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzle;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjh.class */
public final class zzjh {

    /* renamed from: a */
    private static final zzlm f14964a = new and();

    /* renamed from: b */
    private static final Pattern f14965b = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int zzafr = -1;
    public int zzafs = -1;

    /* renamed from: a */
    private final boolean m3219a(String str, String str2) {
        if (!"iTunSMPB".equals(str)) {
            return false;
        }
        Matcher matcher = f14965b.matcher(str2);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1), 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.zzafr = parseInt;
            this.zzafs = parseInt2;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public final boolean zzb(zzle zzleVar) {
        for (int i = 0; i < zzleVar.length(); i++) {
            zzle.zza zzas = zzleVar.zzas(i);
            if (zzas instanceof zzlk) {
                zzlk zzlkVar = (zzlk) zzas;
                if (m3219a(zzlkVar.description, zzlkVar.text)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean zzgk() {
        return (this.zzafr == -1 || this.zzafs == -1) ? false : true;
    }
}
