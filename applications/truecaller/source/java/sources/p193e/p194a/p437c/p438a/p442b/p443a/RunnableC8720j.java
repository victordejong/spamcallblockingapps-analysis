package p193e.p194a.p437c.p438a.p442b.p443a;

import androidx.appcompat.widget.SwitchCompat;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.a.b.a.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/j.class */
public final class RunnableC8720j implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C8721k f26654a;

    /* renamed from: b */
    public final /* synthetic */ C8704d0 f26655b;

    public RunnableC8720j(C8721k c8721k, C8704d0 c8704d0) {
        this.f26654a = c8721k;
        this.f26655b = c8704d0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C8712f c8712f = this.f26654a.f26656b;
        p<? super String, ? super Boolean, s> pVar = c8712f.f26643g;
        if (pVar != null) {
            String str = this.f26655b.f26626b.f31741a;
            SwitchCompat switchCompat = c8712f.f26642f;
            if (switchCompat == null) {
                l.l("shareMessageSwitch");
                throw null;
            }
            s sVar = (s) pVar.k(str, Boolean.valueOf(switchCompat.isChecked()));
        }
        C8712f c8712f2 = this.f26654a.f26656b;
        c8712f2.f26646j = true;
        c8712f2.dismiss();
    }
}
