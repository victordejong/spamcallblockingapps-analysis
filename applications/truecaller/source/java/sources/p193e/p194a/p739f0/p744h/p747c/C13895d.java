package p193e.p194a.p739f0.p744h.p747c;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.social_media.C4497R;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.c.b;
import p1727n3.p1849n.AbstractC26863d;
import p1727n3.p1849n.C26866g;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19496e;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p739f0.C13866a;
import p193e.p194a.p739f0.p741e.AbstractC13878c;
import p193e.p194a.p739f0.p742f.C13880a;
import p193e.p194a.p739f0.p742f.C13881b;
import p193e.p194a.p739f0.p742f.C13882c;
import p193e.p194a.p739f0.p742f.C13883d;
import p193e.p194a.p739f0.p742f.C13884e;
import p193e.p194a.p739f0.p743g.AbstractC13885a;
import p193e.p194a.p739f0.p744h.p745a.C13887a;
import p193e.p194a.p739f0.p744h.p746b.AbstractC13888a;
import p193e.p194a.p739f0.p744h.p746b.C13889b;
import p193e.p194a.p739f0.p748i.C13900b;
import p193e.p194a.p739f0.p748i.C13902c;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b5\u0010#J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J+\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0015\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J#\u0010\u001d\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010 \u001a\u00020\u00052\b\u0010\u001f\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'R\u001f\u0010+\u001a\u0004\u0018\u00010\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010\u0019R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b-\u0010.R\u001d\u00104\u001a\u0002008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010)\u001a\u0004\b2\u00103¨\u00066"}, d2 = {"Le/a/f0/h/c/d;", "Landroidx/fragment/app/Fragment;", "Le/a/f0/h/b/a;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "Le/a/f0/h/a/a;", "items", "Gz", "(Ljava/util/List;)V", "", "getSource", "()Ljava/lang/String;", "Landroid/content/Intent;", "appIntent", "fallbackBrowserIntent", "Og", "(Landroid/content/Intent;Landroid/content/Intent;)V", "browserIntent", "Rz", "(Landroid/content/Intent;)V", "onDestroyView", "()V", "", RemoteMessageConst.Notification.ICON, "Ze", "(I)V", "d", "Ls1/g;", "getLaunchSource", "launchSource", "Le/a/f0/e/c;", C22021b.f61237c, "Le/a/f0/e/c;", "binding", "Le/a/f0/h/c/a;", AbstractC2405c.f7629a, "getSocialMediaAdapter", "()Le/a/f0/h/c/a;", "socialMediaAdapter", "<init>", "social-media_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f0.h.c.d */
/* loaded from: classes13-dex2jar.jar:e/a/f0/h/c/d.class */
public final class C13895d extends Fragment implements AbstractC13888a {
    @Inject

    /* renamed from: a */
    public C13889b f40278a;

    /* renamed from: b */
    public AbstractC13878c f40279b;

    /* renamed from: c */
    public final g f40280c = C25225a.m3978P1(new C13897b());

    /* renamed from: d */
    public final g f40281d = C25225a.m3978P1(new C13896a());

    /* renamed from: e.a.f0.h.c.d$a */
    /* loaded from: classes13-dex2jar.jar:e/a/f0/h/c/d$a.class */
    public static final class C13896a extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13896a() {
            super(0);
            C13895d.this = r4;
        }

