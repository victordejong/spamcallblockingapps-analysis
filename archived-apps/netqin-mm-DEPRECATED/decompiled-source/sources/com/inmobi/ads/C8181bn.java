package com.inmobi.ads;
/* renamed from: com.inmobi.ads.bn */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bn.class */
public final class C8181bn {

    /* renamed from: a */
    public final int f31916a;

    /* renamed from: b */
    public final String f31917b;

    public C8181bn(int i, String str) {
        this.f31916a = i;
        this.f31917b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C8181bn)) {
            return false;
        }
        C8181bn bnVar = (C8181bn) obj;
        return this.f31916a == bnVar.f31916a && this.f31917b.equals(bnVar.f31917b);
    }

    public final int hashCode() {
        return (this.f31916a * 31) + this.f31917b.hashCode();
    }
}
