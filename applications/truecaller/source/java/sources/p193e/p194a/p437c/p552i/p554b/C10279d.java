package p193e.p194a.p437c.p552i.p554b;

import java.io.InputStream;
import javax.inject.Inject;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p531c0.AbstractC10026m;
import s1.z.c.l;
/* renamed from: e.a.c.i.b.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/b/d.class */
public final class C10279d {

    /* renamed from: a */
    public final AbstractC10026m f30468a;

    @Inject
    public C10279d(AbstractC10026m abstractC10026m) {
        l.e(abstractC10026m, "fileIoUtils");
        this.f30468a = abstractC10026m;
    }

    /* renamed from: a */
    public JSONObject m26485a() {
        return m26483c("linking/link_seed.json");
    }

    /* renamed from: b */
    public JSONObject m26484b() {
        return m26483c("linking/prune_seed.json");
    }

    /* renamed from: c */
    public final JSONObject m26483c(String str) {
        String mo26888d;
        InputStream mo26889c = this.f30468a.mo26889c(str);
        if (mo26889c == null || (mo26888d = this.f30468a.mo26888d(mo26889c)) == null) {
            throw new IllegalStateException(C22128a.m8543z2("Seed cannot be null: ", str));
        }
        return new JSONObject(mo26888d);
    }
}
