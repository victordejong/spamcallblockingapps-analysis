package p193e.p194a.p437c.p438a.p471e.p472a;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.google.android.material.C2080R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.card.MaterialCardView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.d;
import e.m.a.g.e.e;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p419m.p421b.AbstractC8510a;
import p193e.p194a.p437c.p438a.p471e.p473b.C8982a;
import p193e.p194a.p437c.p438a.p477g.C9071t;
import p193e.p194a.p437c.p548h.AbstractC10256f;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018�� .2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b-\u0010\u001aJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00112\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\"\u0010\"\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001d\u0010(\u001a\u00020#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006/"}, d2 = {"Le/a/c/a/e/a/i;", "Le/m/a/g/e/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "onDismiss", "OA", "()V", "Le/a/c/h/f;", C22021b.f61237c, "Le/a/c/h/f;", "getInsightsSmsIntents", "()Le/a/c/h/f;", "setInsightsSmsIntents", "(Le/a/c/h/f;)V", "insightsSmsIntents", "Le/a/c/a/g/t;", AbstractC2405c.f7629a, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/c/a/g/t;", "binding", "", "a", "Z", "closeActivityOnDismiss", "<init>", "f", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.e.a.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/i.class */
public final class C8977i extends e {

    /* renamed from: a */
    public boolean f27286a;
    @Inject

    /* renamed from: b */
    public AbstractC10256f f27287b;

    /* renamed from: c */
    public final ViewBindingProperty f27288c = new C19350a(new C8978a());

    /* renamed from: d */
    public static final /* synthetic */ l[] f27283d = {C22128a.m8621g0(C8977i.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetWhatIsSmartSmsBinding;", 0)};

    /* renamed from: f */
    public static final C8979b f27285f = new C8979b(null);

    /* renamed from: e */
    public static final String f27284e = C8977i.class.getName();

    /* renamed from: e.a.c.a.e.a.i$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/i$a.class */
    public static final class C8978a extends m implements s1.z.b.l<C8977i, C9071t> {
        public C8978a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27903d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            NestedScrollView requireView = fragment.requireView();
            int i = C4078R.C4080id.body;
            TextView textView = (TextView) requireView.findViewById(i);
            if (textView != null) {
                i = C4078R.C4080id.buttonBack;
                ImageView imageView = (ImageView) requireView.findViewById(i);
                if (imageView != null) {
                    i = C4078R.C4080id.card1;
                    MaterialCardView findViewById = requireView.findViewById(i);
                    if (findViewById != null) {
                        i = C4078R.C4080id.card2;
                        MaterialCardView findViewById2 = requireView.findViewById(i);
                        if (findViewById2 != null) {
                            i = C4078R.C4080id.card3;
                            MaterialCardView findViewById3 = requireView.findViewById(i);
                            if (findViewById3 != null) {
                                i = C4078R.C4080id.detailIcon1;
                                ImageView imageView2 = (ImageView) requireView.findViewById(i);
                                if (imageView2 != null) {
                                    i = C4078R.C4080id.detailIcon2;
                                    ImageView imageView3 = (ImageView) requireView.findViewById(i);
                                    if (imageView3 != null) {
                                        i = C4078R.C4080id.detailIcon3;
                                        ImageView imageView4 = (ImageView) requireView.findViewById(i);
                                        if (imageView4 != null) {
                                            i = C4078R.C4080id.detailScrollView;
                                            HorizontalScrollView horizontalScrollView = (HorizontalScrollView) requireView.findViewById(i);
                                            if (horizontalScrollView != null) {
                                                i = C4078R.C4080id.detailSubTitle1;
                                                TextView textView2 = (TextView) requireView.findViewById(i);
                                                if (textView2 != null) {
                                                    i = C4078R.C4080id.detailSubTitle2;
                                                    TextView textView3 = (TextView) requireView.findViewById(i);
                                                    if (textView3 != null) {
                                                        i = C4078R.C4080id.detailSubTitle3;
                                                        TextView textView4 = (TextView) requireView.findViewById(i);
                                                        if (textView4 != null) {
                                                            i = C4078R.C4080id.detailTag1;
                                                            TextView textView5 = (TextView) requireView.findViewById(i);
                                                            if (textView5 != null) {
                                                                i = C4078R.C4080id.detailTag2;
                                                                TextView textView6 = (TextView) requireView.findViewById(i);
                                                                if (textView6 != null) {
                                                                    i = C4078R.C4080id.detailTag3;
                                                                    TextView textView7 = (TextView) requireView.findViewById(i);
                                                                    if (textView7 != null) {
                                                                        i = C4078R.C4080id.detailTitle1;
                                                                        TextView textView8 = (TextView) requireView.findViewById(i);
                                                                        if (textView8 != null) {
                                                                            i = C4078R.C4080id.detailTitle2;
                                                                            TextView textView9 = (TextView) requireView.findViewById(i);
                                                                            if (textView9 != null) {
                                                                                i = C4078R.C4080id.detailTitle3;
                                                                                TextView textView10 = (TextView) requireView.findViewById(i);
                                                                                if (textView10 != null) {
                                                                                    i = C4078R.C4080id.error_text;
                                                                                    TextView textView11 = (TextView) requireView.findViewById(i);
                                                                                    if (textView11 != null) {
                                                                                        i = C4078R.C4080id.footerIcon;
                                                                                        ImageView imageView5 = (ImageView) requireView.findViewById(i);
                                                                                        if (imageView5 != null) {
                                                                                            i = C4078R.C4080id.footerSubtitle;
                                                                                            TextView textView12 = (TextView) requireView.findViewById(i);
                                                                                            if (textView12 != null) {
                                                                                                i = C4078R.C4080id.footerTitle;
                                                                                                TextView textView13 = (TextView) requireView.findViewById(i);
                                                                                                if (textView13 != null) {
                                                                                                    i = C4078R.C4080id.gotItBtn;
                                                                                                    Button button = (Button) requireView.findViewById(i);
                                                                                                    if (button != null) {
                                                                                                        i = C4078R.C4080id.icon_error;
                                                                                                        ImageView imageView6 = (ImageView) requireView.findViewById(i);
                                                                                                        if (imageView6 != null) {
                                                                                                            i = C4078R.C4080id.messageBubble;
                                                                                                            ImageView imageView7 = (ImageView) requireView.findViewById(i);
                                                                                                            if (imageView7 != null) {
                                                                                                                i = C4078R.C4080id.title;
                                                                                                                TextView textView14 = (TextView) requireView.findViewById(i);
                                                                                                                if (textView14 != null) {
                                                                                                                    return new C9071t(requireView, textView, imageView, findViewById, findViewById2, findViewById3, imageView2, imageView3, imageView4, horizontalScrollView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, imageView5, textView12, textView13, button, imageView6, imageView7, textView14);
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.e.a.i$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/i$b.class */
    public static final class C8979b {
        public C8979b(f fVar) {
        }
    }

    /* renamed from: e.a.c.a.e.a.i$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/i$c.class */
    public static final class DialogInterface$OnShowListenerC8980c implements DialogInterface.OnShowListener {
        public DialogInterface$OnShowListenerC8980c() {
            C8977i.this = r4;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            try {
                if (dialogInterface == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
                }
                FrameLayout frameLayout = (FrameLayout) ((d) dialogInterface).findViewById(C2080R.C2082id.design_bottom_sheet);
                if (frameLayout == null) {
                    return;
                }
                C8977i c8977i = C8977i.this;
                BottomSheetBehavior H = BottomSheetBehavior.H(frameLayout);
                s1.z.c.l.d(H, "BottomSheetBehavior.from(bottomSheet)");
                l[] lVarArr = C8977i.f27283d;
                Objects.requireNonNull(c8977i);
                H.M(3);
                H.D = true;
                C8981j c8981j = new C8981j(c8977i);
                if (!H.P.contains(c8981j)) {
                    H.P.add(c8981j);
                }
                Context context = C8977i.this.getContext();
                if (context == null) {
                    return;
                }
                s1.z.c.l.d(frameLayout, "bottomSheet");
                s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                frameLayout.setBackground(C17422k.m16104N(context, C4078R.C4079drawable.shape_tcx_bottom_sheet_background, C4078R.attr.tcx_backgroundPrimary));
            } catch (Exception e) {
                C10263b.f30414d.m26508b(new AssertionError("Bottom sheet unavailable"), null);
            }
        }
    }

    /* renamed from: OA */
    public final void m27904OA() {
        if (this.f27286a) {
            requireActivity().finish();
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C8977i.super.onCancel(dialogInterface);
        m27904OA();
    }

    public void onCreate(Bundle bundle) {
        C8977i.super.onCreate(bundle);
        AbstractC10451a abstractC10451a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
        AbstractC8412c m15207r = C18334g0.m15207r(this);
        AbstractC8510a abstractC8510a = (AbstractC8510a) C22128a.m8726C1(AbstractC8510a.class, "EntryPointAccessors.from…ntsComponent::class.java)");
        AbstractC10261a abstractC10261a = (AbstractC10261a) C22128a.m8726C1(AbstractC10261a.class, "EntryPointAccessors.from…onsComponent::class.java)");
        C25225a.m3846s(abstractC10451a, AbstractC10451a.class);
        C25225a.m3846s(m15207r, AbstractC8412c.class);
        C25225a.m3846s(abstractC8510a, AbstractC8510a.class);
        C25225a.m3846s(abstractC10261a, AbstractC10261a.class);
        new C8982a(abstractC10451a, m15207r, abstractC8510a, abstractC10261a, null);
        AbstractC10256f mo12391f1 = abstractC10261a.mo12391f1();
        Objects.requireNonNull(mo12391f1, "Cannot return null from a non-@Nullable component method");
        this.f27287b = mo12391f1;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = C8977i.super.onCreateDialog(bundle);
        s1.z.c.l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        onCreateDialog.setOnShowListener(new DialogInterface$OnShowListenerC8980c());
        return onCreateDialog;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.bottomsheet_what_is_smart_sms, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C8977i.super.onDismiss(dialogInterface);
        m27904OA();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8977i.super.onViewCreated(view, bundle);
        C9071t c9071t = (C9071t) this.f27288c.m34468b(this, f27283d[0]);
        HorizontalScrollView horizontalScrollView = c9071t.f27679b;
        s1.z.c.l.d(horizontalScrollView, "detailScrollView");
        horizontalScrollView.setHorizontalScrollBarEnabled(false);
        HorizontalScrollView horizontalScrollView2 = c9071t.f27679b;
        s1.z.c.l.d(horizontalScrollView2, "detailScrollView");
        horizontalScrollView2.setVerticalScrollBarEnabled(false);
        c9071t.f27680c.setOnClickListener(new View$OnClickListenerC25366n(0, this));
        c9071t.f27678a.setOnClickListener(new View$OnClickListenerC25366n(1, this));
    }
}
