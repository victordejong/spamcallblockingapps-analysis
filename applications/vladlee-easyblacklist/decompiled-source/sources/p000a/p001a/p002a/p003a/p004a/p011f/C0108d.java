package p000a.p001a.p002a.p003a.p004a.p011f;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import p000a.p001a.p002a.p003a.AbstractC0147l;
/* renamed from: a.a.a.a.a.f.d */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/f/d.class */
public final class C0108d implements AbstractC0107c {

    /* renamed from: a */
    private final SharedPreferences f206a;

    /* renamed from: b */
    private final String f207b;

    /* renamed from: c */
    private final Context f208c;

    @Deprecated
    public C0108d(AbstractC0147l lVar) {
        this(lVar.getContext(), lVar.getClass().getName());
    }

    public C0108d(Context context, String str) {
        if (context != null) {
            this.f208c = context;
            this.f207b = str;
            this.f206a = this.f208c.getSharedPreferences(this.f207b, 0);
            return;
        }
        throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p011f.AbstractC0107c
    /* renamed from: a */
    public final SharedPreferences mo10190a() {
        return this.f206a;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p011f.AbstractC0107c
    /* renamed from: a */
    public final boolean mo10189a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT < 9) {
            return editor.commit();
        }
        editor.apply();
        return true;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p011f.AbstractC0107c
    /* renamed from: b */
    public final SharedPreferences.Editor mo10188b() {
        return this.f206a.edit();
    }
}
