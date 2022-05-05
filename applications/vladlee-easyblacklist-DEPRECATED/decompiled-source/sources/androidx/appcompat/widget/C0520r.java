package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.C0247a;
import androidx.appcompat.widget.C0451ap;
import androidx.core.graphics.C0752a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.r */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r.class */
public final class C0520r implements C0451ap.AbstractC0456e {

    /* renamed from: a */
    private final int[] f2436a = {C0247a.C0252e.f623R, C0247a.C0252e.f621P, C0247a.C0252e.f625a};

    /* renamed from: b */
    private final int[] f2437b = {C0247a.C0252e.f638n, C0247a.C0252e.f606A, C0247a.C0252e.f643s, C0247a.C0252e.f639o, C0247a.C0252e.f640p, C0247a.C0252e.f642r, C0247a.C0252e.f641q};

    /* renamed from: c */
    private final int[] f2438c = {C0247a.C0252e.f620O, C0247a.C0252e.f622Q, C0247a.C0252e.f635k, C0247a.C0252e.f613H, C0247a.C0252e.f614I, C0247a.C0252e.f616K, C0247a.C0252e.f618M, C0247a.C0252e.f615J, C0247a.C0252e.f617L, C0247a.C0252e.f619N};

    /* renamed from: d */
    private final int[] f2439d = {C0247a.C0252e.f646v, C0247a.C0252e.f633i, C0247a.C0252e.f645u};

    /* renamed from: e */
    private final int[] f2440e = {C0247a.C0252e.f612G, C0247a.C0252e.f624S};

    /* renamed from: f */
    private final int[] f2441f = {C0247a.C0252e.f627c, C0247a.C0252e.f631g, C0247a.C0252e.f628d, C0247a.C0252e.f632h};

    /* renamed from: a */
    private static void m8980a(Drawable drawable, int i, PorterDuff.Mode mode) {
        Drawable drawable2 = drawable;
        if (C0437ah.m9169c(drawable)) {
            drawable2 = drawable.mutate();
        }
        PorterDuff.Mode mode2 = mode;
        if (mode == null) {
            mode2 = C0519q.f2433a;
        }
        drawable2.setColorFilter(C0519q.m8991a(i, mode2));
    }

