package p193e.p194a.p682e.p683a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.AbstractC6392i0;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b&\u0010'J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR%\u0010\u0015\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R%\u0010\u001a\u001a\n \u0010*\u0004\u0018\u00010\u00160\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0019R%\u0010\u001d\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0012\u001a\u0004\b\u001c\u0010\u0014R\"\u0010%\u001a\u00020\u001e8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006("}, d2 = {"Le/a/e/a/p3;", "Ln3/b/a/q;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/widget/EditText;", "kotlin.jvm.PlatformType", "h", "Ls1/g;", "getTotalSizeEdit", "()Landroid/widget/EditText;", "totalSizeEdit", "Landroid/widget/Button;", "f", "getApplySizesBtn", "()Landroid/widget/Button;", "applySizesBtn", "g", "getBatchSizeEdit", "batchSizeEdit", "Le/a/a/i0;", "e", "Le/a/a/i0;", "getMessageSettings$truecaller_googlePlayRelease", "()Le/a/a/i0;", "setMessageSettings$truecaller_googlePlayRelease", "(Le/a/a/i0;)V", "messageSettings", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.a.p3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/p3.class */
public final class C12798p3 extends AbstractC12833v2 {
    @Inject

    /* renamed from: e */
    public AbstractC6392i0 f37261e;

    /* renamed from: f */
    public final g f37262f = C19286f.m13659t(this, C2752R.C2754id.apply_sizes_btn);

    /* renamed from: g */
    public final g f37263g = C19286f.m13659t(this, C2752R.C2754id.batch_size_edit);

    /* renamed from: h */
    public final g f37264h = C19286f.m13659t(this, C2752R.C2754id.total_size_edit);

    /* renamed from: e.a.e.a.p3$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/p3$a.class */
    public static final class View$OnClickListenerC12799a implements View.OnClickListener {
        public View$OnClickListenerC12799a() {
            C12798p3.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12798p3 c12798p3 = C12798p3.this;
            EditText editText = (EditText) c12798p3.f37263g.getValue();
            l.d(editText, "batchSizeEdit");
            int parseInt = Integer.parseInt(editText.getText().toString());
            EditText editText2 = (EditText) c12798p3.f37264h.getValue();
            l.d(editText2, "totalSizeEdit");
            int parseInt2 = Integer.parseInt(editText2.getText().toString());
            if (parseInt > parseInt2) {
                Toast.makeText(c12798p3.getContext(), "Total count should be greater than batch size", 0).show();
                return;
            }
            AbstractC6392i0 abstractC6392i0 = c12798p3.f37261e;
            if (abstractC6392i0 == null) {
                l.l("messageSettings");
                throw null;
            }
            abstractC6392i0.mo31237A0(parseInt);
            AbstractC6392i0 abstractC6392i02 = c12798p3.f37261e;
            if (abstractC6392i02 == null) {
                l.l("messageSettings");
                throw null;
            }
            abstractC6392i02.mo31154Q3(parseInt2);
            c12798p3.dismiss();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.dialog_qa_edit_history_batch_size, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C12798p3.super.onViewCreated(view, bundle);
        ((Button) this.f37262f.getValue()).setOnClickListener(new View$OnClickListenerC12799a());
    }
}
