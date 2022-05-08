package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import p081h.p203i.p204a.p224e.p226b.p227e.C6714a;
import p081h.p203i.p204a.p224e.p235d.C6799g;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
/* renamed from: h.i.a.e.b.e.h.b.t */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/t.class */
public final class BinderC6758t extends AbstractBinderC6753o {

    /* renamed from: a */
    public final Context f16641a;

    public BinderC6758t(Context context) {
        this.f16641a = context;
    }

    @Override // p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.AbstractC6752n
    /* renamed from: D */
    public final void mo21946D() {
        m21945G0();
        C6751m.m21953a(this.f16641a).m21954a();
    }

    /* renamed from: G0 */
    public final void m21945G0() {
        if (!C6799g.isGooglePlayServicesUid(this.f16641a, Binder.getCallingUid())) {
            int callingUid = Binder.getCallingUid();
            StringBuilder sb = new StringBuilder(52);
            sb.append("Calling UID ");
            sb.append(callingUid);
            sb.append(" is not Google Play services.");
            throw new SecurityException(sb.toString());
        }
    }

    @Override // p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b.AbstractC6752n
    /* renamed from: h0 */
    public final void mo21944h0() {
        m21945G0();
        C6740b a = C6740b.m21973a(this.f16641a);
        GoogleSignInAccount b = a.m21969b();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.f6447n;
        if (b != null) {
            googleSignInOptions = a.m21966c();
        }
        AbstractC6825f.C6826a aVar = new AbstractC6825f.C6826a(this.f16641a);
        aVar.m21821a(C6714a.f16614e, googleSignInOptions);
        AbstractC6825f a2 = aVar.m21824a();
        try {
            if (a2.mo21498a().m32001K()) {
                if (b != null) {
                    C6714a.f16615f.mo21959a(a2);
                } else {
                    a2.mo21495b();
                }
            }
        } finally {
            a2.mo21492d();
        }
    }
}
