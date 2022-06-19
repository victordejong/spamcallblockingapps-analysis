package p193e.p194a.p751f4.p762g;

import android.text.TextUtils;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.Tag;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import org.apache.avro.AvroRuntimeException;
import p193e.p194a.p1050l5.p1051a.C17517e4;
import p193e.p194a.p1050l5.p1051a.C17589i4;
import p193e.p194a.p1050l5.p1051a.C17654m3;
import p193e.p194a.p1050l5.p1051a.C17822y1;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p997k3.p998j.C16461b;
import w3.c.a.a.a.h;
import x3.a0;
import x3.b;
/* renamed from: e.a.f4.g.d */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/d.class */
public class C14005d extends AbstractC14003b<C14030t> {

    /* renamed from: b */
    public final C16461b f40470b;

    /* renamed from: c */
    public final boolean f40471c;

    /* renamed from: d */
    public final AbstractC19854f<AbstractC19463a0> f40472d;

    /* renamed from: e */
    public final AbstractC14835j f40473e;

    /* renamed from: f */
    public final List<String> f40474f;

    /* renamed from: g */
    public final int f40475g;

    /* renamed from: h */
    public final String f40476h;

    /* renamed from: i */
    public final UUID f40477i;

    /* renamed from: j */
    public final AbstractC19462a f40478j;

    /* renamed from: k */
    public final AbstractC19321u f40479k;

    /* renamed from: l */
    public final AbstractC19222c f40480l;

    /* renamed from: m */
    public final List<CharSequence> f40481m;

    /* renamed from: n */
    public final AbstractC14537p f40482n;

    /* renamed from: o */
    public final boolean f40483o;

    public C14005d(b<C14030t> bVar, C16461b c16461b, boolean z, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC14835j abstractC14835j, String str, int i, String str2, UUID uuid, List<CharSequence> list, AbstractC19462a abstractC19462a, AbstractC19321u abstractC19321u, AbstractC19222c abstractC19222c, boolean z2, AbstractC14537p abstractC14537p) {
        super(bVar);
        this.f40470b = c16461b;
        this.f40471c = z;
        this.f40472d = abstractC19854f;
        this.f40473e = abstractC14835j;
        ArrayList arrayList = new ArrayList();
        this.f40474f = arrayList;
        this.f40475g = i;
        this.f40476h = str2;
        this.f40477i = uuid;
        this.f40481m = list;
        this.f40478j = abstractC19462a;
        this.f40479k = abstractC19321u;
        this.f40480l = abstractC19222c;
        this.f40483o = z2;
        this.f40482n = abstractC14537p;
        arrayList.add(str);
    }

    public C14005d(b<C14030t> bVar, C16461b c16461b, boolean z, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC14835j abstractC14835j, List<String> list, int i, String str, UUID uuid, List<CharSequence> list2, AbstractC19462a abstractC19462a, AbstractC19321u abstractC19321u, AbstractC19222c abstractC19222c, boolean z2, AbstractC14537p abstractC14537p) {
        super(bVar);
        this.f40470b = c16461b;
        this.f40471c = z;
        this.f40472d = abstractC19854f;
        this.f40473e = abstractC14835j;
        this.f40474f = list;
        this.f40475g = i;
        this.f40476h = str;
        this.f40477i = uuid;
        this.f40481m = list2;
        this.f40478j = abstractC19462a;
        this.f40479k = abstractC19321u;
        this.f40480l = abstractC19222c;
        this.f40483o = z2;
        this.f40482n = abstractC14537p;
    }

    /* renamed from: b */
    public final void m20873b(C17654m3.C17656b c17656b, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        FilterMatch mo19591e = this.f40473e.mo19591e(str);
        c17656b.m15885f(Boolean.valueOf(mo19591e.m35813a()));
        c17656b.m15884g(Boolean.valueOf(mo19591e.m35811c()));
        c17656b.m15886e(Boolean.valueOf(mo19591e.m35812b()));
    }

