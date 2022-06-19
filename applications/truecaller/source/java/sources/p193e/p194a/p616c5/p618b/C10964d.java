package p193e.p194a.p616c5.p618b;

import android.content.Intent;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInClient;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.truecaller.social_login.C4491R;
import com.truecaller.social_login.SocialAccountProfile;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c5.b.d */
/* loaded from: classes13-dex2jar.jar:e/a/c5/b/d.class */
public final class C10964d extends AbstractC20574a<AbstractC10963c> implements AbstractC10961a, AbstractC10961a {

    /* renamed from: d */
    public final f f32480d;

    /* renamed from: e */
    public final AbstractC19223c0 f32481e;

    /* renamed from: f */
    public final C10965e f32482f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C10964d(@Named("UI") f fVar, AbstractC19223c0 abstractC19223c0, C10965e c10965e) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(c10965e, "googleSignInProxy");
        this.f32480d = fVar;
        this.f32481e = abstractC19223c0;
        this.f32482f = c10965e;
    }

    @Override // p193e.p194a.p616c5.p618b.AbstractC10961a
    /* renamed from: G1 */
    public boolean mo25465G1() {
        return GoogleSignIn.m39129b(this.f32482f.f32483a) != null;
    }

    /* renamed from: Ij */
    public final GoogleSignInClient m25464Ij() {
        C10965e c10965e = this.f32482f;
        String mo13768b = this.f32481e.mo13768b(C4491R.string.google_client_id, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…(string.google_client_id)");
        Objects.requireNonNull(c10965e);
        l.e(mo13768b, "clientId");
        GoogleSignInOptions.Builder builder = new GoogleSignInOptions.Builder(GoogleSignInOptions.f5516l);
        builder.m39118c(mo13768b);
        builder.m39119b();
        GoogleSignInClient googleSignInClient = new GoogleSignInClient(c10965e.f32483a, builder.m39120a());
        l.d(googleSignInClient, "GoogleSignIn.getClient(a…onContext, signInOptions)");
        return googleSignInClient;
    }

    /* renamed from: Jj */
    public final void m25463Jj(SocialAccountProfile socialAccountProfile, boolean z) {
        AbstractC10963c abstractC10963c = (AbstractC10963c) this.f57683a;
        if (abstractC10963c != null) {
            abstractC10963c.mo25466q(null, z);
        }
    }

    @Override // p193e.p194a.p616c5.p618b.AbstractC10961a
    /* renamed from: O1 */
    public void mo25462O1() {
        m25464Ij().signOut();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.c5.b.c, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC10963c) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        GoogleSignInAccount m39129b = GoogleSignIn.m39129b(this.f32482f.f32483a);
        if (m39129b != null) {
            if (!(GoogleSignInAccount.f5501n.mo38787c() / 1000 >= m39129b.f5509h - 300)) {
                SocialAccountProfile m16085d = C17422k.m16085d(m39129b);
                AbstractC10963c abstractC10963c = (AbstractC10963c) this.f57683a;
                if (abstractC10963c == null) {
                    return;
                }
                abstractC10963c.mo25466q(m16085d, false);
                return;
            }
        }
        GoogleSignInClient m25464Ij = m25464Ij();
        AbstractC10963c abstractC10963c2 = (AbstractC10963c) this.f57683a;
        if (abstractC10963c2 != null) {
            Intent m39125b = m25464Ij.m39125b();
            l.d(m39125b, "signInClient.signInIntent");
            abstractC10963c2.mo25467ha(m39125b, 1234);
        }
    }
}
