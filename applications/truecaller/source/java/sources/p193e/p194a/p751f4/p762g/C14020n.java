package p193e.p194a.p751f4.p762g;

import android.content.Context;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.log.AssertionUtil;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1342w4.C21212l;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p751f4.p764i.AsyncTaskC14038b;
import p193e.p194a.p997k3.p998j.C16461b;
import s1.z.c.l;
import x3.b;
/* renamed from: e.a.f4.g.n */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/n.class */
public final class C14020n implements AsyncTaskC14038b.AbstractC14039a<C14030t> {

    /* renamed from: a */
    public String f40538a = "";

    /* renamed from: b */
    public int f40539b = 999;

    /* renamed from: c */
    public final Context f40540c;

    /* renamed from: d */
    public final UUID f40541d;

    /* renamed from: e */
    public final String f40542e;

    public C14020n(Context context, UUID uuid, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(uuid, "searchId");
        l.e(str, "searchSource");
        this.f40540c = context;
        this.f40541d = uuid;
        this.f40542e = str;
    }

    /* renamed from: a */
    public final C14030t m20847a() throws IOException {
        AssertionUtil.isTrue(this.f40539b != 999, "You must specify a search type");
        AssertionUtil.isTrue(!TextUtils.isEmpty(this.f40538a), "You must specify a search query");
        b<ContactDto> m10126b = C21212l.m10129a().m10126b(this.f40538a, String.valueOf(this.f40539b));
        Context applicationContext = this.f40540c.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        l.d(mo10154s, "(context.applicationCont…GraphHolder).objectsGraph");
        C14005d c14005d = new C14005d((b<C14030t>) new C14021o(m10126b, this.f40538a, true, true, this.f40539b, this.f40541d, AbstractC8371e.C8372a.f25732a, mo10154s.mo12239q3()), new C16461b(this.f40540c), true, mo10154s.mo12217s(), mo10154s.mo12670K2(), this.f40538a, this.f40539b, this.f40542e, this.f40541d, (List<CharSequence>) null, mo10154s.mo12776C4(), mo10154s.mo12725G1(), mo10154s.mo11637k(), false, mo10154s.mo12619O());
        StringBuilder m8728C = C22128a.m8728C("Constructed search call(s) for ");
        m8728C.append(this.f40538a);
        m8728C.append(", ");
        m8728C.append(c14005d);
        m8728C.toString();
        return (C14030t) c14005d.execute().b;
    }
}
