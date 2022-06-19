package p046g.p056i.p057a;

import android.content.Context;
import android.util.Log;
import g.i.a.e;
import g.i.a.f;
import java.util.Locale;
import p046g.p056i.p057a.AbstractC1968d;
import p046g.p056i.p057a.C1964b;
/* renamed from: g.i.a.c */
/* loaded from: classes2-dex2jar.jar:g/i/a/c.class */
public class C1966c {

    /* renamed from: a */
    private static C1964b.EnumC1965a f5299a;

    /* renamed from: g.i.a.c$a */
    /* loaded from: classes2-dex2jar.jar:g/i/a/c$a.class */
    static /* synthetic */ class C1967a {

        /* renamed from: a */
        static final /* synthetic */ int[] f5300a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[C1964b.EnumC1965a.values().length];
            f5300a = iArr;
            try {
                iArr[C1964b.EnumC1965a.Picasso252.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5300a[C1964b.EnumC1965a.Picasso271828.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: a */
    public static AbstractC1968d.AbstractC1969a m491a(Context context) {
        int i = C1967a.f5300a[m490b().ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new RuntimeException("Add Picasso to your project");
            }
            return new f.b(context);
        }
        return new e.b(context);
    }

    /* renamed from: b */
    private static C1964b.EnumC1965a m490b() {
        if (f5299a == null) {
            f5299a = C1964b.m493a();
            Log.d("PicassoCompat", String.format(Locale.ENGLISH, "Picasso detected: '%s'", f5299a));
        }
        return f5299a;
    }

    /* renamed from: c */
    public static AbstractC1968d m489c(Context context) {
        int i = C1967a.f5300a[m490b().ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new RuntimeException("Add Picasso to your project");
            }
            return new f();
        }
        return new e(context);
    }
}
