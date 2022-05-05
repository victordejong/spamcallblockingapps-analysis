package androidx.appcompat.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import androidx.appcompat.C0247a;
/* renamed from: androidx.appcompat.view.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/a.class */
public final class C0342a {

    /* renamed from: a */
    private Context f1451a;

    private C0342a(Context context) {
        this.f1451a = context;
    }

    /* renamed from: a */
    public static C0342a m9704a(Context context) {
        return new C0342a(context);
    }

    /* renamed from: a */
    public final int m9705a() {
        Configuration configuration = this.f1451a.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i > 600) {
            return 5;
        }
        if (i > 960 && i2 > 720) {
            return 5;
        }
        if (i > 720 && i2 > 960) {
            return 5;
        }
        if (i >= 500) {
            return 4;
        }
        if (i > 640 && i2 > 480) {
            return 4;
        }
        if (i <= 480 || i2 <= 640) {
            return i >= 360 ? 3 : 2;
        }
        return 4;
    }

    /* renamed from: b */
    public final boolean m9703b() {
        return Build.VERSION.SDK_INT >= 19 || !ViewConfiguration.get(this.f1451a).hasPermanentMenuKey();
    }

    /* renamed from: c */
    public final int m9702c() {
        return this.f1451a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    /* renamed from: d */
    public final boolean m9701d() {
        return this.f1451a.getResources().getBoolean(C0247a.C0249b.f586a);
    }

    /* renamed from: e */
    public final int m9700e() {
        TypedArray obtainStyledAttributes = this.f1451a.obtainStyledAttributes(null, C0247a.C0257j.f766a, C0247a.C0248a.f562c, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C0247a.C0257j.f996j, 0);
        Resources resources = this.f1451a.getResources();
        int i = layoutDimension;
        if (!m9701d()) {
            i = Math.min(layoutDimension, resources.getDimensionPixelSize(C0247a.C0251d.f594a));
        }
        obtainStyledAttributes.recycle();
        return i;
    }

    /* renamed from: f */
    public final boolean m9699f() {
        return this.f1451a.getApplicationInfo().targetSdkVersion < 14;
    }

    /* renamed from: g */
    public final int m9698g() {
        return this.f1451a.getResources().getDimensionPixelSize(C0247a.C0251d.f595b);
    }
}
