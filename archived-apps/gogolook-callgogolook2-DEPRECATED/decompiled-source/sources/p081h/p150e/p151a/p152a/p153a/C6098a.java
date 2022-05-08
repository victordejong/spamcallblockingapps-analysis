package p081h.p150e.p151a.p152a.p153a;

import com.crashlytics.android.answers.Answers;
/* renamed from: h.e.a.a.a.a */
/* loaded from: classes-dex2jar.jar:h/e/a/a/a/a.class */
public class C6098a implements AbstractC6101d {

    /* renamed from: a */
    public final Answers f15157a;

    public C6098a(Answers answers) {
        this.f15157a = answers;
    }

    /* renamed from: a */
    public static C6098a m23852a() throws NoClassDefFoundError, IllegalStateException {
        return m23851a(Answers.getInstance());
    }

    /* renamed from: a */
    public static C6098a m23851a(Answers answers) throws IllegalStateException {
        if (answers != null) {
            return new C6098a(answers);
        }
        throw new IllegalStateException("Answers must be initialized before logging kit events");
    }

    @Override // p081h.p150e.p151a.p152a.p153a.AbstractC6101d
    /* renamed from: a */
    public void mo23847a(C6100c cVar) {
        try {
            this.f15157a.logCustom(cVar.m23849a());
        } catch (Throwable th) {
        }
    }
}
