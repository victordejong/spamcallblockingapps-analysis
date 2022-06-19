package p193e.p194a.p682e.p683a;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b&\u0010'J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u0016\u001a\u00020\u000f8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R%\u0010\u001d\u001a\n \u0018*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR%\u0010 \u001a\n \u0018*\u0004\u0018\u00010\u00170\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001a\u001a\u0004\b\u001f\u0010\u001cR%\u0010%\u001a\n \u0018*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001a\u001a\u0004\b#\u0010$¨\u0006("}, d2 = {"Le/a/e/a/b;", "Ln3/b/a/q;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/p4/b;", "e", "Le/a/p4/b;", "getQaMenuSettings$truecaller_googlePlayRelease", "()Le/a/p4/b;", "setQaMenuSettings$truecaller_googlePlayRelease", "(Le/a/p4/b;)V", "qaMenuSettings", "Landroid/widget/Button;", "kotlin.jvm.PlatformType", "h", "Ls1/g;", "getOk", "()Landroid/widget/Button;", "ok", "g", "getCancel", "cancel", "Landroid/widget/EditText;", "f", "getCustomRepliesEdit", "()Landroid/widget/EditText;", "customRepliesEdit", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.a.b */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/b.class */
public final class C12680b extends AbstractC12819t2 {
    @Inject

    /* renamed from: e */
    public AbstractC19215b f36958e;

    /* renamed from: f */
    public final g f36959f = C19286f.m13659t(this, C2752R.C2754id.customReplies);

    /* renamed from: g */
    public final g f36960g = C19286f.m13659t(this, C2752R.C2754id.cancel);

    /* renamed from: h */
    public final g f36961h = C19286f.m13659t(this, C2752R.C2754id.f9546ok);

    /* renamed from: e.a.e.a.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/e/a/b$a.class */
    public static final class View$OnClickListenerC12681a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f36962a;

        /* renamed from: b */
        public final /* synthetic */ Object f36963b;

        public View$OnClickListenerC12681a(int i, Object obj) {
            this.f36962a = i;
            this.f36963b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f36962a;
            if (i == 0) {
                Dialog dialog = ((C12680b) this.f36963b).getDialog();
                if (dialog == null) {
                    return;
                }
                dialog.cancel();
            } else if (i != 1) {
                throw null;
            } else {
                C12680b c12680b = (C12680b) this.f36963b;
                AbstractC19215b abstractC19215b = c12680b.f36958e;
                if (abstractC19215b == null) {
                    l.l("qaMenuSettings");
                    throw null;
                }
                EditText editText = (EditText) c12680b.f36959f.getValue();
                l.d(editText, "customRepliesEdit");
                abstractC19215b.mo13871F2(editText.getText().toString());
                Dialog dialog2 = ((C12680b) this.f36963b).getDialog();
                if (dialog2 == null) {
                    return;
                }
                dialog2.dismiss();
            }
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.dialog_qa_custom_replies, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C12680b.super.onViewCreated(view, bundle);
        EditText editText = (EditText) this.f36959f.getValue();
        AbstractC19215b abstractC19215b = this.f36958e;
        if (abstractC19215b == null) {
            l.l("qaMenuSettings");
            throw null;
        }
        editText.setText(abstractC19215b.mo13866O2());
        ((Button) this.f36960g.getValue()).setOnClickListener(new View$OnClickListenerC12681a(0, this));
        ((Button) this.f36961h.getValue()).setOnClickListener(new View$OnClickListenerC12681a(1, this));
    }
}
