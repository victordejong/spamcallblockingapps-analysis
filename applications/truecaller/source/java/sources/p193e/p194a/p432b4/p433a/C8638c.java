package p193e.p194a.p432b4.p433a;

import android.content.Context;
import com.mopub.mobileads.resource.DrawableConstants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import p193e.p1482g.p1483a.AbstractC22640d;
import p193e.p1482g.p1483a.AbstractC22646h;
import p193e.p1482g.p1483a.C22638c;
import p193e.p1482g.p1483a.C22644g;
import p193e.p194a.p437c.p578p.C10480a;
import s1.f0.r;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.b4.a.c */
/* loaded from: classes10-dex2jar.jar:e/a/b4/a/c.class */
public class C8638c {

    /* renamed from: e */
    public static a<Locale> f26493e;

    /* renamed from: f */
    public static a<Boolean> f26494f;

    /* renamed from: g */
    public static volatile C8638c f26495g;

    /* renamed from: a */
    public final AbstractC22640d f26497a = new C22638c(DrawableConstants.CtaButton.WIDTH_DIPS, 0.75d);

    /* renamed from: b */
    public final AbstractC22646h<String> f26498b = new C22644g(4, 0.75d);

    /* renamed from: c */
    public final a<Boolean> f26499c;

    /* renamed from: h */
    public static final C8639a f26496h = new C8639a(null);

    /* renamed from: d */
    public static final Map<String, C8638c> f26492d = new LinkedHashMap();

    /* renamed from: e.a.b4.a.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/b4/a/c$a.class */
    public static final class C8639a {
        public C8639a(f fVar) {
        }

        /* renamed from: a */
        public final C8638c m28165a(Context context) {
            l.e(context, AnalyticsConstants.CONTEXT);
            if (C8638c.f26495g == null) {
                synchronized (d0.a(C8638c.class)) {
                    if (C8638c.f26495g == null) {
                        C8638c.f26495g = C10480a.m26063I(null, 1);
                    }
                }
            }
            C8638c c8638c = C8638c.f26495g;
            l.c(c8638c);
            return c8638c;
        }
    }

    public C8638c(a<Boolean> aVar) {
        l.e(aVar, "isRtl");
        this.f26499c = aVar;
    }

    /* renamed from: a */
    public final void m28169a(char c, String str) {
        l.e(str, "letters");
        m28168b(c, str, str);
    }

    /* renamed from: b */
    public final void m28168b(char c, String str, String str2) {
        l.e(str, "letters");
        if (str2 != null) {
            this.f26498b.mo7996J(c, r.t(str2, StringConstant.SPACE, "", false, 4));
        }
        String t = r.t(str, StringConstant.SPACE, "", false, 4);
        int length = t.length();
        for (int i = 0; i < length; i++) {
            char charAt = t.charAt(i);
            this.f26497a.mo8005P(Character.toUpperCase(charAt), c);
            this.f26497a.mo8005P(Character.toLowerCase(charAt), c);
        }
    }

    /* renamed from: c */
    public String m28167c(char c) {
        String mo7995i2 = this.f26498b.mo7995i2(c);
        if (mo7995i2 != null) {
            String str = mo7995i2;
            if (((Boolean) this.f26499c.invoke()).booleanValue()) {
                StringBuilder sb = new StringBuilder();
                int length = mo7995i2.length();
                for (int i = 0; i < length; i++) {
                    sb.append(mo7995i2.charAt(i));
                    sb.append((char) 0);
                }
                str = sb.reverse().toString();
            }
            return str;
        }
        return null;
    }

    /* renamed from: d */
    public char m28166d(char c) {
        return this.f26497a.mo8004t0(c, c);
    }
}
