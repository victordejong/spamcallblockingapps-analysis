package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3503ec;
import p131c.p161d.p170b.p224d.p252g.p253a.C3577gc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbml.class */
public final class zzbml {

    /* renamed from: a */
    public final String f25172a;

    /* renamed from: b */
    public final zzamk f25173b;

    /* renamed from: c */
    public final Executor f25174c;

    /* renamed from: d */
    public zzbmu f25175d;

    /* renamed from: e */
    public final zzahq<Object> f25176e = new C3503ec(this);

    /* renamed from: f */
    public final zzahq<Object> f25177f = new C3577gc(this);

    public zzbml(String str, zzamk zzamkVar, Executor executor) {
        this.f25172a = str;
        this.f25173b = zzamkVar;
        this.f25174c = executor;
    }

    /* renamed from: a */
    public final void m15319a() {
        this.f25173b.m16655b("/updateActiveView", this.f25176e);
        this.f25173b.m16655b("/untrackActiveViewUnit", this.f25177f);
    }

    /* renamed from: a */
    public final void m15318a(zzbgj zzbgjVar) {
        zzbgjVar.mo15570b("/updateActiveView", this.f25176e);
        zzbgjVar.mo15570b("/untrackActiveViewUnit", this.f25177f);
    }

    /* renamed from: a */
    public final void m15315a(zzbmu zzbmuVar) {
        this.f25173b.m16657a("/updateActiveView", this.f25176e);
        this.f25173b.m16657a("/untrackActiveViewUnit", this.f25177f);
        this.f25175d = zzbmuVar;
    }

    /* renamed from: a */
    public final boolean m15314a(Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(this.f25172a);
    }

    /* renamed from: b */
    public final void m15313b(zzbgj zzbgjVar) {
        zzbgjVar.mo15580a("/updateActiveView", this.f25176e);
        zzbgjVar.mo15580a("/untrackActiveViewUnit", this.f25177f);
    }
}
