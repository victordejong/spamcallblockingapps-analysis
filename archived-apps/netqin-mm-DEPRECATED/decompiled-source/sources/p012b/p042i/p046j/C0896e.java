package p012b.p042i.p046j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import p012b.p035f.C0786e;
import p012b.p042i.p044i.p045c.C0874c;
import p012b.p042i.p044i.p045c.C0882f;
import p012b.p042i.p051m.C0924b;
/* renamed from: b.i.j.e */
/* loaded from: classes-dex2jar.jar:b/i/j/e.class */
public class C0896e {

    /* renamed from: a */
    public static final C0902k f4093a;

    /* renamed from: b */
    public static final C0786e<String, Typeface> f4094b;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f4093a = new C0901j();
        } else if (i >= 28) {
            f4093a = new C0900i();
        } else if (i >= 26) {
            f4093a = new C0899h();
        } else if (i >= 24 && C0898g.m35571a()) {
            f4093a = new C0898g();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f4093a = new C0897f();
        } else {
            f4093a = new C0902k();
        }
        f4094b = new C0786e<>(16);
    }

    /* renamed from: a */
    public static Typeface m35583a(Context context, Resources resources, int i, String str, int i2) {
        Typeface a = f4093a.mo35553a(context, resources, i, str, i2);
        if (a != null) {
            f4094b.put(m35579a(resources, i, i2), a);
        }
        return a;
    }

    /* renamed from: a */
    public static Typeface m35582a(Context context, Typeface typeface, int i) {
        Typeface b;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (b = m35578b(context, typeface, i)) == null) ? Typeface.create(typeface, i) : b;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    /* renamed from: a */
    public static Typeface m35581a(Context context, CancellationSignal cancellationSignal, C0924b.C0930f[] fVarArr, int i) {
        return f4093a.mo35552a(context, cancellationSignal, fVarArr, i);
    }

    /* renamed from: a */
    public static Typeface m35580a(Context context, C0874c.AbstractC0875a aVar, Resources resources, int i, int i2, C0882f.AbstractC0883a aVar2, Handler handler, boolean z) {
        Typeface typeface;
        if (aVar instanceof C0874c.C0878d) {
            C0874c.C0878d dVar = (C0874c.C0878d) aVar;
            boolean z2 = false;
            if (!z ? aVar2 == null : dVar.m35647a() == 0) {
                z2 = true;
            }
            typeface = C0924b.m35485a(context, dVar.m35646b(), aVar2, handler, z2, z ? dVar.m35645c() : -1, i2);
        } else {
            Typeface a = f4093a.mo35551a(context, (C0874c.C0876b) aVar, resources, i2);
            typeface = a;
            if (aVar2 != null) {
                if (a != null) {
                    aVar2.m35630a(a, handler);
                    typeface = a;
                } else {
                    aVar2.m35632a(-3, handler);
                    typeface = a;
                }
            }
        }
        if (typeface != null) {
            f4094b.put(m35579a(resources, i, i2), typeface);
        }
        return typeface;
    }

    /* renamed from: a */
    public static String m35579a(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }

    /* renamed from: b */
    public static Typeface m35578b(Context context, Typeface typeface, int i) {
        C0874c.C0876b a = f4093a.m35549a(typeface);
        if (a == null) {
            return null;
        }
        return f4093a.mo35551a(context, a, context.getResources(), i);
    }

    /* renamed from: b */
    public static Typeface m35577b(Resources resources, int i, int i2) {
        return f4094b.get(m35579a(resources, i, i2));
    }
}
