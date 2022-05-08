package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicsCompat;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11591e;
import p459j.p460a.p474c0.p475c.p478y.AbstractC11631n;
import p459j.p460a.p474c0.p499h.C12143b;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.PersonItemView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/PersonItemView.class */
public class PersonItemView extends LinearLayout implements AbstractC11631n.AbstractC11632a, View.OnLayoutChangeListener {

    /* renamed from: a */
    public final C11591e<AbstractC11631n> f11512a = AbstractC11590d.m9039b(this);

    /* renamed from: b */
    public TextView f11513b;

    /* renamed from: c */
    public TextView f11514c;

    /* renamed from: d */
    public ContactIconView f11515d;

    /* renamed from: e */
    public View f11516e;

    /* renamed from: f */
    public AbstractC4697c f11517f;

    /* renamed from: g */
    public boolean f11518g;

    /* renamed from: h */
    public boolean f11519h;

    /* renamed from: i */
    public boolean f11520i;

    /* renamed from: gogolook.callgogolook2.messaging.ui.PersonItemView$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/PersonItemView$a.class */
    public class View$OnClickListenerC4695a implements View.OnClickListener {
        public View$OnClickListenerC4695a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PersonItemView.this.f11517f != null && PersonItemView.this.f11512a.mo9031c()) {
                PersonItemView.this.f11517f.mo7646a(PersonItemView.this.f11512a.mo9033b());
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.PersonItemView$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/PersonItemView$b.class */
    public class View$OnLongClickListenerC4696b implements View.OnLongClickListener {
        public View$OnLongClickListenerC4696b() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (PersonItemView.this.f11517f == null || !PersonItemView.this.f11512a.mo9031c()) {
                return false;
            }
            return PersonItemView.this.f11517f.mo7644b(PersonItemView.this.f11512a.mo9033b());
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.PersonItemView$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/PersonItemView$c.class */
    public interface AbstractC4697c {
        /* renamed from: a */
        void mo7646a(AbstractC11631n nVar);

        /* renamed from: b */
        boolean mo7644b(AbstractC11631n nVar);
    }

    public PersonItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(getContext()).inflate(R$layout.person_item_view, (ViewGroup) this, true);
    }

    /* renamed from: a */
    public Intent m27339a() {
        return this.f11512a.mo9033b().mo7642g();
    }

    /* renamed from: a */
    public void m27338a(int i) {
        if (!this.f11518g) {
            this.f11514c.setTextColor(i);
        }
    }

    /* renamed from: a */
    public void m27337a(AbstractC4697c cVar) {
        this.f11517f = cVar;
        if (this.f11517f != null) {
            setOnClickListener(new View$OnClickListenerC4695a());
            setOnLongClickListener(new View$OnLongClickListenerC4696b());
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n.AbstractC11632a
    /* renamed from: a */
    public void mo8757a(AbstractC11631n nVar) {
        this.f11512a.mo9034a((C11591e<AbstractC11631n>) nVar);
        m27326e();
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n.AbstractC11632a
    /* renamed from: a */
    public void mo8756a(AbstractC11631n nVar, Exception exc) {
        this.f11512a.mo9034a((C11591e<AbstractC11631n>) nVar);
        m27326e();
    }

    /* renamed from: a */
    public void m27335a(boolean z) {
        this.f11516e.setVisibility(z ? 8 : 0);
    }

    /* renamed from: b */
    public final String m27334b() {
        int measuredWidth = this.f11513b.getMeasuredWidth();
        String j = this.f11512a.mo9033b().mo7639j();
        if (measuredWidth == 0 || TextUtils.isEmpty(j) || !j.contains(",")) {
            return j;
        }
        return BidiFormatter.getInstance().unicodeWrap(C12212s0.m6788a(j, this.f11513b.getPaint(), measuredWidth, getContext().getString(R$string.plus_one), getContext().getString(R$string.plus_n)).toString(), TextDirectionHeuristicsCompat.LTR);
    }

    /* renamed from: b */
    public void m27333b(int i) {
        if (!this.f11518g) {
            this.f11513b.setTextColor(i);
        }
    }

    /* renamed from: b */
    public void m27332b(AbstractC11631n nVar) {
        if (this.f11512a.mo9031c()) {
            if (!this.f11512a.mo9033b().equals(nVar)) {
                this.f11512a.m9042e();
            } else {
                return;
            }
        }
        if (nVar != null) {
            this.f11512a.mo9038b((C11591e<AbstractC11631n>) nVar);
            this.f11512a.mo9033b().m8760a(this);
            this.f11513b.setContentDescription(C12143b.m7030a(getResources(), m27334b()));
        }
        m27326e();
    }

    /* renamed from: b */
    public void m27331b(boolean z) {
        ContactIconView contactIconView;
        this.f11518g = z;
        if (this.f11518g && (contactIconView = this.f11515d) != null) {
            contactIconView.getLayoutParams().width = getResources().getDimensionPixelSize(R$dimen.contact_icon_view_normal_size);
            this.f11515d.getLayoutParams().height = getResources().getDimensionPixelSize(R$dimen.contact_icon_view_normal_size);
        }
    }

    /* renamed from: c */
    public void m27329c(boolean z) {
        this.f11519h = z;
    }

    /* renamed from: c */
    public boolean m27330c() {
        return this.f11518g;
    }

    /* renamed from: d */
    public final void m27328d() {
        String b = m27334b();
        if (TextUtils.isEmpty(b)) {
            this.f11513b.setVisibility(8);
            return;
        }
        this.f11513b.setVisibility(0);
        this.f11513b.setText(b);
    }

    /* renamed from: d */
    public void m27327d(boolean z) {
        this.f11520i = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b5, code lost:
        if (android.text.TextUtils.equals("l", p459j.p460a.p474c0.p499h.C12155e.m6978a(r8)) != false) goto L_0x00b8;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m27326e() {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.PersonItemView.m27326e():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f11512a.m9036g();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f11512a.mo9031c()) {
            this.f11512a.m9037f();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11513b = (TextView) findViewById(R$id.name);
        this.f11514c = (TextView) findViewById(R$id.details);
        this.f11515d = (ContactIconView) findViewById(R$id.contact_icon);
        this.f11516e = findViewById(R$id.details_container);
        this.f11513b.addOnLayoutChangeListener(this);
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.f11512a.mo9031c() && view == this.f11513b) {
            m27328d();
        }
    }
}
