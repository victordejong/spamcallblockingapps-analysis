package p613k.p614d;

import java.util.ArrayList;
/* renamed from: k.d.a */
/* loaded from: classes2-dex2jar.jar:k/d/a.class */
public abstract class AbstractC10446a implements Cloneable {

    /* renamed from: a */
    public ArrayList<AbstractC10447a> f38683a;

    /* renamed from: k.d.a$a */
    /* loaded from: classes2-dex2jar.jar:k/d/a$a.class */
    public interface AbstractC10447a {
        /* renamed from: a */
        void mo128a(AbstractC10446a aVar);

        /* renamed from: b */
        void mo127b(AbstractC10446a aVar);

        /* renamed from: c */
        void mo126c(AbstractC10446a aVar);

        /* renamed from: d */
        void mo129d(AbstractC10446a aVar);
    }

    /* renamed from: a */
    public void m131a(AbstractC10447a aVar) {
        if (this.f38683a == null) {
            this.f38683a = new ArrayList<>();
        }
        this.f38683a.add(aVar);
    }

    /* renamed from: b */
    public void m130b(AbstractC10447a aVar) {
        ArrayList<AbstractC10447a> arrayList = this.f38683a;
        if (arrayList != null) {
            arrayList.remove(aVar);
            if (this.f38683a.size() == 0) {
                this.f38683a = null;
            }
        }
    }

    public AbstractC10446a clone() {
        try {
            AbstractC10446a aVar = (AbstractC10446a) super.clone();
            if (this.f38683a != null) {
                ArrayList<AbstractC10447a> arrayList = this.f38683a;
                aVar.f38683a = new ArrayList<>();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    aVar.f38683a.add(arrayList.get(i));
                }
            }
            return aVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }
}
