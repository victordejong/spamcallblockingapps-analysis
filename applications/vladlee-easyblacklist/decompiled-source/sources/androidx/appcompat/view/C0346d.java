package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.appcompat.C0247a;
/* renamed from: androidx.appcompat.view.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/d.class */
public final class C0346d extends ContextWrapper {

    /* renamed from: a */
    private int f1454a;

    /* renamed from: b */
    private Resources.Theme f1455b;

    /* renamed from: c */
    private LayoutInflater f1456c;

    /* renamed from: d */
    private Configuration f1457d;

    /* renamed from: e */
    private Resources f1458e;

    public C0346d() {
        super(null);
    }

    public C0346d(Context context, int i) {
        super(context);
        this.f1454a = i;
    }

    /* renamed from: b */
    private void m9693b() {
        if (this.f1455b == null) {
            this.f1455b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f1455b.setTo(theme);
            }
        }
        this.f1455b.applyStyle(this.f1454a, true);
    }

    /* renamed from: a */
    public final int m9694a() {
        return this.f1454a;
    }

    @Override // android.content.ContextWrapper
    protected final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        Resources resources;
        if (this.f1458e == null) {
            if (this.f1457d == null) {
                resources = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                resources = createConfigurationContext(this.f1457d).getResources();
            }
            this.f1458e = resources;
        }
        return this.f1458e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f1456c == null) {
            this.f1456c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f1456c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f1455b;
        if (theme != null) {
            return theme;
        }
        if (this.f1454a == 0) {
            this.f1454a = C0247a.C0256i.f739e;
        }
        m9693b();
        return this.f1455b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        if (this.f1454a != i) {
            this.f1454a = i;
            m9693b();
        }
    }
}
