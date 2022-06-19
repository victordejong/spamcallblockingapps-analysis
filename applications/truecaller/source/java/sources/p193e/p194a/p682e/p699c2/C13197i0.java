package p193e.p194a.p682e.p699c2;

import android.content.Context;
import android.graphics.Bitmap;
import p1727n3.p1807k.p1818g.C26536a;
@Deprecated
/* renamed from: e.a.e.c2.i0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/i0.class */
public class C13197i0 {

    /* renamed from: a */
    public int f38322a;

    /* renamed from: b */
    public String f38323b;

    /* renamed from: c */
    public String f38324c;

    /* renamed from: d */
    public Object f38325d;

    /* renamed from: e */
    public int f38326e;

    /* renamed from: f */
    public int f38327f;

    /* renamed from: g */
    public boolean f38328g;

    /* renamed from: h */
    public CharSequence f38329h;

    /* renamed from: i */
    public CharSequence f38330i;

    public C13197i0() {
        this(0, "", "", "");
    }

    public C13197i0(int i, int i2, int i3, Object obj) {
        this.f38325d = "";
        this.f38326e = -1;
        this.f38327f = -1;
        this.f38322a = i;
        this.f38326e = i2;
        this.f38327f = i3;
        this.f38325d = obj;
    }

    public C13197i0(int i, int i2, String str, Object obj) {
        this.f38325d = "";
        this.f38326e = -1;
        this.f38327f = -1;
        this.f38322a = i;
        this.f38326e = i2;
        this.f38324c = null;
        this.f38325d = obj;
    }

    public C13197i0(int i, String str, String str2, Object obj) {
        this.f38325d = "";
        this.f38326e = -1;
        this.f38327f = -1;
        this.f38322a = i;
        this.f38323b = str;
        this.f38324c = str2;
        this.f38325d = obj;
    }

    /* renamed from: c */
    public static String m21997c(boolean z, String str) {
        String str2 = str;
        if (z) {
            str2 = str;
            if (str != null) {
                str2 = C26536a.m1710c().m1707f(str);
            }
        }
        return str2;
    }

    /* renamed from: d */
    public String mo18608d(Context context) {
        if (this.f38324c == null && this.f38327f != -1) {
            this.f38324c = context.getResources().getString(this.f38327f);
        }
        return this.f38324c;
    }

    /* renamed from: e */
    public Object mo18607e() {
        return this.f38325d;
    }

    /* renamed from: f */
    public Bitmap mo18606f(Context context) {
        return null;
    }

    /* renamed from: g */
    public int mo18613g(Context context) {
        return this.f38322a;
    }

    /* renamed from: h */
    public String mo18605h(Context context) {
        if (this.f38323b == null && this.f38326e != -1) {
            this.f38323b = context.getResources().getString(this.f38326e);
        }
        return this.f38323b;
    }
}
