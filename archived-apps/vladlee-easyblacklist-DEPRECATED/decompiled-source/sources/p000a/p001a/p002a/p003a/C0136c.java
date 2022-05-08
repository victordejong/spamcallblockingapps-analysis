package p000a.p001a.p002a.p003a;

import android.util.Log;
/* renamed from: a.a.a.a.c */
/* loaded from: classes-dex2jar.jar:a/a/a/a/c.class */
public final class C0136c implements AbstractC0150o {

    /* renamed from: a */
    private int f306a = 3;

    public C0136c() {
    }

    public C0136c(byte b) {
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0150o
    /* renamed from: a */
    public final void mo10138a(int i, String str, String str2) {
        mo10137a(i, str, str2, false);
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0150o
    /* renamed from: a */
    public final void mo10137a(int i, String str, String str2, boolean z) {
        if (z || mo10136a(str, i)) {
            Log.println(i, str, str2);
        }
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0150o
    /* renamed from: a */
    public final void mo10135a(String str, String str2) {
        mo10134a(str, str2, (Throwable) null);
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0150o
    /* renamed from: a */
    public final void mo10134a(String str, String str2, Throwable th) {
        if (mo10136a(str, 3)) {
            Log.d(str, str2, th);
        }
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0150o
    /* renamed from: a */
    public final boolean mo10136a(String str, int i) {
        return this.f306a <= i || Log.isLoggable(str, i);
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0150o
    /* renamed from: b */
    public final void mo10133b(String str, String str2) {
        if (mo10136a(str, 2)) {
            Log.v(str, str2, null);
        }
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0150o
    /* renamed from: b */
    public final void mo10132b(String str, String str2, Throwable th) {
        if (mo10136a(str, 5)) {
            Log.w(str, str2, th);
        }
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0150o
    /* renamed from: c */
    public final void mo10131c(String str, String str2) {
        if (mo10136a(str, 4)) {
            Log.i(str, str2, null);
        }
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0150o
    /* renamed from: c */
    public final void mo10130c(String str, String str2, Throwable th) {
        if (mo10136a(str, 6)) {
            Log.e(str, str2, th);
        }
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0150o
    /* renamed from: d */
    public final void mo10129d(String str, String str2) {
        mo10132b(str, str2, null);
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0150o
    /* renamed from: e */
    public final void mo10128e(String str, String str2) {
        mo10130c(str, str2, null);
    }
}
