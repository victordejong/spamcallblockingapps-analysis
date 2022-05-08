package com.asus.contacts.b;

import android.content.Context;
import android.util.Log;
import android.util.SparseIntArray;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/b/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2589a = e.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static int f2590b = -1;
    private static int c = 1;
    private static int d = 0;
    private static e e = null;
    private HashMap<String, Integer> f = new HashMap<>();
    private SparseIntArray g = new SparseIntArray();

    private e() {
        this.f.put("FloatingActionButton", 1);
        this.f.put("FontSettings", 2);
        this.g.put(1, f2590b);
        this.g.put(2, f2590b);
    }

    public static e a() {
        if (e == null) {
            e = new e();
        }
        return e;
    }

    public final void a(String str) {
        Integer num = this.f.get(str);
        if (num != null) {
            this.g.put(num.intValue(), f2590b);
        }
    }

    public final boolean a(Context context, String str) {
        boolean z;
        Integer num = this.f.get(str);
        if (context == null || num == null) {
            z = false;
        } else {
            int i = this.g.get(num.intValue());
            if (i == f2590b) {
                if (num != null) {
                    switch (num.intValue()) {
                        case 1:
                            if (PhoneCapabilityTester.isUsingTwoPanes(context)) {
                                this.g.put(1, d);
                            } else {
                                this.g.put(1, c);
                            }
                            b.a();
                            break;
                        case 2:
                            b.a();
                            this.g.put(2, c);
                            break;
                        default:
                            Log.e(f2589a, "Unexpected feature code(" + num.intValue() + ") was passed.");
                            break;
                    }
                }
                i = this.g.get(num.intValue());
            }
            z = i == c;
        }
        return z;
    }
}
