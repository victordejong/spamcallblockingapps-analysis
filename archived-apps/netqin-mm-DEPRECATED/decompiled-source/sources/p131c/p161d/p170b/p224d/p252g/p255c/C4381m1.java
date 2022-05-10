package p131c.p161d.p170b.p224d.p252g.p255c;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.clearcut.zzcb;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.lang.reflect.Field;
import java.util.Arrays;
/* renamed from: c.d.b.d.g.c.m1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/m1.class */
public final class C4381m1 {

    /* renamed from: A */
    public int f16564A;

    /* renamed from: B */
    public int f16565B;

    /* renamed from: C */
    public Field f16566C;

    /* renamed from: D */
    public Object f16567D;

    /* renamed from: E */
    public Object f16568E;

    /* renamed from: F */
    public Object f16569F;

    /* renamed from: a */
    public final C4386n1 f16570a;

    /* renamed from: b */
    public final Object[] f16571b;

    /* renamed from: c */
    public Class<?> f16572c;

    /* renamed from: d */
    public final int f16573d;

    /* renamed from: e */
    public final int f16574e;

    /* renamed from: f */
    public final int f16575f;

    /* renamed from: g */
    public final int f16576g;

    /* renamed from: h */
    public final int f16577h;

    /* renamed from: i */
    public final int f16578i;

    /* renamed from: j */
    public final int f16579j;

    /* renamed from: k */
    public final int f16580k;

    /* renamed from: l */
    public final int f16581l;

    /* renamed from: m */
    public final int f16582m;

    /* renamed from: n */
    public final int[] f16583n;

    /* renamed from: o */
    public int f16584o;

    /* renamed from: p */
    public int f16585p;

    /* renamed from: q */
    public int f16586q = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;

    /* renamed from: r */
    public int f16587r = Integer.MIN_VALUE;

    /* renamed from: s */
    public int f16588s = 0;

    /* renamed from: t */
    public int f16589t = 0;

    /* renamed from: u */
    public int f16590u = 0;

    /* renamed from: v */
    public int f16591v = 0;

    /* renamed from: w */
    public int f16592w = 0;

    /* renamed from: x */
    public int f16593x;

    /* renamed from: y */
    public int f16594y;

    /* renamed from: z */
    public int f16595z;

    public C4381m1(Class<?> cls, String str, Object[] objArr) {
        this.f16572c = cls;
        C4386n1 n1Var = new C4386n1(str);
        this.f16570a = n1Var;
        this.f16571b = objArr;
        this.f16573d = n1Var.m25750b();
        int b = this.f16570a.m25750b();
        this.f16574e = b;
        int[] iArr = null;
        if (b == 0) {
            this.f16575f = 0;
            this.f16576g = 0;
            this.f16577h = 0;
            this.f16578i = 0;
            this.f16579j = 0;
            this.f16581l = 0;
            this.f16580k = 0;
            this.f16582m = 0;
            this.f16583n = null;
            return;
        }
        this.f16575f = this.f16570a.m25750b();
        this.f16576g = this.f16570a.m25750b();
        this.f16577h = this.f16570a.m25750b();
        this.f16578i = this.f16570a.m25750b();
        this.f16581l = this.f16570a.m25750b();
        this.f16580k = this.f16570a.m25750b();
        this.f16579j = this.f16570a.m25750b();
        this.f16582m = this.f16570a.m25750b();
        int b2 = this.f16570a.m25750b();
        this.f16583n = b2 != 0 ? new int[b2] : iArr;
        this.f16584o = (this.f16575f << 1) + this.f16576g;
    }

