package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.C0484bm;
import com.google.android.material.C2913a;
/* renamed from: com.google.android.material.internal.r */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/r.class */
public final class C3052r {

    /* renamed from: a */
    private static final int[] f18493a = {C2913a.C2915b.f17439e};

    /* renamed from: b */
    private static final int[] f18494b = {C2913a.C2915b.f17440f};

    /* renamed from: a */
    public static TypedArray m961a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m962a(context, attributeSet, i, i2);
        m956c(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    /* renamed from: a */
    private static void m963a(Context context) {
        m959a(context, f18493a, "Theme.AppCompat");
    }

    /* renamed from: a */
    private static void m962a(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2913a.C2924k.f17781ei, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(C2913a.C2924k.f17783ek, false);
        obtainStyledAttributes.recycle();
        if (z) {
            m958b(context);
        }
        m963a(context);
    }

    /* renamed from: a */
    private static void m959a(Context context, int[] iArr, String str) {
        if (!m960a(context, iArr)) {
            throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
        }
    }

    /* renamed from: a */
    private static boolean m960a(Context context, int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        boolean hasValue = obtainStyledAttributes.hasValue(0);
        obtainStyledAttributes.recycle();
        return hasValue;
    }

    /* renamed from: b */
    public static C0484bm m957b(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m962a(context, attributeSet, i, i2);
        m956c(context, attributeSet, iArr, i, i2, iArr2);
        return C0484bm.m9092a(context, attributeSet, iArr, i, i2);
    }

    /* renamed from: b */
    private static void m958b(Context context) {
        m959a(context, f18494b, "Theme.MaterialComponents");
    }

    /* renamed from: c */
    private static void m956c(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2913a.C2924k.f17781ei, i, i2);
        boolean z = false;
        if (!obtainStyledAttributes.getBoolean(C2913a.C2924k.f17784el, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 != null && iArr2.length != 0) {
            z = m955d(context, attributeSet, iArr, i, i2, iArr2);
        } else if (obtainStyledAttributes.getResourceId(C2913a.C2924k.f17782ej, -1) != -1) {
            z = true;
        }
        obtainStyledAttributes.recycle();
        if (!z) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    /* renamed from: d */
    private static boolean m955d(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
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
}
