package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdow.class */
public final class zzdow {

    /* renamed from: a */
    public final Pattern f27678a;

    @VisibleForTesting
    public zzdow() {
        Pattern pattern;
        try {
            pattern = Pattern.compile((String) zzwm.m11166e().m16921a(zzabb.f23712M3));
        } catch (PatternSyntaxException e) {
            pattern = null;
        }
        this.f27678a = pattern;
    }

    /* renamed from: a */
    public final String m13388a(String str) {
        Pattern pattern = this.f27678a;
        if (pattern == null || str == null) {
            return null;
        }
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            return matcher.group();
        }
        return null;
    }
}
