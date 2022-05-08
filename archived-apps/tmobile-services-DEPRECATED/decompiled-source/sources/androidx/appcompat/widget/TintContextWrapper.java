package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/TintContextWrapper.class */
public class TintContextWrapper extends ContextWrapper {

    /* renamed from: c */
    private static final Object f1347c = new Object();

    /* renamed from: d */
    private static ArrayList<WeakReference<TintContextWrapper>> f1348d;

    /* renamed from: a */
    private final Resources f1349a;

    /* renamed from: b */
    private final Resources.Theme f1350b;

    private TintContextWrapper(@NonNull Context context) {
        super(context);
        if (VectorEnabledTintResources.m21154c()) {
            VectorEnabledTintResources vectorEnabledTintResources = new VectorEnabledTintResources(this, context.getResources());
            this.f1349a = vectorEnabledTintResources;
            Resources.Theme newTheme = vectorEnabledTintResources.newTheme();
            this.f1350b = newTheme;
            newTheme.setTo(context.getTheme());
            return;
        }
        this.f1349a = new TintResources(this, context.getResources());
        this.f1350b = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
        if (androidx.appcompat.widget.VectorEnabledTintResources.m21154c() != false) goto L_0x0038;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m21268a(@androidx.annotation.NonNull android.content.Context r3) {
        /*
            r0 = r3
            boolean r0 = r0 instanceof androidx.appcompat.widget.TintContextWrapper
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
            boolean r0 = r0 instanceof androidx.appcompat.widget.TintResources
            if (r0 != 0) goto L_0x003a
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            boolean r0 = r0 instanceof androidx.appcompat.widget.VectorEnabledTintResources
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
            boolean r0 = androidx.appcompat.widget.VectorEnabledTintResources.m21154c()
            if (r0 == 0) goto L_0x003a
        L_0x0038:
            r0 = 1
            r6 = r0
        L_0x003a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.TintContextWrapper.m21268a(android.content.Context):boolean");
    }

    /* renamed from: b */
    public static Context m21267b(@NonNull Context context) {
        if (!m21268a(context)) {
            return context;
        }
        synchronized (f1347c) {
            if (f1348d == null) {
                f1348d = new ArrayList<>();
            } else {
                for (int size = f1348d.size() - 1; size >= 0; size--) {
                    WeakReference<TintContextWrapper> weakReference = f1348d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f1348d.remove(size);
                    }
                }
                for (int size2 = f1348d.size() - 1; size2 >= 0; size2--) {
                    WeakReference<TintContextWrapper> weakReference2 = f1348d.get(size2);
                    TintContextWrapper tintContextWrapper = weakReference2 != null ? weakReference2.get() : null;
                    if (tintContextWrapper != null && tintContextWrapper.getBaseContext() == context) {
                        return tintContextWrapper;
                    }
                }
            }
            TintContextWrapper tintContextWrapper2 = new TintContextWrapper(context);
            f1348d.add(new WeakReference<>(tintContextWrapper2));
            return tintContextWrapper2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f1349a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f1349a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f1350b;
        Resources.Theme theme2 = theme;
        if (theme == null) {
            theme2 = super.getTheme();
        }
        return theme2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.f1350b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
