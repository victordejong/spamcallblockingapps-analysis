package com.hiya.stingray.p000ui.local.dialer;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TableLayout;
import com.hiya.stingray.o;
import com.hiya.stingray.util.C0146e0;
import com.hiya.stingray.util.C0184w;
import java.lang.ref.WeakReference;
import kotlin.w.c.g;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.dialer.f */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f.class */
public final class C0006f {

    /* renamed from: a */
    private final C0184w f13a;

    /* renamed from: b */
    private TextWatcher f14b;

    /* renamed from: c */
    private boolean f15c;

    /* renamed from: d */
    private boolean f16d;

    /* renamed from: e */
    private final ViewGroup f17e;

    /* renamed from: f */
    private final EditText f18f;

    /* renamed from: g */
    private final WeakReference<AbstractC0007a> f19g;

    /* renamed from: h */
    private final boolean f20h;

    /* renamed from: i */
    private final boolean f21i;

    /* renamed from: com.hiya.stingray.ui.local.dialer.f$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$a.class */
    public interface AbstractC0007a {

        /* renamed from: com.hiya.stingray.ui.local.dialer.f$a$a */
        /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$a$a.class */
        public static final class C0008a {
            /* renamed from: a */
            public static void m1373a(AbstractC0007a aVar, boolean z) {
            }

            /* renamed from: b */
            public static void m1372b(AbstractC0007a aVar, boolean z) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hiya.stingray.ui.local.dialer.f$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$b.class */
    public static final class RunnableC0009b implements Runnable {

        /* renamed from: g */
        final /* synthetic */ boolean f23g;

