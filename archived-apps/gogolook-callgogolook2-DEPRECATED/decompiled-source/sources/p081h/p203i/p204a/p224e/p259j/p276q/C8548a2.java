package p081h.p203i.p204a.p224e.p259j.p276q;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.C6799g;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
/* renamed from: h.i.a.e.j.q.a2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/a2.class */
public final class C8548a2 extends AbstractC6991h<AbstractC8620h2> {
    public C8548a2(Context context, Looper looper, C6983e eVar, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar) {
        super(context, looper, 131, eVar, bVar, cVar);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    @Nullable
    /* renamed from: a */
    public final /* synthetic */ IInterface mo16074a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
        return queryLocalInterface instanceof AbstractC8620h2 ? (AbstractC8620h2) queryLocalInterface : new C8631i2(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h, p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: h */
    public final int mo16071h() {
        return C6799g.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    @NonNull
    /* renamed from: v */
    public final String mo16069v() {
        return "com.google.firebase.dynamiclinks.internal.IDynamicLinksService";
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    @NonNull
    /* renamed from: w */
    public final String mo16068w() {
        return "com.google.firebase.dynamiclinks.service.START";
    }
}
