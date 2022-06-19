package p193e.p194a.p717f.p718a.p719a.p720o;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p717f.C13726s;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import p193e.p194a.p717f.p734z.AbstractC13863x;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.f.a.a.o.f */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/a/o/f.class */
public final class C13553f extends AbstractC20574a<AbstractC13551d> implements AbstractC13550c {

    /* renamed from: d */
    public final f f39304d;

    /* renamed from: e */
    public final AbstractC13762c f39305e;

    /* renamed from: f */
    public final AbstractC13863x f39306f;

    /* renamed from: g */
    public final AbstractC19223c0 f39307g;

    /* renamed from: h */
    public final C13726s f39308h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C13553f(@Named("UI") f fVar, AbstractC13762c abstractC13762c, AbstractC13863x abstractC13863x, AbstractC19223c0 abstractC19223c0, C13726s c13726s) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC13762c, "callManager");
        l.e(abstractC13863x, "rejectWithMessageHelper");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(c13726s, "ringtoneHelper");
        this.f39304d = fVar;
        this.f39305e = abstractC13762c;
        this.f39306f = abstractC13863x;
        this.f39307g = abstractC19223c0;
        this.f39308h = c13726s;
    }
}
