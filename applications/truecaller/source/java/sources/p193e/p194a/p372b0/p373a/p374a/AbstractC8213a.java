package p193e.p194a.p372b0.p373a.p374a;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.C3700R;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0016\b&\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bJ\u0010#J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H&¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H&¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0011H&¢\u0006\u0004\b\u0015\u0010\u0013J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0011H&¢\u0006\u0004\b\u0016\u0010\u0013J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u0017H&¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u001d\u0010\u0013J\u0011\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u001aH\u0014¢\u0006\u0004\b!\u0010\u001cJ\u000f\u0010\"\u001a\u00020\u0004H&¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0004H&¢\u0006\u0004\b$\u0010#R\u001d\u0010*\u001a\u00020%8D@\u0004X\u0084\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001d\u0010/\u001a\u00020+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010'\u001a\u0004\b-\u0010.R\u001c\u00104\u001a\u00020\u00178\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u001d\u00109\u001a\u0002058D@\u0004X\u0084\u0084\u0002¢\u0006\f\n\u0004\b6\u0010'\u001a\u0004\b7\u00108R\u001d\u0010<\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010'\u001a\u0004\b;\u0010)R\u001d\u0010?\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010'\u001a\u0004\b>\u0010)R\u001d\u0010C\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010'\u001a\u0004\bA\u0010BR\u001d\u0010F\u001a\u00020+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010'\u001a\u0004\bE\u0010.R\u001d\u0010I\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bG\u0010'\u001a\u0004\bH\u0010B¨\u0006K"}, d2 = {"Le/a/b0/a/a/a;", "Ln3/b/a/q;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "ZA", "()Ljava/lang/String;", "YA", "XA", "WA", "", "QA", "()Ljava/lang/Integer;", "", "PA", "()Z", "TA", "Landroid/graphics/drawable/Drawable;", "RA", "()Landroid/graphics/drawable/Drawable;", "OA", "aB", "()V", "bB", "Landroid/widget/TextView;", AbstractC2405c.f7629a, "Ls1/g;", "getTitleTextView", "()Landroid/widget/TextView;", "titleTextView", "Landroid/widget/Button;", "i", "getPositiveButton", "()Landroid/widget/Button;", "positiveButton", "a", "I", "UA", "()I", "layoutId", "Landroid/widget/ImageView;", C22021b.f61237c, "VA", "()Landroid/widget/ImageView;", "logoImageView", "e", "SA", "infoTextView", "d", "getSubtitleTextView", "subtitleTextView", "h", "getNegativeButtonDividerTop", "()Landroid/view/View;", "negativeButtonDividerTop", "g", "getNegativeButton", "negativeButton", "f", "getNegativeButtonDividerBottom", "negativeButtonDividerBottom", "<init>", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b0.a.a.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/a.class */
public abstract class AbstractC8213a extends q {

    /* renamed from: a */
    public final int f25357a = C3700R.layout.layout_tcx_startup_dialog;

    /* renamed from: b */
    public final g f25358b = C19286f.m13659t(this, C3700R.C3702id.logo);

    /* renamed from: c */
    public final g f25359c = C19286f.m13659t(this, C3700R.C3702id.title);

    /* renamed from: d */
    public final g f25360d = C19286f.m13659t(this, C3700R.C3702id.subtitle);

    /* renamed from: e */
    public final g f25361e = C19286f.m13659t(this, C3700R.C3702id.infoText);

    /* renamed from: f */
    public final g f25362f = C19286f.m13659t(this, C3700R.C3702id.negativeButtonDividerBottom);

    /* renamed from: g */
    public final g f25363g = C19286f.m13659t(this, C3700R.C3702id.negativeButton);

    /* renamed from: h */
    public final g f25364h = C19286f.m13659t(this, C3700R.C3702id.negativeButtonDividerTop);

    /* renamed from: i */
    public final g f25365i = C19286f.m13659t(this, C3700R.C3702id.positiveButton);

    /* renamed from: e.a.b0.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/b0/a/a/a$a.class */
    public static final class View$OnClickListenerC8214a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f25366a;

        /* renamed from: b */
        public final /* synthetic */ Object f25367b;

        public View$OnClickListenerC8214a(int i, Object obj) {
            this.f25366a = i;
            this.f25367b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f25366a;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                ((AbstractC8213a) this.f25367b).mo8997aB();
                ((AbstractC8213a) this.f25367b).dismissAllowingStateLoss();
                return;
            }
            ((AbstractC8213a) this.f25367b).mo8996bB();
            if (!((AbstractC8213a) this.f25367b).mo16325OA()) {
                return;
            }
            ((AbstractC8213a) this.f25367b).dismissAllowingStateLoss();
        }
    }

    /* renamed from: OA */
    public boolean mo16325OA() {
        return false;
    }

    /* renamed from: PA */
    public boolean mo17429PA() {
        return false;
    }

    /* renamed from: QA */
    public abstract Integer mo9002QA();

    /* renamed from: RA */
    public Drawable mo17431RA() {
        return null;
    }

    /* renamed from: SA */
    public final TextView m28769SA() {
        return (TextView) this.f25361e.getValue();
    }

    /* renamed from: TA */
    public String mo17428TA() {
        return null;
    }

    /* renamed from: UA */
    public int mo17430UA() {
        return this.f25357a;
    }

    /* renamed from: VA */
    public final ImageView m28768VA() {
        return (ImageView) this.f25358b.getValue();
    }

    /* renamed from: WA */
    public abstract String mo9001WA();

    /* renamed from: XA */
    public abstract String mo9000XA();

    /* renamed from: YA */
    public abstract String mo8999YA();

    /* renamed from: ZA */
    public abstract String mo8998ZA();

    /* renamed from: aB */
    public abstract void mo8997aB();

    /* renamed from: bB */
    public abstract void mo8996bB();

    public void onCreate(Bundle bundle) {
        AbstractC8213a.super.onCreate(bundle);
        setStyle(0, C3700R.style.StyleX_Dialog_Startup);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(mo17430UA(), viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        AbstractC8213a.super.onViewCreated(view, bundle);
        Button button = (Button) this.f25365i.getValue();
        button.setText(mo9000XA());
        C19286f.m13683U((View) this.f25362f.getValue(), true);
        button.setOnClickListener(new View$OnClickListenerC8214a(0, this));
        Button button2 = (Button) this.f25363g.getValue();
        boolean z = mo9001WA() != null;
        button2.setText(mo9001WA());
        C19286f.m13683U(button2, z);
        C19286f.m13683U((View) this.f25364h.getValue(), z);
        button2.setOnClickListener(new View$OnClickListenerC8214a(1, this));
        ((TextView) this.f25359c.getValue()).setText(mo8998ZA());
        ((TextView) this.f25360d.getValue()).setText(mo8999YA());
        ImageView m28768VA = m28768VA();
        boolean z2 = false;
        if (mo9002QA() != null) {
            z2 = true;
        }
        C19286f.m13683U(m28768VA, z2);
        Integer mo9002QA = mo9002QA();
        if (mo9002QA != null) {
            C19291g.m13528n1(m28768VA, mo9002QA.intValue(), true);
        }
        C19286f.m13683U(m28769SA(), mo17429PA());
        if (mo17429PA()) {
            m28769SA().setText(mo17428TA());
            m28769SA().setCompoundDrawablesWithIntrinsicBounds(mo17431RA(), (Drawable) null, (Drawable) null, (Drawable) null);
        }
    }
}
