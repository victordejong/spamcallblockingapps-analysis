package p193e.p194a.p751f4.p762g;

import android.content.Context;
import java.lang.ref.WeakReference;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p751f4.p764i.AbstractC14045f;
import p193e.p194a.p751f4.p764i.AsyncTaskC14038b;
import p193e.p194a.p937j4.p938a.AbstractC15561d;
/* renamed from: e.a.f4.g.q */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/q.class */
public class AsyncTaskC14027q extends AsyncTaskC14038b<Void, Void, C14030t> {

    /* renamed from: f */
    public static final /* synthetic */ int f40576f = 0;

    /* renamed from: d */
    public final WeakReference<C14022p.AbstractC14025c> f40577d;

    /* renamed from: e */
    public final AbstractC14045f f40578e;

    public AsyncTaskC14027q(Context context, AbstractC15561d abstractC15561d, boolean z, boolean z2, AsyncTaskC14038b.AbstractC14039a<C14030t> abstractC14039a, String str, String str2, C14022p.AbstractC14025c abstractC14025c, C14022p.AbstractC14024b abstractC14024b, AbstractC14045f abstractC14045f) {
        super(abstractC15561d, z, z2, abstractC14039a);
        this.f40577d = new WeakReference<>(abstractC14025c);
        new WeakReference(abstractC14024b);
        this.f40578e = abstractC14045f;
    }

    @Override // p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e
    /* renamed from: c */
    public void mo20825c(Object obj, Exception exc) {
        C14030t c14030t = (C14030t) obj;
        C14022p.AbstractC14025c abstractC14025c = this.f40577d.get();
        if (abstractC14025c != null) {
            abstractC14025c.mo10096Aa(exc, 0);
        }
    }

    @Override // p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e
    /* renamed from: d */
    public void mo20824d(Exception exc, int i) {
        C14022p.AbstractC14025c abstractC14025c = this.f40577d.get();
        if (abstractC14025c != null) {
            abstractC14025c.mo10096Aa(exc, i);
        }
    }

    @Override // p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e
    /* renamed from: e */
    public Object mo20823e(Object[] objArr) throws Exception {
        Void[] voidArr = (Void[]) objArr;
        return this.f40578e.mo20821a();
    }

    @Override // p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e
    /* renamed from: f */
    public void mo20822f(Object obj) {
        C14030t c14030t = (C14030t) obj;
        C14022p.AbstractC14025c abstractC14025c = this.f40577d.get();
        if (abstractC14025c == null) {
            StringBuilder m8728C = C22128a.m8728C("No result listener for result=");
            m8728C.append(c14030t.f40582c);
            m8728C.toString();
        } else if (c14030t.f40582c.isEmpty()) {
            abstractC14025c.mo10096Aa(null, 200);
        } else {
            abstractC14025c.mo10057p2(c14030t.f40582c, c14030t.f40583d, c14030t.f40584e, c14030t.f40585f);
        }
    }
}
