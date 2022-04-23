package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzar.class */
public final class zzar {

    /* renamed from: a */
    private final int f11324a;

    /* renamed from: b */
    private final List<zzk> f11325b;

    /* renamed from: c */
    private final int f11326c;

    /* renamed from: d */
    private final InputStream f11327d;

    public zzar(int i, List<zzk> list) {
        this(i, list, -1, null);
    }

    public zzar(int i, List<zzk> list, int i2, InputStream inputStream) {
        this.f11324a = i;
        this.f11325b = list;
        this.f11326c = i2;
        this.f11327d = inputStream;
    }

    public final InputStream getContent() {
        return this.f11327d;
    }

    public final int getContentLength() {
        return this.f11326c;
    }

    public final int getStatusCode() {
        return this.f11324a;
    }

    public final List<zzk> zzp() {
        return Collections.unmodifiableList(this.f11325b);
    }
}
