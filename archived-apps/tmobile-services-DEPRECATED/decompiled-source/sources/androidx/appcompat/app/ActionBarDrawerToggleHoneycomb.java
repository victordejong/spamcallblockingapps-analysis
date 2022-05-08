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
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBarDrawerToggleHoneycomb.class */
class ActionBarDrawerToggleHoneycomb {

    /* renamed from: a */
    private static final int[] f38a = {16843531};

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo.class */
    static class SetIndicatorInfo {

        /* renamed from: a */
        public Method f39a;

        /* renamed from: b */
        public Method f40b;

        /* renamed from: c */
        public ImageView f41c;

        SetIndicatorInfo(Activity activity) {
            try {
                this.f39a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.f40b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException e) {
                View findViewById = activity.findViewById(16908332);
                if (findViewById != null) {
                    ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                    if (viewGroup.getChildCount() == 2) {
                        View childAt = viewGroup.getChildAt(0);
                        r9 = viewGroup.getChildAt(1);
                        View view = childAt;
                        if (childAt.getId() == 16908332) {
                        }
                        if (view instanceof ImageView) {
                            this.f41c = (ImageView) view;
                        }
                    }
                }
            }
        }
    }

    private ActionBarDrawerToggleHoneycomb() {
    }

    /* renamed from: a */
    public static Drawable m22312a(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(f38a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    /* renamed from: b */
    public static SetIndicatorInfo m22311b(SetIndicatorInfo setIndicatorInfo, Activity activity, int i) {
        SetIndicatorInfo setIndicatorInfo2 = setIndicatorInfo;
        if (setIndicatorInfo == null) {
            setIndicatorInfo2 = new SetIndicatorInfo(activity);
        }
        if (setIndicatorInfo2.f39a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                setIndicatorInfo2.f40b.invoke(actionBar, Integer.valueOf(i));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHC", "Couldn't set content description via JB-MR2 API", e);
            }
        }
        return setIndicatorInfo2;
    }

    /* renamed from: c */
    public static SetIndicatorInfo m22310c(Activity activity, Drawable drawable, int i) {
        SetIndicatorInfo setIndicatorInfo = new SetIndicatorInfo(activity);
        if (setIndicatorInfo.f39a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                setIndicatorInfo.f39a.invoke(actionBar, drawable);
                setIndicatorInfo.f40b.invoke(actionBar, Integer.valueOf(i));
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHC", "Couldn't set home-as-up indicator via JB-MR2 API", e);
            }
        } else {
            ImageView imageView = setIndicatorInfo.f41c;
            if (imageView != null) {
                imageView.setImageDrawable(drawable);
            } else {
                Log.w("ActionBarDrawerToggleHC", "Couldn't set home-as-up indicator");
            }
        }
        return setIndicatorInfo;
    }
}
