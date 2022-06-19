package p193e.p194a.p739f0.p744h.p746b;

import android.content.Intent;
import android.net.Uri;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import p193e.p194a.p739f0.AbstractC13874c;
import p193e.p194a.p739f0.C13866a;
import s1.z.c.l;
/* renamed from: e.a.f0.h.b.b */
/* loaded from: classes13-dex2jar.jar:e/a/f0/h/b/b.class */
public final class C13889b extends AbstractC20576b<AbstractC13888a> implements AbstractC20580e {

    /* renamed from: b */
    public final AbstractC13874c f40271b;

    @Inject
    public C13889b(AbstractC13874c abstractC13874c) {
        l.e(abstractC13874c, "socialMediaManager");
        this.f40271b = abstractC13874c;
    }

    /* renamed from: Hj */
    public final Intent m20973Hj(String str) {
        Uri uri;
        Objects.requireNonNull((C13866a) this.f40271b);
        l.e(str, "link");
        l.e(str, "url");
        Intent intent = null;
        try {
            uri = Uri.parse(str);
        } catch (Exception e) {
            uri = null;
        }
        if (uri != null) {
            l.e(uri, "uri");
            intent = new Intent("android.intent.action.VIEW", uri);
        }
        return intent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x021f, code lost:
        if (r0.length() == 0) goto L72;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0228  */
    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.f0.h.b.a, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9029Y0(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p739f0.p744h.p746b.C13889b.mo9029Y0(java.lang.Object):void");
    }
}
