package com.airbnb.lottie;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieResult.class */
public final class LottieResult<V> {
    @Nullable

    /* renamed from: a */
    private final V f5848a;
    @Nullable

    /* renamed from: b */
    private final Throwable f5849b;

    public LottieResult(V v) {
        this.f5848a = v;
        this.f5849b = null;
    }

    public LottieResult(Throwable th) {
        this.f5849b = th;
        this.f5848a = null;
    }

    @Nullable
    /* renamed from: a */
    public Throwable m16216a() {
        return this.f5849b;
    }

    @Nullable
    /* renamed from: b */
    public V m16215b() {
        return this.f5848a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LottieResult)) {
            return false;
        }
        LottieResult lottieResult = (LottieResult) obj;
        if (m16215b() != null && m16215b().equals(lottieResult.m16215b())) {
            return true;
        }
        if (m16216a() == null || lottieResult.m16216a() == null) {
            return false;
        }
        return m16216a().toString().equals(m16216a().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{m16215b(), m16216a()});
    }
}
