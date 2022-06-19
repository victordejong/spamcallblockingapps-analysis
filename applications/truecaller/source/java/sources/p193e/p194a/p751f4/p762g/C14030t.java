package p193e.p194a.p751f4.p762g;

import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p997k3.p999k.C16489a;
/* renamed from: e.a.f4.g.t */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/t.class */
public final class C14030t {

    /* renamed from: a */
    public final String f40580a;

    /* renamed from: b */
    public final C16489a f40581b;

    /* renamed from: c */
    public final List<Contact> f40582c;

    /* renamed from: d */
    public final String f40583d;

    /* renamed from: e */
    public final String f40584e;

    /* renamed from: f */
    public final String f40585f;

    /* renamed from: g */
    public final int f40586g;

    public C14030t(int i, C14030t c14030t, Contact contact) {
        this.f40586g = i;
        ArrayList arrayList = new ArrayList();
        this.f40582c = arrayList;
        arrayList.add(contact);
        this.f40585f = null;
        this.f40584e = null;
        this.f40583d = null;
        this.f40581b = c14030t == null ? null : c14030t.f40581b;
        this.f40580a = c14030t == null ? null : c14030t.f40580a;
    }

    public C14030t(int i, String str, List<Contact> list, ContactDto.Pagination pagination, C16489a c16489a) {
        this.f40582c = list;
        this.f40580a = str;
        this.f40581b = c16489a;
        this.f40586g = i;
        if (pagination == null) {
            this.f40585f = null;
            this.f40584e = null;
            this.f40583d = null;
            return;
        }
        this.f40583d = pagination.prev;
        this.f40584e = pagination.pageId;
        this.f40585f = pagination.next;
    }

    /* renamed from: a */
    public Contact m20837a() {
        return !this.f40582c.isEmpty() ? this.f40582c.get(0) : null;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SearchResult{requestId='");
        C22128a.m8678P0(m8728C, this.f40580a, '\'', ", campaigns=");
        m8728C.append(this.f40581b);
        m8728C.append(", data=");
        m8728C.append(this.f40582c);
        m8728C.append(", previousPageId='");
        C22128a.m8678P0(m8728C, this.f40583d, '\'', ", pageId='");
        C22128a.m8678P0(m8728C, this.f40584e, '\'', ", nextPageId='");
        C22128a.m8678P0(m8728C, this.f40585f, '\'', ", source=");
        return C22128a.m8701I2(m8728C, this.f40586g, '}');
    }
}
