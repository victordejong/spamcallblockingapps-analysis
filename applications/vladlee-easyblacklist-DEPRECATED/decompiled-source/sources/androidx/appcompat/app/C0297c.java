package androidx.appcompat.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.app.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/c.class */
final class C0297c {

    /* renamed from: a */
    private static final int[] f1300a = {16843531};

    /* renamed from: androidx.appcompat.app.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/c$a.class */
    static final class C0298a {

        /* renamed from: a */
        public Method f1301a;

        /* renamed from: b */
        public Method f1302b;

        /* renamed from: c */
        public ImageView f1303c;

        C0298a(Activity activity) {
            try {
                this.f1301a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.f1302b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException e) {
                View findViewById = activity.findViewById(16908332);
                if (findViewById != null) {
                    ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                    if (viewGroup.getChildCount() == 2) {
                        View childAt = viewGroup.getChildAt(0);
                        childAt = viewGroup.getChildAt(1);
                        if (childAt.getId() == 16908332) {
                        }
                        if (childAt instanceof ImageView) {
                            this.f1303c = (ImageView) childAt;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static Drawable m9810a(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(f1300a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    /* renamed from: a */
    public static C0298a m9809a(Activity activity, Drawable drawable, int i) {
        C0298a aVar = new C0298a(activity);
        if (aVar.f1301a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                aVar.f1301a.invoke(actionBar, drawable);
                aVar.f1302b.invoke(actionBar, Integer.valueOf(i));
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHC", "Couldn't set home-as-up indicator via JB-MR2 API", e);
            }
        } else if (aVar.f1303c != null) {
            aVar.f1303c.setImageDrawable(drawable);
        } else {
            Log.w("ActionBarDrawerToggleHC", "Couldn't set home-as-up indicator");
        }
        return aVar;
    }

    /* renamed from: a */
    public static C0298a m9808a(C0298a aVar, Activity activity, int i) {
        C0298a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new C0298a(activity);
        }
        if (aVar2.f1301a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                aVar2.f1302b.invoke(actionBar, Integer.valueOf(i));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHC", "Couldn't set content description via JB-MR2 API", e);
            }
        }
        return aVar2;
    }
}
