package p012b.p016b.p026q;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: b.b.q.c0 */
/* loaded from: classes-dex2jar.jar:b/b/q/c0.class */
public class C0684c0 extends ContextWrapper {

    /* renamed from: c */
    public static final Object f3381c = new Object();

    /* renamed from: d */
    public static ArrayList<WeakReference<C0684c0>> f3382d;

    /* renamed from: a */
    public final Resources f3383a;

    /* renamed from: b */
    public final Resources.Theme f3384b;

    public C0684c0(Context context) {
        super(context);
        if (C0705k0.m36348b()) {
            C0705k0 k0Var = new C0705k0(this, context.getResources());
            this.f3383a = k0Var;
            Resources.Theme newTheme = k0Var.newTheme();
            this.f3384b = newTheme;
            newTheme.setTo(context.getTheme());
            return;
        }
        this.f3383a = new C0688e0(this, context.getResources());
        this.f3384b = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (p012b.p016b.p026q.C0705k0.m36348b() != false) goto L_0x0038;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m36460a(android.content.Context r3) {
        /*
            r0 = r3
            boolean r0 = r0 instanceof p012b.p016b.p026q.C0684c0
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L_0x003a
            r0 = r5
            r6 = r0
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof p012b.p016b.p026q.C0688e0
            if (r0 != 0) goto L_0x003a
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof p012b.p016b.p026q.C0705k0
            if (r0 == 0) goto L_0x0028
            r0 = r5
            r6 = r0
            goto L_0x003a
        L_0x0028:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L_0x0038
            r0 = r5
            r6 = r0
            boolean r0 = p012b.p016b.p026q.C0705k0.m36348b()
            if (r0 == 0) goto L_0x003a
        L_0x0038:
            r0 = 1
            r6 = r0
        L_0x003a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p026q.C0684c0.m36460a(android.content.Context):boolean");
    }

    /* renamed from: b */
    public static Context m36459b(Context context) {
        if (!m36460a(context)) {
            return context;
        }
        synchronized (f3381c) {
            if (f3382d == null) {
                f3382d = new ArrayList<>();
            } else {
                for (int size = f3382d.size() - 1; size >= 0; size--) {
                    WeakReference<C0684c0> weakReference = f3382d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f3382d.remove(size);
                    }
                }
                for (int size2 = f3382d.size() - 1; size2 >= 0; size2--) {
                    WeakReference<C0684c0> weakReference2 = f3382d.get(size2);
                    C0684c0 c0Var = weakReference2 != null ? weakReference2.get() : null;
                    if (c0Var != null && c0Var.getBaseContext() == context) {
                        return c0Var;
                    }
                }
            }
            C0684c0 c0Var2 = new C0684c0(context);
            f3382d.add(new WeakReference<>(c0Var2));
            return c0Var2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f3383a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f3383a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f3384b;
        Resources.Theme theme2 = theme;
        if (theme == null) {
            theme2 = super.getTheme();
        }
        return theme2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.f3384b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