    /* renamed from: a */
    private static boolean m8978a(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* renamed from: b */
    private static ColorStateList m8977b(Context context, int i) {
        int a = C0480bi.m9105a(context, C0247a.C0248a.f581v);
        int c = C0480bi.m9103c(context, C0247a.C0248a.f579t);
        int[] iArr = C0480bi.f2317a;
        int[] iArr2 = C0480bi.f2320d;
        int a2 = C0752a.m8283a(a, i);
        return new ColorStateList(new int[]{iArr, iArr2, C0480bi.f2318b, C0480bi.f2324h}, new int[]{c, a2, C0752a.m8283a(a, i), i});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [int[], int[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // androidx.appcompat.widget.C0451ap.AbstractC0456e
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.res.ColorStateList mo8982a(android.content.Context r7, int r8) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0520r.mo8982a(android.content.Context, int):android.content.res.ColorStateList");
    }

    @Override // androidx.appcompat.widget.C0451ap.AbstractC0456e
    /* renamed from: a */
    public final PorterDuff.Mode mo8983a(int i) {
        return i == C0247a.C0252e.f610E ? PorterDuff.Mode.MULTIPLY : null;
    }

    @Override // androidx.appcompat.widget.C0451ap.AbstractC0456e
    /* renamed from: a */
    public final Drawable mo8979a(C0451ap apVar, Context context, int i) {
        if (i == C0247a.C0252e.f634j) {
            return new LayerDrawable(new Drawable[]{apVar.m9146a(context, C0247a.C0252e.f633i), apVar.m9146a(context, C0247a.C0252e.f635k)});
        }
        return null;
    }

    @Override // androidx.appcompat.widget.C0451ap.AbstractC0456e
    /* renamed from: a */
    public final boolean mo8981a(Context context, int i, Drawable drawable) {
        LayerDrawable layerDrawable;
        PorterDuff.Mode mode;
        Drawable findDrawableByLayerId;
        int i2;
        PorterDuff.Mode mode2;
        PorterDuff.Mode mode3;
        PorterDuff.Mode mode4;
        if (i == C0247a.C0252e.f607B) {
            layerDrawable = (LayerDrawable) drawable;
            Drawable findDrawableByLayerId2 = layerDrawable.findDrawableByLayerId(16908288);
            int a = C0480bi.m9105a(context, C0247a.C0248a.f582w);
            mode4 = C0519q.f2433a;
            m8980a(findDrawableByLayerId2, a, mode4);
            findDrawableByLayerId = layerDrawable.findDrawableByLayerId(16908303);
            i2 = C0247a.C0248a.f582w;
        } else if (i != C0247a.C0252e.f648x && i != C0247a.C0252e.f647w && i != C0247a.C0252e.f649y) {
            return false;
        } else {
            layerDrawable = (LayerDrawable) drawable;
            Drawable findDrawableByLayerId3 = layerDrawable.findDrawableByLayerId(16908288);
            int c = C0480bi.m9103c(context, C0247a.C0248a.f582w);
            mode = C0519q.f2433a;
            m8980a(findDrawableByLayerId3, c, mode);
            findDrawableByLayerId = layerDrawable.findDrawableByLayerId(16908303);
            i2 = C0247a.C0248a.f580u;
        }
        int a2 = C0480bi.m9105a(context, i2);
        mode2 = C0519q.f2433a;
        m8980a(findDrawableByLayerId, a2, mode2);
        Drawable findDrawableByLayerId4 = layerDrawable.findDrawableByLayerId(16908301);
        int a3 = C0480bi.m9105a(context, C0247a.C0248a.f580u);
        mode3 = C0519q.f2433a;
        m8980a(findDrawableByLayerId4, a3, mode3);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ad A[RETURN] */
    @Override // androidx.appcompat.widget.C0451ap.AbstractC0456e
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo8976b(android.content.Context r5, int r6, android.graphics.drawable.Drawable r7) {
        /*
            r4 = this;
            android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.C0519q.m8985c()
            r8 = r0
            r0 = r4
            int[] r0 = r0.f2436a
            r1 = r6
            boolean r0 = m8978a(r0, r1)
            r9 = r0
            r0 = 16842801(0x1010031, float:2.3693695E-38)
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0026
            int r0 = androidx.appcompat.C0247a.C0248a.f582w
            r6 = r0
        L_0x001d:
            r0 = -1
            r10 = r0
        L_0x0020:
            r0 = 1
            r11 = r0
            goto L_0x007a
        L_0x0026:
            r0 = r4
            int[] r0 = r0.f2438c
            r1 = r6
            boolean r0 = m8978a(r0, r1)
            if (r0 == 0) goto L_0x0038
            int r0 = androidx.appcompat.C0247a.C0248a.f580u
            r6 = r0
            goto L_0x001d
        L_0x0038:
            r0 = r4
            int[] r0 = r0.f2439d
            r1 = r6
            boolean r0 = m8978a(r0, r1)
            if (r0 == 0) goto L_0x004e
            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
            r8 = r0
            r0 = r10
            r6 = r0
            goto L_0x001d
        L_0x004e:
            r0 = r6
            int r1 = androidx.appcompat.C0247a.C0252e.f644t
            if (r0 != r1) goto L_0x0064
            r0 = 16842800(0x1010030, float:2.3693693E-38)
            r6 = r0
            r0 = 1109603123(0x42233333, float:40.8)
            int r0 = java.lang.Math.round(r0)
            r10 = r0
            goto L_0x0020
        L_0x0064:
            r0 = r6
            int r1 = androidx.appcompat.C0247a.C0252e.f636l
            if (r0 != r1) goto L_0x0071
            r0 = r10
            r6 = r0
            goto L_0x001d
        L_0x0071:
            r0 = -1
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r11
            r6 = r0
        L_0x007a:
            r0 = r11
            if (r0 == 0) goto L_0x00ad
            r0 = r7
            r12 = r0
            r0 = r7
            boolean r0 = androidx.appcompat.widget.C0437ah.m9169c(r0)
            if (r0 == 0) goto L_0x008f
            r0 = r7
            android.graphics.drawable.Drawable r0 = r0.mutate()
            r12 = r0
        L_0x008f:
            r0 = r12
            r1 = r5
            r2 = r6
            int r1 = androidx.appcompat.widget.C0480bi.m9105a(r1, r2)
            r2 = r8
            android.graphics.PorterDuffColorFilter r1 = androidx.appcompat.widget.C0519q.m8991a(r1, r2)
            r0.setColorFilter(r1)
            r0 = r10
            r1 = -1
            if (r0 == r1) goto L_0x00ab
            r0 = r12
            r1 = r10
            r0.setAlpha(r1)
        L_0x00ab:
            r0 = 1
            return r0
        L_0x00ad:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0520r.mo8976b(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
    }
}
