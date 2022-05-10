package com.inmobi.ads;

import android.graphics.Point;
import java.util.Locale;
/* renamed from: com.inmobi.ads.al */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/al.class */
public class C8104al {

    /* renamed from: a */
    public Point f31701a;

    /* renamed from: b */
    public Point f31702b;

    /* renamed from: c */
    public Point f31703c;

    /* renamed from: d */
    public Point f31704d;

    /* renamed from: e */
    public String f31705e;

    /* renamed from: f */
    public String f31706f;

    /* renamed from: g */
    public String f31707g;

    /* renamed from: h */
    public float f31708h;

    /* renamed from: i */
    public String f31709i;

    /* renamed from: j */
    public String f31710j;

    /* renamed from: k */
    public C8144ba f31711k;

    public C8104al() {
        this.f31701a = new Point(0, 0);
        this.f31703c = new Point(0, 0);
        this.f31702b = new Point(0, 0);
        this.f31704d = new Point(0, 0);
        this.f31705e = "none";
        this.f31706f = "straight";
        this.f31708h = 10.0f;
        this.f31709i = "#ff000000";
        this.f31710j = "#00000000";
        this.f31707g = "fill";
        this.f31711k = null;
    }

    public C8104al(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str, String str2, String str3, String str4, C8144ba baVar) {
        this(i, i2, i3, i4, i5, i6, i7, i8, "fill", str, str2, str3, str4, baVar);
    }

    public C8104al(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str, String str2, String str3, String str4, String str5, C8144ba baVar) {
        this.f31701a = new Point(i3, i4);
        this.f31702b = new Point(i7, i8);
        this.f31703c = new Point(i, i2);
        this.f31704d = new Point(i5, i6);
        this.f31705e = str2;
        this.f31706f = str3;
        this.f31708h = 10.0f;
        this.f31707g = str;
        this.f31709i = str4.length() == 0 ? "#ff000000" : str4;
        this.f31710j = str5.length() == 0 ? "#00000000" : str5;
        this.f31711k = baVar;
    }

    /* renamed from: a */
    public final String m6446a() {
        return this.f31705e;
    }

    /* renamed from: b */
    public final String m6445b() {
        return this.f31706f;
    }

    /* renamed from: c */
    public final float m6444c() {
        return this.f31708h;
    }

    /* renamed from: d */
    public final String m6443d() {
        return this.f31709i.toLowerCase(Locale.US);
    }

    /* renamed from: e */
    public String mo6351e() {
        return this.f31710j.toLowerCase(Locale.US);
    }

    /* renamed from: f */
    public final String m6442f() {
        return this.f31707g;
    }

    /* renamed from: g */
    public final C8144ba m6441g() {
        return this.f31711k;
    }
}
