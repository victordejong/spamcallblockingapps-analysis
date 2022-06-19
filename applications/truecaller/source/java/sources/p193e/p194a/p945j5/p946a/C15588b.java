package p193e.p194a.p945j5.p946a;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.SupportMessenger;
import java.net.URLEncoder;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p997k3.p1000l.C16496d;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.j5.a.b */
/* loaded from: classes14-dex2jar.jar:e/a/j5/a/b.class */
public final class C15588b implements AbstractC15587a {

    /* renamed from: a */
    public final String f44090a = SupportMessenger.WHATSAPP;

    /* renamed from: b */
    public final g f44091b = C25225a.m3978P1(new C15589a());

    /* renamed from: c */
    public final g f44092c = C25225a.m3978P1(new C15590b());

    /* renamed from: d */
    public final Context f44093d;

    /* renamed from: e */
    public final AbstractC19230g f44094e;

    /* renamed from: e.a.j5.a.b$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j5/a/b$a.class */
    public static final class C15589a extends m implements a<Drawable> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15589a() {
            super(0);
            C15588b.this = r4;
        }

        public Object invoke() {
            Drawable applicationIcon = C15588b.this.f44093d.getPackageManager().getApplicationIcon(C15588b.this.f44090a);
            l.d(applicationIcon, "context.packageManager.g…licationIcon(packageName)");
            return applicationIcon;
        }
    }

    /* renamed from: e.a.j5.a.b$b */
    /* loaded from: classes14-dex2jar.jar:e/a/j5/a/b$b.class */
    public static final class C15590b extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15590b() {
            super(0);
            C15588b.this = r4;
        }

        public Object invoke() {
            return C15588b.this.f44093d.getPackageManager().getApplicationInfo(C15588b.this.f44090a, 0).loadLabel(C15588b.this.f44093d.getPackageManager()).toString();
        }
    }

    @Inject
    public C15588b(Context context, AbstractC19230g abstractC19230g) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f44093d = context;
        this.f44094e = abstractC19230g;
    }

    /* renamed from: a */
    public C16496d m18601a(String str, String str2) {
        C16496d c16496d;
        l.e(str, "normalizedNumber");
        l.e(str2, "message");
        if (this.f44094e.mo13772y(this.f44090a)) {
            String str3 = (String) this.f44092c.getValue();
            Drawable drawable = (Drawable) this.f44091b.getValue();
            StringBuilder m8692L = C22128a.m8692L("https://api.whatsapp.com/send?phone=", str, "&text=");
            m8692L.append(URLEncoder.encode(str2, StringConstant.UTF8));
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(m8692L.toString()));
            intent.setPackage(this.f44090a);
            intent.setFlags(268435456);
            c16496d = new C16496d(str3, drawable, intent, this.f44090a, (String) this.f44092c.getValue());
        } else {
            c16496d = null;
        }
        return c16496d;
    }
}
