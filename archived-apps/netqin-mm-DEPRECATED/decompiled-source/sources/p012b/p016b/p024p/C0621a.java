package p012b.p016b.p024p;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.ViewConfiguration;
import p012b.p016b.C0574a;
import p012b.p016b.C0575b;
import p012b.p016b.C0577d;
import p012b.p016b.C0583j;
/* renamed from: b.b.p.a */
/* loaded from: classes-dex2jar.jar:b/b/p/a.class */
public class C0621a {

    /* renamed from: a */
    public Context f3073a;

    public C0621a(Context context) {
        this.f3073a = context;
    }

    /* renamed from: a */
    public static C0621a m36710a(Context context) {
        return new C0621a(context);
    }

    /* renamed from: a */
    public boolean m36711a() {
        return this.f3073a.getApplicationInfo().targetSdkVersion < 14;
    }

    /* renamed from: b */
    public int m36709b() {
        return this.f3073a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    /* renamed from: c */
    public int m36708c() {
        Configuration configuration = this.f3073a.getResources().getConfiguration();
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

    /* renamed from: d */
    public int m36707d() {
        return this.f3073a.getResources().getDimensionPixelSize(C0577d.abc_action_bar_stacked_tab_max_width);
    }

    /* renamed from: e */
    public int m36706e() {
        TypedArray obtainStyledAttributes = this.f3073a.obtainStyledAttributes(null, C0583j.ActionBar, C0574a.actionBarStyle, 0);
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(C0583j.ActionBar_height, 0);
        Resources resources = this.f3073a.getResources();
        int i = layoutDimension;
        if (!m36705f()) {
            i = Math.min(layoutDimension, resources.getDimensionPixelSize(C0577d.abc_action_bar_stacked_max_height));
        }
        obtainStyledAttributes.recycle();
        return i;
    }

    /* renamed from: f */
    public boolean m36705f() {
        return this.f3073a.getResources().getBoolean(C0575b.abc_action_bar_embed_tabs);
    }

    /* renamed from: g */
    public boolean m36704g() {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return !ViewConfiguration.get(this.f3073a).hasPermanentMenuKey();
    }
}
