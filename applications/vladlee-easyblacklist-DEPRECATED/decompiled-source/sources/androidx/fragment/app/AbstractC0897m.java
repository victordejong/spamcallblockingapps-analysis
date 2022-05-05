package androidx.fragment.app;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
/* renamed from: androidx.fragment.app.m */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/m.class */
public abstract class AbstractC0897m {

    /* renamed from: a */
    static final C0895k f3773a = new C0895k();

    /* renamed from: b */
    private C0895k f3774b = null;

    /* renamed from: a */
    public abstract Fragment.SavedState mo7713a(Fragment fragment);

    /* renamed from: a */
    public abstract Fragment mo7720a(Bundle bundle, String str);

    /* renamed from: a */
    public abstract Fragment mo7699a(String str);

    /* renamed from: a */
    public abstract AbstractC0867ab mo7727a();

    /* renamed from: a */
    public abstract void mo7724a(int i);

    /* renamed from: a */
    public abstract void mo7719a(Bundle bundle, String str, Fragment fragment);

    /* renamed from: a */
    public final void m7738a(C0895k kVar) {
        this.f3774b = kVar;
    }

    /* renamed from: a */
    public abstract void mo7698a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: b */
    public abstract boolean mo7692b();

    /* renamed from: c */
    public abstract void mo7679c();

    /* renamed from: d */
    public abstract boolean mo7673d();

    /* renamed from: e */
    public abstract int mo7669e();

    /* renamed from: f */
    public abstract List<Fragment> mo7667f();

    /* renamed from: g */
    public C0895k mo7665g() {
        if (this.f3774b == null) {
            this.f3774b = f3773a;
        }
        return this.f3774b;
    }
}
