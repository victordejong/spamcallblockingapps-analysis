package p193e.p194a.p682e;

import android.graphics.LightingColorFilter;
import android.graphics.Paint;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.truecaller.C2752R;
import com.truecaller.p183ui.components.NewComboBase;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import n3.r.a.l;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p682e.p699c2.C13197i0;
/* renamed from: e.a.e.v0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/v0.class */
public class C13319v0 extends AbstractC13329x0 {

    /* renamed from: y */
    public static final List<C13197i0> f38698y = Arrays.asList(new C13197i0(0, (int) C2752R.string.FeedbackFormSubjectChooseOne, -1, ""), new C13197i0(0, (int) C2752R.string.FeedbackFormSubjectUserDetails, -1, ""), new C13197i0(0, (int) C2752R.string.FeedbackFormSubjectLiveCallerId, -1, ""), new C13197i0(0, (int) C2752R.string.FeedbackFormSubjectDeactivateAccount, -1, ""), new C13197i0(0, (int) C2752R.string.FeedbackFormSubjectGpsTracking, -1, ""), new C13197i0(0, (int) C2752R.string.FeedbackFormSubjectCallSmsBlocking, -1, ""), new C13197i0(0, (int) C2752R.string.FeedbackFormSubjectPremiumSubscription, -1, ""), new C13197i0(0, (int) C2752R.string.FeedbackFormSubjectSuggestion, -1, ""), new C13197i0(0, (int) C2752R.string.FeedbackFormSubjectOther, -1, ""));

    /* renamed from: e */
    public Bundle f38699e;

    /* renamed from: g */
    public TextView f38701g;

    /* renamed from: h */
    public EditText f38702h;

    /* renamed from: i */
    public EditText f38703i;

    /* renamed from: j */
    public TextView f38704j;

    /* renamed from: k */
    public EditText f38705k;

    /* renamed from: l */
    public TextView f38706l;

    /* renamed from: m */
    public NewComboBase f38707m;

    /* renamed from: n */
    public TextView f38708n;

    /* renamed from: o */
    public EditText f38709o;

    /* renamed from: p */
    public MenuItem f38710p;

    /* renamed from: q */
    public View f38711q;

    /* renamed from: r */
    public Paint f38712r;

    /* renamed from: s */
    public int f38713s;

    /* renamed from: t */
    public int f38714t;

    /* renamed from: u */
    public C13316u0 f38715u;

    /* renamed from: v */
    public AbstractC19321u f38716v;

    /* renamed from: w */
    public AbstractC8541a f38717w;

    /* renamed from: f */
    public boolean f38700f = false;

    /* renamed from: x */
    public final List<C13197i0> f38718x = new ArrayList(f38698y);

