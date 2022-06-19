package p193e.p194a.p437c.p438a.p480j.p481a;

import com.truecaller.insights.insightsui.CategoryModel;
import com.truecaller.insights.models.updates.UpdateCategory;
import com.truecaller.insights.smartcards.SmartCardCategory;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p438a.p480j.p482b.C9132a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9133b;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import s1.u.s;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.a.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/a/b.class */
public final class C9124b extends AbstractC9107c<C9132a, C9133b> {

    /* renamed from: b */
    public final f f27806b;

    /* renamed from: c */
    public final AbstractC10497d f27807c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9124b(@Named("IO") f fVar, AbstractC10497d abstractC10497d) {
        super(fVar);
        l.e(fVar, "ioContext");
        l.e(abstractC10497d, "insightsUiManager");
        this.f27806b = fVar;
        this.f27807c = abstractC10497d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d4, code lost:
        if ((!s1.u.i.T(new java.lang.String[]{"Skip", "Updates"}).contains(r5) && r7.contains(r5)) != false) goto L34;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m27858d(p193e.p194a.p437c.p438a.p480j.p481a.C9124b r5, com.truecaller.insights.insightsui.CategoryModel r6, java.util.Set r7, java.util.Set r8, java.util.Set r9) {
        /*
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.m27857e(r1, r2)
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L1a
            r0 = r5
            r1 = r6
            r2 = r9
            boolean r0 = r0.m27856f(r1, r2)
            if (r0 != 0) goto Ld7
        L1a:
            r0 = r6
            boolean r0 = r0.getUseTagCategory()
            if (r0 != 0) goto L2a
            r0 = r5
            r1 = r6
            r2 = r8
            boolean r0 = r0.m27857e(r1, r2)
            if (r0 != 0) goto Ld7
        L2a:
            r0 = r6
            java.util.Set r0 = r0.getUpdateCategories()
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L40
            r0 = r5
            r1 = r6
            r2 = r9
            boolean r0 = r0.m27856f(r1, r2)
            if (r0 != 0) goto Ld7
        L40:
            r0 = r6
            com.truecaller.insights.smartcards.SmartCardCategory r0 = r0.getTagCategory()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "$this$toGrammar"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            int r0 = r0.ordinal()
            r12 = r0
            r0 = r12
            if (r0 == 0) goto La2
            r0 = r12
            r1 = 10
            if (r0 == r1) goto L9c
            r0 = r12
            switch(r0) {
                case 2: goto L96;
                case 3: goto L96;
                case 4: goto L96;
                case 5: goto L96;
                case 6: goto L90;
                case 7: goto L8a;
                default: goto L84;
            }
        L84:
            java.lang.String r0 = "Skip"
            r5 = r0
            goto La5
        L8a:
            java.lang.String r0 = "Bill"
            r5 = r0
            goto La5
        L90:
            java.lang.String r0 = "Event"
            r5 = r0
            goto La5
        L96:
            java.lang.String r0 = "Travel"
            r5 = r0
            goto La5
        L9c:
            java.lang.String r0 = "Delivery"
            r5 = r0
            goto La5
        La2:
            java.lang.String r0 = "Bank"
            r5 = r0
        La5:
            r0 = 2
            java.lang.String[] r0 = new java.lang.String[r0]
            r1 = r0
            r2 = 0
            java.lang.String r3 = "Skip"
            r1[r2] = r3
            r1 = r0
            r2 = 1
            java.lang.String r3 = "Updates"
            r1[r2] = r3
            java.util.List r0 = s1.u.i.T(r0)
            r1 = r5
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto Lcf
            r0 = r7
            r1 = r5
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto Lcf
            r0 = 1
            r12 = r0
            goto Ld2
        Lcf:
            r0 = 0
            r12 = r0
        Ld2:
            r0 = r12
            if (r0 == 0) goto Lda
        Ld7:
            r0 = 1
            r11 = r0
        Lda:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p480j.p481a.C9124b.m27858d(e.a.c.a.j.a.b, com.truecaller.insights.insightsui.CategoryModel, java.util.Set, java.util.Set, java.util.Set):boolean");
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public C9133b mo27441a() {
        return new C9133b(s.a, false, false);
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: b */
    public q3.a.x2.f<C9133b> mo27440b(C9132a c9132a) {
        C9132a c9132a2 = c9132a;
        l.e(c9132a2, "input");
        return new C9120a(this.f27807c.mo25853a(), this, c9132a2);
    }

    /* renamed from: e */
    public final boolean m27857e(CategoryModel categoryModel, Set<? extends UpdateCategory> set) {
        boolean z = true;
        if (!(!categoryModel.getUpdateCategories().isEmpty()) || !set.containsAll(categoryModel.getUpdateCategories())) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public final boolean m27856f(CategoryModel categoryModel, Set<? extends SmartCardCategory> set) {
        return categoryModel.getUseTagCategory() && set.contains(categoryModel.getTagCategory());
    }
}
