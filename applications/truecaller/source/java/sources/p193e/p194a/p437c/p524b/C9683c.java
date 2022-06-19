package p193e.p194a.p437c.p524b;

import android.content.SharedPreferences;
import com.truecaller.insights.network.adapter.CountryFeature;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p593s.p594a.AbstractC10688e;
import s1.u.i;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.b.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/b/c.class */
public final class C9683c implements AbstractC9682b {

    /* renamed from: a */
    public final Map<String, Boolean> f29266a;

    /* renamed from: b */
    public final SharedPreferences f29267b;

    /* renamed from: c */
    public final AbstractC10688e f29268c;

    /* renamed from: d */
    public final AbstractC9686e f29269d;

    /* renamed from: e */
    public final List<String> f29270e;

    @e(c = "com.truecaller.insights.state.FeatureControlPrefImpl", f = "FeatureControlPref.kt", l = {48}, m = "sync")
    /* renamed from: e.a.c.b.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/b/c$a.class */
    public static final class C9684a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29271d;

        /* renamed from: e */
        public int f29272e;

        /* renamed from: g */
        public Object f29274g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9684a(d dVar) {
            super(dVar);
            C9683c.this = r4;
        }

        /* renamed from: s */
        public final Object m27314s(Object obj) {
            this.f29271d = obj;
            this.f29272e |= Integer.MIN_VALUE;
            return C9683c.this.mo27315d(this);
        }
    }

    @Inject
    public C9683c(SharedPreferences sharedPreferences, AbstractC10688e abstractC10688e, AbstractC9686e abstractC9686e, @Named("insights_remote_keys") List<String> list) {
        l.e(sharedPreferences, "mPrefs");
        l.e(abstractC10688e, "featureControlRestAdapter");
        l.e(abstractC9686e, "insightsEnvironmentHelper");
        l.e(list, "insightsRemoteKeys");
        this.f29267b = sharedPreferences;
        this.f29268c = abstractC10688e;
        this.f29269d = abstractC9686e;
        this.f29270e = list;
        int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(list, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(m3942Y1 < 16 ? 16 : m3942Y1);
        for (Object obj : list) {
            linkedHashMap.put(obj, Boolean.valueOf(this.f29267b.getBoolean((String) obj, false)));
        }
        this.f29266a = i.b1(linkedHashMap);
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9682b
    /* renamed from: a */
    public boolean mo27318a(String str) {
        l.e(str, "remoteKey");
        Boolean bool = this.f29266a.get(str);
        return bool != null ? bool.booleanValue() : false;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9682b
    /* renamed from: b */
    public boolean mo27317b(String str) {
        l.e(str, "remoteKey");
        return this.f29266a.containsKey(str);
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9682b
    /* renamed from: c */
    public void mo27316c(List<CountryFeature> list) {
        l.e(list, "features");
        ArrayList<CountryFeature> arrayList = new ArrayList();
        for (Object obj : list) {
            if (this.f29266a.containsKey(((CountryFeature) obj).getName())) {
                arrayList.add(obj);
            }
        }
        for (CountryFeature countryFeature : arrayList) {
            this.f29267b.edit().putBoolean(countryFeature.getName(), countryFeature.isActive()).apply();
            this.f29266a.put(countryFeature.getName(), Boolean.valueOf(countryFeature.isActive()));
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:2|(2:4|(8:6|8|31|(2:10|(2:12|13)(2:14|15))(4:16|(3:18|19|(2:21|22)(1:23))|29|30)|24|(1:26)|29|30))|7|8|31|(0)(0)|24|(0)|29|30) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c8, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c9, code lost:
        p193e.p194a.p437c.p578p.C10480a.m26061I1(r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bd A[Catch: all -> 0x00c8, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00c8, blocks: (B:13:0x004f, B:18:0x0070, B:24:0x00b4, B:26:0x00bd), top: B:31:0x003f }] */
    @Override // p193e.p194a.p437c.p524b.AbstractC9682b
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27315d(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p524b.C9683c.mo27315d(s1.w.d):java.lang.Object");
    }
}
