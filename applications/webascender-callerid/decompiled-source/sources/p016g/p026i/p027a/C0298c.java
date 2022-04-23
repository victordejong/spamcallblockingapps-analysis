package p016g.p026i.p027a;

import android.content.Context;
import android.util.Log;
import g.i.a.e;
import g.i.a.f;
import java.util.Locale;
import p016g.p026i.p027a.AbstractC0300d;
import p016g.p026i.p027a.C0296b;
/* renamed from: g.i.a.c */
/* loaded from: classes2-dex2jar.jar:g/i/a/c.class */
public class C0298c {

    /* renamed from: a */
    private static C0296b.EnumC0297a f620a;

    /* renamed from: g.i.a.c$a */
    /* loaded from: classes2-dex2jar.jar:g/i/a/c$a.class */
    static /* synthetic */ class C0299a {

        /* renamed from: a */
        static final /* synthetic */ int[] f621a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[C0296b.EnumC0297a.values().length];
            f621a = iArr;
            try {
                iArr[C0296b.EnumC0297a.Picasso252.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f621a[C0296b.EnumC0297a.Picasso271828.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: a */
    public static AbstractC0300d.AbstractC0301a m491a(Context context) {
        int i = C0299a.f621a[m490b().ordinal()];
        if (i == 1) {
            return new e.b(context);
        }
        if (i == 2) {
            return new f.b(context);
        }
        throw new RuntimeException("Add Picasso to your project");
    }

    /* renamed from: b */
    private static C0296b.EnumC0297a m490b() {
        if (f620a == null) {
            f620a = C0296b.m493a();
            Log.d("PicassoCompat", String.format(Locale.ENGLISH, "Picasso detected: '%s'", f620a));
        }
        return f620a;
    }

    /* renamed from: c */
    public static AbstractC0300d m489c(Context context) {
        int i = C0299a.f621a[m490b().ordinal()];
        if (i == 1) {
            return new e(context);
        }
        if (i == 2) {
            return new f();
        }
        throw new RuntimeException("Add Picasso to your project");
    }
}
