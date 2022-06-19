package p193e.p194a.p837h0.p838a;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.q;
import p1727n3.p1834m0.AbstractC26857y;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p837h0.C14845p;
import s1.d0.j;
import s1.f0.w;
import s1.u.i;
import s1.u.z;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\bE\u0010\u001dJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0017\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010#R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00101\u001a\u00020\u00138\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00103\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b2\u0010#R\u0016\u00105\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u0010'R\u0016\u00107\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b6\u0010'R\u0016\u0010:\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\"\u0010B\u001a\u00020;8��@��X\u0081.¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u0016\u0010D\u001a\u00020!8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bC\u0010#¨\u0006F"}, d2 = {"Le/a/h0/a/o;", "Ln3/b/a/q;", "Landroid/view/View$OnClickListener;", "Landroid/widget/RadioGroup$OnCheckedChangeListener;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/widget/RadioGroup;", "group", "", "checkId", "onCheckedChanged", "(Landroid/widget/RadioGroup;I)V", "v", "onClick", "(Landroid/view/View;)V", "QA", "()V", "PA", "OA", "()I", "Landroid/widget/TextView;", "g", "Landroid/widget/TextView;", "cancelTextView", "Landroid/widget/RadioButton;", "d", "Landroid/widget/RadioButton;", "radioButtonOptionTwo", "h", "titleTextView", "", "k", "Ljava/lang/String;", "phoneNumber", C22021b.f61237c, "Landroid/widget/RadioGroup;", "radioGroup", "f", "doneTextView", "e", "radioButtonOptionThree", AbstractC2405c.f7629a, "radioButtonOptionOne", "j", "I", "currentMatchingDigits", "Le/a/h0/a/p;", "a", "Le/a/h0/a/p;", "getPresenter$truecaller_googlePlayRelease", "()Le/a/h0/a/p;", "setPresenter$truecaller_googlePlayRelease", "(Le/a/h0/a/p;)V", "presenter", "i", "phoneNumberTextView", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.h0.a.o */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/o.class */
public final class View$OnClickListenerC14802o extends q implements View.OnClickListener, RadioGroup.OnCheckedChangeListener {
    @Inject

    /* renamed from: a */
    public AbstractC14803p f42315a;

    /* renamed from: b */
    public RadioGroup f42316b;

    /* renamed from: c */
    public RadioButton f42317c;

    /* renamed from: d */
    public RadioButton f42318d;

    /* renamed from: e */
    public RadioButton f42319e;

    /* renamed from: f */
    public TextView f42320f;

    /* renamed from: g */
    public TextView f42321g;

    /* renamed from: h */
    public TextView f42322h;

    /* renamed from: i */
    public TextView f42323i;

    /* renamed from: j */
    public int f42324j;

    /* renamed from: k */
    public String f42325k;

    /* renamed from: OA */
    public final int m19660OA() {
        int i;
        RadioGroup radioGroup = this.f42316b;
        if (radioGroup == null) {
            l.l("radioGroup");
            throw null;
        }
        switch (radioGroup.getCheckedRadioButtonId()) {
            case C2752R.C2754id.radioButtonOptionOne /* 2131365317 */:
                i = 4;
                break;
            case C2752R.C2754id.radioButtonOptionThree /* 2131365318 */:
                i = 6;
                break;
            case C2752R.C2754id.radioButtonOptionTwo /* 2131365319 */:
                i = 5;
                break;
            default:
                StringBuilder m8728C = C22128a.m8728C("Checked radio button id ");
                RadioGroup radioGroup2 = this.f42316b;
                if (radioGroup2 == null) {
                    l.l("radioGroup");
                    throw null;
                }
                m8728C.append(radioGroup2.getCheckedRadioButtonId());
                m8728C.append(" has no corresponding matching digits option.");
                throw new IllegalStateException(m8728C.toString().toString());
        }
        return i;
    }

