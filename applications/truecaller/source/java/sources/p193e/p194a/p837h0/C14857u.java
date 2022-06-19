package p193e.p194a.p837h0;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.filters.sync.TopSpammer;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.TreeSet;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p195a.p279r0.AbstractC7201a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p837h0.p845x.AbstractC14884h;
import p193e.p194a.p837h0.p845x.C14882f;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.f0.q;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import x3.a0;
/* renamed from: e.a.h0.u */
/* loaded from: classes9-dex2jar.jar:e/a/h0/u.class */
public class C14857u implements AbstractC14856t {

    /* renamed from: a */
    public final AbstractC14840m f42467a;

    /* renamed from: b */
    public final ContentResolver f42468b;

    /* renamed from: c */
    public final f f42469c;

    /* renamed from: d */
    public final AbstractC7201a f42470d;

    /* renamed from: e */
    public final AbstractC14884h f42471e;

    /* renamed from: f */
    public final AbstractC8621z f42472f;

    /* renamed from: g */
    public final C8601l0 f42473g;

    /* renamed from: h */
    public final AbstractC17197v0 f42474h;

    @e(c = "com.truecaller.filters.TopSpammerRepositoryImpl$syncTopSpammersAsync$1", f = "TopSpammerRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.h0.u$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/u$a.class */
    public static final class C14858a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14858a(d dVar) {
            super(2, dVar);
            C14857u.this = r5;
        }

        /* renamed from: i */
        public final d<s> m19517i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14858a(dVar);
        }

