package p459j.p460a.p474c0.p475c.p478y;

import android.content.Intent;
import android.net.Uri;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11587a;
/* renamed from: j.a.c0.c.y.n */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/n.class */
public abstract class AbstractC11631n extends AbstractC11587a {

    /* renamed from: b */
    public AbstractC11632a f26112b;

    /* renamed from: j.a.c0.c.y.n$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/n$a.class */
    public interface AbstractC11632a {
        /* renamed from: a */
        void mo8757a(AbstractC11631n nVar);

        /* renamed from: a */
        void mo8756a(AbstractC11631n nVar, Exception exc);
    }

    /* renamed from: a */
    public void m8760a(AbstractC11632a aVar) {
        if (mo9044d()) {
            this.f26112b = aVar;
        }
    }

    /* renamed from: a */
    public void m8759a(Exception exc) {
        AbstractC11632a aVar;
        if (mo9044d() && (aVar = this.f26112b) != null) {
            aVar.mo8756a(this, exc);
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11587a
    /* renamed from: e */
    public void mo8718e() {
        this.f26112b = null;
    }

    /* renamed from: f */
    public abstract Uri mo7643f();

    /* renamed from: g */
    public abstract Intent mo7642g();

    /* renamed from: h */
    public abstract long mo7641h();

    /* renamed from: i */
    public abstract String mo7640i();

    /* renamed from: j */
    public abstract String mo7639j();

    /* renamed from: k */
    public abstract String mo7638k();

    /* renamed from: l */
    public abstract String mo7637l();

    /* renamed from: m */
    public void m8758m() {
        AbstractC11632a aVar;
        if (mo9044d() && (aVar = this.f26112b) != null) {
            aVar.mo8757a(this);
        }
    }
}
