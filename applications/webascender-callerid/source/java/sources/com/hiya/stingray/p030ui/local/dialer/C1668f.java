package com.hiya.stingray.p030ui.local.dialer;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TableLayout;
import com.hiya.stingray.o;
import com.hiya.stingray.util.C1808e0;
import com.hiya.stingray.util.C1846w;
import java.lang.ref.WeakReference;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.dialer.f */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f.class */
public final class C1668f {

    /* renamed from: a */
    private final C1846w f4692a;

    /* renamed from: b */
    private TextWatcher f4693b;

    /* renamed from: c */
    private boolean f4694c;

    /* renamed from: d */
    private boolean f4695d;

    /* renamed from: e */
    private final ViewGroup f4696e;

    /* renamed from: f */
    private final EditText f4697f;

    /* renamed from: g */
    private final WeakReference<AbstractC1669a> f4698g;

    /* renamed from: h */
    private final boolean f4699h;

    /* renamed from: i */
    private final boolean f4700i;

    /* renamed from: com.hiya.stingray.ui.local.dialer.f$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$a.class */
    public interface AbstractC1669a {

        /* renamed from: com.hiya.stingray.ui.local.dialer.f$a$a */
        /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$a$a.class */
        public static final class C1670a {
            /* renamed from: a */
            public static void m1373a(AbstractC1669a abstractC1669a, boolean z) {
            }

            /* renamed from: b */
            public static void m1372b(AbstractC1669a abstractC1669a, boolean z) {
            }
        }

        /* renamed from: P */
        void m1377P(boolean z);

        /* renamed from: o */
        void m1376o();

        /* renamed from: q0 */
        void m1375q0();

        /* renamed from: w0 */
        void m1374w0(boolean z);
    }

    /* renamed from: com.hiya.stingray.ui.local.dialer.f$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$b.class */
    public static final class RunnableC1671b implements Runnable {

        /* renamed from: g */
        final /* synthetic */ boolean f4702g;