        /* renamed from: k */
        public final Object m19516k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14857u c14857u = C14857u.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c14857u.mo19523b();
            return sVar;
        }

        /* renamed from: s */
        public final Object m19515s(Object obj) {
            C25225a.m3932a3(obj);
            C14857u.this.mo19523b();
            return s.a;
        }
    }

    @Inject
    public C14857u(AbstractC14840m abstractC14840m, ContentResolver contentResolver, f fVar, AbstractC7201a abstractC7201a, AbstractC14884h abstractC14884h, AbstractC8621z abstractC8621z, C8601l0 c8601l0, AbstractC17197v0 abstractC17197v0) {
        l.e(abstractC14840m, "filterSettings");
        l.e(contentResolver, "contentResolver");
        l.e(fVar, "async");
        l.e(abstractC7201a, "spamSearchTrigger");
        l.e(abstractC14884h, "restApi");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC17197v0, "premiumStateSettings");
        this.f42467a = abstractC14840m;
        this.f42468b = contentResolver;
        this.f42469c = fVar;
        this.f42470d = abstractC7201a;
        this.f42471e = abstractC14884h;
        this.f42472f = abstractC8621z;
        this.f42473g = c8601l0;
        this.f42474h = abstractC17197v0;
    }

    @Override // p193e.p194a.p837h0.AbstractC14856t
    /* renamed from: a */
    public void mo19524a(String str, String str2, int i, List<Long> list) {
        l.e(str2, "number");
        l.e(list, "categories");
        m19520e(m19519f(C25225a.m3962T1(new TopSpammer(this.f42472f.mo28181j(str2), str, Integer.valueOf(i), list, null, 16, null))));
    }

    @Override // p193e.p194a.p837h0.AbstractC14856t
    /* renamed from: b */
    public boolean mo19523b() {
        C14882f c14882f;
        List<TopSpammer> list;
        C14882f c14882f2;
        List<TopSpammer> list2;
        int mo19551q = this.f42474h.mo16408H() ? this.f42467a.mo19551q() : this.f42467a.mo19556l();
        a0 m15210p0 = C18334g0.m15210p0(this.f42471e.m19493a(mo19551q, "caller"));
        if (m15210p0 != null) {
            if (!m15210p0.b()) {
                m15210p0 = null;
            }
            if (m15210p0 == null || (c14882f = (C14882f) m15210p0.b) == null || (list = c14882f.f42555a) == null) {
                return false;
            }
            a0 m15210p02 = C18334g0.m15210p0(this.f42471e.m19493a(mo19551q, TokenResponseDto.METHOD_SMS));
            if (m15210p02 == null) {
                return false;
            }
            if (!m15210p02.b()) {
                m15210p02 = null;
            }
            if (m15210p02 == null || (c14882f2 = (C14882f) m15210p02.b) == null || (list2 = c14882f2.f42555a) == null) {
                return false;
            }
            List l0 = s1.u.i.l0(list, list2);
            l.e(l0, "$this$toSortedSet");
            TreeSet treeSet = new TreeSet();
            s1.u.i.P0(l0, treeSet);
            Collection<ContentValues> m19519f = m19519f(treeSet);
            this.f42468b.delete(C17891a1.C17902k.m15660M(), null, null);
            m19520e(m19519f);
            this.f42467a.mo19564d(this.f42473g.m28258c());
            this.f42470d.mo30000a();
            return true;
        }
        return false;
    }

    @Override // p193e.p194a.p837h0.AbstractC14856t
    /* renamed from: c */
    public TopSpammer mo19522c(String str) {
        l.e(str, "phoneNumber");
        Cursor query = this.f42468b.query(C17891a1.C17902k.m15660M(), null, "value = ?", new String[]{str}, null);
        if (query != null) {
            try {
                if (!query.moveToFirst()) {
                    th = null;
                    return null;
                }
                l.d(query, "cursor");
                th = null;
                return m19518g(query);
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                    C25225a.m4016G(query, th);
                }
            }
        }
        return null;
    }

    @Override // p193e.p194a.p837h0.AbstractC14856t
    /* renamed from: d */
    public void mo19521d() {
        s1.a.a.a.v0.f.d.w2(h1.a, this.f42469c, (j0) null, new C14858a(null), 2, (Object) null);
    }

    /* renamed from: e */
    public final void m19520e(Collection<ContentValues> collection) {
        ContentResolver contentResolver = this.f42468b;
        Uri m15660M = C17891a1.C17902k.m15660M();
        Object[] array = collection.toArray(new ContentValues[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        int bulkInsert = contentResolver.bulkInsert(m15660M, (ContentValues[]) array);
        boolean z = bulkInsert == collection.size();
        StringBuilder m8728C = C22128a.m8728C("Unexpected # of spammers added, got ");
        m8728C.append(collection.size());
        m8728C.append(", added ");
        m8728C.append(bulkInsert);
        AssertionUtil.OnlyInDebug.isTrue(z, m8728C.toString());
    }

    /* renamed from: f */
    public final Collection<ContentValues> m19519f(Collection<TopSpammer> collection) {
        ArrayList arrayList = new ArrayList(C25225a.m4004J(collection, 10));
        for (TopSpammer topSpammer : collection) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", topSpammer.getValue());
            contentValues.put("label", topSpammer.getLabel());
            contentValues.put("count", topSpammer.getReports());
            List<Long> categories = topSpammer.getCategories();
            contentValues.put("spam_categories", categories != null ? s1.u.i.O(categories, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62) : null);
            contentValues.put("spam_version", topSpammer.getVersion());
            boolean z = true;
            AssertionUtil.isTrue(!TextUtils.isEmpty(contentValues.getAsString("value")), new String[0]);
            if (contentValues.getAsLong("count").longValue() < 0) {
                z = false;
            }
            AssertionUtil.isTrue(z, new String[0]);
            arrayList.add(contentValues);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* renamed from: g */
    public final TopSpammer m19518g(Cursor cursor) {
        TopSpammer topSpammer;
        s1.u.s sVar;
        try {
            String string = cursor.getString(cursor.getColumnIndexOrThrow("label"));
            String string2 = cursor.getString(cursor.getColumnIndexOrThrow("value"));
            int i = cursor.getInt(cursor.getColumnIndexOrThrow("count"));
            String string3 = cursor.getString(cursor.getColumnIndexOrThrow("spam_categories"));
            if (string3 != null) {
                List<String> U = v.U(string3, new String[]{","}, false, 0, 6);
                sVar = new ArrayList();
                for (String str : U) {
                    Long j = q.j(str);
                    if (j != null) {
                        sVar.add(j);
                    }
                }
            } else {
                sVar = s1.u.s.a;
            }
            Integer valueOf = Integer.valueOf(cursor.getColumnIndexOrThrow("spam_version"));
            if (Boolean.valueOf(cursor.isNull(valueOf.intValue())).booleanValue()) {
                valueOf = null;
            }
            topSpammer = new TopSpammer(string2, string, Integer.valueOf(i), sVar, valueOf != null ? Integer.valueOf(cursor.getInt(valueOf.intValue())) : null);
        } catch (IllegalAccessException e) {
            C10480a.m26057J1(e, "could not read top spammer from db");
            topSpammer = null;
        }
        return topSpammer;
    }
}
