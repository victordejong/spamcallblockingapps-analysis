package p193e.p194a.p372b0.p430q;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.TypedValue;
import android.widget.TextView;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1818g.AbstractC26540c;
import p1727n3.p1807k.p1818g.C26536a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p417k.C8502h;
import w3.c.a.a.a.h;
/* renamed from: e.a.b0.q.o */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/o.class */
public class C8605o {

    /* renamed from: a */
    public static final C26536a f26448a = C26536a.f74355h;

    static {
        AbstractC26540c abstractC26540c = C26536a.f74351d;
    }

    /* renamed from: a */
    public static String m28239a(CharSequence charSequence) {
        return h.j(charSequence) ? "" : !C8502h.m28437a() ? charSequence.toString() : f26448a.m1707f(charSequence.toString());
    }

    /* renamed from: b */
    public static int m28238b(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: c */
    public static Bitmap m28237c(Drawable drawable) {
        int i;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int i2 = 1;
        if ((drawable instanceof ShapeDrawable) || (drawable instanceof GradientDrawable)) {
            i = 1;
        } else if (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            return null;
        } else {
            i2 = drawable.getIntrinsicWidth();
            i = drawable.getIntrinsicHeight();
        }
        Bitmap createBitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    /* renamed from: d */
    public static Drawable m28236d(Context context, int i) {
        return context.getResources().getDrawable(i, context.getTheme());
    }

    /* renamed from: e */
    public static Drawable m28235e(Context context, int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        Object obj = C26467a.f74235a;
        gradientDrawable.setColor(C26467a.C26471d.m1787a(context, i));
        gradientDrawable.setCornerRadius(m28238b(context, i2));
        return gradientDrawable;
    }

    /* renamed from: f */
    public static Drawable m28234f(Context context, int i, int i2) {
        ColorStateList m13609M = C19291g.m13609M(context, i2);
        Drawable mutate = context.getResources().getDrawable(i, context.getTheme()).mutate();
        mutate.setTintList(m13609M);
        return mutate;
    }

    /* renamed from: g */
    public static Drawable m28233g(Context context, int i, int i2) {
        Drawable mutate = context.getResources().getDrawable(i, context.getTheme()).mutate();
        mutate.setTint(i2);
        return mutate;
    }

    /* renamed from: h */
    public static int m28232h(Context context, float f) {
        return (int) TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: i */
    public static void m28231i(TextView textView, int i) {
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        for (Drawable drawable : compoundDrawablesRelative) {
            if (drawable != null) {
                C19291g.m13522p1(textView.getContext(), drawable, i);
            }
        }
        textView.setCompoundDrawablesRelative(compoundDrawablesRelative[0], compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
    }
}
