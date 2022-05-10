package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3415c;
import p131c.p161d.p170b.p224d.p252g.p253a.C3453d;
import p131c.p161d.p170b.p224d.p252g.p253a.C3490e;
import p131c.p161d.p170b.p224d.p252g.p253a.C3527f;
import p131c.p161d.p170b.p224d.p252g.p253a.C3564g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaaq.class */
public abstract class zzaaq<T> {

    /* renamed from: a */
    public final int f23634a;

    /* renamed from: b */
    public final String f23635b;

    /* renamed from: c */
    public final T f23636c;

    public zzaaq(int i, String str, T t) {
        this.f23634a = i;
        this.f23635b = str;
        this.f23636c = t;
        zzwm.m11167d().m16927a(this);
    }

    public /* synthetic */ zzaaq(int i, String str, Object obj, C3415c cVar) {
        this(i, str, obj);
    }

    /* renamed from: a */
    public static zzaaq<String> m16941a(int i, String str) {
        zzaaq<String> a = m16936a(1, str, (String) null);
        zzwm.m11167d().m16924c(a);
        return a;
    }

    /* renamed from: a */
    public static zzaaq<Float> m16940a(int i, String str, float f) {
        return new C3564g(1, str, Float.valueOf(0.0f));
    }

    /* renamed from: a */
    public static zzaaq<Integer> m16939a(int i, String str, int i2) {
        return new C3490e(1, str, Integer.valueOf(i2));
    }

    /* renamed from: a */
    public static zzaaq<Long> m16938a(int i, String str, long j) {
        return new C3453d(1, str, Long.valueOf(j));
    }

    /* renamed from: a */
    public static zzaaq<Boolean> m16937a(int i, String str, Boolean bool) {
        return new C3415c(i, str, bool);
    }

    /* renamed from: a */
    public static zzaaq<String> m16936a(int i, String str, String str2) {
        return new C3527f(1, str, str2);
    }

    /* renamed from: a */
    public abstract T mo16934a(SharedPreferences sharedPreferences);

    /* renamed from: a */
    public abstract T mo16933a(Bundle bundle);

    /* renamed from: a */
    public abstract T mo16932a(JSONObject jSONObject);

    /* renamed from: a */
    public final String m16942a() {
        return this.f23635b;
    }

    /* renamed from: a */
    public abstract void mo16935a(SharedPreferences.Editor editor, T t);

    /* renamed from: b */
    public final int m16931b() {
        return this.f23634a;
    }

    /* renamed from: c */
    public final T m16930c() {
        return this.f23636c;
    }
}
