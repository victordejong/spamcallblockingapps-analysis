package p193e.p194a.p751f4.p762g;

import android.content.Context;
import android.text.TextUtils;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.search.KeyedContactDto;
import e.m.f.a.e;
import e.m.f.a.j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1342w4.C21212l;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.C8572b0;
import p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e;
import p193e.p194a.p751f4.p764i.AbstractC14045f;
import p193e.p194a.p751f4.p764i.AsyncTaskC14038b;
import p193e.p194a.p997k3.p998j.C16461b;
import u3.g0;
import w3.c.a.a.a.h;
import x3.a0;
import x3.b;
import x3.d;
/* renamed from: e.a.f4.g.i */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/i.class */
public class C14012i implements AsyncTaskC14038b.AbstractC14039a<C14030t>, AbstractC14045f {

    /* renamed from: a */
    public final Context f40515a;

    /* renamed from: b */
    public final String f40516b;

    /* renamed from: c */
    public final UUID f40517c;

    /* renamed from: d */
    public final Set<C14014b> f40518d = new HashSet();

    /* renamed from: e */
    public boolean f40519e = true;

    /* renamed from: f */
    public boolean f40520f = true;

    /* renamed from: g */
    public int f40521g = 999;

    /* renamed from: h */
    public String f40522h;

    /* renamed from: i */
    public final AbstractC14031u f40523i;

    /* renamed from: e.a.f4.g.i$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/g/i$a.class */
    public static class C14013a implements b<C14030t> {

        /* renamed from: a */
        public final b<KeyedContactDto> f40524a;

        /* renamed from: b */
        public final Collection<String> f40525b;

        /* renamed from: c */
        public final boolean f40526c;

        /* renamed from: d */
        public final boolean f40527d;

        /* renamed from: e */
        public final boolean f40528e;

        /* renamed from: f */
        public j f40529f;

        public C14013a(b<KeyedContactDto> bVar, Collection<String> collection, boolean z, boolean z2, boolean z3, j jVar) {
            this.f40524a = bVar;
            this.f40525b = collection;
            this.f40526c = z;
            this.f40527d = z2;
            this.f40528e = z3;
            this.f40529f = jVar;
        }

        public void cancel() {
            AssertionUtil.AlwaysFatal.isTrue(false, new String[0]);
        }

        public b<C14030t> clone() {
            return new C14013a(this.f40524a.clone(), this.f40525b, this.f40526c, this.f40527d, this.f40528e, this.f40529f);
        }

        public void enqueue(d<C14030t> dVar) {
            AssertionUtil.AlwaysFatal.isTrue(false, new String[0]);
        }

        public a0<C14030t> execute() throws IOException {
            KeyedContactDto keyedContactDto;
            String str;
            String str2;
            a0 execute = this.f40524a.execute();
            if (!execute.b() || (keyedContactDto = (KeyedContactDto) execute.b) == null || keyedContactDto.data == null) {
                return a0.a(execute.c, execute.a);
            }
            Collection<String> collection = this.f40525b;
            boolean z = this.f40526c;
            boolean z2 = this.f40527d;
            boolean z3 = this.f40528e;
            AbstractC8371e.C8372a c8372a = AbstractC8371e.C8372a.f25732a;
            j jVar = this.f40529f;
            Set<j.b> set = C14018l.f40534a;
            ArrayList arrayList = new ArrayList();
            if (keyedContactDto.data != null) {
                long currentTimeMillis = System.currentTimeMillis();
                for (KeyedContactDto.KeyedContact keyedContact : keyedContactDto.data) {
                    if (z) {
                        StringBuilder m8728C = C22128a.m8728C("*");
                        m8728C.append(keyedContact.key);
                        str2 = m8728C.toString();
                    } else {
                        str2 = keyedContact.key;
                    }
                    C14018l.m20850a(keyedContact.value, currentTimeMillis, str2, c8372a, jVar);
                    arrayList.add(new Contact(keyedContact.value));
                    C14018l.m20849b(keyedContact.value);
                }
                if (z2) {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    HashSet<String> hashSet = collection == null ? new HashSet() : new HashSet(collection);
                    for (KeyedContactDto.KeyedContact keyedContact2 : keyedContactDto.data) {
                        int size = arrayList2.size();
                        C17422k.m16081f(arrayList2, arrayList3, keyedContact2.value);
                        if (arrayList2.size() > size) {
                            if (z) {
                                StringBuilder m8728C2 = C22128a.m8728C("*");
                                m8728C2.append(keyedContact2.key);
                                str = m8728C2.toString();
                            } else {
                                str = keyedContact2.key;
                            }
                            hashSet.remove(str);
                        }
                    }
                    if (z3 && !hashSet.isEmpty()) {
                        for (String str3 : hashSet) {
                            C17422k.m16083e(arrayList2, str3, z ? null : C8572b0.m28374e(str3), currentTimeMillis);
                        }
                    }
                    C17422k.m16075i(AbstractApplicationC8442a.m28551L(), arrayList2, arrayList3);
                }
            }
            return a0.c(new C14030t(0, execute.a.g.a("tc-event-id"), arrayList, null, null), execute.a.g);
        }

