package androidx.core.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.Log;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.core.p036f.C0687f;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* renamed from: androidx.core.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/k.class */
public final class C0786k {

    /* renamed from: a */
    private static Field f3252a;

    /* renamed from: b */
    private static boolean f3253b;

    /* renamed from: c */
    private static Field f3254c;

    /* renamed from: d */
    private static boolean f3255d;

    /* renamed from: androidx.core.widget.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/k$a.class */
    private static final class ActionMode$CallbackC0787a implements ActionMode.Callback {

        /* renamed from: a */
        private final ActionMode.Callback f3256a;

        /* renamed from: b */
        private final TextView f3257b;

        /* renamed from: c */
        private Class f3258c;

        /* renamed from: d */
        private Method f3259d;

        /* renamed from: e */
        private boolean f3260e;

        /* renamed from: f */
        private boolean f3261f = false;

        ActionMode$CallbackC0787a(ActionMode.Callback callback, TextView textView) {
            this.f3256a = callback;
            this.f3257b = textView;
        }

        /* renamed from: a */
        private static Intent m8125a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f3256a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f3256a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            this.f3256a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            Context context = this.f3257b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f3261f) {
                this.f3261f = true;
                try {
                    this.f3258c = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f3259d = this.f3258c.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f3260e = true;
                } catch (ClassNotFoundException | NoSuchMethodException e) {
                    this.f3258c = null;
                    this.f3259d = null;
                    this.f3260e = false;
                }
            }
            try {
                Method declaredMethod = (!this.f3260e || !this.f3258c.isInstance(menu)) ? menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE) : this.f3259d;
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                ArrayList arrayList = new ArrayList();
                if (context instanceof Activity) {
                    for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(m8125a(), 0)) {
                        if (context.getPackageName().equals(resolveInfo.activityInfo.packageName) || (resolveInfo.activityInfo.exported && (resolveInfo.activityInfo.permission == null || context.checkSelfPermission(resolveInfo.activityInfo.permission) == 0))) {
                            arrayList.add(resolveInfo);
                        }
                    }
                }
                for (int i = 0; i < arrayList.size(); i++) {
                    ResolveInfo resolveInfo2 = (ResolveInfo) arrayList.get(i);
                    MenuItem add = menu.add(0, 0, i + 100, resolveInfo2.loadLabel(packageManager));
                    TextView textView = this.f3257b;
                    add.setIntent(m8125a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !((textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled())).setClassName(resolveInfo2.activityInfo.packageName, resolveInfo2.activityInfo.name)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
            }
            return this.f3256a.onPrepareActionMode(actionMode, menu);
        }
    }

    /* renamed from: a */
    public static int m8135a(TextView textView) {
        if (Build.VERSION.SDK_INT >= 16) {
            return textView.getMaxLines();
        }
        if (!f3255d) {
            f3254c = m8131a("mMaxMode");
            f3255d = true;
        }
        Field field = f3254c;
        if (field == null || m8130a(field, textView) != 1) {
            return -1;
        }
        if (!f3253b) {
            f3252a = m8131a("mMaximum");
            f3253b = true;
        }
        Field field2 = f3252a;
        if (field2 != null) {
            return m8130a(field2, textView);
        }
        return -1;
    }

    /* renamed from: a */
    private static int m8130a(Field field, TextView textView) {
        try {
            return field.getInt(textView);
        } catch (IllegalAccessException e) {
            Log.d("TextViewCompat", "Could not retrieve value of " + field.getName() + " field.");
            return -1;
        }
    }

    /* renamed from: a */
    public static ActionMode.Callback m8132a(TextView textView, ActionMode.Callback callback) {
        return (Build.VERSION.SDK_INT < 26 || Build.VERSION.SDK_INT > 27 || (callback instanceof ActionMode$CallbackC0787a)) ? callback : new ActionMode$CallbackC0787a(callback, textView);
    }

    /* renamed from: a */
    private static Field m8131a(String str) {
        Field field;
        try {
            field = TextView.class.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            field = null;
        }
        try {
            field.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            Log.e("TextViewCompat", "Could not retrieve " + str + " field.");
            return field;
        }
        return field;
    }

    /* renamed from: a */
    public static void m8134a(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    /* renamed from: a */
    public static void m8133a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (Build.VERSION.SDK_INT >= 18) {
            textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else if (Build.VERSION.SDK_INT >= 17) {
            boolean z = true;
            if (textView.getLayoutDirection() != 1) {
                z = false;
            }
            Drawable drawable5 = z ? drawable3 : drawable;
            if (!z) {
                drawable = drawable3;
            }
            textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
        } else {
            textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        }
    }

    /* renamed from: b */
    public static void m8128b(TextView textView, int i) {
        C0687f.m8550a(i);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i - (-i2), textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    /* renamed from: b */
    public static Drawable[] m8129b(TextView textView) {
        if (Build.VERSION.SDK_INT >= 18) {
            return textView.getCompoundDrawablesRelative();
        }
        if (Build.VERSION.SDK_INT < 17) {
            return textView.getCompoundDrawables();
        }
        boolean z = true;
        if (textView.getLayoutDirection() != 1) {
            z = false;
        }
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        if (z) {
            Drawable drawable = compoundDrawables[2];
            Drawable drawable2 = compoundDrawables[0];
            compoundDrawables[0] = drawable;
            compoundDrawables[2] = drawable2;
        }
        return compoundDrawables;
    }

    /* renamed from: c */
    public static void m8127c(TextView textView, int i) {
        C0687f.m8550a(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* renamed from: d */
    public static void m8126d(TextView textView, int i) {
        C0687f.m8550a(i);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }
}
