package p193e.p194a.p437c.p524b;

import android.content.Context;
import android.provider.Telephony;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.c.b.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/b/i.class */
public final class C9690i implements AbstractC9689h {

    /* renamed from: a */
    public final Context f29276a;

    /* renamed from: b */
    public final AbstractC19219a0 f29277b;

    /* renamed from: c */
    public final AbstractC8541a f29278c;

    @Inject
    public C9690i(Context context, AbstractC19219a0 abstractC19219a0, AbstractC8541a abstractC8541a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC8541a, "coreSettings");
        this.f29276a = context;
        this.f29277b = abstractC19219a0;
        this.f29278c = abstractC8541a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9689h
    /* renamed from: a */
    public String[] mo27301a() {
        return new String[]{"android.permission.READ_SMS", "android.permission.SEND_SMS", "android.permission.RECEIVE_SMS"};
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9689h
    /* renamed from: c */
    public boolean mo27300c() {
        return l.a(Telephony.Sms.getDefaultSmsPackage(this.f29276a), this.f29276a.getPackageName());
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9689h
    /* renamed from: d */
    public void mo27299d(Fragment fragment, String[] strArr, int i) {
        l.e(fragment, "fragment");
        l.e(strArr, "permissions");
        C19291g.m13555e1(fragment, strArr, i);
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9689h
    /* renamed from: e */
    public void mo27298e(String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        C19291g.m13608M0(strArr, iArr);
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9689h
    /* renamed from: f */
    public void mo27297f(Fragment fragment, String[] strArr, AbstractC25374b<String[]> abstractC25374b) {
        boolean z;
        l.e(fragment, "fragment");
        l.e(strArr, "permissions");
        l.e(abstractC25374b, "requestLauncher");
        int length = strArr.length;
        int i = 0;
        while (true) {
            z = false;
            if (i >= length) {
                break;
            }
            if (C19291g.m13502w0(fragment.requireActivity(), strArr[i])) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            C19291g.m13570Z0(fragment.requireContext());
        } else {
            abstractC25374b.mo3694a(strArr, null);
        }
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9689h
    /* renamed from: g */
    public boolean mo27296g() {
        return this.f29277b.mo13825h("android.permission.READ_SMS");
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9689h
    /* renamed from: h */
    public boolean mo27295h() {
        return Telephony.Sms.getDefaultSmsPackage(this.f29276a) == null;
    }
}
