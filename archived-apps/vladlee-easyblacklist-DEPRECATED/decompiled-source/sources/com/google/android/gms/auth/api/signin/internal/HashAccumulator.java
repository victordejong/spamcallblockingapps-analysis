package com.google.android.gms.auth.api.signin.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/HashAccumulator.class */
public class HashAccumulator {

    /* renamed from: a */
    private static int f6133a = 31;

    /* renamed from: b */
    private int f6134b = 1;

    public HashAccumulator addObject(Object obj) {
        this.f6134b = (f6133a * this.f6134b) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    public int hash() {
        return this.f6134b;
    }

    public final HashAccumulator zaa(boolean z) {
        this.f6134b = (f6133a * this.f6134b) + (z ? 1 : 0);
        return this;
    }
}