    /* renamed from: PA */
    public final void m19659PA() {
        int m19660OA = m19660OA();
        String str = this.f42325k;
        if (str == null) {
            TextView textView = this.f42323i;
            if (textView != null) {
                textView.setVisibility(8);
                return;
            } else {
                l.l("phoneNumberTextView");
                throw null;
            }
        }
        List p0 = w.p0(str);
        List K0 = i.K0(p0, m19660OA);
        List<Character> s = i.s(p0, m19660OA);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(s, 10));
        for (Character ch : s) {
            ch.charValue();
            arrayList.add("*");
        }
        SpannableString spannableString = new SpannableString(i.O(i.l0(K0, arrayList), StringConstant.SPACE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62));
        z it = j.j(0, m19660OA).iterator();
        while (it.hasNext()) {
            int a = it.a() * 2;
            spannableString.setSpan(new UnderlineSpan(), a, a + 1, 17);
        }
        TextView textView2 = this.f42323i;
        if (textView2 == null) {
            l.l("phoneNumberTextView");
            throw null;
        }
        textView2.setVisibility(0);
        TextView textView3 = this.f42323i;
        if (textView3 == null) {
            l.l("phoneNumberTextView");
            throw null;
        }
        textView3.setText(spannableString);
    }

    /* renamed from: QA */
    public final void m19658QA() {
        TextView textView = this.f42322h;
        if (textView != null) {
            textView.setText(getString((int) C2752R.string.BlockFragmentBlockNeighbourSpoofingEditDialogTitle, new Object[]{String.valueOf(m19660OA())}));
        } else {
            l.l("titleTextView");
            throw null;
        }
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        m19658QA();
        m19659PA();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int m19660OA;
        l.e(view, "v");
        if (view.getId() == 2131363388 && (m19660OA = m19660OA()) != this.f42324j) {
            AbstractC14803p abstractC14803p = this.f42315a;
            if (abstractC14803p == null) {
                l.l("presenter");
                throw null;
            }
            abstractC14803p.mo19657Bc(m19660OA);
        }
        dismiss();
    }

    public void onCreate(Bundle bundle) {
        View$OnClickListenerC14802o.super.onCreate(bundle);
        Bundle arguments = getArguments();
        int i = 5;
        if (arguments != null) {
            i = arguments.getInt("matching_digits", 5);
        }
        this.f42324j = i;
        Bundle arguments2 = getArguments();
        this.f42325k = arguments2 != null ? arguments2.getString("phone_number") : null;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Window window;
        l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.dialog_block_neighbour_spoofing_edit_tcx, viewGroup, false);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        View findViewById = view.findViewById(2131365321);
        l.d(findViewById, "view.findViewById(R.id.radioGroup)");
        this.f42316b = (RadioGroup) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.radioButtonOptionOne);
        l.d(findViewById2, "view.findViewById(R.id.radioButtonOptionOne)");
        this.f42317c = (RadioButton) findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.radioButtonOptionTwo);
        l.d(findViewById3, "view.findViewById(R.id.radioButtonOptionTwo)");
        this.f42318d = (RadioButton) findViewById3;
        View findViewById4 = view.findViewById(C2752R.C2754id.radioButtonOptionThree);
        l.d(findViewById4, "view.findViewById(R.id.radioButtonOptionThree)");
        this.f42319e = (RadioButton) findViewById4;
        View findViewById5 = view.findViewById(C2752R.C2754id.doneTextView);
        l.d(findViewById5, "view.findViewById(R.id.doneTextView)");
        this.f42320f = (TextView) findViewById5;
        View findViewById6 = view.findViewById(C2752R.C2754id.cancelTextView);
        l.d(findViewById6, "view.findViewById(R.id.cancelTextView)");
        this.f42321g = (TextView) findViewById6;
        View findViewById7 = view.findViewById(2131366488);
        l.d(findViewById7, "view.findViewById(R.id.titleTextView)");
        this.f42322h = (TextView) findViewById7;
        View findViewById8 = view.findViewById(C2752R.C2754id.phoneNumberTextView);
        l.d(findViewById8, "view.findViewById(R.id.phoneNumberTextView)");
        this.f42323i = (TextView) findViewById8;
        RadioButton radioButton = this.f42317c;
        if (radioButton == null) {
            l.l("radioButtonOptionOne");
            throw null;
        }
        radioButton.setText(String.valueOf(4));
        RadioButton radioButton2 = this.f42318d;
        if (radioButton2 == null) {
            l.l("radioButtonOptionTwo");
            throw null;
        }
        radioButton2.setText(String.valueOf(5));
        RadioButton radioButton3 = this.f42319e;
        if (radioButton3 == null) {
            l.l("radioButtonOptionThree");
            throw null;
        }
        radioButton3.setText(String.valueOf(6));
        RadioGroup radioGroup = this.f42316b;
        if (radioGroup == null) {
            l.l("radioGroup");
            throw null;
        }
        radioGroup.setOnCheckedChangeListener(this);
        TextView textView = this.f42320f;
        if (textView == null) {
            l.l("doneTextView");
            throw null;
        }
        textView.setOnClickListener(this);
        TextView textView2 = this.f42321g;
        if (textView2 == null) {
            l.l("cancelTextView");
            throw null;
        }
        textView2.setOnClickListener(this);
        int i = this.f42324j;
        if (i == 4) {
            RadioGroup radioGroup2 = this.f42316b;
            if (radioGroup2 == null) {
                l.l("radioGroup");
                throw null;
            }
            radioGroup2.check(C2752R.C2754id.radioButtonOptionOne);
        } else if (i == 5) {
            RadioGroup radioGroup3 = this.f42316b;
            if (radioGroup3 == null) {
                l.l("radioGroup");
                throw null;
            }
            radioGroup3.check(C2752R.C2754id.radioButtonOptionTwo);
        } else if (i != 6) {
            throw new IllegalStateException(C22128a.m8697J2(C22128a.m8728C("Current matching digits "), this.f42324j, " has no corresponding radio button option to check.").toString());
        } else {
            RadioGroup radioGroup4 = this.f42316b;
            if (radioGroup4 == null) {
                l.l("radioGroup");
                throw null;
            }
            radioGroup4.check(C2752R.C2754id.radioButtonOptionThree);
        }
        m19658QA();
        m19659PA();
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC14840m mo11655T = mo10154s.mo11655T();
        Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
        C14845p mo12719G7 = mo10154s.mo12719G7();
        Objects.requireNonNull(mo12719G7, "Cannot return null from a non-@Nullable component method");
        AbstractC19462a mo12776C4 = mo10154s.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        AbstractC26857y mo11659D = mo10154s.mo11659D();
        Objects.requireNonNull(mo11659D, "Cannot return null from a non-@Nullable component method");
        this.f42315a = new C14804q(mo11655T, mo12719G7, mo12776C4, mo11659D);
    }
}
