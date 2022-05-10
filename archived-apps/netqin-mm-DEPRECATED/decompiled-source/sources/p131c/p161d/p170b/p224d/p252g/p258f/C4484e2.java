package p131c.p161d.p170b.p224d.p252g.p258f;
/* renamed from: c.d.b.d.g.f.e2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/e2.class */
public final class C4484e2 extends AbstractC4463b2 {

    /* renamed from: a */
    public final C4477d2 f16738a = new C4477d2();

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4463b2
    /* renamed from: a */
    public final void mo9797a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        } else if (th2 != null) {
            this.f16738a.m25519a(th, true).add(th2);
        } else {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
    }
}
