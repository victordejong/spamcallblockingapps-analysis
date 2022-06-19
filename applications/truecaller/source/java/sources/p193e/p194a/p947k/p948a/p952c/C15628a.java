package p193e.p194a.p947k.p948a.p952c;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.themes.C4621R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.C4718R;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p1727n3.p1728a.p1730e.p1731d.C25379c;
import p1727n3.p1728a.p1730e.p1731d.C25380d;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p947k.p972m.C16132f;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0001\u0018�� 32\u00020\u00012\u00020\u0002:\u00014B\u0007¢\u0006\u0004\b2\u0010\u0014J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J+\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0019\u0010\u0014J\u000f\u0010\u001a\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001a\u0010\u0014R\u001d\u0010 \u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR$\u0010&\u001a\u0010\u0012\f\u0012\n #*\u0004\u0018\u00010\"0\"0!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R$\u0010)\u001a\u0010\u0012\f\u0012\n #*\u0004\u0018\u00010'0'0!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010%R$\u00101\u001a\u0004\u0018\u00010*8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100¨\u00065"}, d2 = {"Le/a/k/a/c/a;", "Ln3/r/a/k;", "Le/a/k/a/c/e;", "", "getTheme", "()I", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Kg", "t", "Le/a/k/m/f;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/k/m/f;", "binding", "Ln3/a/e/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "i", "Ln3/a/e/b;", "startPermissionSettingsForResult", "", "h", "cameraPermission", "Landroid/content/DialogInterface$OnDismissListener;", "g", "Landroid/content/DialogInterface$OnDismissListener;", "getDismissListener$video_caller_id_release", "()Landroid/content/DialogInterface$OnDismissListener;", "setDismissListener$video_caller_id_release", "(Landroid/content/DialogInterface$OnDismissListener;)V", "dismissListener", "<init>", "k", C22021b.f61237c, "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k.a.c.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/c/a.class */
public final class C15628a extends AbstractC15638g implements AbstractC15636e {

    /* renamed from: j */
    public static final /* synthetic */ l[] f44163j = {C22128a.m8621g0(C15628a.class, "binding", "getBinding()Lcom/truecaller/videocallerid/databinding/DialogVideoCallerIdCameraPermissionBinding;", 0)};

    /* renamed from: k */
    public static final C15630b f44164k = new C15630b(null);
    @Inject

    /* renamed from: e */
    public C15637f f44165e;

    /* renamed from: f */
    public final ViewBindingProperty f44166f = new C19350a(new C15629a());

    /* renamed from: g */
    public DialogInterface.OnDismissListener f44167g;

    /* renamed from: h */
    public final AbstractC25374b<String> f44168h;

    /* renamed from: i */
    public final AbstractC25374b<Intent> f44169i;

    /* renamed from: e.a.k.a.c.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/c/a$a.class */
    public static final class C15629a extends m implements s1.z.b.l<C15628a, C16132f> {
        public C15629a() {
            super(1);
        }

