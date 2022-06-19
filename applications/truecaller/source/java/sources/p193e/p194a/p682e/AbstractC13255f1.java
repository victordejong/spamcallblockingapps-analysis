package p193e.p194a.p682e;

import com.truecaller.wizard.TruecallerWizard;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e.f1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/f1.class */
public abstract class AbstractC13255f1 extends TruecallerWizard implements b {

    /* renamed from: g */
    public volatile a f38542g;

    /* renamed from: h */
    public final Object f38543h = new Object();

    /* renamed from: i */
    public boolean f38544i = false;

    public AbstractC13255f1() {
        addOnContextAvailableListener(new C13252e1(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m21979Yt() {
        if (this.f38542g == null) {
            synchronized (this.f38543h) {
                if (this.f38542g == null) {
                    this.f38542g = new a(this);
                }
            }
        }
        return this.f38542g.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC13255f1.super.getDefaultViewModelProviderFactory());
    }
}
