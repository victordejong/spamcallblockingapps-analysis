package androidx.transition;

import android.view.View;
/* renamed from: androidx.transition.ca */
/* loaded from: classes-dex2jar.jar:androidx/transition/ca.class */
public abstract class AbstractC1248ca extends AbstractC1220bc {

    /* renamed from: a */
    private static final String[] f5302a = {"android:visibilityPropagation:visibility", "android:visibilityPropagation:center"};

    /* renamed from: a */
    private static int m6503a(C1224bf bfVar, int i) {
        int[] iArr;
        if (bfVar == null || (iArr = (int[]) bfVar.f5245a.get("android:visibilityPropagation:center")) == null) {
            return -1;
        }
        return iArr[i];
    }

    /* renamed from: b */
    public static int m6502b(C1224bf bfVar) {
        Integer num;
        if (bfVar == null || (num = (Integer) bfVar.f5245a.get("android:visibilityPropagation:visibility")) == null) {
            return 8;
        }
        return num.intValue();
    }

    /* renamed from: c */
    public static int m6501c(C1224bf bfVar) {
        return m6503a(bfVar, 0);
    }

    /* renamed from: d */
    public static int m6500d(C1224bf bfVar) {
        return m6503a(bfVar, 1);
    }

    @Override // androidx.transition.AbstractC1220bc
    /* renamed from: a */
    public final void mo6504a(C1224bf bfVar) {
        View view = bfVar.f5246b;
        Integer num = (Integer) bfVar.f5245a.get("android:visibility:visibility");
        Integer num2 = num;
        if (num == null) {
            num2 = Integer.valueOf(view.getVisibility());
        }
        bfVar.f5245a.put("android:visibilityPropagation:visibility", num2);
        view.getLocationOnScreen(r0);
        int[] iArr = {iArr[0] + Math.round(view.getTranslationX())};
        iArr[0] = iArr[0] + (view.getWidth() / 2);
        iArr[1] = iArr[1] + Math.round(view.getTranslationY());
        iArr[1] = iArr[1] + (view.getHeight() / 2);
        bfVar.f5245a.put("android:visibilityPropagation:center", iArr);
    }

    @Override // androidx.transition.AbstractC1220bc
    /* renamed from: a */
    public final String[] mo6505a() {
        return f5302a;
    }
}
