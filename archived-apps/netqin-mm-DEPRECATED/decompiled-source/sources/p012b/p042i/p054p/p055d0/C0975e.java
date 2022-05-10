package p012b.p042i.p054p.p055d0;

import android.os.Build;
import android.view.accessibility.AccessibilityRecord;
/* renamed from: b.i.p.d0.e */
/* loaded from: classes-dex2jar.jar:b/i/p/d0/e.class */
public class C0975e {
    /* renamed from: a */
    public static void m35311a(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollX(i);
        }
    }

    /* renamed from: b */
    public static void m35310b(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollY(i);
        }
    }
}
