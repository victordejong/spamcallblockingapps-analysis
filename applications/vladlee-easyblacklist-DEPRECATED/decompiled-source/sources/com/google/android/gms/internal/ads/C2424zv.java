package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.LinkedList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.zv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zv.class */
public final class C2424zv {

    /* renamed from: b */
    private final int f10780b;

    /* renamed from: c */
    private final int f10781c;

    /* renamed from: a */
    private final LinkedList<zzdbi<?>> f10779a = new LinkedList<>();

    /* renamed from: d */
    private final aaa f10782d = new aaa();

    public C2424zv(int i, int i2) {
        this.f10780b = i;
        this.f10781c = i2;
    }

    /* renamed from: h */
    private final void m4448h() {
        while (!this.f10779a.isEmpty()) {
            if (zzq.zzkx().currentTimeMillis() - this.f10779a.getFirst().zzgpe >= ((long) this.f10781c)) {
                this.f10782d.m5507c();
                this.f10779a.remove();
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public final zzdbi<?> m4456a() {
        this.f10782d.m5509a();
        m4448h();
        if (this.f10779a.isEmpty()) {
            return null;
        }
        zzdbi<?> remove = this.f10779a.remove();
        if (remove != null) {
            this.f10782d.m5508b();
        }
        return remove;
    }

    /* renamed from: a */
    public final boolean m4455a(zzdbi<?> zzdbiVar) {
        this.f10782d.m5509a();
        m4448h();
        if (this.f10779a.size() == this.f10780b) {
            return false;
        }
        this.f10779a.add(zzdbiVar);
        return true;
    }

    /* renamed from: b */
    public final int m4454b() {
        m4448h();
        return this.f10779a.size();
    }

    /* renamed from: c */
    public final long m4453c() {
        return this.f10782d.m5506d();
    }

    /* renamed from: d */
    public final long m4452d() {
        return this.f10782d.m5505e();
    }

    /* renamed from: e */
    public final int m4451e() {
        return this.f10782d.m5504f();
    }

    /* renamed from: f */
    public final String m4450f() {
        return this.f10782d.m5502h();
    }

    /* renamed from: g */
    public final zzdbo m4449g() {
        return this.f10782d.m5503g();
    }
}
