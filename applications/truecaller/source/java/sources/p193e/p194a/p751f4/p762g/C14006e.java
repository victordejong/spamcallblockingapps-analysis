package p193e.p194a.p751f4.p762g;

import android.content.Context;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import e.m.f.a.j;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1342w4.C21212l;
import p193e.p194a.p751f4.p762g.C14012i;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p997k3.p998j.C16461b;
import s1.u.i;
import s1.z.c.l;
import x3.b;
/* renamed from: e.a.f4.g.e */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/e.class */
public final class C14006e {

    /* renamed from: a */
    public final Set<String> f40484a = new LinkedHashSet();

    /* renamed from: b */
    public final String f40485b;

    /* renamed from: c */
    public final UUID f40486c;

    /* renamed from: d */
    public final Context f40487d;

    /* renamed from: e */
    public final AbstractC19854f<AbstractC19463a0> f40488e;

    /* renamed from: f */
    public final AbstractC14835j f40489f;

    /* renamed from: g */
    public final AbstractC19462a f40490g;

    /* renamed from: h */
    public final AbstractC19321u f40491h;

    /* renamed from: i */
    public final AbstractC19222c f40492i;

    /* renamed from: j */
    public final AbstractC14537p f40493j;

    /* renamed from: k */
    public final j f40494k;

    public C14006e(String str, UUID uuid, Context context, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC14835j abstractC14835j, AbstractC19462a abstractC19462a, AbstractC19321u abstractC19321u, AbstractC19222c abstractC19222c, AbstractC14537p abstractC14537p, j jVar) {
        l.e(str, "searchSource");
        l.e(uuid, "searchId");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19854f, "eventsTracker");
        l.e(abstractC14835j, "filterManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19321u, "networkUtil");
        l.e(abstractC19222c, "clock");
        l.e(abstractC14537p, "tagDisplayUtil");
        l.e(jVar, "phoneNumberUtil");
        this.f40485b = str;
        this.f40486c = uuid;
        this.f40487d = context;
        this.f40488e = abstractC19854f;
        this.f40489f = abstractC14835j;
        this.f40490g = abstractC19462a;
        this.f40491h = abstractC19321u;
        this.f40492i = abstractC19222c;
        this.f40493j = abstractC14537p;
        this.f40494k = jVar;
    }

    /* renamed from: a */
    public final b<C14030t> m20869a() {
        if (!this.f40484a.isEmpty()) {
            Set<String> set = this.f40484a;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
            for (String str : set) {
                arrayList.add('*' + str);
            }
            return new C14005d((b<C14030t>) new C14012i.C14013a(C21212l.m10129a().m10124d(i.O(arrayList, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62), String.valueOf(24)), arrayList, true, true, true, this.f40494k), new C16461b(this.f40487d), true, this.f40488e, this.f40489f, (List<String>) arrayList, 24, this.f40485b, this.f40486c, (List<CharSequence>) null, this.f40490g, this.f40491h, this.f40492i, false, this.f40493j);
        }
        throw new IllegalStateException("No IM IDs to search for");
    }
}