    /* renamed from: a */
    public static Field m25803a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    /* renamed from: a */
    public final boolean m25805a() {
        int i;
        Object type;
        boolean z = false;
        if (!this.f16570a.m25751a()) {
            return false;
        }
        this.f16593x = this.f16570a.m25750b();
        int b = this.f16570a.m25750b();
        this.f16594y = b;
        this.f16595z = b & 255;
        int i2 = this.f16593x;
        if (i2 < this.f16586q) {
            this.f16586q = i2;
        }
        int i3 = this.f16593x;
        if (i3 > this.f16587r) {
            this.f16587r = i3;
        }
        if (this.f16595z == zzcb.MAP.m10732id()) {
            this.f16588s++;
        } else if (this.f16595z >= zzcb.DOUBLE_LIST.m10732id() && this.f16595z <= zzcb.GROUP_LIST.m10732id()) {
            this.f16589t++;
        }
        int i4 = this.f16592w + 1;
        this.f16592w = i4;
        if (C4401q1.m25726a(this.f16586q, this.f16593x, i4)) {
            int i5 = this.f16593x + 1;
            this.f16591v = i5;
            i = i5 - this.f16586q;
        } else {
            i = this.f16590u + 1;
        }
        this.f16590u = i;
        if ((this.f16594y & 1024) != 0) {
            int[] iArr = this.f16583n;
            int i6 = this.f16585p;
            this.f16585p = i6 + 1;
            iArr[i6] = this.f16593x;
        }
        this.f16567D = null;
        this.f16568E = null;
        this.f16569F = null;
        if (m25794f()) {
            this.f16564A = this.f16570a.m25750b();
            if (!(this.f16595z == zzcb.MESSAGE.m10732id() + 51 || this.f16595z == zzcb.GROUP.m10732id() + 51)) {
                if (this.f16595z != zzcb.ENUM.m10732id() + 51 || !m25796e()) {
                    return true;
                }
                this.f16568E = m25802b();
                return true;
            }
            type = m25802b();
        } else {
            this.f16566C = m25803a(this.f16572c, (String) m25802b());
            if (m25786j()) {
                this.f16565B = this.f16570a.m25750b();
            }
            if (this.f16595z == zzcb.MESSAGE.m10732id() || this.f16595z == zzcb.GROUP.m10732id()) {
                type = this.f16566C.getType();
            } else {
                if (!(this.f16595z == zzcb.MESSAGE_LIST.m10732id() || this.f16595z == zzcb.GROUP_LIST.m10732id())) {
                    if (this.f16595z == zzcb.ENUM.m10732id() || this.f16595z == zzcb.ENUM_LIST.m10732id() || this.f16595z == zzcb.ENUM_LIST_PACKED.m10732id()) {
                        if (!m25796e()) {
                            return true;
                        }
                    } else if (this.f16595z != zzcb.MAP.m10732id()) {
                        return true;
                    } else {
                        this.f16569F = m25802b();
                        if ((this.f16594y & RecyclerView.AbstractC0495b0.FLAG_MOVED) != 0) {
                            z = true;
                        }
                        if (!z) {
                            return true;
                        }
                    }
                    this.f16568E = m25802b();
                    return true;
                }
                type = m25802b();
            }
        }
        this.f16567D = type;
        return true;
    }

    /* renamed from: b */
    public final Object m25802b() {
        Object[] objArr = this.f16571b;
        int i = this.f16584o;
        this.f16584o = i + 1;
        return objArr[i];
    }

    /* renamed from: c */
    public final int m25800c() {
        return this.f16593x;
    }

    /* renamed from: d */
    public final int m25798d() {
        return this.f16595z;
    }

    /* renamed from: e */
    public final boolean m25796e() {
        return (this.f16573d & 1) == 1;
    }

    /* renamed from: f */
    public final boolean m25794f() {
        return this.f16595z > zzcb.MAP.m10732id();
    }

    /* renamed from: g */
    public final Field m25792g() {
        int i = this.f16564A << 1;
        Object obj = this.f16571b[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field a = m25803a(this.f16572c, (String) obj);
        this.f16571b[i] = a;
        return a;
    }

    /* renamed from: h */
    public final Field m25790h() {
        int i = (this.f16564A << 1) + 1;
        Object obj = this.f16571b[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field a = m25803a(this.f16572c, (String) obj);
        this.f16571b[i] = a;
        return a;
    }

    /* renamed from: i */
    public final Field m25788i() {
        return this.f16566C;
    }

    /* renamed from: j */
    public final boolean m25786j() {
        return m25796e() && this.f16595z <= zzcb.GROUP.m10732id();
    }

    /* renamed from: k */
    public final Field m25785k() {
        int i = (this.f16575f << 1) + (this.f16565B / 32);
        Object obj = this.f16571b[i];
        if (obj instanceof Field) {
            return (Field) obj;
        }
        Field a = m25803a(this.f16572c, (String) obj);
        this.f16571b[i] = a;
        return a;
    }

    /* renamed from: l */
    public final int m25784l() {
        return this.f16565B % 32;
    }

    /* renamed from: m */
    public final boolean m25783m() {
        return (this.f16594y & 256) != 0;
    }

    /* renamed from: n */
    public final boolean m25782n() {
        return (this.f16594y & RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN) != 0;
    }

    /* renamed from: o */
    public final Object m25781o() {
        return this.f16567D;
    }

    /* renamed from: p */
    public final Object m25780p() {
        return this.f16568E;
    }

    /* renamed from: q */
    public final Object m25779q() {
        return this.f16569F;
    }
}
