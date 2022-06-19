package p193e.p194a.p437c.p438a.p456d.p470g;

import com.truecaller.insights.p168ui.widget.chip.FilterChipXView;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p437c.p438a.p493l.C9234a;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.c.a.d.g.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/i.class */
public final class C8953i extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C8948h f27241b;

    /* renamed from: c */
    public final /* synthetic */ C9234a f27242c;

    /* renamed from: d */
    public final /* synthetic */ FilterChipXView f27243d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8953i(C8948h c8948h, C9234a c9234a, C8243a c8243a, FilterChipXView filterChipXView) {
        super(0);
        this.f27241b = c8948h;
        this.f27242c = c9234a;
        this.f27243d = filterChipXView;
    }

    public Object invoke() {
        this.f27241b.f27234d = true;
        this.f27242c.f28031e = this.f27243d.isSelected();
        C9234a c9234a = this.f27242c;
        if (!c9234a.f28031e) {
            this.f27241b.f27233c.remove(c9234a);
        } else {
            this.f27241b.f27233c.add(c9234a);
        }
        C8948h c8948h = this.f27241b;
        c8948h.m27922SA(c8948h.f27234d);
        return s.a;
    }
}
