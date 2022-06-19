package p193e.p194a.p717f.p718a.p721b.p724v;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.amazon.device.ads.MraidCloseCommand;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.incallui.C4013R;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p717f.p718a.p721b.p724v.AbstractC13617e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u001c\u0010\u001aJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J+\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\u0017\u001a\u00020\u00102\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0016\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001b\u0010\u001a¨\u0006\u001d"}, d2 = {"Le/a/f/a/b/v/a;", "Le/m/a/g/e/e;", "Le/a/f/a/b/v/c;", "", "getTheme", "()I", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "Le/a/f/a/b/v/e;", "items", "selectedItem", "zj", "(Ljava/util/List;Le/a/f/a/b/v/e;)V", MraidCloseCommand.NAME, "()V", "onDestroyView", "<init>", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f.a.b.v.a */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/v/a.class */
public final class C13612a extends AbstractC13621f implements AbstractC13615c {
    @Inject

    /* renamed from: e */
    public C13616d f39462e;

    /* renamed from: e.a.f.a.b.v.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/v/a$a.class */
    public static final class View$OnClickListenerC13613a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC13617e f39463a;

        /* renamed from: b */
        public final /* synthetic */ C13612a f39464b;

        public View$OnClickListenerC13613a(AbstractC13617e abstractC13617e, C13612a c13612a, RadioGroup radioGroup, AbstractC13617e abstractC13617e2) {
            this.f39463a = abstractC13617e;
            this.f39464b = c13612a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13616d c13616d = this.f39464b.f39462e;
            if (c13616d == null) {
                l.l("presenter");
                throw null;
            }
            AbstractC13617e abstractC13617e = this.f39463a;
            l.e(abstractC13617e, "item");
            if (abstractC13617e instanceof AbstractC13617e.C13619b) {
                c13616d.f39465b.mo21070P1();
            } else if (abstractC13617e instanceof AbstractC13617e.C13620c) {
                c13616d.f39465b.mo21077A0();
            } else if (abstractC13617e instanceof AbstractC13617e.C13618a) {
                c13616d.f39465b.mo21069S1(((AbstractC13617e.C13618a) abstractC13617e).f39470d);
            }
            AbstractC13615c abstractC13615c = (AbstractC13615c) c13616d.f57683a;
            if (abstractC13615c == null) {
                return;
            }
            abstractC13615c.close();
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p724v.AbstractC13615c
    public void close() {
        dismissAllowingStateLoss();
    }

    public int getTheme() {
        return C4013R.style.Theme_Design_Light_BottomSheetDialog_IncallUI;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4013R.layout.fragment_incallui_audio_route_picker, viewGroup, false);
        l.d(inflate, "inflater.inflate(R.layou…picker, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        C13616d c13616d = this.f39462e;
        if (c13616d == null) {
            l.l("presenter");
            throw null;
        }
        c13616d.f57683a = null;
        C13612a.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C13612a.super.onViewCreated(view, bundle);
        C13616d c13616d = this.f39462e;
        if (c13616d != null) {
            c13616d.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p724v.AbstractC13615c
    /* renamed from: zj */
    public void mo21485zj(List<? extends AbstractC13617e> list, AbstractC13617e abstractC13617e) {
        l.e(list, "items");
        l.e(abstractC13617e, "selectedItem");
        View view = getView();
        View view2 = view;
        if (!(view instanceof RadioGroup)) {
            view2 = null;
        }
        RadioGroup radioGroup = (RadioGroup) view2;
        if (radioGroup != null) {
            radioGroup.removeAllViews();
            for (AbstractC13617e abstractC13617e2 : list) {
                View inflate = getLayoutInflater().inflate(C4013R.layout.item_incallui_audio_route_picker, (ViewGroup) radioGroup, false);
                int i = C4013R.C4015id.image_icon;
                AppCompatImageView appCompatImageView = (AppCompatImageView) inflate.findViewById(i);
                if (appCompatImageView != null) {
                    i = C4013R.C4015id.text_name;
                    AppCompatCheckedTextView appCompatCheckedTextView = (AppCompatCheckedTextView) inflate.findViewById(i);
                    if (appCompatCheckedTextView != null) {
                        ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                        l.d(appCompatImageView, "routeItemViewBinding.imageIcon");
                        l.d(appCompatCheckedTextView, "routeItemViewBinding.textName");
                        appCompatImageView.setImageResource(abstractC13617e2.f39468b);
                        appCompatCheckedTextView.setText(abstractC13617e2.f39467a);
                        if (l.a(abstractC13617e2, abstractC13617e)) {
                            appCompatCheckedTextView.setChecked(true);
                        }
                        radioGroup.addView(constraintLayout);
                        constraintLayout.setOnClickListener(new View$OnClickListenerC13613a(abstractC13617e2, this, radioGroup, abstractC13617e));
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
            }
        }
    }
}
