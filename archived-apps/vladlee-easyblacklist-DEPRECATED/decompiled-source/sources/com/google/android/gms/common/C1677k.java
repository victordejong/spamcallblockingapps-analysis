package com.google.android.gms.common;

import android.util.Log;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@CheckReturnValue
/* renamed from: com.google.android.gms.common.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/k.class */
public class C1677k {

    /* renamed from: b */
    private static final C1677k f6860b = new C1677k(true, null, null);

    /* renamed from: a */
    final boolean f6861a;

    /* renamed from: c */
    private final String f6862c;

    /* renamed from: d */
    private final Throwable f6863d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1677k(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.f6861a = z;
        this.f6862c = str;
        this.f6863d = th;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C1677k m5649a() {
        return f6860b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C1677k m5648a(String str) {
        return new C1677k(false, str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C1677k m5646a(String str, Throwable th) {
        return new C1677k(false, str, th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C1677k m5645a(Callable<String> callable) {
        return new C1678l(callable, (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m5647a(String str, AbstractBinderC1646e eVar, boolean z, boolean z2) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", z2 ? "debug cert rejected" : "not whitelisted", str, Hex.bytesToStringLowercase(AndroidUtilsLight.zzj("SHA-1").digest(eVar.mo5750a())), Boolean.valueOf(z), "12451009.false");
    }

    @Nullable
    /* renamed from: b */
    String mo5643b() {
        return this.f6862c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m5644c() {
        if (!this.f6861a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (this.f6863d != null) {
                Log.d("GoogleCertificatesRslt", mo5643b(), this.f6863d);
            } else {
                Log.d("GoogleCertificatesRslt", mo5643b());
            }
        }
    }
}
