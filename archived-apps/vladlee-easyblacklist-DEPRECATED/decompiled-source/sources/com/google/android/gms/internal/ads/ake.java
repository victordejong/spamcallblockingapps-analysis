package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ake.class */
abstract class ake<T, B> {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract B mo5089a();

    /* renamed from: a */
    abstract T mo5088a(B b);

    /* renamed from: a */
    abstract void mo5087a(B b, int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo5086a(B b, int i, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo5085a(B b, int i, zzdqk zzdqkVar);

    /* renamed from: a */
    abstract void mo5084a(B b, int i, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo5083a(T t, aku akuVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo5081a(Object obj, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m5090a(B b, aji ajiVar) {
        int b2 = ajiVar.mo5230b();
        int i = b2 >>> 3;
        int i2 = b2 & 7;
        if (i2 == 0) {
            mo5086a((ake<T, B>) b, i, ajiVar.mo5218g());
            return true;
        } else if (i2 == 1) {
            mo5079b(b, i, ajiVar.mo5214i());
            return true;
        } else if (i2 == 2) {
            mo5085a((ake<T, B>) b, i, ajiVar.mo5204n());
            return true;
        } else if (i2 == 3) {
            B a = mo5089a();
            while (ajiVar.mo5235a() != Integer.MAX_VALUE && m5090a((ake<T, B>) a, ajiVar)) {
            }
            if ((4 | (i << 3)) == ajiVar.mo5230b()) {
                mo5084a((ake<T, B>) b, i, (int) mo5088a(a));
                return true;
            }
            throw zzdse.m3343e();
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                mo5087a((ake<T, B>) b, i, ajiVar.mo5212j());
                return true;
            }
            throw zzdse.m3342f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract T mo5080b(Object obj);

    /* renamed from: b */
    abstract void mo5079b(B b, int i, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract void mo5078b(T t, aku akuVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract void mo5077b(Object obj, B b);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract B mo5076c(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract T mo5075c(T t, T t2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public abstract void mo5074d(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public abstract int mo5073e(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public abstract int mo5072f(T t);
}
