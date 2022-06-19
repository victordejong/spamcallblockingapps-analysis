package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.widget.s0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/s0.class */
public class C0131s0 extends ContextWrapper {

    /* renamed from: c */
    private static final Object f575c = new Object();

    /* renamed from: d */
    private static ArrayList<WeakReference<C0131s0>> f576d;

    /* renamed from: a */
    private final Resources f577a;

    /* renamed from: b */
    private final Resources.Theme f578b;

    private C0131s0(Context context) {
        super(context);
        if (!C0093a1.m6650c()) {
            this.f577a = new u0(this, context.getResources());
            this.f578b = null;
            return;
        }
        C0093a1 c0093a1 = new C0093a1(this, context.getResources());
        this.f577a = c0093a1;
        Resources.Theme newTheme = c0093a1.newTheme();
        this.f578b = newTheme;
        newTheme.setTo(context.getTheme());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (androidx.appcompat.widget.C0093a1.m6650c() != false) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m6483a(android.content.Context r3) {
        /*
            r0 = r3
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0131s0
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L3a
            r0 = r5
            r6 = r0
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof androidx.appcompat.widget.u0
            if (r0 != 0) goto L3a
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof androidx.appcompat.widget.C0093a1
            if (r0 == 0) goto L28
            r0 = r5
            r6 = r0
            goto L3a
        L28:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L38
            r0 = r5
            r6 = r0
            boolean r0 = androidx.appcompat.widget.C0093a1.m6650c()
            if (r0 == 0) goto L3a
        L38:
            r0 = 1
            r6 = r0
        L3a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0131s0.m6483a(android.content.Context):boolean");
    }

    /* renamed from: b */
    public static Context m6482b(Context context) {
        if (m6483a(context)) {
            synchronized (f575c) {
                ArrayList<WeakReference<C0131s0>> arrayList = f576d;
                if (arrayList == null) {
                    f576d = new ArrayList<>();
                } else {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        WeakReference<C0131s0> weakReference = f576d.get(size);
                        if (weakReference == null || weakReference.get() == null) {
                            f576d.remove(size);
                        }
                    }
                    for (int size2 = f576d.size() - 1; size2 >= 0; size2--) {
                        WeakReference<C0131s0> weakReference2 = f576d.get(size2);
                        C0131s0 c0131s0 = weakReference2 != null ? weakReference2.get() : null;
                        if (c0131s0 != null && c0131s0.getBaseContext() == context) {
                            return c0131s0;
                        }
                    }
                }
                C0131s0 c0131s02 = new C0131s0(context);
                f576d.add(new WeakReference<>(c0131s02));
                return c0131s02;
            }
        }
        return context;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f577a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f577a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f578b;
        Resources.Theme theme2 = theme;
        if (theme == null) {
            theme2 = super.getTheme();
        }
        return theme2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.f578b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
