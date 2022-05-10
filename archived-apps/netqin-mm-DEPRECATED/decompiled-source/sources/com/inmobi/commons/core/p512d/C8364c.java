package com.inmobi.commons.core.p512d;

import android.content.Context;
import android.content.SharedPreferences;
import com.inmobi.commons.p508a.C8326a;
import java.util.HashMap;
/* renamed from: com.inmobi.commons.core.d.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/d/c.class */
public final class C8364c {

    /* renamed from: b */
    public static HashMap<String, C8364c> f32523b = new HashMap<>();

    /* renamed from: c */
    public static final Object f32524c = new Object();

    /* renamed from: a */
    public SharedPreferences f32525a;

    public C8364c(Context context, String str) {
        this.f32525a = context.getSharedPreferences(str, 0);
    }

    /* renamed from: a */
    public static C8364c m5805a(Context context, String str) {
        String a = m5804a(str);
        C8364c cVar = f32523b.get(a);
        if (cVar != null) {
            return cVar;
        }
        synchronized (f32524c) {
            C8364c cVar2 = f32523b.get(a);
            if (cVar2 != null) {
                return cVar2;
            }
            C8364c cVar3 = new C8364c(context, a);
            f32523b.put(a, cVar3);
            return cVar3;
        }
    }

    /* renamed from: a */
    public static String m5804a(String str) {
        return "com.im.keyValueStore." + str;
    }

    /* renamed from: b */
    public static C8364c m5799b(String str) {
        return m5805a(C8326a.m5891b(), str);
    }

    /* renamed from: a */
    public final void m5803a(String str, int i) {
        SharedPreferences.Editor edit = this.f32525a.edit();
        edit.putInt(str, i);
        edit.apply();
    }

    /* renamed from: a */
    public final void m5802a(String str, long j) {
        SharedPreferences.Editor edit = this.f32525a.edit();
        edit.putLong(str, j);
        edit.apply();
    }

    /* renamed from: a */
    public final void m5801a(String str, String str2) {
        SharedPreferences.Editor edit = this.f32525a.edit();
        edit.putString(str, str2);
        edit.apply();
    }

    /* renamed from: a */
    public final void m5800a(String str, boolean z) {
        SharedPreferences.Editor edit = this.f32525a.edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    /* renamed from: b */
    public final long m5798b(String str, long j) {
        return this.f32525a.getLong(str, j);
    }

    /* renamed from: b */
    public final boolean m5797b(String str, boolean z) {
        return this.f32525a.getBoolean(str, z);
    }

    /* renamed from: c */
    public final String m5796c(String str) {
        return this.f32525a.getString(str, null);
    }

    /* renamed from: d */
    public final int m5795d(String str) {
        return this.f32525a.getInt(str, Integer.MIN_VALUE);
    }
}
