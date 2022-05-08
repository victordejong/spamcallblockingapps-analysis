package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.widget.bj */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bj.class */
public final class C0481bj extends ContextWrapper {

    /* renamed from: a */
    private static final Object f2327a = new Object();

    /* renamed from: b */
    private static ArrayList<WeakReference<C0481bj>> f2328b;

    /* renamed from: c */
    private final Resources f2329c;

    /* renamed from: d */
    private final Resources.Theme f2330d;

    private C0481bj(Context context) {
        super(context);
        if (C0497bz.m9033a()) {
            this.f2329c = new C0497bz(this, context.getResources());
            this.f2330d = this.f2329c.newTheme();
            this.f2330d.setTo(context.getTheme());
            return;
        }
        this.f2329c = new C0483bl(this, context.getResources());
        this.f2330d = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (androidx.appcompat.widget.C0497bz.m9033a() != false) goto L_0x0038;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Context m9102a(android.content.Context r3) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0481bj.m9102a(android.content.Context):android.content.Context");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return this.f2329c.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        return this.f2329c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f2330d;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        Resources.Theme theme = this.f2330d;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
