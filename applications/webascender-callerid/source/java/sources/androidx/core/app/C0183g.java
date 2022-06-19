package androidx.core.app;

import android.app.Activity;
import android.os.Build;
import android.util.SparseIntArray;
/* renamed from: androidx.core.app.g */
/* loaded from: classes-dex2jar.jar:androidx/core/app/g.class */
public class C0183g {

    /* renamed from: a */
    private C0184b f1221a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.app.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$b.class */
    public static class C0184b {
        C0184b() {
        }

        /* renamed from: a */
        public void m6175a(Activity activity) {
        }

        /* renamed from: b */
        public SparseIntArray[] m6174b(Activity activity) {
            return null;
        }
    }

    public C0183g() {
        this(1);
    }

    public C0183g(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1221a = new a(i);
        } else {
            this.f1221a = new C0184b();
        }
    }

    /* renamed from: a */
    public void m6177a(Activity activity) {
        this.f1221a.m6175a(activity);
    }

    /* renamed from: b */
    public SparseIntArray[] m6176b(Activity activity) {
        return this.f1221a.m6174b(activity);
    }
}
