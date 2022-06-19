package p193e.p194a.p682e.p683a;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.dialogs.DeleteOtpBottomSheetOption;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18166j;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.s;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001B\u001f\u0012\u0016\b\u0002\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\f\u0018\u00010\u001d¢\u0006\u0004\b#\u0010$J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR'\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\f\u0018\u00010\u001d8\u0006@\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!¨\u0006%"}, d2 = {"Le/a/e/a/a;", "Le/m/a/g/e/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;", C22021b.f61237c, "Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;", "selectedOption", "Le/a/m3/j;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/m3/j;", "binding", "Lkotlin/Function1;", AbstractC2405c.f7629a, "Ls1/z/b/l;", "getCallback", "()Ls1/z/b/l;", "callback", "<init>", "(Ls1/z/b/l;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.a.a */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/a.class */
public final class C12669a extends e {

    /* renamed from: d */
    public static final /* synthetic */ l[] f36935d = {C22128a.m8621g0(C12669a.class, "binding", "getBinding()Lcom/truecaller/databinding/BottomSheetDeleteOtpBinding;", 0)};

    /* renamed from: a */
    public final ViewBindingProperty f36936a;

    /* renamed from: b */
    public DeleteOtpBottomSheetOption f36937b;

    /* renamed from: c */
    public final s1.z.b.l<DeleteOtpBottomSheetOption, s> f36938c;

    /* renamed from: e.a.e.a.a$a */
    /* loaded from: classes2-dex2jar.jar:e/a/e/a/a$a.class */
    public static final class View$OnClickListenerC12670a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f36939a;

        /* renamed from: b */
        public final /* synthetic */ Object f36940b;

        public View$OnClickListenerC12670a(int i, Object obj) {
            this.f36939a = i;
            this.f36940b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f36939a;
            if (i == 0) {
                C12669a c12669a = (C12669a) this.f36940b;
                c12669a.f36937b = DeleteOtpBottomSheetOption.JUST_DELETE_OTP;
                c12669a.dismiss();
            } else if (i != 1) {
                throw null;
            } else {
                C12669a c12669a2 = (C12669a) this.f36940b;
                c12669a2.f36937b = DeleteOtpBottomSheetOption.TRY_INBOX_CLEANER;
                c12669a2.dismiss();
            }
        }
    }

    /* renamed from: e.a.e.a.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/a$b.class */
    public static final class C12671b extends m implements s1.z.b.l<C12669a, C18166j> {
        public C12671b() {
            super(1);
        }

        /* renamed from: d */
        public Object m22761d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362422;
            Button button = (Button) requireView.findViewById(C2752R.C2754id.btnDelete);
            if (button != null) {
                i = 2131362451;
                MaterialButton findViewById = requireView.findViewById(C2752R.C2754id.btnTry);
                if (findViewById != null) {
                    i = 2131366677;
                    TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.txtSubtitle);
                    if (textView != null) {
                        i = 2131366678;
                        TextView textView2 = (TextView) requireView.findViewById(C2752R.C2754id.txtTitle);
                        if (textView2 != null) {
                            return new C18166j((ConstraintLayout) requireView, button, findViewById, textView, textView2);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    public C12669a() {
        this.f36938c = null;
        this.f36936a = new C19350a(new C12671b());
        this.f36937b = DeleteOtpBottomSheetOption.DISMISS_PROMPT;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C12669a(s1.z.b.l<? super DeleteOtpBottomSheetOption, s> lVar) {
        this.f36938c = lVar;
        this.f36936a = new C19350a(new C12671b());
        this.f36937b = DeleteOtpBottomSheetOption.DISMISS_PROMPT;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.bottom_sheet_delete_otp, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        s1.z.b.l<DeleteOtpBottomSheetOption, s> lVar = this.f36938c;
        if (lVar != null) {
            s sVar = (s) lVar.d(this.f36937b);
        }
        C12669a.super.onDismiss(dialogInterface);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C12669a.super.onViewCreated(view, bundle);
        C18166j c18166j = (C18166j) this.f36936a.m34468b(this, f36935d[0]);
        c18166j.f51264a.setOnClickListener(new View$OnClickListenerC12670a(0, this));
        c18166j.f51265b.setOnClickListener(new View$OnClickListenerC12670a(1, this));
    }
}