    /* renamed from: e.a.e.v0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/v0$a.class */
    public class C13320a implements TextWatcher {
        public C13320a() {
            C13319v0.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C13319v0 c13319v0 = C13319v0.this;
            List<C13197i0> list = C13319v0.f38698y;
            c13319v0.m21934YA(false);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: e.a.e.v0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/v0$b.class */
    public class C13321b implements TextWatcher {
        public C13321b() {
            C13319v0.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C13319v0 c13319v0 = C13319v0.this;
            List<C13197i0> list = C13319v0.f38698y;
            c13319v0.m21936WA(false);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: e.a.e.v0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/v0$c.class */
    public class C13322c implements TextWatcher {
        public C13322c() {
            C13319v0.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C13319v0 c13319v0 = C13319v0.this;
            int length = editable.length();
            List<C13197i0> list = C13319v0.f38698y;
            c13319v0.m21935XA(false, length);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    /* renamed from: PA */
    public void mo10110PA() {
        this.f38702h = null;
        this.f38705k = null;
        this.f38707m = null;
        this.f38709o = null;
        this.f38703i = null;
        this.f38699e = null;
    }

    /* renamed from: WA */
    public final boolean m21936WA(boolean z) {
        String obj = this.f38705k.getText().toString();
        Set<Character> set = C19231g0.f53598a;
        if (!TextUtils.isEmpty(obj) && Patterns.EMAIL_ADDRESS.matcher(obj).matches()) {
            m21932aB(this.f38704j, false);
            return true;
        }
        if (z) {
            m21920TA(C2752R.string.FeedbackFormEnterCorrectEmail);
        }
        m21932aB(this.f38704j, true);
        this.f38705k.requestFocus();
        return false;
    }

    /* renamed from: XA */
    public final boolean m21935XA(boolean z, int i) {
        if (i >= 100) {
            m21932aB(this.f38708n, false);
            return true;
        } else if (!z) {
            return false;
        } else {
            m21917We(getString((int) C2752R.string.FeedbackFormEnterFeedbackCount, new Object[]{Integer.valueOf(i)}));
            m21932aB(this.f38708n, true);
            this.f38709o.requestFocus();
            return false;
        }
    }

    /* renamed from: YA */
    public final boolean m21934YA(boolean z) {
        if (this.f38702h.getText().length() != 0) {
            m21932aB(this.f38701g, false);
            return true;
        }
        if (z) {
            m21920TA(C2752R.string.FeedbackFormEnterName);
        }
        m21932aB(this.f38701g, true);
        this.f38702h.requestFocus();
        return false;
    }

    /* renamed from: ZA */
    public final void m21933ZA(boolean z) {
        this.f38702h.setFocusableInTouchMode(z);
        this.f38702h.setFocusable(z);
        this.f38703i.setFocusableInTouchMode(z);
        this.f38703i.setFocusable(z);
        this.f38705k.setFocusableInTouchMode(z);
        this.f38705k.setFocusable(z);
        this.f38709o.setFocusableInTouchMode(z);
        this.f38709o.setFocusable(z);
        this.f38707m.setFocusableInTouchMode(z);
        this.f38707m.setFocusable(z);
        this.f38707m.setClickable(z);
    }

    /* renamed from: aB */
    public final void m21932aB(TextView textView, boolean z) {
        textView.setCompoundDrawablesWithIntrinsicBounds(0, 0, z ? 2131232843 : 0, 0);
        textView.setTextColor(z ? this.f38714t : this.f38713s);
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f38699e = bundle;
        Paint paint = new Paint();
        this.f38712r = paint;
        paint.setColorFilter(new LightingColorFilter(0, 16777215));
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (m21921SA()) {
            menuInflater.inflate(C2752R.C2756menu.feedback_form_menu, menu);
            this.f38710p = menu.findItem(C2752R.C2754id.feedback_send);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setHasOptionsMenu(true);
        getActivity().setTitle(C2752R.string.FeedbackFormTitle);
        View inflate = layoutInflater.inflate(C2752R.layout.action_bar_loading, (ViewGroup) getActivity().f38726c, false);
        this.f38711q = inflate;
        inflate.setLayerType(1, this.f38712r);
        return layoutInflater.inflate(C2752R.layout.view_feedback_form, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r15) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.C13319v0.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    public void onSaveInstanceState(Bundle bundle) {
        C13319v0.super.onSaveInstanceState(bundle);
        bundle.putString("FeedbackFormFragment.STATE_NAME", this.f38702h.getText().toString());
        bundle.putString("FeedbackFormFragment.STATE_EMAIL", this.f38705k.getText().toString());
        bundle.putString("FeedbackFormFragment.STATE_FEEDBACK", this.f38709o.getText().toString());
        bundle.putString("FeedbackFormFragment.STATE_SUBJECT", this.f38707m.getSelection().mo18605h(getActivity()));
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f38701g = (TextView) view.findViewById(C2752R.C2754id.feedback_form_name_label);
        this.f38702h = (EditText) view.findViewById(C2752R.C2754id.feedback_form_name);
        this.f38703i = (EditText) view.findViewById(C2752R.C2754id.feedback_form_user_id);
        this.f38704j = (TextView) view.findViewById(C2752R.C2754id.feedback_form_email_label);
        this.f38705k = (EditText) view.findViewById(C2752R.C2754id.feedback_form_email);
        this.f38706l = (TextView) view.findViewById(C2752R.C2754id.feedback_form_subject_label);
        this.f38707m = (NewComboBase) view.findViewById(C2752R.C2754id.feedback_form_subject);
        this.f38708n = (TextView) view.findViewById(C2752R.C2754id.feedback_form_feedback_label);
        this.f38709o = (EditText) view.findViewById(C2752R.C2754id.feedback_form_feedback);
        l activity = getActivity();
        AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
        if (!m28551L.mo28540W()) {
            activity.finish();
            return;
        }
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) m28551L).mo10154s();
        this.f38715u = mo10154s.mo12762D5();
        this.f38716v = mo10154s.mo12725G1();
        this.f38717w = mo10154s.mo12420d();
        this.f38713s = C19291g.m13612L(getContext(), 2130970253);
        this.f38714t = C19291g.m13612L(getContext(), 2130969966);
        int m13612L = C19291g.m13612L(getContext(), 2130970253);
        int m13612L2 = C19291g.m13612L(getContext(), 2130970255);
        Bundle bundle2 = this.f38699e;
        if (bundle2 == null) {
            this.f38702h.setText(C17422k.m16109I(this.f38717w));
            this.f38705k.setText(this.f38717w.getString("profileEmail"));
            C19045j0.m14203m(this.f38707m, C2752R.C2754id.listItemDetails).setTextColor(m13612L2);
        } else {
            this.f38702h.setText(bundle2.getString("FeedbackFormFragment.STATE_NAME"));
            this.f38705k.setText(this.f38699e.getString("FeedbackFormFragment.STATE_EMAIL"));
            this.f38709o.setText(this.f38699e.getString("FeedbackFormFragment.STATE_FEEDBACK"));
            String string = this.f38699e.getString("FeedbackFormFragment.STATE_SUBJECT");
            this.f38707m.setSelection(new C13197i0(0, string, (String) null, ""));
            if (this.f38718x.get(0).mo18605h(getActivity()).equals(string)) {
                C19045j0.m14203m(this.f38707m, C2752R.C2754id.listItemDetails).setTextColor(m13612L2);
            }
        }
        this.f38703i.setText(String.valueOf(((AbstractC21187w1) getActivity().getApplication()).mo10154s().mo12420d().getLong("profileUserId", 0L)));
        this.f38707m.setData(this.f38718x);
        this.f38707m.setFocusableInTouchMode(true);
        this.f38707m.requestFocus();
        this.f38707m.setObserver(new C13286n(this, m13612L2, m13612L));
        this.f38702h.addTextChangedListener(new C13320a());
        this.f38705k.addTextChangedListener(new C13321b());
        this.f38709o.addTextChangedListener(new C13322c());
    }
}