        RunnableC1671b(boolean z) {
            C1668f.this = r4;
            this.f4702g = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC1669a abstractC1669a;
            if (this.f4702g && (abstractC1669a = (AbstractC1669a) C1668f.this.f4698g.get()) != null) {
                abstractC1669a.m1377P(this.f4702g);
            }
            C1808e0.m933z(C1668f.this.f4696e, this.f4702g);
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.dialer.f$e */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$e.class */
    public static final class View$OnClickListenerC1672e implements View.OnClickListener {
        View$OnClickListenerC1672e() {
            C1668f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1668f.this.m1386i(false);
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.dialer.f$f */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$f.class */
    public static final class View$OnClickListenerC1673f implements View.OnClickListener {
        View$OnClickListenerC1673f() {
            C1668f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1668f.this.m1385j();
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.dialer.f$g */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$g.class */
    public static final class View$OnLongClickListenerC1674g implements View.OnLongClickListener {
        View$OnLongClickListenerC1674g() {
            C1668f.this = r4;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            C1668f.this.f4697f.getText().clear();
            return true;
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.dialer.f$h */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$h.class */
    public static final class View$OnClickListenerC1675h implements View.OnClickListener {
        View$OnClickListenerC1675h() {
            C1668f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC1669a abstractC1669a = (AbstractC1669a) C1668f.this.f4698g.get();
            if (abstractC1669a != null) {
                abstractC1669a.m1375q0();
            }
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.dialer.f$i */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$i.class */
    public static final class C1676i implements TextWatcher {
        C1676i() {
            C1668f.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C1668f.this.m1378q();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.dialer.f$j */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$j.class */
    public static final class View$OnClickListenerC1677j implements View.OnClickListener {
        View$OnClickListenerC1677j() {
            C1668f.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1668f.this.m1382m(true);
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.dialer.f$k */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$k.class */
    public static final class View$OnFocusChangeListenerC1678k implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC1678k() {
            C1668f.this = r4;
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            if (z) {
                AbstractC1669a abstractC1669a = (AbstractC1669a) C1668f.this.f4698g.get();
                if (abstractC1669a != null) {
                    abstractC1669a.m1374w0(z);
                }
                C1668f.this.m1386i(true);
            }
        }
    }

    public C1668f(ViewGroup viewGroup, EditText editText, WeakReference<AbstractC1669a> weakReference, boolean z, boolean z2) {
        k.g(viewGroup, "dialerView");
        k.g(editText, "phoneNumberTextView");
        k.g(weakReference, "delegate");
        this.f4696e = viewGroup;
        this.f4697f = editText;
        this.f4698g = weakReference;
        this.f4699h = z;
        this.f4700i = z2;
        this.f4692a = new C1846w();
        this.f4694c = true;
        this.f4695d = true;
        m1379p();
        m1380o();
    }

    public /* synthetic */ C1668f(ViewGroup viewGroup, EditText editText, WeakReference weakReference, boolean z, boolean z2, int i, g gVar) {
        this(viewGroup, editText, weakReference, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2);
    }

    /* renamed from: g */
    public final void m1388g(String str, boolean z) {
        if (m1383l()) {
            m1382m(false);
        }
        this.f4697f.getText().replace(z ? this.f4697f.getSelectionStart() - 1 : this.f4697f.getSelectionStart(), this.f4697f.getSelectionEnd(), str);
    }

    /* renamed from: h */
    static /* synthetic */ void m1387h(C1668f c1668f, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        c1668f.m1388g(str, z);
    }

    /* renamed from: j */
    public final void m1385j() {
        this.f4697f.dispatchKeyEvent(new KeyEvent(0, 67));
        this.f4697f.dispatchKeyEvent(new KeyEvent(1, 67));
    }

    /* renamed from: k */
    private final void m1384k() {
        EditText editText = this.f4697f;
        TextWatcher textWatcher = this.f4693b;
        if (textWatcher == null) {
            k.u("phoneNumberTextWatcher");
            throw null;
        }
        editText.removeTextChangedListener(textWatcher);
        EditText editText2 = this.f4697f;
        editText2.setText(this.f4692a.m825a(editText2.getText().toString()));
        EditText editText3 = this.f4697f;
        editText3.setSelection(editText3.getText().length());
        EditText editText4 = this.f4697f;
        TextWatcher textWatcher2 = this.f4693b;
        if (textWatcher2 != null) {
            editText4.addTextChangedListener(textWatcher2);
        } else {
            k.u("phoneNumberTextWatcher");
            throw null;
        }
    }

    /* renamed from: l */
    private final boolean m1383l() {
        return this.f4697f.getSelectionStart() == this.f4697f.getSelectionEnd() && this.f4697f.getSelectionStart() == this.f4697f.getText().length();
    }

    /* renamed from: m */
    public final void m1382m(boolean z) {
        EditText editText = this.f4697f;
        if (!this.f4699h) {
            z = true;
        }
        editText.setCursorVisible(z);
        AbstractC1669a abstractC1669a = this.f4698g.get();
        if (abstractC1669a != null) {
            abstractC1669a.m1374w0(this.f4697f.hasFocus());
        }
    }

    /* renamed from: n */
    private final void m1381n(boolean z) {
        this.f4694c = z;
        ViewGroup viewGroup = this.f4696e;
        int i = o.U0;
        ImageButton imageButton = (ImageButton) viewGroup.findViewById(i);
        k.c(imageButton, "dialerView.eraseButton");
        imageButton.setEnabled(this.f4694c);
        ((ImageButton) this.f4696e.findViewById(i)).animate().alpha(this.f4694c ? 1.0f : 0.0f).setDuration(300L).start();
    }

    /* renamed from: o */
    private final void m1380o() {
        m1381n(false);
        ViewGroup viewGroup = this.f4696e;
        int i = o.L0;
        ImageButton imageButton = (ImageButton) viewGroup.findViewById(i);
        k.c(imageButton, "dialerView.dismissButton");
        C1808e0.m962A(imageButton, this.f4700i);
        ((ImageButton) this.f4696e.findViewById(i)).setOnClickListener(new View$OnClickListenerC1672e());
        ViewGroup viewGroup2 = this.f4696e;
        int i2 = o.U0;
        ((ImageButton) viewGroup2.findViewById(i2)).setOnClickListener(new View$OnClickListenerC1673f());
        ((ImageButton) this.f4696e.findViewById(i2)).setOnLongClickListener(new View$OnLongClickListenerC1674g());
        this.f4696e.findViewById(o.h2).setOnClickListener(new View$OnClickListenerC1675h());
        TableLayout tableLayout = (TableLayout) this.f4696e.findViewById(o.J);
        k.c(tableLayout, "dialerView.buttonsContainer");
        for (DialerButton dialerButton : C1808e0.m954e(tableLayout, DialerButton.class)) {
            dialerButton.setClick(new c(dialerButton, this));
            String secondaryCharacter = dialerButton.getSecondaryCharacter();
            if (secondaryCharacter != null) {
                dialerButton.setLongPress(new d(secondaryCharacter, dialerButton, this));
            }
        }
    }

    /* renamed from: p */
    private final void m1379p() {
        C1676i c1676i = new C1676i();
        this.f4693b = c1676i;
        EditText editText = this.f4697f;
        if (c1676i == null) {
            k.u("phoneNumberTextWatcher");
            throw null;
        }
        editText.addTextChangedListener(c1676i);
        this.f4697f.setShowSoftInputOnFocus(false);
        m1382m(false);
        this.f4697f.setOnClickListener(new View$OnClickListenerC1677j());
        this.f4697f.setOnFocusChangeListener(new View$OnFocusChangeListenerC1678k());
    }

    /* renamed from: i */
    public final void m1386i(boolean z) {
        AbstractC1669a abstractC1669a;
        if (z == this.f4695d) {
            return;
        }
        if (z) {
            C1808e0.m933z(this.f4696e, z);
        }
        this.f4696e.animate().translationYBy(this.f4696e.getHeight() * (z ? -1 : 1)).withEndAction(new RunnableC1671b(z)).start();
        if (!z && (abstractC1669a = this.f4698g.get()) != null) {
            abstractC1669a.m1377P(z);
        }
        this.f4697f.clearFocus();
        this.f4695d = z;
    }

    /* renamed from: q */
    public final void m1378q() {
        if (m1383l() && this.f4692a.m823c(this.f4697f.getText().toString())) {
            m1384k();
        }
        Editable text = this.f4697f.getText();
        k.c(text, "phoneNumberTextView.text");
        boolean z = true;
        if (text.length() == 0) {
            m1382m(false);
        }
        Editable text2 = this.f4697f.getText();
        k.c(text2, "phoneNumberTextView.text");
        if (text2.length() <= 0) {
            z = false;
        }
        m1381n(z);
        AbstractC1669a abstractC1669a = this.f4698g.get();
        if (abstractC1669a != null) {
            abstractC1669a.m1376o();
        }
    }
}
