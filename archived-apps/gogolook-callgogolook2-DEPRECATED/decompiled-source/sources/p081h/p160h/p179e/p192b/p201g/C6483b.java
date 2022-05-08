package p081h.p160h.p179e.p192b.p201g;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import com.gogolook.whoscallsdk.p051ml.model.ModelType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;
import p081h.p160h.p179e.p192b.C6442a;
import p081h.p160h.p179e.p192b.C6443b;
import p081h.p160h.p179e.p192b.p197f.C6465b;
import p081h.p203i.p325c.p373y.p374a.C10009a;
import p626l.C14986p;
import p626l.p634w.AbstractC15044d;
import p626l.p640y.C15085b;
import p626l.p641z.p643d.C15149k;
import p646n.p649b.p650a.C15203c;
/* renamed from: h.h.e.b.g.b */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/g/b.class */
public final class C6483b implements AbstractC6482a<C15203c> {
    @Override // p081h.p160h.p179e.p192b.p201g.AbstractC6482a
    /* renamed from: a */
    public Object mo22478a(Context context, C6465b bVar, AbstractC15044d<? super C15203c> dVar) {
        C10009a e;
        String country;
        Locale locale;
        C15203c cVar = null;
        try {
            Locale locale2 = Locale.TAIWAN;
            C15149k.m383a((Object) locale2, "Locale.TAIWAN");
            country = locale2.getCountry();
            C15149k.m383a((Object) country, "Locale.TAIWAN.country");
            locale = Locale.ROOT;
            C15149k.m383a((Object) locale, "Locale.ROOT");
        } catch (C10009a e2) {
            e = e2;
        }
        if (country != null) {
            String lowerCase = country.toLowerCase(locale);
            C15149k.m383a((Object) lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            AssetManager assets = context.getAssets();
            InputStream open = assets.open(C6443b.f16063b.m22553b(ModelType.SmsFilterLocal.INSTANCE, lowerCase) + ".tflite");
            C15149k.m383a((Object) open, "context.assets.open(\"${F…n)}.tflite\"\n            )");
            byte[] a = C15085b.m450a(open);
            ByteBuffer order = ByteBuffer.allocateDirect(a.length).order(ByteOrder.nativeOrder());
            order.put(a);
            cVar = new C15203c(order);
            try {
                C6442a.m22561a(this);
            } catch (C10009a e3) {
                e = e3;
                String a2 = C6442a.m22561a(this);
                Log.e(a2, "Exception : " + e);
                return cVar;
            }
            return cVar;
        }
        throw new C14986p("null cannot be cast to non-null type java.lang.String");
    }
}
