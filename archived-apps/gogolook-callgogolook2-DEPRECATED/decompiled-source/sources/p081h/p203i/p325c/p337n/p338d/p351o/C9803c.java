package p081h.p203i.p325c.p337n.p338d.p351o;

import android.content.Context;
import androidx.annotation.NonNull;
import com.mopub.common.AdType;
import p081h.p203i.p204a.p206b.AbstractC6494c;
import p081h.p203i.p204a.p206b.AbstractC6496e;
import p081h.p203i.p204a.p206b.AbstractC6497f;
import p081h.p203i.p204a.p206b.C6493b;
import p081h.p203i.p204a.p206b.p207i.C6500a;
import p081h.p203i.p204a.p206b.p209j.C6586r;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9609q;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
import p081h.p203i.p325c.p337n.p338d.p343j.p344x.C9763h;
/* renamed from: h.i.c.n.d.o.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/o/c.class */
public class C9803c {

    /* renamed from: b */
    public static final C9763h f22237b = new C9763h();

    /* renamed from: c */
    public static final String f22238c = m14173a("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* renamed from: d */
    public static final String f22239d = m14173a("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* renamed from: e */
    public static final AbstractC6496e<AbstractC9715v, byte[]> f22240e = C9802b.m14178a();

    /* renamed from: a */
    public final AbstractC6497f<AbstractC9715v> f22241a;

    public C9803c(AbstractC6497f<AbstractC9715v> fVar, AbstractC6496e<AbstractC9715v, byte[]> eVar) {
        this.f22241a = fVar;
    }

    /* renamed from: a */
    public static C9803c m14177a(Context context) {
        C6586r.m22281a(context);
        return new C9803c(C6586r.m22277b().m22280a(new C6500a(f22238c, f22239d)).mo22287a("FIREBASE_CRASHLYTICS_REPORT", AbstractC9715v.class, C6493b.m22467a(AdType.STATIC_NATIVE), f22240e), f22240e);
    }

    /* renamed from: a */
    public static String m14173a(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str.length() + str2.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static /* synthetic */ void m14176a(C9145i iVar, AbstractC9609q qVar, Exception exc) {
        if (exc != null) {
            iVar.m16005b(exc);
        } else {
            iVar.m16004b((C9145i) qVar);
        }
    }

    @NonNull
    /* renamed from: a */
    public AbstractC9143h<AbstractC9609q> m14175a(@NonNull AbstractC9609q qVar) {
        AbstractC9715v a = qVar.mo14716a();
        C9145i iVar = new C9145i();
        this.f22241a.mo22284a(AbstractC6494c.m22463b(a), C9801a.m14180a(iVar, qVar));
        return iVar.m16008a();
    }
}
