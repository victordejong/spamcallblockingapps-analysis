package com.flurry.sdk;

import java.util.List;
/* renamed from: com.flurry.sdk.f */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/f.class */
public final class C3057f {

    /* renamed from: a */
    public List<Integer> f4831a;

    /* renamed from: b */
    public List<Integer> f4832b;

    /* renamed from: c */
    public List<String> f4833c;

    public C3057f(List<String> list, List<Integer> list2, List<Integer> list3) {
        this.f4833c = list;
        this.f4831a = list2;
        this.f4832b = list3;
        if (this.f4831a == null || this.f4832b == null || this.f4833c == null) {
            throw new IllegalArgumentException("Must provide valid allowed and blocked lists.");
        }
    }

    public final String toString() {
        return "All capabilities: " + this.f4833c + ",\nAllowed capabilities: " + this.f4831a + ",\nBlocked capabilities: " + this.f4832b + ",\n";
    }
}
