package p081h.p203i.p204a.p294f.p311q;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.StateSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.q.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/q/a.class */
public class C9252a {

    /* renamed from: a */
    public static final boolean f21193a;

    /* renamed from: b */
    public static final int[] f21194b;

    /* renamed from: c */
    public static final int[] f21195c;

    /* renamed from: d */
    public static final int[] f21196d;

    /* renamed from: e */
    public static final int[] f21197e;

    /* renamed from: f */
    public static final int[] f21198f;

    /* renamed from: g */
    public static final int[] f21199g;

    /* renamed from: h */
    public static final int[] f21200h;

    /* renamed from: i */
    public static final int[] f21201i;

    /* renamed from: j */
    public static final int[] f21202j;

    static {
        f21193a = Build.VERSION.SDK_INT >= 21;
        f21194b = new int[]{16842919};
        f21195c = new int[]{16843623, 16842908};
        f21196d = new int[]{16842908};
        f21197e = new int[]{16843623};
        f21198f = new int[]{16842913, 16842919};
        f21199g = new int[]{16842913, 16843623, 16842908};
        f21200h = new int[]{16842913, 16842908};
        f21201i = new int[]{16842913, 16843623};
        f21202j = new int[]{16842913};
    }

    @ColorInt
    @TargetApi(21)
    /* renamed from: a */
    public static int m15614a(@ColorInt int i) {
        return ColorUtils.setAlphaComponent(i, Math.min(Color.alpha(i) * 2, 255));
    }

    @ColorInt
    /* renamed from: a */
    public static int m15612a(@Nullable ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        int i = colorForState;
        if (f21193a) {
            i = m15614a(colorForState);
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[], int[][]] */
    @NonNull
    /* renamed from: a */
    public static ColorStateList m15613a(@Nullable ColorStateList colorStateList) {
        if (f21193a) {
            int[] iArr = f21202j;
            int a = m15612a(colorStateList, f21198f);
            return new ColorStateList(new int[]{iArr, StateSet.NOTHING}, new int[]{a, m15612a(colorStateList, f21194b)});
        }
        int[] iArr2 = f21198f;
        int a2 = m15612a(colorStateList, iArr2);
        int[] iArr3 = f21199g;
        int a3 = m15612a(colorStateList, iArr3);
        int[] iArr4 = f21200h;
        int a4 = m15612a(colorStateList, iArr4);
        int[] iArr5 = f21201i;
        int a5 = m15612a(colorStateList, iArr5);
        int[] iArr6 = f21202j;
        int[] iArr7 = f21194b;
        int a6 = m15612a(colorStateList, iArr7);
        int[] iArr8 = f21195c;
        int a7 = m15612a(colorStateList, iArr8);
        int[] iArr9 = f21196d;
        int a8 = m15612a(colorStateList, iArr9);
        int[] iArr10 = f21197e;
        return new ColorStateList(new int[]{iArr2, iArr3, iArr4, iArr5, iArr6, iArr7, iArr8, iArr9, iArr10, StateSet.NOTHING}, new int[]{a2, a3, a4, a5, 0, a6, a7, a8, m15612a(colorStateList, iArr10), 0});
    }
}
