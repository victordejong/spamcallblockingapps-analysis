package p193e.p194a.p619d.p643d.p644a.p645a.p647b;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.availability.AvailabilityXView;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import e.m.d.y.n;
import java.util.Set;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17408d;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.a.b.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/b/d.class */
public final class C11651d extends RecyclerView.AbstractC0313c0 implements AbstractC11649b {

    /* renamed from: a */
    public final g f34200a;

    /* renamed from: b */
    public final g f34201b;

    /* renamed from: c */
    public final g f34202c;

    /* renamed from: d */
    public final g f34203d;

    /* renamed from: e */
    public final C19235i0 f34204e;

    /* renamed from: f */
    public final C8243a f34205f;

    /* renamed from: g */
    public final C17408d f34206g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11651d(AbstractC18905m abstractC18905m, AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c, View view) {
        super(view);
        l.e(abstractC18905m, "eventReceiver");
        l.e(abstractC17405c, "availabilityManager");
        l.e(abstractC19222c, "clock");
        l.e(view, ViewAction.VIEW);
        g m13660s = C19286f.m13660s(view, C2752R.C2754id.cancel_selection);
        this.f34200a = m13660s;
        g m13660s2 = C19286f.m13660s(view, 2131362231);
        this.f34201b = m13660s2;
        this.f34202c = C19286f.m13660s(view, C2752R.C2754id.text_contact_name);
        this.f34203d = C19286f.m13660s(view, 2131362225);
        Context context = view.getContext();
        l.d(context, "view.context");
        C19235i0 c19235i0 = new C19235i0(context);
        this.f34204e = c19235i0;
        C8243a c8243a = new C8243a(c19235i0);
        this.f34205f = c8243a;
        this.f34206g = new C17408d(c19235i0, abstractC17405c, abstractC19222c);
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        n.f1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        ((AvatarXView) m13660s2.getValue()).setPresenter(c8243a);
        AppCompatImageView appCompatImageView = (AppCompatImageView) m13660s.getValue();
        l.d(appCompatImageView, "cancelSelectionView");
        C19286f.m13684T(appCompatImageView);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p647b.AbstractC11649b
    /* renamed from: a */
    public void mo24318a(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, "avatarXConfig");
        this.f34205f.m28740nk(avatarXConfig, true);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p647b.AbstractC11649b
    /* renamed from: m */
    public void mo24317m(Set<String> set) {
        l.e(set, "availabilityIdentifier");
        this.f34206g.m16139Lj(set);
        ((AvailabilityXView) this.f34203d.getValue()).setPresenter(this.f34206g);
    }

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p647b.AbstractC11649b
    public void setTitle(String str) {
        l.e(str, "title");
        TextView textView = (TextView) this.f34202c.getValue();
        l.d(textView, "contactNameTextView");
        textView.setText(str);
    }
}
