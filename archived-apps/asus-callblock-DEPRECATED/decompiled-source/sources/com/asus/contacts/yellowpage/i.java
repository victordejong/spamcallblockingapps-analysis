package com.asus.contacts.yellowpage;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/i.class */
public class i extends l {

    /* renamed from: a  reason: collision with root package name */
    int f2821a;
    private final String f = i.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    int[] f2822b = new int[4];
    private String[] g = new String[4];
    String[] c = new String[4];
    boolean d = false;

    public i() {
        super(2);
    }

    public final String a(int i) {
        return (i < 0 || i >= 4) ? null : this.g[i];
    }

    public final void a(int i, int i2) {
        if (i < 0 || i >= 4) {
            Log.e(this.f, "Index out of bounds: " + i);
        } else {
            this.f2822b[i] = i2;
        }
    }

    public final void a(int i, String str) {
        if (i < 0 || i >= 4) {
            Log.e(this.f, "Index out of bounds: " + i);
        } else {
            this.g[i] = str;
        }
    }

    public final void b(int i, String str) {
        if (i < 0 || i >= 4) {
            Log.e(this.f, "Index out of bounds: " + i);
        } else {
            this.c[i] = str;
        }
    }
}
