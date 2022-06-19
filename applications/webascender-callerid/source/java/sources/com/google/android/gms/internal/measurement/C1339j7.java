package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.j7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/j7.class */
final class C1339j7 {
    /* renamed from: a */
    public static final int m2073a(int i, Object obj, Object obj2) {
        C1334i7 c1334i7 = (C1334i7) obj;
        C1326h7 c1326h7 = (C1326h7) obj2;
        if (c1334i7.isEmpty()) {
            return 0;
        }
        Iterator it = c1334i7.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    /* renamed from: b */
    public static final Object m2072b(Object obj, Object obj2) {
        C1334i7 c1334i7 = (C1334i7) obj;
        C1334i7 c1334i72 = (C1334i7) obj2;
        C1334i7 c1334i73 = c1334i7;
        if (!c1334i72.isEmpty()) {
            c1334i73 = c1334i7;
            if (!c1334i7.m2080g()) {
                c1334i73 = c1334i7.m2082e();
            }
            c1334i73.m2083b(c1334i72);
        }
        return c1334i73;
    }
}
