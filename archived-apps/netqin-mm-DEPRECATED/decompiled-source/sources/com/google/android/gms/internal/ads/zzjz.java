package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzmc;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p131c.p161d.p170b.p224d.p252g.p253a.rc0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjz.class */
public final class zzjz {

    /* renamed from: c */
    public static final Pattern f28437c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: a */
    public int f28438a = -1;

    /* renamed from: b */
    public int f28439b = -1;

    static {
        new rc0();
    }

    /* renamed from: a */
    public final boolean m11881a() {
        return (this.f28438a == -1 || this.f28439b == -1) ? false : true;
    }

    /* renamed from: a */
    public final boolean m11880a(zzmc zzmcVar) {
        for (int i = 0; i < zzmcVar.m11808a(); i++) {
            zzmc.zza a = zzmcVar.m11807a(i);
            if (a instanceof zzmi) {
                zzmi zzmiVar = (zzmi) a;
                if (m11879a(zzmiVar.f28631c, zzmiVar.f28632d)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m11879a(String str, String str2) {
        if (!"iTunSMPB".equals(str)) {
            return false;
        }
        Matcher matcher = f28437c.matcher(str2);
        if (!matcher.find()) {
            return false;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1), 16);
            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
            if (parseInt <= 0 && parseInt2 <= 0) {
                return false;
            }
            this.f28438a = parseInt;
            this.f28439b = parseInt2;
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
