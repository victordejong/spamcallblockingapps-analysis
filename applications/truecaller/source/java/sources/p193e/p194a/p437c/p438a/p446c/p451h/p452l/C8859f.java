package p193e.p194a.p437c.p438a.p446c.p451h.p452l;

import android.content.Context;
import android.view.MenuItem;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import com.truecaller.insights.p168ui.C4078R;
import java.util.List;
import java.util.Objects;
import n3.b.a.h;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.h.l.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/l/f.class */
public final class C8859f implements C25469g.AbstractC25470a {

    /* renamed from: a */
    public final /* synthetic */ C8860g f26983a;

    /* renamed from: b */
    public final /* synthetic */ List f26984b;

    /* renamed from: c */
    public final /* synthetic */ View f26985c;

    /* renamed from: d */
    public final /* synthetic */ long f26986d;

    /* renamed from: e */
    public final /* synthetic */ AbstractC10616p f26987e;

    /* renamed from: f */
    public final /* synthetic */ boolean f26988f;

    public C8859f(C8860g c8860g, List list, View view, long j, AbstractC10616p abstractC10616p, boolean z) {
        this.f26983a = c8860g;
        this.f26984b = list;
        this.f26985c = view;
        this.f26986d = j;
        this.f26987e = abstractC10616p;
        this.f26988f = z;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
    /* renamed from: a */
    public boolean mo3369a(C25469g c25469g, MenuItem menuItem) {
        l.e(c25469g, "menu");
        l.e(menuItem, "item");
        int itemId = menuItem.getItemId();
        int i = C4078R.C4080id.send_feedback;
        boolean z = true;
        if (itemId == i) {
            C8860g.m28002U4(this.f26983a, this.f26984b, i).m27781a();
            C8860g c8860g = this.f26983a;
            View view = this.f26985c;
            long j = this.f26986d;
            AbstractC10616p abstractC10616p = this.f26987e;
            boolean z2 = this.f26988f;
            Objects.requireNonNull(c8860g);
            try {
                Context context = view.getContext();
                l.d(context, "anchor.context");
                h m15606i = C17891a1.C17902k.m15606i(context);
                if (m15606i == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
                }
                FragmentManager supportFragmentManager = m15606i.getSupportFragmentManager();
                l.d(supportFragmentManager, "(anchor.context.activity…y).supportFragmentManager");
                c8860g.f26993i.mo25548a(j, new C8858e(abstractC10616p, z2, supportFragmentManager));
            } catch (Throwable th) {
                C10263b.f30414d.m26508b(th, null);
            }
        } else {
            int i2 = C4078R.C4080id.dismiss;
            if (itemId == i2) {
                C8860g.m28002U4(this.f26983a, this.f26984b, i2).m27781a();
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // p1727n3.p1734b.p1741e.p1742i.C25469g.AbstractC25470a
    /* renamed from: b */
    public void mo3368b(C25469g c25469g) {
        l.e(c25469g, "menu");
    }
}