        public boolean isCanceled() {
            return this.f40524a.isCanceled();
        }

        public g0 request() {
            return this.f40524a.request();
        }
    }

    /* renamed from: e.a.f4.g.i$b */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/g/i$b.class */
    public static class C14014b {

        /* renamed from: a */
        public final String f40530a;

        /* renamed from: b */
        public final String f40531b;

        /* renamed from: c */
        public final String f40532c;

        public C14014b(String str, String str2, String str3) {
            this.f40530a = str;
            this.f40531b = str2;
            this.f40532c = h.z(str3, Locale.ENGLISH);
        }

        public boolean equals(Object obj) {
            return obj == this || ((obj instanceof C14014b) && this.f40530a.equals(((C14014b) obj).f40530a));
        }

        public int hashCode() {
            return this.f40530a.hashCode();
        }

        public String toString() {
            return C22128a.m8626f(C22128a.m8728C("BulkNumber{countryCode='"), this.f40532c, '\'', '}');
        }
    }

    public C14012i(Context context, UUID uuid, String str) {
        this.f40515a = context.getApplicationContext();
        this.f40516b = str;
        this.f40517c = uuid;
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) context.getApplicationContext()).mo10154s();
        this.f40523i = mo10154s.mo12645M0();
        mo10154s.mo11648b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44, types: [java.util.List] */
    @Override // p193e.p194a.p751f4.p764i.AbstractC14045f
    /* renamed from: a */
    public C14030t mo20821a() throws IOException {
        if (this.f40523i.mo20835b()) {
            AbstractC14031u abstractC14031u = this.f40523i;
            AssertionUtil.isTrue(this.f40521g != 999, "You must specify a search type");
            AssertionUtil.isTrue(!this.f40518d.isEmpty(), "You must supply one or more numbers to search for");
            String str = (String) h.c(this.f40522h, AbstractApplicationC8442a.m28551L().m28543T());
            String upperCase = str == null ? null : str.toUpperCase();
            Set<C14014b> set = this.f40518d;
            ArrayList arrayList = new ArrayList(set.size());
            for (C14014b c14014b : set) {
                if (!TextUtils.isEmpty(c14014b.f40531b) && (TextUtils.isEmpty(c14014b.f40532c) || h.f(c14014b.f40532c, upperCase))) {
                    arrayList.add(c14014b.f40531b);
                } else if (!TextUtils.isEmpty(c14014b.f40530a)) {
                    arrayList.add(c14014b.f40530a);
                } else if (!TextUtils.isEmpty(c14014b.f40531b) && !TextUtils.isEmpty(c14014b.f40532c)) {
                    try {
                        arrayList.add(C8572b0.m28375d(c14014b.f40531b, c14014b.f40532c, j.c.a));
                    } catch (e e) {
                    }
                }
            }
            ArrayList arrayList2 = arrayList;
            if (arrayList.size() > 25) {
                AssertionUtil.reportWeirdnessButNeverCrash("Batch size should be less than 25, truncating the list of searched numbers.");
                arrayList2 = arrayList.subList(0, 25);
            }
            AssertionUtil.isTrue(!arrayList2.isEmpty(), "You must supply one or more VALID numbers to search for");
            b<KeyedContactDto> m10127a = C21212l.m10129a().m10127a(TextUtils.join(",", arrayList2), this.f40522h, String.valueOf(this.f40521g));
            AbstractC15539j2 mo10154s = ((AbstractC21187w1) this.f40515a.getApplicationContext()).mo10154s();
            return abstractC14031u.mo20836a(new C14005d((b<C14030t>) new C14013a(m10127a, arrayList2, false, this.f40519e, this.f40520f, mo10154s.mo12239q3()), new C16461b(this.f40515a), true, mo10154s.mo12217s(), mo10154s.mo12670K2(), (List<String>) arrayList2, this.f40521g, this.f40516b, this.f40517c, (List<CharSequence>) null, mo10154s.mo12776C4(), mo10154s.mo12725G1(), mo10154s.mo11637k(), false, mo10154s.mo12619O()).execute(), null);
        }
        throw new AbstractAsyncTaskC14042e.C14043a(429);
    }

    /* renamed from: b */
    public C14012i m20857b() {
        this.f40522h = ((AbstractApplicationC8442a) this.f40515a.getApplicationContext()).m28543T();
        return this;
    }
}