        public Object invoke() {
            Bundle arguments = C13895d.this.getArguments();
            return arguments != null ? arguments.getString("arg_source") : null;
        }
    }

    /* renamed from: e.a.f0.h.c.d$b */
    /* loaded from: classes13-dex2jar.jar:e/a/f0/h/c/d$b.class */
    public static final class C13897b extends m implements a<C13890a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13897b() {
            super(0);
            C13895d.this = r4;
        }

        public Object invoke() {
            return new C13890a(new C13898e(C13895d.this));
        }
    }

    @Override // p193e.p194a.p739f0.p744h.p746b.AbstractC13888a
    /* renamed from: Gz */
    public void mo20972Gz(List<C13887a> list) {
        l.e(list, "items");
        ((C13890a) this.f40280c.getValue()).submitList(list);
    }

    @Override // p193e.p194a.p739f0.p744h.p746b.AbstractC13888a
    /* renamed from: Og */
    public void mo20971Og(Intent intent, Intent intent2) {
        if (intent != null) {
            Context requireContext = requireContext();
            l.d(requireContext, "requireContext()");
            if (!C17422k.m16053t(intent, requireContext)) {
                intent = null;
            }
            if (intent != null) {
                try {
                    startActivity(intent);
                    return;
                } catch (ActivityNotFoundException e) {
                    mo20970Rz(intent2);
                    return;
                }
            }
        }
        mo20970Rz(intent2);
    }

    @Override // p193e.p194a.p739f0.p744h.p746b.AbstractC13888a
    /* renamed from: Rz */
    public void mo20970Rz(Intent intent) {
        if (intent != null) {
            Context requireContext = requireContext();
            l.d(requireContext, "requireContext()");
            if (!C17422k.m16053t(intent, requireContext)) {
                intent = null;
            }
            if (intent == null) {
                return;
            }
            try {
                startActivity(intent);
            } catch (ActivityNotFoundException e) {
            }
        }
    }

    @Override // p193e.p194a.p739f0.p744h.p746b.AbstractC13888a
    /* renamed from: Ze */
    public void mo20969Ze(int i) {
        AbstractC13878c abstractC13878c = this.f40279b;
        if (abstractC13878c != null) {
            abstractC13878c.mo20975a(Integer.valueOf(i));
        } else {
            l.l("binding");
            throw null;
        }
    }

    @Override // p193e.p194a.p739f0.p744h.p746b.AbstractC13888a
    public String getSource() {
        return (String) this.f40281d.getValue();
    }

    public void onCreate(Bundle bundle) {
        C13895d.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.e(activity, "$this$buildSocialMediaComponent");
            Context applicationContext = activity.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
            AbstractC8412c m28549N = ((AbstractApplicationC8442a) applicationContext).m28549N();
            l.d(m28549N, "(this.applicationContext…licationBase).commonGraph");
            Context applicationContext2 = activity.getApplicationContext();
            Objects.requireNonNull(applicationContext2, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
            AbstractC19496e m28552K = ((AbstractApplicationC8442a) applicationContext2).m28552K();
            l.d(m28552K, "(applicationContext as A…nBase).analyticsComponent");
            C25225a.m3846s(m28549N, AbstractC8412c.class);
            C25225a.m3846s(m28552K, AbstractC19496e.class);
            C13881b c13881b = new C13881b(m28549N);
            C13883d c13883d = new C13883d(c13881b, new C13884e(c13881b));
            Object obj = b.c;
            if (!(c13883d instanceof b)) {
                c13883d = new b(c13883d);
            }
            C13880a c13880a = new C13880a(m28549N);
            C13882c c13882c = new C13882c(m28549N);
            AbstractC13885a abstractC13885a = (AbstractC13885a) c13883d.get();
            AbstractC19462a mo12776C4 = m28552K.mo12776C4();
            Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
            o3.a a = b.a(c13880a);
            o3.a a2 = b.a(c13882c);
            C20592g mo12343i5 = m28549N.mo12343i5();
            Objects.requireNonNull(mo12343i5, "Cannot return null from a non-@Nullable component method");
            this.f40278a = new C13889b(new C13866a(abstractC13885a, mo12776C4, a, a2, mo12343i5));
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        int i = AbstractC13878c.f40251d;
        AbstractC26863d abstractC26863d = C26866g.f75137a;
        AbstractC13878c inflateInternal = ViewDataBinding.inflateInternal(layoutInflater, C4497R.layout.fragment_social_media_links, viewGroup, false, (Object) null);
        l.d(inflateInternal, "SocialMediaLinksLayout.i…flater, container, false)");
        this.f40279b = inflateInternal;
        if (inflateInternal == null) {
            l.l("binding");
            throw null;
        }
        View root = inflateInternal.getRoot();
        l.d(root, "let {\n        binding = …       binding.root\n    }");
        return root;
    }

    public void onDestroyView() {
        C13895d.super.onDestroyView();
        C13889b c13889b = this.f40278a;
        if (c13889b != null) {
            c13889b.f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C13895d.super.onViewCreated(view, bundle);
        AbstractC13878c abstractC13878c = this.f40279b;
        if (abstractC13878c == null) {
            l.l("binding");
            throw null;
        }
        RecyclerView recyclerView = abstractC13878c.f40253b;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        int i = C4497R.C4498drawable.divider;
        int i2 = C4497R.dimen.recycler_item_divider_width;
        l.e(recyclerView, "$this$verticalDivider");
        Context context = recyclerView.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        l.e(context, AnalyticsConstants.CONTEXT);
        InsetDrawable insetDrawable = new InsetDrawable(context.getDrawable(i), C13902c.m20966a(Integer.valueOf(i2), context, 0), C13902c.m20966a(null, context, 0), C13902c.m20966a(null, context, 0), C13902c.m20966a(null, context, 0));
        Context context2 = recyclerView.getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        l.e(insetDrawable, "$this$toVerticalListDivider");
        l.e(context2, AnalyticsConstants.CONTEXT);
        l.e(insetDrawable, "$this$toListDivider");
        l.e(context2, AnalyticsConstants.CONTEXT);
        recyclerView.addItemDecoration(new C13900b(context2, 1, insetDrawable, null, 8));
        recyclerView.setAdapter((C13890a) this.f40280c.getValue());
        C13889b c13889b = this.f40278a;
        if (c13889b != null) {
            c13889b.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }
}
