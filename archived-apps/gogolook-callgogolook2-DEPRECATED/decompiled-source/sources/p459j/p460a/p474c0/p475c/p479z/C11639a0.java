package p459j.p460a.p474c0.p475c.p479z;

import android.content.Context;
import android.util.Size;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p474c0.p475c.p479z.C11641b0;
/* renamed from: j.a.c0.c.z.a0 */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/a0.class */
public class C11639a0<D extends C11641b0> extends AbstractC11666m<D> {
    public C11639a0(Context context, D d) {
        super(context, d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: b */
    public AbstractC11669o mo8603b(List<AbstractC11672r<AbstractC11669o>> list) throws IOException {
        AbstractC11669o oVar;
        AbstractC11672r<? extends AbstractC11685y> b;
        if (!((C11641b0) this.f26182b).f26140k || !C6298e.m23342c()) {
            oVar = super.mo8603b(list);
        } else {
            D d = this.f26182b;
            oVar = super.m8689a(((C11641b0) d).f26138i, new Size(((C11641b0) d).f26184a, ((C11641b0) d).f26185b), null);
        }
        if (!(!((C11641b0) this.f26182b).f26139j || list == 0 || (b = oVar.mo8616b(this)) == null)) {
            list.add(b);
            if (oVar instanceof C11659h) {
                ((C11659h) oVar).m8692a(false);
            }
        }
        return oVar;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: g */
    public InputStream mo8641g() throws FileNotFoundException {
        return this.f26181a.getContentResolver().openInputStream(((C11641b0) this.f26182b).f26138i);
    }
}
