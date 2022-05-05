package p000a.p001a.p002a.p003a;

import p000a.p001a.p002a.p003a.p004a.p006b.C0015ae;
import p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0067k;
import p000a.p001a.p002a.p003a.p004a.p007c.C0077s;
import p000a.p001a.p002a.p003a.p004a.p007c.EnumC0066j;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.a.a.a.k */
/* loaded from: classes-dex2jar.jar:a/a/a/a/k.class */
public final class C0146k<Result> extends AbstractC0067k<Void, Void, Result> {

    /* renamed from: a */
    final AbstractC0147l<Result> f338a;

    public C0146k(AbstractC0147l<Result> lVar) {
        this.f338a = lVar;
    }

    /* renamed from: a */
    private C0015ae m10144a(String str) {
        C0015ae aeVar = new C0015ae(this.f338a.getIdentifier() + "." + str, "KitInitialization");
        aeVar.m10378a();
        return aeVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0047a
    /* renamed from: a */
    public final void mo10146a() {
        super.mo10146a();
        C0015ae a = m10144a("onPreExecute");
        try {
            try {
                boolean onPreExecute = this.f338a.onPreExecute();
                a.m10377b();
                if (!onPreExecute) {
                    m10275e();
                }
            } catch (C0077s e) {
                throw e;
            } catch (Exception e2) {
                C0137d.m10155c().mo10130c("Fabric", "Failure onPreExecute()", e2);
                a.m10377b();
                m10275e();
            }
        } catch (Throwable th) {
            a.m10377b();
            m10275e();
            throw th;
        }
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0047a
    /* renamed from: a */
    protected final void mo10145a(Result result) {
        this.f338a.onPostExecute(result);
        this.f338a.initializationCallback.mo10148a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0047a
    /* renamed from: b */
    public final /* synthetic */ Object mo10143b() {
        C0015ae a = m10144a("doInBackground");
        Result doInBackground = !m10276d() ? this.f338a.doInBackground() : null;
        a.m10377b();
        return doInBackground;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0047a
    /* renamed from: b */
    protected final void mo10142b(Result result) {
        this.f338a.onCancelled(result);
        this.f338a.initializationCallback.mo10147a(new C0145j(this.f338a.getIdentifier() + " Initialization was cancelled"));
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0067k, p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0072o
    public final EnumC0066j getPriority() {
        return EnumC0066j.HIGH;
    }
}
