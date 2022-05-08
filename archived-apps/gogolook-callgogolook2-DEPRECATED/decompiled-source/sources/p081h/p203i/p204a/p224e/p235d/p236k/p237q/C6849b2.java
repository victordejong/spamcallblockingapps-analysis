package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.os.DeadObjectException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6850c;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6858e;
/* renamed from: h.i.a.e.d.k.q.b2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/b2.class */
public final class C6849b2<A extends AbstractC6850c<? extends AbstractC6835k, C6805a.AbstractC6807b>> extends AbstractC6918r0 {

    /* renamed from: a */
    public final A f16771a;

    public C6849b2(int i, A a) {
        super(i);
        this.f16771a = a;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public final void mo21588a(@NonNull Status status) {
        this.f16771a.m21771c(status);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public final void mo21587a(C6858e.C6859a<?> aVar) throws DeadObjectException {
        try {
            this.f16771a.m21772b(aVar.m21713f());
        } catch (RuntimeException e) {
            mo21585a(e);
        }
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public final void mo21586a(@NonNull C6921s sVar, boolean z) {
        sVar.m21579a(this.f16771a, z);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6918r0
    /* renamed from: a */
    public final void mo21585a(@NonNull RuntimeException runtimeException) {
        String simpleName = runtimeException.getClass().getSimpleName();
        String localizedMessage = runtimeException.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        this.f16771a.m21771c(new Status(10, sb.toString()));
    }
}
