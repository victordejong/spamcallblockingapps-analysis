package p193e.p194a.p682e;

import android.text.TextUtils;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.data.entity.Contact;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p682e.AbstractC13291o0;
import p193e.p194a.p682e.p698c.C13091i1;
import p193e.p194a.p682e.p698c.C13165w1;
import s1.k;
import w3.c.a.a.a.h;
/* renamed from: e.a.e.g */
/* loaded from: classes15-dex2jar.jar:e/a/e/g.class */
public final /* synthetic */ class C13256g implements C13091i1.AbstractC13092a {

    /* renamed from: a */
    public final /* synthetic */ AbstractC13291o0 f38545a;

    /* renamed from: b */
    public final /* synthetic */ Contact f38546b;

    /* renamed from: c */
    public final /* synthetic */ String f38547c;

    /* renamed from: d */
    public final /* synthetic */ List f38548d;

    /* renamed from: e */
    public final /* synthetic */ String f38549e;

    /* renamed from: f */
    public final /* synthetic */ String f38550f;

    /* renamed from: g */
    public final /* synthetic */ boolean f38551g;

    /* renamed from: h */
    public final /* synthetic */ FiltersContract.Filters.WildCardType f38552h;

    /* renamed from: i */
    public final /* synthetic */ AbstractC13291o0.AbstractC13293b f38553i;

    public /* synthetic */ C13256g(AbstractC13291o0 abstractC13291o0, Contact contact, String str, List list, String str2, String str3, boolean z, FiltersContract.Filters.WildCardType wildCardType, AbstractC13291o0.AbstractC13293b abstractC13293b) {
        this.f38545a = abstractC13291o0;
        this.f38546b = contact;
        this.f38547c = str;
        this.f38548d = list;
        this.f38549e = str2;
        this.f38550f = str3;
        this.f38551g = z;
        this.f38552h = wildCardType;
        this.f38553i = abstractC13293b;
    }

    /* renamed from: a */
    public final void m21978a(String str, FiltersContract.Filters.EntityType entityType) {
        AbstractC13291o0 abstractC13291o0 = this.f38545a;
        Contact contact = this.f38546b;
        String str2 = this.f38547c;
        List<k<String, Integer>> list = this.f38548d;
        String str3 = this.f38549e;
        String str4 = this.f38550f;
        boolean z = this.f38551g;
        FiltersContract.Filters.WildCardType wildCardType = this.f38552h;
        AbstractC13291o0.AbstractC13293b abstractC13293b = this.f38553i;
        Objects.requireNonNull(abstractC13291o0);
        if (contact != null && !h.j(str)) {
            TrueApp.m36032b0().mo10154s().mo12497X0().mo11854a().mo20028a(contact, str, entityType == FiltersContract.Filters.EntityType.BUSINESS ? 2 : 1).mo11828g();
        }
        if (TextUtils.isEmpty(str)) {
            str = str2;
        }
        abstractC13291o0.m21949b(list, str3, str, str4, z, wildCardType, entityType, C2752R.string.BlockAddSuccess, null, abstractC13293b);
        abstractC13291o0.mo21948d(str);
        if (abstractC13293b != null) {
            ((C13165w1) abstractC13293b).m22002a(true);
        }
    }
}
