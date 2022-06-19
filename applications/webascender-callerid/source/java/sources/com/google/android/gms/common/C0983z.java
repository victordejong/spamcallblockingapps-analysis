package com.google.android.gms.common;

import android.util.Log;
import com.google.android.gms.common.util.C0960a;
import com.google.android.gms.common.util.C0969k;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.common.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/z.class */
public class C0983z {

    /* renamed from: d */
    private static final C0983z f3616d = new C0983z(true, null, null);

    /* renamed from: a */
    final boolean f3617a;

    /* renamed from: b */
    private final String f3618b;

    /* renamed from: c */
    private final Throwable f3619c;

    C0983z(boolean z, String str, Throwable th) {
        this.f3617a = z;
        this.f3618b = str;
        this.f3619c = th;
    }

    /* renamed from: a */
    public static C0983z m3110a() {
        return f3616d;
    }

    /* renamed from: b */
    public static C0983z m3109b(String str) {
        return new C0983z(false, str, null);
    }

    /* renamed from: c */
    public static C0983z m3108c(String str, Throwable th) {
        return new C0983z(false, str, th);
    }

    /* renamed from: d */
    public static C0983z m3107d(Callable<String> callable) {
        return new b0(callable, (C0890c0) null);
    }

    /* renamed from: e */
    public static String m3106e(String str, r rVar, boolean z, boolean z2) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", z2 ? "debug cert rejected" : "not whitelisted", str, C0969k.m3151a(C0960a.m3177b("SHA-1").digest(rVar.B())), Boolean.valueOf(z), "12451009.false");
    }

    /* renamed from: f */
    String m3105f() {
        return this.f3618b;
    }

    /* renamed from: g */
    public final void m3104g() {
        if (this.f3617a || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.f3619c != null) {
            Log.d("GoogleCertificatesRslt", m3105f(), this.f3619c);
        } else {
            Log.d("GoogleCertificatesRslt", m3105f());
        }
    }
}
