package com.google.android.gms.common.p024l;

import android.util.Log;
import com.google.android.gms.common.internal.C0916j;
import java.util.Locale;
/* renamed from: com.google.android.gms.common.l.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/l/a.class */
public class C0945a {

    /* renamed from: a */
    private final String f3570a;

    /* renamed from: b */
    private final String f3571b;

    /* renamed from: c */
    private final int f3572c;

    private C0945a(String str, String str2) {
        this.f3571b = str2;
        this.f3570a = str;
        new C0916j(str);
        int i = 2;
        while (7 >= i && !Log.isLoggable(this.f3570a, i)) {
            i++;
        }
        this.f3572c = i;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0945a(java.lang.String r5, java.lang.String... r6) {
        /*
            r4 = this;
            r0 = r6
            int r0 = r0.length
            if (r0 != 0) goto Lb
            java.lang.String r0 = ""
            r6 = r0
            goto L5d
        Lb:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = 91
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            int r0 = r0.length
            r8 = r0
            r0 = 0
            r9 = r0
        L21:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L4a
            r0 = r6
            r1 = r9
            r0 = r0[r1]
            r10 = r0
            r0 = r7
            int r0 = r0.length()
            r1 = 1
            if (r0 <= r1) goto L3d
            r0 = r7
            java.lang.String r1 = ","
            java.lang.StringBuilder r0 = r0.append(r1)
        L3d:
            r0 = r7
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            int r9 = r9 + 1
            goto L21
        L4a:
            r0 = r7
            r1 = 93
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = 32
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r6 = r0
        L5d:
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.p024l.C0945a.<init>(java.lang.String, java.lang.String[]):void");
    }

    /* renamed from: a */
    public void m3222a(String str, Object... objArr) {
        if (m3217f(3)) {
            Log.d(this.f3570a, m3219d(str, objArr));
        }
    }

    /* renamed from: b */
    public void m3221b(String str, Throwable th, Object... objArr) {
        Log.e(this.f3570a, m3219d(str, objArr), th);
    }

    /* renamed from: c */
    public void m3220c(String str, Object... objArr) {
        Log.e(this.f3570a, m3219d(str, objArr));
    }

    /* renamed from: d */
    protected String m3219d(String str, Object... objArr) {
        String str2 = str;
        if (objArr != null) {
            str2 = str;
            if (objArr.length > 0) {
                str2 = String.format(Locale.US, str, objArr);
            }
        }
        return this.f3571b.concat(str2);
    }

    /* renamed from: e */
    public void m3218e(String str, Object... objArr) {
        Log.i(this.f3570a, m3219d(str, objArr));
    }

    /* renamed from: f */
    public boolean m3217f(int i) {
        return this.f3572c <= i;
    }

    /* renamed from: g */
    public void m3216g(String str, Object... objArr) {
        if (m3217f(2)) {
            Log.v(this.f3570a, m3219d(str, objArr));
        }
    }

    /* renamed from: h */
    public void m3215h(String str, Object... objArr) {
        Log.w(this.f3570a, m3219d(str, objArr));
    }

    /* renamed from: i */
    public void m3214i(String str, Throwable th, Object... objArr) {
        Log.wtf(this.f3570a, m3219d(str, objArr), th);
    }

    /* renamed from: j */
    public void m3213j(Throwable th) {
        Log.wtf(this.f3570a, th);
    }
}
