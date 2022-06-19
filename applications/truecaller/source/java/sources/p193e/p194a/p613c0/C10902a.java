package p193e.p194a.p613c0;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.SwitchCompat;
import com.truecaller.C2752R;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.g;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1868v.C27020r;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1025p2.AbstractC17140o0;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p372b0.p412h.C8447c;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bN\u0010\u001fJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0017¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R(\u0010 \u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0018\u0010\u0019\u0012\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00108\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R(\u0010=\u001a\u00020\u00178\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b9\u0010\u0019\u0012\u0004\b<\u0010\u001f\u001a\u0004\b:\u0010\u001b\"\u0004\b;\u0010\u001dR\"\u0010E\u001a\u00020>8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010M\u001a\u00020F8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010L¨\u0006O"}, d2 = {"Le/a/c0/a;", "Ln3/r/a/k;", "Landroid/widget/RadioGroup$OnCheckedChangeListener;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/widget/RadioGroup;", "group", "", "checkedId", "Ls1/s;", "onCheckedChanged", "(Landroid/widget/RadioGroup;I)V", "Le/a/s4/a;", "h", "Le/a/s4/a;", "getRemoteConfig", "()Le/a/s4/a;", "setRemoteConfig", "(Le/a/s4/a;)V", "remoteConfig", "Ls1/w/f;", "j", "Ls1/w/f;", "getUiContext", "()Ls1/w/f;", "setUiContext", "(Ls1/w/f;)V", "getUiContext$annotations", "()V", "uiContext", "Le/a/c0/h;", "f", "Le/a/c0/h;", "getExperimentRegistry", "()Le/a/c0/h;", "setExperimentRegistry", "(Le/a/c0/h;)V", "experimentRegistry", "Landroid/widget/LinearLayout;", "l", "Landroid/widget/LinearLayout;", "getContent", "()Landroid/widget/LinearLayout;", "setContent", "(Landroid/widget/LinearLayout;)V", "content", "Le/a/b0/h/c;", "g", "Le/a/b0/h/c;", "getAbTestConfigSettings", "()Le/a/b0/h/c;", "setAbTestConfigSettings", "(Le/a/b0/h/c;)V", "abTestConfigSettings", "k", "getIoContext", "setIoContext", "getIoContext$annotations", "ioContext", "Le/a/l/p2/o0;", "i", "Le/a/l/p2/o0;", "getPremiumProductsRepository", "()Le/a/l/p2/o0;", "setPremiumProductsRepository", "(Le/a/l/p2/o0;)V", "premiumProductsRepository", "Le/a/p4/b;", "e", "Le/a/p4/b;", "getQaMenuSettings", "()Le/a/p4/b;", "setQaMenuSettings", "(Le/a/p4/b;)V", "qaMenuSettings", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c0.a */
/* loaded from: classes4-dex2jar.jar:e/a/c0/a.class */
public final class C10902a extends AbstractC10914j implements RadioGroup.OnCheckedChangeListener {
    @Inject

    /* renamed from: e */
    public AbstractC19215b f32373e;
    @Inject

    /* renamed from: f */
    public C10912h f32374f;
    @Inject

    /* renamed from: g */
    public C8447c f32375g;
    @Inject

    /* renamed from: h */
    public AbstractC20235a f32376h;
    @Inject

    /* renamed from: i */
    public AbstractC17140o0 f32377i;
    @Inject

    /* renamed from: j */
    public f f32378j;
    @Inject

    /* renamed from: k */
    public f f32379k;

    /* renamed from: l */
    public LinearLayout f32380l;

    /* renamed from: e.a.c0.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/c0/a$a.class */
    public static final class C10903a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ int f32381a;

        /* renamed from: b */
        public final /* synthetic */ Object f32382b;

        public C10903a(int i, Object obj) {
            this.f32381a = i;
            this.f32382b = obj;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            int i = this.f32381a;
            if (i == 0) {
                AbstractC19215b abstractC19215b = ((C10902a) this.f32382b).f32373e;
                if (abstractC19215b != null) {
                    abstractC19215b.mo13857W1(z);
                } else {
                    l.l("qaMenuSettings");
                    throw null;
                }
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC19215b abstractC19215b2 = ((C10902a) this.f32382b).f32373e;
                if (abstractC19215b2 != null) {
                    abstractC19215b2.mo13860T2(z);
                } else {
                    l.l("qaMenuSettings");
                    throw null;
                }
            }
        }
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        l.e(radioGroup, "group");
        View findViewById = radioGroup.findViewById(i);
        l.d(findViewById, "group.findViewById<RadioButton>(checkedId)");
        CharSequence text = ((RadioButton) findViewById).getText();
        Object tag = radioGroup.getTag();
        Objects.requireNonNull(tag, "null cannot be cast to non-null type kotlin.String");
        String str = (String) tag;
        C8447c c8447c = this.f32375g;
        if (c8447c != null) {
            c8447c.putString(str, text.toString());
        } else {
            l.l("abTestConfigSettings");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Dialog onCreateDialog(Bundle bundle) {
        Enum[] enumArr;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        this.f32380l = linearLayout;
        SwitchCompat switchCompat = new SwitchCompat(requireContext());
        switchCompat.setTextColor(C19291g.m13612L(requireContext(), 2130970253));
        switchCompat.setText("Enable Local config");
        AbstractC19215b abstractC19215b = this.f32373e;
        if (abstractC19215b == null) {
            l.l("qaMenuSettings");
            throw null;
        }
        switchCompat.setChecked(abstractC19215b.mo13847k0());
        switchCompat.setOnCheckedChangeListener(new C10903a(0, this));
        switchCompat.setPadding(C19291g.m13603O(16), C19291g.m13603O(16), C19291g.m13603O(16), C19291g.m13603O(16));
        LinearLayout linearLayout2 = this.f32380l;
        if (linearLayout2 == null) {
            l.l("content");
            throw null;
        }
        linearLayout2.addView(switchCompat);
        SwitchCompat switchCompat2 = new SwitchCompat(requireContext());
        switchCompat2.setTextColor(C19291g.m13612L(requireContext(), 2130970253));
        switchCompat2.setText("Disable Firebase Caching");
        AbstractC19215b abstractC19215b2 = this.f32373e;
        if (abstractC19215b2 == null) {
            l.l("qaMenuSettings");
            throw null;
        }
        switchCompat2.setChecked(abstractC19215b2.mo13850d3());
        switchCompat2.setOnCheckedChangeListener(new C10903a(1, this));
        switchCompat2.setPadding(C19291g.m13603O(16), C19291g.m13603O(16), C19291g.m13603O(16), C19291g.m13603O(16));
        LinearLayout linearLayout3 = this.f32380l;
        if (linearLayout3 == null) {
            l.l("content");
            throw null;
        }
        linearLayout3.addView(switchCompat2);
        C10912h c10912h = this.f32374f;
        if (c10912h == null) {
            l.l("experimentRegistry");
            throw null;
        }
        Iterator it = i.S0(c10912h.f32399a).iterator();
        while (true) {
            if (!it.hasNext()) {
                LinearLayout linearLayout4 = new LinearLayout(getContext());
                linearLayout4.setOrientation(1);
                linearLayout4.setPadding(C19291g.m13603O(16), C19291g.m13603O(16), C19291g.m13603O(16), C19291g.m13603O(16));
                linearLayout4.setGravity(17);
                EditText editText = new EditText(getContext());
                editText.setHintTextColor(C19291g.m13612L(requireContext(), 2130970253));
                editText.setTextColor(C19291g.m13612L(requireContext(), 2130970253));
                editText.setHint("Input remote config key");
                linearLayout4.addView(editText);
                Button button = new Button(getContext());
                button.setBackgroundColor(C19291g.m13612L(requireContext(), 2130970239));
                button.setText("Show");
                button.setOnClickListener(new View$OnClickListenerC10918l(button, this, editText, linearLayout4));
                linearLayout4.addView(button);
                LinearLayout linearLayout5 = this.f32380l;
                if (linearLayout5 == null) {
                    l.l("content");
                    throw null;
                }
                linearLayout5.addView(linearLayout4);
                TextView textView = new TextView(getContext());
                textView.setTextColor(C19291g.m13612L(requireContext(), 2130970253));
                textView.setPadding(C19291g.m13603O(16), C19291g.m13603O(16), C19291g.m13603O(16), C19291g.m13603O(16));
                LinearLayout linearLayout6 = this.f32380l;
                if (linearLayout6 == null) {
                    l.l("content");
                    throw null;
                }
                linearLayout6.addView(textView);
                d.w2(C27020r.m994b(this), (f) null, (j0) null, new C10915k(this, textView, null), 3, (Object) null);
                TextView textView2 = new TextView(getContext());
                textView2.setTextColor(C19291g.m13612L(requireContext(), 2130970253));
                textView2.setPadding(C19291g.m13603O(16), C19291g.m13603O(16), C19291g.m13603O(16), C19291g.m13603O(16));
                AbstractC20235a abstractC20235a = this.f32376h;
                if (abstractC20235a == null) {
                    l.l("remoteConfig");
                    throw null;
                }
                String string = abstractC20235a.getString("likelyToSpend_23310");
                textView2.setText(r.n(string, "group1", true) ? "You are one among 99-100 percentile of users predicted to spend within 7 days." : r.n(string, "group2", true) ? "You are one among 75-99 percentile of users predicted to spend within 7 days." : r.n(string, "group3", true) ? "You are one among 0-75 percentile of users predicted to spend within 7 days." : "You are not in group of users predicted to spend within 7 days.");
                LinearLayout linearLayout7 = this.f32380l;
                if (linearLayout7 == null) {
                    l.l("content");
                    throw null;
                }
                linearLayout7.addView(textView2);
                g$a g_a = new g$a(requireContext());
                ScrollView scrollView = new ScrollView(getContext());
                LinearLayout linearLayout8 = this.f32380l;
                if (linearLayout8 == null) {
                    l.l("content");
                    throw null;
                }
                scrollView.addView(linearLayout8);
                AlertController.C0037b c0037b = g_a.f70854a;
                c0037b.f171u = scrollView;
                c0037b.f170t = 0;
                c0037b.f154d = "Active AB Tests";
                g m3668a = g_a.m3668a();
                l.d(m3668a, "AlertDialog.Builder(requ…ctive AB Tests\").create()");
                return m3668a;
            }
            AbstractC10908f abstractC10908f = (AbstractC10908f) it.next();
            if (abstractC10908f instanceof C10905c) {
                C10905c c10905c = (C10905c) abstractC10908f;
                LayoutInflater from = LayoutInflater.from(requireContext());
                LinearLayout linearLayout9 = this.f32380l;
                if (linearLayout9 == null) {
                    l.l("content");
                    throw null;
                }
                View inflate = from.inflate(C2752R.layout.item_qa_ab_test, (ViewGroup) linearLayout9, false);
                l.d(inflate, "LayoutInflater.from(requ…_ab_test, content, false)");
                RadioGroup radioGroup = (RadioGroup) inflate.findViewById(C2752R.C2754id.variants);
                radioGroup.setTag(c10905c.f32383d.f32396b);
                View findViewById = inflate.findViewById(2131364874);
                l.d(findViewById, "view.findViewById<TextView>(R.id.name)");
                C19286f.m13683U(C22128a.m8624f1((TextView) C22128a.m8624f1((TextView) findViewById, c10905c.f32383d.f32395a, inflate, C2752R.C2754id.key, "view.findViewById<TextView>(R.id.key)"), c10905c.f32383d.f32396b, inflate, C2752R.C2754id.isAlwaysEnabledForAlpha, "view.findViewById<TextVi….isAlwaysEnabledForAlpha)"), c10905c.f32383d.f32386e);
                Object[] enumConstants = c10905c.f32384e.getEnumConstants();
                Objects.requireNonNull(enumConstants, "null cannot be cast to non-null type kotlin.Array<V>");
                for (Enum r0 : (Enum[]) enumConstants) {
                    RadioButton radioButton = new RadioButton(requireContext());
                    radioGroup.addView(radioButton);
                    radioButton.setTextColor(C19291g.m13612L(requireContext(), 2130970253));
                    radioButton.setText(r0.name());
                    String name = r0.name();
                    Enum m25513f = c10905c.m25513f();
                    radioButton.setChecked(l.a(name, m25513f != null ? m25513f.name() : null));
                }
                radioGroup.setOnCheckedChangeListener(this);
                LinearLayout linearLayout10 = this.f32380l;
                if (linearLayout10 == null) {
                    l.l("content");
                    throw null;
                }
                linearLayout10.addView(inflate);
            } else if (abstractC10908f instanceof C10921o) {
                C10921o c10921o = (C10921o) abstractC10908f;
                LayoutInflater from2 = LayoutInflater.from(requireContext());
                LinearLayout linearLayout11 = this.f32380l;
                if (linearLayout11 == null) {
                    l.l("content");
                    throw null;
                }
                View inflate2 = from2.inflate(C2752R.layout.item_qa_ab_test_premium_pricing, (ViewGroup) linearLayout11, false);
                l.d(inflate2, "LayoutInflater.from(requ…_pricing, content, false)");
                View findViewById2 = inflate2.findViewById(2131364874);
                l.d(findViewById2, "view.findViewById<TextView>(R.id.name)");
                ((TextView) C22128a.m8624f1((TextView) findViewById2, c10921o.f32431d.f32395a, inflate2, C2752R.C2754id.key, "view.findViewById<TextView>(R.id.key)")).setText(c10921o.f32431d.f32396b);
                TextView textView3 = (TextView) inflate2.findViewById(C2752R.C2754id.value);
                EditText editText2 = (EditText) inflate2.findViewById(C2752R.C2754id.variantValue);
                l.d(textView3, "variantValue");
                String format = String.format(Locale.ENGLISH, "Value: >%s<", Arrays.copyOf(new Object[]{c10921o.m25510b()}, 1));
                l.d(format, "java.lang.String.format(locale, format, *args)");
                textView3.setText(format);
                ((Button) inflate2.findViewById(C2752R.C2754id.save)).setOnClickListener(new View$OnClickListenerC10919m(this, editText2, c10921o, textView3, "Value: >%s<"));
                LinearLayout linearLayout12 = this.f32380l;
                if (linearLayout12 == null) {
                    l.l("content");
                    throw null;
                }
                linearLayout12.addView(inflate2);
            } else {
                continue;
            }
        }
    }
}