        /* renamed from: d */
        public Object m18562d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4718R.C4720id.buttonDivider1View;
            View findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C4718R.C4720id.buttonDivider2View;
                View findViewById2 = requireView.findViewById(i);
                if (findViewById2 != null) {
                    i = C4718R.C4720id.cameraImageView;
                    ImageView imageView = (ImageView) requireView.findViewById(i);
                    if (imageView != null) {
                        i = C4718R.C4720id.cancelButton;
                        Button button = (Button) requireView.findViewById(i);
                        if (button != null) {
                            i = C4718R.C4720id.continueButton;
                            Button button2 = (Button) requireView.findViewById(i);
                            if (button2 != null) {
                                i = C4718R.C4720id.descTextView;
                                TextView textView = (TextView) requireView.findViewById(i);
                                if (textView != null) {
                                    i = C4718R.C4720id.titleTextView;
                                    TextView textView2 = (TextView) requireView.findViewById(i);
                                    if (textView2 != null) {
                                        return new C16132f((CardView) requireView, findViewById, findViewById2, imageView, button, button2, textView, textView2);
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

    /* renamed from: e.a.k.a.c.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/c/a$b.class */
    public static final class C15630b {
        public C15630b(f fVar) {
        }
    }

    /* renamed from: e.a.k.a.c.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/c/a$c.class */
    public static final class C15631c<O> implements AbstractC25373a<Boolean> {
        public C15631c() {
            C15628a.this = r4;
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25373a
        /* renamed from: a */
        public void mo3695a(Boolean bool) {
            Boolean bool2 = bool;
            s1.z.c.l.d(bool2, "granted");
            if (bool2.booleanValue()) {
                C15628a.this.dismiss();
            }
        }
    }

    /* renamed from: e.a.k.a.c.a$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/c/a$d.class */
    public static final class C15632d<O> implements AbstractC25373a<ActivityResult> {
        public C15632d() {
            C15628a.this = r4;
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25373a
        /* renamed from: a */
        public void mo3695a(ActivityResult activityResult) {
            if (C26467a.m1801a(C15628a.this.requireContext(), "android.permission.CAMERA") == 0) {
                C15628a.this.dismiss();
            }
        }
    }

    public C15628a() {
        AbstractC25374b<String> registerForActivityResult = registerForActivityResult(new C25379c(), new C15631c());
        s1.z.c.l.d(registerForActivityResult, "registerForActivityResul…e -> Unit\n        }\n    }");
        this.f44168h = registerForActivityResult;
        AbstractC25374b<Intent> registerForActivityResult2 = registerForActivityResult(new C25380d(), new C15632d());
        s1.z.c.l.d(registerForActivityResult2, "registerForActivityResul…dismiss()\n        }\n    }");
        this.f44169i = registerForActivityResult2;
    }

    @Override // p193e.p194a.p947k.p948a.p952c.AbstractC15636e
    /* renamed from: Kg */
    public void mo18561Kg() {
        if (C26467a.m1801a(requireContext(), "android.permission.CAMERA") == 0) {
            dismiss();
        } else if (!shouldShowRequestPermissionRationale("android.permission.CAMERA")) {
            this.f44168h.mo3694a("android.permission.CAMERA", null);
        } else {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            n3.r.a.l activity = getActivity();
            Intent data = intent.setData(Uri.fromParts("package", activity != null ? activity.getPackageName() : null, null));
            s1.z.c.l.d(data, "Intent(Settings.ACTION_A…vity?.packageName, null))");
            this.f44169i.mo3694a(data, null);
        }
    }

    /* renamed from: QA */
    public final C16132f m18563QA() {
        return (C16132f) this.f44166f.m34468b(this, f44163j[0]);
    }

    public int getTheme() {
        return C4621R.style.StyleX_Dialog_Startup;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4718R.layout.dialog_video_caller_id_camera_permission, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.toThemeInflater…ission, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        C15637f c15637f = this.f44165e;
        if (c15637f == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c15637f.mo9806c();
        C15628a.super.onDestroyView();
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C15628a.super.onDismiss(dialogInterface);
        DialogInterface.OnDismissListener onDismissListener = this.f44167g;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15628a.super.onViewCreated(view, bundle);
        C15637f c15637f = this.f44165e;
        if (c15637f == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c15637f.f57683a = this;
        m18563QA().f45471d.setOnClickListener(new View$OnClickListenerC15634c(this));
        m18563QA().f45470c.setOnClickListener(new View$OnClickListenerC15633b(this));
        TextView textView = m18563QA().f45472e;
        s1.z.c.l.d(textView, "binding.descTextView");
        textView.setText(getString(C4718R.string.vid_permission_dialog_description, new Object[]{getString(C4718R.string.video_caller_id)}));
    }

    @Override // p193e.p194a.p947k.p948a.p952c.AbstractC15636e
    /* renamed from: t */
    public void mo18560t() {
        dismissAllowingStateLoss();
    }
}
