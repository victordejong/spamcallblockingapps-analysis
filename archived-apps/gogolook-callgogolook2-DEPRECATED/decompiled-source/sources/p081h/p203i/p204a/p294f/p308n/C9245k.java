package p081h.p203i.p204a.p294f.p308n;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.n.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/n/k.class */
public final class C9245k {

    /* renamed from: a */
    public static final int[] f21175a = {R$attr.colorPrimary};

    /* renamed from: b */
    public static final int[] f21176b = {R$attr.colorSecondary};

    /* renamed from: a */
    public static void m15644a(Context context) {
        m15640a(context, f21175a, "Theme.AppCompat");
    }

    /* renamed from: a */
    public static void m15643a(Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ThemeEnforcement, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(R$styleable.ThemeEnforcement_enforceMaterialTheme, false);
        obtainStyledAttributes.recycle();
        if (z) {
            m15639b(context);
        }
        m15644a(context);
    }

    /* renamed from: a */
    public static void m15642a(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ThemeEnforcement, i, i2);
        if (!obtainStyledAttributes.getBoolean(R$styleable.ThemeEnforcement_enforceTextAppearance, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        boolean b = (iArr2 == null || iArr2.length == 0) ? obtainStyledAttributes.getResourceId(R$styleable.ThemeEnforcement_android_textAppearance, -1) != -1 : m15638b(context, attributeSet, iArr, i, i2, iArr2);
        obtainStyledAttributes.recycle();
        if (!b) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    /* renamed from: a */
    public static void m15640a(Context context, int[] iArr, String str) {
        if (!m15641a(context, iArr)) {
            throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
        }
    }

    /* renamed from: a */
    public static boolean m15641a(Context context, int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        boolean hasValue = obtainStyledAttributes.hasValue(0);
        obtainStyledAttributes.recycle();
        return hasValue;
    }

    /* renamed from: b */
    public static void m15639b(Context context) {
        m15640a(context, f21176b, "Theme.MaterialComponents");
    }

    /* renamed from: b */
    public static boolean m15638b(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        for (int i3 : iArr2) {
            if (obtainStyledAttributes.getResourceId(i3, -1) == -1) {
                obtainStyledAttributes.recycle();
                return false;
            }
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    /* renamed from: c */
    public static TypedArray m15637c(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        m15643a(context, attributeSet, i, i2);
        m15642a(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    /* renamed from: d */
    public static TintTypedArray m15636d(Context context, AttributeSet attributeSet, @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        m15643a(context, attributeSet, i, i2);
        m15642a(context, attributeSet, iArr, i, i2, iArr2);
        return TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, i2);
    }
}
