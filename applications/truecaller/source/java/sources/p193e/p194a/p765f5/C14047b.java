package p193e.p194a.p765f5;

import android.content.Context;
import android.content.Intent;
import androidx.appcompat.app.AlertController;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.log.AssertionUtil;
import com.truecaller.swish.C4591R;
import com.truecaller.swish.deeplink.data.SwishDto;
import com.truecaller.swish.deeplink.data.SwishNumberDto;
import com.truecaller.swish.deeplink.data.SwishResultDto;
import com.truecaller.swish.deeplink.data.SwishStringDto;
import com.truecaller.swish.p182ui.input.SwishInputActivity;
import e.m.e.f0.a;
import e.m.e.k;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Type;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;
import javax.inject.Inject;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p765f5.p769h.p771b.C14068b;
import p193e.p194a.p765f5.p772i.C14070b;
import s1.f0.r;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.f5.b */
/* loaded from: classes14-dex2jar.jar:e/a/f5/b.class */
public final class C14047b implements AbstractC14046a {

    /* renamed from: a */
    public final k f40617a = new k();

    /* renamed from: b */
    public final C20592g f40618b;

    /* renamed from: c */
    public final C14070b f40619c;

    /* renamed from: d */
    public final AbstractC8432l f40620d;

    /* renamed from: e */
    public final AbstractC8541a f40621e;

    /* renamed from: f */
    public final AbstractC19223c0 f40622f;

    /* renamed from: e.a.f5.b$a */
    /* loaded from: classes14-dex2jar.jar:e/a/f5/b$a.class */
    public static final class C14048a extends a<SwishResultDto> {
    }