    /* renamed from: c */
    public final void m20872c(Collection<Contact> collection, List<C17517e4> list, Set<String> set, boolean z) throws AvroRuntimeException {
        for (Contact contact : collection) {
            String str = null;
            for (Number number : contact.m35557M()) {
                if ((1 & number.f11564a) != 0) {
                    str = number.m35478f();
                }
            }
            Contact contact2 = contact;
            if (this.f40471c) {
                contact2 = contact;
                if (!C16461b.m17357o(contact)) {
                    Contact m17360l = this.f40470b.m17360l(contact);
                    contact2 = contact;
                    if (m17360l != null) {
                        if (contact.m35542V() == null) {
                            C10480a.m26045M1("[AppSearchLoggingCall] fillEntitiesBySearchResult searchQuery is null");
                        }
                        m17360l.m35541V0(contact.m35542V());
                        contact2 = m17360l;
                    }
                }
            }
            C17654m3.C17656b m15891a = C17654m3.m15891a();
            C17891a1.C17902k.m15637W0(m15891a, contact2, null);
            m15891a.m15889b(!contact2.m35570C0());
            m15891a.m15887d((contact2.getSource() & 2) != 0);
            boolean z2 = false;
            if ((contact2.getSource() & 64) != 0) {
                z2 = true;
            }
            m15891a.m15888c(Boolean.valueOf(z2));
            m15891a.m15883h(Integer.valueOf(contact2.m35533a0()));
            m15891a.m15882i(Boolean.valueOf(contact2.m35574A0()));
            m20873b(m15891a, contact2.m35542V());
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (Tag tag : contact2.m35524d0()) {
                if (tag.getSource() == 1) {
                    arrayList.add(tag.getValue());
                } else {
                    arrayList2.add(tag.getValue());
                }
            }
            C8551c mo20025b = this.f40482n.mo20025b(contact2);
            if (mo20025b != null) {
                arrayList3.add(String.valueOf(mo20025b.f26350a));
            }
            C17589i4.C17591b m15938a = C17589i4.m15938a();
            ArrayList arrayList4 = arrayList;
            if (arrayList.isEmpty()) {
                arrayList4 = null;
            }
            m15938a.m15935c(arrayList4);
            ArrayList arrayList5 = arrayList2;
            if (arrayList2.isEmpty()) {
                arrayList5 = null;
            }
            m15938a.m15936b(arrayList5);
            ArrayList arrayList6 = arrayList3;
            if (arrayList3.isEmpty()) {
                arrayList6 = null;
            }
            m15938a.m15934d(arrayList6);
            C17589i4 build = m15938a.build();
            C17517e4.C17519b m15987a = C17517e4.m15987a();
            m15987a.m15981f(contact2.m35542V());
            m15987a.m15982e(build);
            m15987a.m15985b(m15891a.build());
            CharSequence charSequence = null;
            if (z) {
                charSequence = "validCacheResult";
            }
            m15987a.m15984c(charSequence);
            m15987a.m15983d(str);
            list.add(m15987a.build());
            set.remove(contact2.m35542V());
        }
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14003b
    public b<C14030t> clone() {
        return new C14005d((b<C14030t>) this.f40468a, this.f40470b, this.f40471c, this.f40472d, this.f40473e, this.f40474f, this.f40475g, this.f40476h, this.f40477i, this.f40481m, this.f40478j, this.f40479k, this.f40480l, this.f40483o, this.f40482n);
    }

    /* renamed from: e */
    public final void m20871e(C17822y1.C17824b c17824b) throws AvroRuntimeException {
        C17589i4 c17589i4;
        c17824b.m15779d(null);
        c17824b.m15776g(true);
        c17824b.m15775h(false);
        ArrayList arrayList = new ArrayList();
        for (String str : this.f40474f) {
            if (!h.j(str)) {
                Contact m17364h = this.f40470b.m17364h(str);
                C17654m3.C17656b m15891a = C17654m3.m15891a();
                C17891a1.C17902k.m15637W0(m15891a, m17364h, null);
                m15891a.m15889b(m17364h != null && !m17364h.m35570C0());
                m15891a.m15887d((m17364h == null || (m17364h.getSource() & 2) == 0) ? false : true);
                m15891a.m15883h(Integer.valueOf(m17364h == null ? 0 : m17364h.m35533a0()));
                m15891a.m15888c(Boolean.valueOf((m17364h == null || (m17364h.getSource() & 64) == 0) ? false : true));
                m15891a.m15882i(Boolean.valueOf(m17364h != null && m17364h.m35574A0()));
                m20873b(m15891a, str);
                if (m17364h != null) {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    for (Tag tag : m17364h.m35524d0()) {
                        if (tag.getSource() == 1) {
                            arrayList2.add(tag.getValue());
                        } else {
                            arrayList3.add(tag.getValue());
                        }
                    }
                    C8551c mo20025b = this.f40482n.mo20025b(m17364h);
                    if (mo20025b != null) {
                        arrayList4.add(String.valueOf(mo20025b.f26350a));
                    }
                    C17589i4.C17591b m15938a = C17589i4.m15938a();
                    ArrayList arrayList5 = arrayList2;
                    if (arrayList2.isEmpty()) {
                        arrayList5 = null;
                    }
                    m15938a.m15935c(arrayList5);
                    ArrayList arrayList6 = arrayList3;
                    if (arrayList3.isEmpty()) {
                        arrayList6 = null;
                    }
                    m15938a.m15936b(arrayList6);
                    ArrayList arrayList7 = arrayList4;
                    if (arrayList4.isEmpty()) {
                        arrayList7 = null;
                    }
                    m15938a.m15934d(arrayList7);
                    c17589i4 = m15938a.build();
                } else {
                    c17589i4 = null;
                }
                C17589i4 c17589i42 = c17589i4;
                C17517e4.C17519b m15987a = C17517e4.m15987a();
                m15987a.m15981f(str);
                m15987a.m15982e(c17589i42);
                m15987a.m15985b(m15891a.build());
                m15987a.m15984c(null);
                m15987a.m15983d(null);
                arrayList.add(m15987a.build());
            }
        }
        c17824b.m15778e(arrayList);
        this.f40472d.mo11854a().mo13111a(c17824b.build());
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14003b
    public a0<C14030t> execute() throws IOException {
        C17822y1.C17824b m15783a = C17822y1.m15783a();
        m15783a.m15777f(this.f40477i.toString());
        m15783a.m15774i(this.f40476h);
        m15783a.m15773j(String.valueOf(this.f40475g));
        m15783a.m15781b(this.f40481m);
        long mo13821a = this.f40480l.mo13821a();
        try {
            try {
                a0<C14030t> execute = super.execute();
                m15783a.m15780c(Long.valueOf(this.f40480l.mo13821a() - mo13821a));
                C14030t c14030t = (C14030t) execute.b;
                if (!execute.b() || c14030t == null) {
                    m20871e(m15783a);
                } else {
                    m20870f(c14030t, m15783a);
                }
                return execute;
            } catch (IOException e) {
                m15783a.m15780c(Long.valueOf(this.f40480l.mo13821a() - mo13821a));
                m20871e(m15783a);
                throw e;
            }
        } catch (AvroRuntimeException e2) {
            C10480a.m26057J1(e2, "Unable to log the search event.");
            throw new IOException("Unable to log the search event.", e2);
        }
    }

    /* renamed from: f */
    public final void m20870f(C14030t c14030t, C17822y1.C17824b c17824b) throws AvroRuntimeException {
        HashSet hashSet = new HashSet(this.f40474f);
        if (c14030t.f40586g == 0) {
            c17824b.m15779d(c14030t.f40580a);
            c17824b.m15776g(true);
            c17824b.m15775h(true);
        } else {
            c17824b.m15779d(null);
            c17824b.m15776g(false);
            c17824b.m15775h(false);
        }
        boolean z = c14030t.f40586g == 1;
        ArrayList arrayList = new ArrayList();
        if (hashSet.size() > 0 && c14030t.f40582c.size() == 0) {
            ArrayList arrayList2 = new ArrayList(hashSet.size());
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                Contact m17364h = this.f40470b.m17364h(str);
                if (m17364h != null) {
                    arrayList2.add(m17364h);
                    if (m17364h.m35542V() == null) {
                        C10480a.m26045M1("[AppSearchLoggingCall] fillEntitiesByAggregatedContacts searchQuery is null");
                        m17364h.m35541V0(str);
                    }
                }
            }
            m20872c(arrayList2, arrayList, hashSet, z);
        } else if (hashSet.size() > 1 || c14030t.f40582c.size() == 1) {
            m20872c(c14030t.f40582c, arrayList, hashSet, z);
        } else if (hashSet.size() == 1 && c14030t.f40582c.size() > 1) {
            C17517e4.C17519b m15987a = C17517e4.m15987a();
            m15987a.m15981f(this.f40474f.get(0));
            m15987a.m15982e(null);
            m15987a.m15985b(null);
            m15987a.m15984c(null);
            m15987a.m15983d(null);
            arrayList.add(m15987a.build());
            hashSet.clear();
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            if (!h.j(str2)) {
                C17654m3.C17656b m15891a = C17654m3.m15891a();
                m15891a.m15889b(false);
                m15891a.m15887d(false);
                Boolean bool = Boolean.FALSE;
                m15891a.m15888c(bool);
                m15891a.m15883h(0);
                m15891a.m15882i(bool);
                m20873b(m15891a, str2);
                C17517e4.C17519b m15987a2 = C17517e4.m15987a();
                m15987a2.m15981f(str2);
                m15987a2.m15982e(null);
                m15987a2.m15985b(m15891a.build());
                m15987a2.m15984c(null);
                m15987a2.m15983d(null);
                arrayList.add(m15987a2.build());
            }
        }
        c17824b.m15778e(arrayList);
        this.f40472d.mo11854a().mo13111a(c17824b.build());
    }
}
