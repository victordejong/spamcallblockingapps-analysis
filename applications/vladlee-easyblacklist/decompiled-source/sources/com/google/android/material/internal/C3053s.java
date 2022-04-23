package com.google.android.material.internal;

import android.graphics.PorterDuff;
import android.view.View;
import androidx.core.p037g.C0741t;
/* renamed from: com.google.android.material.internal.s */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/s.class */
public final class C3053s {
    /* renamed from: a */
    public static PorterDuff.Mode m954a(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    /* renamed from: a */
    public static boolean m953a(View view) {
        return C0741t.m8325g(view) == 1;
    }
}
