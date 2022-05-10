package p012b.p042i.p056q;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.text.Editable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import p012b.p042i.p052n.C0938a;
import p012b.p042i.p053o.C0948h;
/* renamed from: b.i.q.i */
/* loaded from: classes-dex2jar.jar:b/i/q/i.class */
public final class C1032i {

    /* renamed from: b.i.q.i$a */
    /* loaded from: classes-dex2jar.jar:b/i/q/i$a.class */
    public static class ActionMode$CallbackC1033a implements ActionMode.Callback {

        /* renamed from: a */
        public final ActionMode.Callback f4320a;

        /* renamed from: b */
        public final TextView f4321b;

        /* renamed from: c */
        public Class<?> f4322c;

        /* renamed from: d */
        public Method f4323d;

        /* renamed from: e */
        public boolean f4324e;

        /* renamed from: f */
        public boolean f4325f = false;

        public ActionMode$CallbackC1033a(ActionMode.Callback callback, TextView textView) {
            this.f4320a = callback;
            this.f4321b = textView;
        }

        /* renamed from: a */
        public final Intent m35089a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        /* renamed from: a */
        public final Intent m35086a(ResolveInfo resolveInfo, TextView textView) {
            Intent putExtra = m35089a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !m35084a(textView));
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            return putExtra.setClassName(activityInfo.packageName, activityInfo.name);
        }

        /* renamed from: a */
        public final List<ResolveInfo> m35088a(Context context, PackageManager packageManager) {
            ArrayList arrayList = new ArrayList();
            if (!(context instanceof Activity)) {
                return arrayList;
            }
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(m35089a(), 0)) {
                if (m35087a(resolveInfo, context)) {
                    arrayList.add(resolveInfo);
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        public final void m35085a(Menu menu) {
            Context context = this.f4321b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f4325f) {
                this.f4325f = true;
                try {
                    Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f4322c = cls;
                    this.f4323d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f4324e = true;
                } catch (ClassNotFoundException | NoSuchMethodException e) {
                    this.f4322c = null;
                    this.f4323d = null;
                    this.f4324e = false;
                }
            }
            try {
                Method declaredMethod = (!this.f4324e || !this.f4322c.isInstance(menu)) ? menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE) : this.f4323d;
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                List<ResolveInfo> a = m35088a(context, packageManager);
                for (int i = 0; i < a.size(); i++) {
                    ResolveInfo resolveInfo = a.get(i);
                    menu.add(0, 0, i + 100, resolveInfo.loadLabel(packageManager)).setIntent(m35086a(resolveInfo, this.f4321b)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
            }
        }

        /* renamed from: a */
        public final boolean m35087a(ResolveInfo resolveInfo, Context context) {
            if (context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                return true;
            }
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (!activityInfo.exported) {
                return false;
            }
            String str = activityInfo.permission;
            boolean z = true;
            if (str != null) {
                z = context.checkSelfPermission(str) == 0;
            }
            return z;
        }

        /* renamed from: a */
        public final boolean m35084a(TextView textView) {
            return (textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled();
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f4320a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f4320a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f4320a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            m35085a(menu);
            return this.f4320a.onPrepareActionMode(actionMode, menu);
        }
    }

    /* renamed from: a */
    public static int m35103a(TextDirectionHeuristic textDirectionHeuristic) {
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL || textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 1;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
            return 2;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
            return 3;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
            return 4;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
            return 5;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 6;
        }
        return textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL ? 7 : 1;
    }

    /* renamed from: a */
    public static int m35102a(TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    /* renamed from: a */
    public static ActionMode.Callback m35098a(TextView textView, ActionMode.Callback callback) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof ActionMode$CallbackC1033a)) ? callback : new ActionMode$CallbackC1033a(callback, textView);
    }

    /* renamed from: a */
    public static void m35101a(TextView textView, int i) {
        C0948h.m35443a(i);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    /* renamed from: a */
    public static void m35100a(TextView textView, ColorStateList colorStateList) {
        C0948h.m35442a(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (textView instanceof AbstractC1035k) {
            ((AbstractC1035k) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m35099a(TextView textView, PorterDuff.Mode mode) {
        C0948h.m35442a(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintMode(mode);
        } else if (textView instanceof AbstractC1035k) {
            ((AbstractC1035k) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    /* renamed from: a */
    public static void m35097a(TextView textView, C0938a.C0939a aVar) {
        if (Build.VERSION.SDK_INT >= 18) {
            textView.setTextDirection(m35103a(aVar.m35457c()));
        }
        if (Build.VERSION.SDK_INT < 23) {
            float textScaleX = aVar.m35456d().getTextScaleX();
            textView.getPaint().set(aVar.m35456d());
            if (textScaleX == textView.getTextScaleX()) {
                textView.setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            textView.setTextScaleX(textScaleX);
            return;
        }
        textView.getPaint().set(aVar.m35456d());
        textView.setBreakStrategy(aVar.m35460a());
        textView.setHyphenationFrequency(aVar.m35458b());
    }

    /* renamed from: a */
    public static void m35096a(TextView textView, C0938a aVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            textView.setText(aVar.m35461b());
        } else if (m35091d(textView).m35459a(aVar.m35462a())) {
            textView.setText(aVar);
        } else {
            throw new IllegalArgumentException("Given text can not be applied to TextView.");
        }
    }

    /* renamed from: b */
    public static int m35095b(TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    /* renamed from: b */
    public static void m35094b(TextView textView, int i) {
        C0948h.m35443a(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* renamed from: c */
    public static TextDirectionHeuristic m35093c(TextView textView) {
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            return TextDirectionHeuristics.LTR;
        }
        boolean z = false;
        if (Build.VERSION.SDK_INT < 28 || (textView.getInputType() & 15) != 3) {
            if (textView.getLayoutDirection() == 1) {
                z = true;
            }
            switch (textView.getTextDirection()) {
                case 2:
                    return TextDirectionHeuristics.ANYRTL_LTR;
                case 3:
                    return TextDirectionHeuristics.LTR;
                case 4:
                    return TextDirectionHeuristics.RTL;
                case 5:
                    return TextDirectionHeuristics.LOCALE;
                case 6:
                    return TextDirectionHeuristics.FIRSTSTRONG_LTR;
                case 7:
                    return TextDirectionHeuristics.FIRSTSTRONG_RTL;
                default:
                    return z ? TextDirectionHeuristics.FIRSTSTRONG_RTL : TextDirectionHeuristics.FIRSTSTRONG_LTR;
            }
        } else {
            byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(textView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
            return (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
    }

    /* renamed from: c */
    public static void m35092c(TextView textView, int i) {
        C0948h.m35443a(i);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }

    /* renamed from: d */
    public static C0938a.C0939a m35091d(TextView textView) {
        if (Build.VERSION.SDK_INT >= 28) {
            return new C0938a.C0939a(textView.getTextMetricsParams());
        }
        C0938a.C0939a.C0940a aVar = new C0938a.C0939a.C0940a(new TextPaint(textView.getPaint()));
        if (Build.VERSION.SDK_INT >= 23) {
            aVar.m35454a(textView.getBreakStrategy());
            aVar.m35452b(textView.getHyphenationFrequency());
        }
        if (Build.VERSION.SDK_INT >= 18) {
            aVar.m35453a(m35093c(textView));
        }
        return aVar.m35455a();
    }

    /* renamed from: d */
    public static void m35090d(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }
}