    @Inject
    public C14047b(C20592g c20592g, C14070b c14070b, AbstractC8432l abstractC8432l, AbstractC8541a abstractC8541a, AbstractC19223c0 abstractC19223c0) {
        l.e(c20592g, "featuresRegistry");
        l.e(c14070b, "swishAppDataManager");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19223c0, "resourceProvider");
        this.f40618b = c20592g;
        this.f40619c = c14070b;
        this.f40620d = abstractC8432l;
        this.f40621e = abstractC8541a;
        this.f40622f = abstractC19223c0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004d, code lost:
        if (mo20817d(r4) != null) goto L15;
     */
    @Override // p193e.p194a.p765f5.AbstractC14046a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.truecaller.data.entity.Number> mo20820a(java.util.List<? extends com.truecaller.data.entity.Number> r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "numbers"
            s1.z.c.l.e(r0, r1)
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r6 = r0
        L15:
            r0 = r6
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L67
            r0 = r6
            java.lang.Object r0 = r0.next()
            r7 = r0
            r0 = r7
            com.truecaller.data.entity.Number r0 = (com.truecaller.data.entity.Number) r0
            java.lang.String r0 = r0.m35479e()
            r4 = r0
            r0 = 1
            r8 = r0
            r0 = r4
            if (r0 == 0) goto L53
            r0 = r4
            boolean r0 = s1.f0.r.p(r0)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L42
            goto L44
        L42:
            r0 = 0
            r4 = r0
        L44:
            r0 = r4
            if (r0 == 0) goto L53
            r0 = r3
            r1 = r4
            java.lang.String r0 = r0.mo20817d(r1)
            if (r0 == 0) goto L53
            goto L56
        L53:
            r0 = 0
            r8 = r0
        L56:
            r0 = r8
            if (r0 == 0) goto L15
            r0 = r5
            r1 = r7
            boolean r0 = r0.add(r1)
            goto L15
        L67:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p765f5.C14047b.mo20820a(java.util.List):java.util.List");
    }

    @Override // p193e.p194a.p765f5.AbstractC14046a
    /* renamed from: b */
    public void mo20819b(Context context, Contact contact, List<? extends Number> list, AvatarXConfig avatarXConfig) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(list, "numbers");
        l.e(avatarXConfig, "avatarXConfig");
        if (list.isEmpty()) {
            return;
        }
        if (list.size() <= 1) {
            m20812i(context, contact, ((Number) i.B(list)).m35479e(), avatarXConfig);
            return;
        }
        g$a g_a = new g$a(context);
        g_a.m3656m(C4591R.string.swish_number_picker_title);
        C14068b c14068b = new C14068b(context, list, this.f40622f);
        DialogInterface$OnClickListenerC14049c dialogInterface$OnClickListenerC14049c = new DialogInterface$OnClickListenerC14049c(this, context, contact, list, avatarXConfig);
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f168r = c14068b;
        c0037b.f169s = dialogInterface$OnClickListenerC14049c;
        g_a.m3652q();
    }

    @Override // p193e.p194a.p765f5.AbstractC14046a
    /* renamed from: c */
    public boolean mo20818c() {
        return this.f40621e.getBoolean("swish_flash_enabled", true);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a5  */
    @Override // p193e.p194a.p765f5.AbstractC14046a
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo20817d(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p765f5.C14047b.mo20817d(java.lang.String):java.lang.String");
    }

    @Override // p193e.p194a.p765f5.AbstractC14046a
    /* renamed from: e */
    public void mo20816e(boolean z) {
        this.f40621e.putBoolean("swish_flash_enabled", z);
    }

    @Override // p193e.p194a.p765f5.AbstractC14046a
    /* renamed from: f */
    public boolean mo20815f(String str) {
        l.e(str, "number");
        return C14050d.f40629b.d(str);
    }

    @Override // p193e.p194a.p765f5.AbstractC14046a
    /* renamed from: g */
    public SwishResultDto mo20814g(String str) {
        SwishResultDto swishResultDto;
        l.e(str, "rawResult");
        try {
            String decode = URLDecoder.decode(str, StringConstant.UTF8);
            k kVar = this.f40617a;
            l.d(decode, "decodedResult");
            Type type = new C14048a().getType();
            l.d(type, "object : TypeToken<T>() {}.type");
            Object g = kVar.g(decode, type);
            l.d(g, "this.fromJson(json, typeToken<T>())");
            swishResultDto = (SwishResultDto) g;
        } catch (Exception e) {
            AssertionUtil.report("Cannot parse Swish payment result");
            swishResultDto = null;
        }
        return swishResultDto;
    }

    @Override // p193e.p194a.p765f5.AbstractC14046a
    /* renamed from: h */
    public String mo20813h(String str, double d, String str2) {
        String str3;
        l.e(str, "payee");
        l.e(str2, "message");
        SwishDto swishDto = new SwishDto(new SwishStringDto(str, false), new SwishNumberDto(d, false), new SwishStringDto(str2, false));
        try {
            String encode = URLEncoder.encode("truecaller://swish", StringConstant.UTF8);
            str3 = "swish://payment?data=" + URLEncoder.encode(this.f40617a.m(swishDto), StringConstant.UTF8) + "&callbackurl=" + encode + "&callbackresultparameter=result";
        } catch (UnsupportedEncodingException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            str3 = null;
        }
        return str3;
    }

    /* renamed from: i */
    public final void m20812i(Context context, Contact contact, String str, AvatarXConfig avatarXConfig) {
        if (str == null || r.p(str)) {
            return;
        }
        Intent intent = new Intent(context, SwishInputActivity.class);
        intent.putExtra("payee_number", str);
        intent.putExtra("payee_contact", contact);
        intent.putExtra("payee_avatarx_config", avatarXConfig);
        context.startActivity(intent);
    }

    @Override // p193e.p194a.p765f5.AbstractC14046a
    public boolean isEnabled() {
        boolean z;
        if (this.f40619c.m20796a()) {
            C20592g c20592g = this.f40618b;
            if (c20592g.f57696A.m10941a(c20592g, C20592g.f57695p6[23]).isEnabled() && this.f40620d.mo28580d()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
