package p193e.p194a.p437c.p531c0;

import e.m.e.f0.a;
import e.m.e.k;
import java.io.BufferedReader;
import javax.inject.Inject;
import p193e.p194a.p437c.p580r.p589j.C10640x;
import p193e.p194a.p437c.p580r.p589j.C10641y;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.c.c0.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/b.class */
public final class C10013b implements AbstractC10011a {

    /* renamed from: a */
    public final k f29851a = new k();

    /* renamed from: b */
    public final AbstractC10026m f29852b;

    /* renamed from: e.a.c.c0.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c0/b$a.class */
    public static final class C10014a extends a<C10640x> {
    }

    /* renamed from: e.a.c.c0.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c0/b$b.class */
    public static final class C10015b extends a<C10641y> {
    }

    @Inject
    public C10013b(AbstractC10026m abstractC10026m) {
        l.e(abstractC10026m, "fileIoUtils");
        this.f29852b = abstractC10026m;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public C10640x m26911a() {
        C10640x c10640x;
        BufferedReader bufferedReader = null;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                BufferedReader mo26890b = this.f29852b.mo26890b("smartcards/row_smart_card_allowed_grammers.json");
                Object e = this.f29851a.e(mo26890b, new C10014a().getType());
                l.d(e, "gson.fromJson(bufferRead…edBaseFilters>() {}.type)");
                bufferedReader2 = mo26890b;
                bufferedReader = mo26890b;
                bufferedReader = mo26890b;
                c10640x = (C10640x) e;
            } catch (Exception e2) {
                bufferedReader2 = bufferedReader;
                c10640x = new C10640x(s.a);
            }
            this.f29852b.mo26891a(bufferedReader);
            return c10640x;
        } catch (Throwable th) {
            this.f29852b.mo26891a(bufferedReader2);
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public C10641y m26910b() {
        C10641y c10641y;
        BufferedReader bufferedReader = null;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                BufferedReader mo26890b = this.f29852b.mo26890b("smartcards/semicard_allowed_grammars.json");
                Object e = this.f29851a.e(mo26890b, new C10015b().getType());
                l.d(e, "gson.fromJson(bufferRead…edBaseFilters>() {}.type)");
                bufferedReader2 = mo26890b;
                bufferedReader = mo26890b;
                bufferedReader = mo26890b;
                c10641y = (C10641y) e;
            } catch (Exception e2) {
                bufferedReader2 = bufferedReader;
                c10641y = new C10641y(s.a);
            }
            this.f29852b.mo26891a(bufferedReader);
            return c10641y;
        } catch (Throwable th) {
            this.f29852b.mo26891a(bufferedReader2);
            throw th;
        }
    }
}
