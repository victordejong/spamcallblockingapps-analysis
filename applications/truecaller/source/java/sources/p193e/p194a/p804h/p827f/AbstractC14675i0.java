package p193e.p194a.p804h.p827f;

import com.truecaller.calling.contacts_list.ContactsHolder;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p852i.p869d.AbstractC15101x;
import p193e.p194a.p852i.p896f0.AbstractC15162c;
import s1.z.c.l;
/* renamed from: e.a.h.f.i0 */
/* loaded from: classes3-dex2jar.jar:e/a/h/f/i0.class */
public interface AbstractC14675i0 {

    /* renamed from: e.a.h.f.i0$a */
    /* loaded from: classes3-dex2jar.jar:e/a/h/f/i0$a.class */
    public static final class C14676a {

        /* renamed from: a */
        public final AbstractC15162c f42168a;

        /* renamed from: b */
        public final AbstractC15101x f42169b;

        public C14676a(AbstractC15162c abstractC15162c, AbstractC15101x abstractC15101x) {
            l.e(abstractC15162c, "adsLoader");
            l.e(abstractC15101x, "multiAdsPresenter");
            this.f42168a = abstractC15162c;
            this.f42169b = abstractC15101x;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C14676a)) {
                    return false;
                }
                C14676a c14676a = (C14676a) obj;
                return l.a(this.f42168a, c14676a.f42168a) && l.a(this.f42169b, c14676a.f42169b);
            }
            return true;
        }

        public int hashCode() {
            AbstractC15162c abstractC15162c = this.f42168a;
            int i = 0;
            int hashCode = abstractC15162c != null ? abstractC15162c.hashCode() : 0;
            AbstractC15101x abstractC15101x = this.f42169b;
            if (abstractC15101x != null) {
                i = abstractC15101x.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("AdsPresenterWithLoader(adsLoader=");
            m8728C.append(this.f42168a);
            m8728C.append(", multiAdsPresenter=");
            m8728C.append(this.f42169b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: a */
    C14676a m19793a(ContactsHolder.PhonebookFilter phonebookFilter);
}
