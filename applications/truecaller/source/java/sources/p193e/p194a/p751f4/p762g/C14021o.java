package p193e.p194a.p751f4.p762g;

import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import e.m.f.a.j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.C8572b0;
import u3.g0;
import x3.a0;
import x3.b;
import x3.d;
/* renamed from: e.a.f4.g.o */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/o.class */
public class C14021o implements b<C14030t> {

    /* renamed from: a */
    public final b<ContactDto> f40543a;

    /* renamed from: b */
    public final String f40544b;

    /* renamed from: c */
    public final boolean f40545c;

    /* renamed from: d */
    public final boolean f40546d;

    /* renamed from: e */
    public final int f40547e;

    /* renamed from: f */
    public final UUID f40548f;

    /* renamed from: g */
    public final AbstractC8371e f40549g;

    /* renamed from: h */
    public final j f40550h;

    public C14021o(b<ContactDto> bVar, String str, boolean z, boolean z2, int i, UUID uuid, AbstractC8371e abstractC8371e, j jVar) {
        this.f40543a = bVar;
        this.f40544b = str;
        this.f40545c = z;
        this.f40546d = z2;
        this.f40547e = i;
        this.f40548f = uuid;
        this.f40549g = abstractC8371e;
        this.f40550h = jVar;
    }

    public void cancel() {
        AssertionUtil.AlwaysFatal.isTrue(false, new String[0]);
    }

    public b<C14030t> clone() {
        return new C14021o(this.f40543a.clone(), this.f40544b, this.f40545c, this.f40546d, this.f40547e, this.f40548f, this.f40549g, this.f40550h);
    }

    public void enqueue(d<C14030t> dVar) {
        AssertionUtil.AlwaysFatal.isTrue(false, new String[0]);
    }

    public a0<C14030t> execute() throws IOException {
        ContactDto contactDto;
        a0 execute = this.f40543a.execute();
        if (!execute.b() || (contactDto = (ContactDto) execute.b) == null) {
            return a0.a(execute.c, execute.a);
        }
        String str = this.f40544b;
        boolean z = this.f40545c;
        boolean z2 = this.f40546d;
        AbstractC8371e abstractC8371e = this.f40549g;
        j jVar = this.f40550h;
        Set<j.b> set = C14018l.f40534a;
        ArrayList arrayList = new ArrayList();
        long currentTimeMillis = System.currentTimeMillis();
        List<ContactDto.Contact> list = contactDto.data;
        if (list != null) {
            for (ContactDto.Contact contact : list) {
                if (contact != null) {
                    C14018l.m20850a(contact, currentTimeMillis, str, abstractC8371e, jVar);
                    arrayList.add(new Contact(contact));
                    C14018l.m20849b(contact);
                }
            }
            if (z) {
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                List<ContactDto.Contact> list2 = contactDto.data;
                if (list2 != null) {
                    for (ContactDto.Contact contact2 : list2) {
                        C17422k.m16081f(arrayList2, arrayList3, contact2);
                    }
                }
                if (arrayList2.isEmpty() && z2) {
                    C17422k.m16083e(arrayList2, str, C8572b0.m28374e(str), currentTimeMillis);
                }
                C17422k.m16075i(AbstractApplicationC8442a.m28551L(), arrayList2, arrayList3);
            }
        }
        String a = execute.a.g.a("tc-event-id");
        if (!arrayList.isEmpty()) {
            arrayList.size();
        }
        return a0.d(new C14030t(0, a, arrayList, contactDto.pagination, contactDto.campaigns), execute.a);
    }

    public boolean isCanceled() {
        return this.f40543a.isCanceled();
    }

    public g0 request() {
        return this.f40543a.request();
    }
}
