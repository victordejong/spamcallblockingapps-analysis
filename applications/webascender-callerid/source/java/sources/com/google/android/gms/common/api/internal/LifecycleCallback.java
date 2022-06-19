package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleCallback.class */
public class LifecycleCallback {

    /* renamed from: f */
    protected final AbstractC0839h f3365f;

    protected LifecycleCallback(AbstractC0839h abstractC0839h) {
        this.f3365f = abstractC0839h;
    }

    /* renamed from: c */
    public static AbstractC0839h m3636c(Activity activity) {
        return m3635d(new C0837g(activity));
    }

    /* renamed from: d */
    protected static AbstractC0839h m3635d(C0837g c0837g) {
        if (c0837g.m3571c()) {
            return a3.a1(c0837g.m3572b());
        }
        if (!c0837g.m3570d()) {
            throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
        }
        return z2.b(c0837g.m3573a());
    }

    @Keep
    private static AbstractC0839h getChimeraLifecycleFragmentImpl(C0837g c0837g) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    /* renamed from: a */
    public void m3638a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    /* renamed from: b */
    public Activity m3637b() {
        return this.f3365f.m3568m0();
    }

    /* renamed from: e */
    public void m3634e(int i, int i2, Intent intent) {
    }

    /* renamed from: f */
    public void m3633f(Bundle bundle) {
    }

    /* renamed from: g */
    public void m3632g() {
    }

    /* renamed from: h */
    public void m3631h() {
    }

    /* renamed from: i */
    public void m3630i(Bundle bundle) {
    }

    /* renamed from: j */
    public void m3629j() {
    }

    /* renamed from: k */
    public void m3628k() {
    }
}
