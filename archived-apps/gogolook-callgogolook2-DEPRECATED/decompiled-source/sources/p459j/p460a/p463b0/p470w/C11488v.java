package p459j.p460a.p463b0.p470w;

import androidx.lifecycle.LiveData;
import java.util.List;
import p626l.C14978j;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.w.v */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/v.class */
public final class C11488v implements AbstractC11487u {

    /* renamed from: a */
    public final AbstractC11446p f25660a;

    public C11488v(AbstractC11446p pVar) {
        C15149k.m377b(pVar, "smsLogsDataSource");
        this.f25660a = pVar;
    }

    @Override // p459j.p460a.p463b0.p470w.AbstractC11487u
    /* renamed from: a */
    public LiveData<C14978j<List<C11444n>, Object>> mo9531a() {
        return this.f25660a.mo9616a();
    }

    @Override // p459j.p460a.p463b0.p470w.AbstractC11487u
    /* renamed from: a */
    public void mo9530a(int i, Object obj) {
        C15149k.m377b(obj, "extras");
        this.f25660a.mo9614a(i, obj);
    }

    @Override // p459j.p460a.p463b0.p470w.AbstractC11487u
    public LiveData<Boolean> isLoading() {
        return this.f25660a.isLoading();
    }
}
