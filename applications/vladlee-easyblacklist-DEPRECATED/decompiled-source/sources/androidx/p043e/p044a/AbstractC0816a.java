package androidx.p043e.p044a;

import androidx.lifecycle.AbstractC0932i;
import androidx.lifecycle.AbstractC0950w;
import androidx.p043e.p045b.C0826c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.e.a.a */
/* loaded from: classes-dex2jar.jar:androidx/e/a/a.class */
public abstract class AbstractC0816a {

    /* renamed from: androidx.e.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$a.class */
    public interface AbstractC0817a<D> {
        /* renamed from: a */
        void mo20a(D d);

        /* renamed from: r_ */
        C0826c<D> mo8r_();

        /* renamed from: s_ */
        void mo7s_();
    }

    /* renamed from: a */
    public static <T extends AbstractC0932i & AbstractC0950w> AbstractC0816a m8006a(T t) {
        return new C0818b(t, t.getViewModelStore());
    }

    /* renamed from: a */
    public abstract <D> C0826c<D> mo8003a(int i, AbstractC0817a<D> aVar);

    /* renamed from: a */
    public abstract <D> C0826c<D> mo8001a(AbstractC0817a<D> aVar);

    /* renamed from: a */
    public abstract void mo8005a();

    /* renamed from: a */
    public abstract void mo8004a(int i);

    @Deprecated
    /* renamed from: a */
    public abstract void mo8000a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);
}