        RunnableC0009b(boolean z) {
            this.f23g = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC0007a aVar;
            if (this.f23g && (aVar = (AbstractC0007a) C0006f.this.f19g.get()) != null) {
                aVar.m1377P(this.f23g);
            }
            C0146e0.m933z(C0006f.this.f17e, this.f23g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hiya.stingray.ui.local.dialer.f$e */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$e.class */
    public static final class View$OnClickListenerC0010e implements View.OnClickListener {
        View$OnClickListenerC0010e() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C0006f.this.m1386i(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hiya.stingray.ui.local.dialer.f$f */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$f.class */
    public static final class View$OnClickListenerC0011f implements View.OnClickListener {
        View$OnClickListenerC0011f() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C0006f.this.m1385j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hiya.stingray.ui.local.dialer.f$g */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$g.class */
    public static final class View$OnLongClickListenerC0012g implements View.OnLongClickListener {
        View$OnLongClickListenerC0012g() {
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            C0006f.this.f18f.getText().clear();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hiya.stingray.ui.local.dialer.f$h */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$h.class */
    public static final class View$OnClickListenerC0013h implements View.OnClickListener {
        View$OnClickListenerC0013h() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC0007a aVar = (AbstractC0007a) C0006f.this.f19g.get();
            if (aVar != null) {
                aVar.m1375q0();
            }
        }
    }

    /* renamed from: com.hiya.stingray.ui.local.dialer.f$i */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$i.class */
    public static final class C0014i implements TextWatcher {
        C0014i() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C0006f.this.m1378q();
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hiya.stingray.ui.local.dialer.f$j */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$j.class */
    public static final class View$OnClickListenerC0015j implements View.OnClickListener {
        View$OnClickListenerC0015j() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C0006f.this.m1382m(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hiya.stingray.ui.local.dialer.f$k */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/dialer/f$k.class */
    public static final class View$OnFocusChangeListenerC0016k implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC0016k() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            if (z) {
                AbstractC0007a aVar = (AbstractC0007a) C0006f.this.f19g.get();
                if (aVar != null) {
                    aVar.m1374w0(z);
                }
                C0006f.this.m1386i(true);
            }
        }
    }

    public C0006f(ViewGroup viewGroup, EditText editText, WeakReference<AbstractC0007a> weakReference, boolean z, boolean z2) {
        k.g(viewGroup, "dialerView");
        k.g(editText, "phoneNumberTextView");
        k.g(weakReference, "delegate");
        this.f17e = viewGroup;
        this.f18f = editText;
        this.f19g = weakReference;
        this.f20h = z;
        this.f21i = z2;
        this.f13a = new C0184w();
        this.f15c = true;
        this.f16d = true;
        m1379p();
        m1380o();
    }

    public /* synthetic */ C0006f(ViewGroup viewGroup, EditText editText, WeakReference weakReference, boolean z, boolean z2, int i, g gVar) {
        this(viewGroup, editText, weakReference, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public final void m1388g(String str, boolean z) {
        if (m1383l()) {
            m1382m(false);
        }
        this.f18f.getText().replace(z ? this.f18f.getSelectionStart() - 1 : this.f18f.getSelectionStart(), this.f18f.getSelectionEnd(), str);
    }

    /* renamed from: h */
    static /* synthetic */ void m1387h(C0006f fVar, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        fVar.m1388g(str, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public final void m1385j() {
        this.f18f.dispatchKeyEvent(new KeyEvent(0, 67));
        this.f18f.dispatchKeyEvent(new KeyEvent(1, 67));
    }

    /* renamed from: k */
    private final void m1384k() {
        EditText editText = this.f18f;
        TextWatcher textWatcher = this.f14b;
        if (textWatcher != null) {
            editText.removeTextChangedListener(textWatcher);
            EditText editText2 = this.f18f;
            editText2.setText(this.f13a.m825a(editText2.getText().toString()));
            EditText editText3 = this.f18f;
            editText3.setSelection(editText3.getText().length());
            EditText editText4 = this.f18f;
            TextWatcher textWatcher2 = this.f14b;
            if (textWatcher2 != null) {
                editText4.addTextChangedListener(textWatcher2);
            } else {
                k.u("phoneNumberTextWatcher");
                throw null;
            }
        } else {
            k.u("phoneNumberTextWatcher");
            throw null;
        }
    }

    /* renamed from: l */
    private final boolean m1383l() {
        return this.f18f.getSelectionStart() == this.f18f.getSelectionEnd() && this.f18f.getSelectionStart() == this.f18f.getText().length();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public final void m1382m(boolean z) {
        EditText editText = this.f18f;
        if (!this.f20h) {
            z = true;
        }
        editText.setCursorVisible(z);
        AbstractC0007a aVar = this.f19g.get();
        if (aVar != null) {
            aVar.m1374w0(this.f18f.hasFocus());
        }
    }

    /* renamed from: n */
    private final void m1381n(boolean z) {
        this.f15c = z;
        ViewGroup viewGroup = this.f17e;
        int i = o.U0;
        ImageButton imageButton = (ImageButton) viewGroup.findViewById(i);
        k.c(imageButton, "dialerView.eraseButton");
        imageButton.setEnabled(this.f15c);
        ((ImageButton) this.f17e.findViewById(i)).animate().alpha(this.f15c ? 1.0f : 0.0f).setDuration(300L).start();
    }

    /* renamed from: o */
    private final void m1380o() {
        m1381n(false);
        ViewGroup viewGroup = this.f17e;
        int i = o.L0;
        ImageButton imageButton = (ImageButton) viewGroup.findViewById(i);
        k.c(imageButton, "dialerView.dismissButton");
        C0146e0.m962A(imageButton, this.f21i);
        ((ImageButton) this.f17e.findViewById(i)).setOnClickListener(new View$OnClickListenerC0010e());
        ViewGroup viewGroup2 = this.f17e;
        int i2 = o.U0;
        ((ImageButton) viewGroup2.findViewById(i2)).setOnClickListener(new View$OnClickListenerC0011f());
        ((ImageButton) this.f17e.findViewById(i2)).setOnLongClickListener(new View$OnLongClickListenerC0012g());
        this.f17e.findViewById(o.h2).setOnClickListener(new View$OnClickListenerC0013h());
        TableLayout tableLayout = (TableLayout) this.f17e.findViewById(o.J);
        k.c(tableLayout, "dialerView.buttonsContainer");
        for (DialerButton dialerButton : C0146e0.m954e(tableLayout, DialerButton.class)) {
            dialerButton.setClick(new c(dialerButton, this));
            String secondaryCharacter = dialerButton.getSecondaryCharacter();
            if (secondaryCharacter != null) {
                dialerButton.setLongPress(new d(secondaryCharacter, dialerButton, this));
            }
        }
    }

    /* renamed from: p */
    private final void m1379p() {
        C0014i iVar = new C0014i();
        this.f14b = iVar;
        EditText editText = this.f18f;
        if (iVar != null) {
            editText.addTextChangedListener(iVar);
            this.f18f.setShowSoftInputOnFocus(false);
            m1382m(false);
            this.f18f.setOnClickListener(new View$OnClickListenerC0015j());
            this.f18f.setOnFocusChangeListener(new View$OnFocusChangeListenerC0016k());
            return;
        }
        k.u("phoneNumberTextWatcher");
        throw null;
    }

    /* renamed from: i */
    public final void m1386i(boolean z) {
        AbstractC0007a aVar;
        if (z != this.f16d) {
            if (z) {
                C0146e0.m933z(this.f17e, z);
            }
            this.f17e.animate().translationYBy(this.f17e.getHeight() * (z ? -1 : 1)).withEndAction(new RunnableC0009b(z)).start();
            if (!z && (aVar = this.f19g.get()) != null) {
                aVar.m1377P(z);
            }
            this.f18f.clearFocus();
            this.f16d = z;
        }
    }

    /* renamed from: q */
    public final void m1378q() {
        if (m1383l() && this.f13a.m823c(this.f18f.getText().toString())) {
            m1384k();
        }
        Editable text = this.f18f.getText();
        k.c(text, "phoneNumberTextView.text");
        boolean z = true;
        if (text.length() == 0) {
            m1382m(false);
        }
        Editable text2 = this.f18f.getText();
        k.c(text2, "phoneNumberTextView.text");
        if (text2.length() <= 0) {
            z = false;
        }
        m1381n(z);
        AbstractC0007a aVar = this.f19g.get();
        if (aVar != null) {
            aVar.m1376o();
        }
    }
}
