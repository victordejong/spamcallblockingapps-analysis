package p081h.p119d.p120a.p124s.p134k.p140j;

import android.graphics.Bitmap;
import java.io.File;
import java.io.InputStream;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p131j.C5909g;
import p081h.p119d.p120a.p124s.p134k.p138h.C5982c;
import p081h.p119d.p120a.p124s.p134k.p139i.C5988b;
import p081h.p119d.p120a.p144v.AbstractC6045b;
/* renamed from: h.d.a.s.k.j.g */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/j/g.class */
public class C6015g implements AbstractC6045b<C5909g, C6007a> {

    /* renamed from: a */
    public final AbstractC5808e<File, C6007a> f15001a;

    /* renamed from: b */
    public final AbstractC5808e<C5909g, C6007a> f15002b;

    /* renamed from: c */
    public final AbstractC5809f<C6007a> f15003c;

    /* renamed from: d */
    public final AbstractC5805b<C5909g> f15004d;

    public C6015g(AbstractC6045b<C5909g, Bitmap> bVar, AbstractC6045b<InputStream, C5988b> bVar2, AbstractC5856c cVar) {
        C6009c cVar2 = new C6009c(bVar.mo23969g(), bVar2.mo23969g(), cVar);
        this.f15001a = new C5982c(new C6013e(cVar2));
        this.f15002b = cVar2;
        this.f15003c = new C6012d(bVar.mo23970f(), bVar2.mo23970f());
        this.f15004d = bVar.mo23971d();
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: d */
    public AbstractC5805b<C5909g> mo23971d() {
        return this.f15004d;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: f */
    public AbstractC5809f<C6007a> mo23970f() {
        return this.f15003c;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: g */
    public AbstractC5808e<C5909g, C6007a> mo23969g() {
        return this.f15002b;
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: h */
    public AbstractC5808e<File, C6007a> mo23968h() {
        return this.f15001a;
    }
}
