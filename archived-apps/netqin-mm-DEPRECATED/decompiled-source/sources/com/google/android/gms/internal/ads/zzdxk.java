package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxk.class */
public final class zzdxk implements FilenameFilter {

    /* renamed from: a */
    public final Pattern f27907a;

    public zzdxk(Pattern pattern) {
        zzdwd.m13096a(pattern);
        this.f27907a = pattern;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return this.f27907a.matcher(str).matches();
    }
}
