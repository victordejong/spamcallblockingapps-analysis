package p193e.p194a.p682e.p683a;

import android.app.Dialog;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import q3.a.h1;
import q3.a.j0;
import q3.a.p1;
import q3.a.t0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.k;
import s1.s;
import s1.w.f;
import s1.z.b.l;
import s1.z.c.c0;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bQ\u0010$J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0017¢\u0006\u0004\b\r\u0010\u000eR%\u0010\u0015\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R%\u0010\u0018\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0012\u001a\u0004\b\u0017\u0010\u0014R%\u0010\u001b\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0012\u001a\u0004\b\u001a\u0010\u0014R(\u0010%\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u001d\u0010\u001e\u0012\u0004\b#\u0010$\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R%\u0010*\u001a\n \u0010*\u0004\u0018\u00010&0&8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u0012\u001a\u0004\b(\u0010)R%\u0010/\u001a\n \u0010*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u0012\u001a\u0004\b-\u0010.R\"\u00107\u001a\u0002008��@��X\u0081.¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R%\u0010:\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u0010\u0012\u001a\u0004\b9\u0010\u0014R%\u0010=\u001a\n \u0010*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010\u0012\u001a\u0004\b<\u0010.R%\u0010B\u001a\n \u0010*\u0004\u0018\u00010>0>8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010\u0012\u001a\u0004\b@\u0010AR%\u0010E\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010\u0012\u001a\u0004\bD\u0010\u0014R%\u0010H\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bF\u0010\u0012\u001a\u0004\bG\u0010\u0014R%\u0010M\u001a\n \u0010*\u0004\u0018\u00010I0I8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010\u0012\u001a\u0004\bK\u0010LR%\u0010P\u001a\n \u0010*\u0004\u0018\u00010&0&8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010\u0012\u001a\u0004\bO\u0010)¨\u0006R"}, d2 = {"Le/a/e/a/d4;", "Ln3/b/a/q;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroidx/appcompat/widget/SwitchCompat;", "kotlin.jvm.PlatformType", "l", "Ls1/g;", "getImage", "()Landroidx/appcompat/widget/SwitchCompat;", "image", "m", "getLocation", "location", "i", "getFile", "file", "Ls1/w/f;", "f", "Ls1/w/f;", "getUiContext", "()Ls1/w/f;", "setUiContext", "(Ls1/w/f;)V", "getUiContext$annotations", "()V", "uiContext", "Landroid/widget/TextView;", "o", "getNewFlagsValue", "()Landroid/widget/TextView;", "newFlagsValue", "Landroid/widget/Button;", "g", "getCancel", "()Landroid/widget/Button;", "cancel", "Landroid/content/ContentResolver;", "e", "Landroid/content/ContentResolver;", "getContentResolver$truecaller_googlePlayRelease", "()Landroid/content/ContentResolver;", "setContentResolver$truecaller_googlePlayRelease", "(Landroid/content/ContentResolver;)V", "contentResolver", "h", "getContact", AnalyticsConstants.CONTACT, "p", "getOk", "ok", "Landroid/widget/LinearLayout;", "j", "getFlagsList", "()Landroid/widget/LinearLayout;", "flagsList", "n", "getMessage", "message", "r", "getVideo", "video", "Landroid/widget/EditText;", "q", "getPhoneBusinessSender", "()Landroid/widget/EditText;", "phoneBusinessSender", "k", "getFlagsValue", "flagsValue", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.a.d4 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/d4.class */
public final class C12707d4 extends AbstractC12850y2 {
    @Inject

    /* renamed from: e */
    public ContentResolver f37039e;
    @Inject

    /* renamed from: f */
    public f f37040f;

    /* renamed from: g */
    public final g f37041g = C19286f.m13659t(this, C2752R.C2754id.cancel);

    /* renamed from: h */
    public final g f37042h = C19286f.m13659t(this, C2752R.C2754id.contact);

    /* renamed from: i */
    public final g f37043i = C19286f.m13659t(this, C2752R.C2754id.file);

    /* renamed from: j */
    public final g f37044j = C19286f.m13659t(this, C2752R.C2754id.flags_list);

    /* renamed from: k */
    public final g f37045k = C19286f.m13659t(this, C2752R.C2754id.flags_value);

    /* renamed from: l */
    public final g f37046l = C19286f.m13659t(this, 2131364231);

    /* renamed from: m */
    public final g f37047m = C19286f.m13659t(this, C2752R.C2754id.location);

    /* renamed from: n */
    public final g f37048n = C19286f.m13659t(this, 2131364785);

    /* renamed from: o */
    public final g f37049o = C19286f.m13659t(this, C2752R.C2754id.new_flags_value);

    /* renamed from: p */
    public final g f37050p = C19286f.m13659t(this, C2752R.C2754id.f9546ok);

    /* renamed from: q */
    public final g f37051q = C19286f.m13659t(this, C2752R.C2754id.phone_business_sender);

    /* renamed from: r */
    public final g f37052r = C19286f.m13659t(this, 2131366751);

    /* renamed from: e.a.e.a.d4$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/d4$a.class */
    public static final class C12708a extends m implements l<CharSequence, s> {

        /* renamed from: c */
        public final /* synthetic */ c0 f37054c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12708a(c0 c0Var) {
            super(1);
            C12707d4.this = r4;
            this.f37054c = c0Var;
        }

        /* renamed from: d */
        public Object m22725d(Object obj) {
            CharSequence charSequence = (CharSequence) obj;
            p1 p1Var = (p1) this.f37054c.a;
            if (p1Var != null) {
                d.T(p1Var, (CancellationException) null, 1, (Object) null);
            }
            this.f37054c.a = d.w2(h1.a, t0.d, (j0) null, new C12698c4(this, null), 2, (Object) null);
            return s.a;
        }
    }

    /* renamed from: e.a.e.a.d4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/d4$b.class */
    public static final class View$OnClickListenerC12709b implements View.OnClickListener {
        public View$OnClickListenerC12709b() {
            C12707d4.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Dialog dialog = C12707d4.this.getDialog();
            if (dialog != null) {
                dialog.cancel();
            }
        }
    }

    /* renamed from: e.a.e.a.d4$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/d4$c.class */
    public static final class View$OnClickListenerC12710c implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ k[] f37057b;

        /* renamed from: e.a.e.a.d4$c$a */
        /* loaded from: classes15-dex2jar.jar:e/a/e/a/d4$c$a.class */
        public static final class DialogInterface$OnClickListenerC12711a implements DialogInterface.OnClickListener {

            /* renamed from: b */
            public final /* synthetic */ int f37059b;

            public DialogInterface$OnClickListenerC12711a(int i) {
                View$OnClickListenerC12710c.this = r4;
                this.f37059b = i;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C12707d4 c12707d4 = C12707d4.this;
                int i2 = this.f37059b;
                EditText m22726RA = C12707d4.m22726RA(c12707d4);
                s1.z.c.l.d(m22726RA, "phoneBusinessSender");
                String obj = m22726RA.getText().toString();
                Objects.requireNonNull(c12707d4);
                d.w2(h1.a, t0.d, (j0) null, new C12720e4(c12707d4, i2, obj, null), 2, (Object) null);
            }
        }

        /* renamed from: e.a.e.a.d4$c$b */
        /* loaded from: classes15-dex2jar.jar:e/a/e/a/d4$c$b.class */
        public static final class DialogInterface$OnClickListenerC12712b implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public static final DialogInterface$OnClickListenerC12712b f37060a = new DialogInterface$OnClickListenerC12712b();

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        public View$OnClickListenerC12710c(k[] kVarArr) {
            C12707d4.this = r4;
            this.f37057b = kVarArr;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int m22727QA = C12707d4.m22727QA(C12707d4.this, this.f37057b);
            g$a g_a = new g$a(C12707d4.this.requireContext());
            StringBuilder m8720E = C22128a.m8720E("Apply flag ", m22727QA, " to phone ");
            EditText m22726RA = C12707d4.m22726RA(C12707d4.this);
            s1.z.c.l.d(m22726RA, "phoneBusinessSender");
            m8720E.append((Object) m22726RA.getText());
            m8720E.append(' ');
            g_a.f70854a.f154d = m8720E.toString();
            g_a.m3660i(2131887910, new DialogInterface$OnClickListenerC12711a(m22727QA));
            g_a.m3662g(2131887903, DialogInterface$OnClickListenerC12712b.f37060a);
            g_a.m3652q();
        }
    }

    /* renamed from: e.a.e.a.d4$d */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/d4$d.class */
    public static final class C12713d implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: b */
        public final /* synthetic */ k[] f37062b;

        public C12713d(k[] kVarArr) {
            C12707d4.this = r4;
            this.f37062b = kVarArr;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C12707d4.m22727QA(C12707d4.this, this.f37062b);
        }
    }

    /* renamed from: QA */
    public static final int m22727QA(C12707d4 c12707d4, k[] kVarArr) {
        Objects.requireNonNull(c12707d4);
        int length = kVarArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                TextView textView = (TextView) c12707d4.f37049o.getValue();
                s1.z.c.l.d(textView, "newFlagsValue");
                textView.setText("New flag value: " + i3);
                return i3;
            }
            k kVar = kVarArr[i];
            int i4 = i3;
            if (((SwitchCompat) kVar.a).isChecked()) {
                i4 = ((Number) kVar.b).intValue() + i3;
            }
            i++;
            i2 = i4;
        }
    }

    /* renamed from: RA */
    public static final EditText m22726RA(C12707d4 c12707d4) {
        return (EditText) c12707d4.f37051q.getValue();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.dialog_qa_business_flags, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C12707d4.super.onViewCreated(view, bundle);
        c0 c0Var = new c0();
        c0Var.a = null;
        EditText editText = (EditText) this.f37051q.getValue();
        s1.z.c.l.d(editText, "phoneBusinessSender");
        C17891a1.C17902k.m15603j(editText, new C12708a(c0Var));
        k[] kVarArr = {new k((SwitchCompat) this.f37048n.getValue(), 4), new k((SwitchCompat) this.f37046l.getValue(), 8), new k((SwitchCompat) this.f37052r.getValue(), 16), new k((SwitchCompat) this.f37043i.getValue(), 32), new k((SwitchCompat) this.f37042h.getValue(), 64), new k((SwitchCompat) this.f37047m.getValue(), 128)};
        C12713d c12713d = new C12713d(kVarArr);
        for (int i = 0; i < 6; i++) {
            ((SwitchCompat) kVarArr[i].a).setOnCheckedChangeListener(c12713d);
        }
        ((Button) this.f37041g.getValue()).setOnClickListener(new View$OnClickListenerC12709b());
        ((Button) this.f37050p.getValue()).setOnClickListener(new View$OnClickListenerC12710c(kVarArr));
    }
}
