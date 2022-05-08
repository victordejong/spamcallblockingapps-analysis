package gogolook.callgogolook2.messaging.p078ui.conversation;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.core.role.RoleManagerCompat;
import gogolook.callgogolook2.R$bool;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$plurals;
import gogolook.callgogolook2.R$raw;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData;
import gogolook.callgogolook2.messaging.p078ui.AttachmentPreview;
import gogolook.callgogolook2.messaging.p078ui.BugleActionBarActivity;
import gogolook.callgogolook2.messaging.p078ui.PlainTextEditText;
import gogolook.callgogolook2.phone.SettingResultActivity;
import java.util.ArrayList;
import java.util.Collection;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p475c.p477x.C11592f;
import p459j.p460a.p474c0.p475c.p478y.C11596c;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p475c.p478y.C11634p;
import p459j.p460a.p474c0.p488f.C11828f;
import p459j.p460a.p474c0.p491g.p493b0.C11960e;
import p459j.p460a.p474c0.p491g.p493b0.FragmentC11932c;
import p459j.p460a.p474c0.p499h.AbstractC12165g0;
import p459j.p460a.p474c0.p499h.AbstractC12178k;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12143b;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12155e;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView.class */
public class ComposeMessageView extends LinearLayout implements TextView.OnEditorActionListener, C11617j.AbstractC11622e, TextWatcher, C11960e.AbstractC11965e {

    /* renamed from: a */
    public PlainTextEditText f11625a;

    /* renamed from: b */
    public PlainTextEditText f11626b;

    /* renamed from: c */
    public TextView f11627c;

    /* renamed from: d */
    public TextView f11628d;

    /* renamed from: e */
    public SimIconView f11629e;

    /* renamed from: f */
    public ImageButton f11630f;

    /* renamed from: g */
    public View f11631g;

    /* renamed from: h */
    public ImageButton f11632h;

    /* renamed from: i */
    public AttachmentPreview f11633i;

    /* renamed from: j */
    public ImageButton f11634j;

    /* renamed from: k */
    public View f11635k;

    /* renamed from: l */
    public View f11636l;

    /* renamed from: n */
    public AbstractC4745m f11638n;

    /* renamed from: o */
    public final Context f11639o;

    /* renamed from: q */
    public C11592f<C11596c> f11641q;

    /* renamed from: r */
    public C11960e f11642r;

    /* renamed from: p */
    public int f11640p = 1;

    /* renamed from: s */
    public final C11596c.AbstractC11599c f11643s = new C4737e();

    /* renamed from: m */
    public final C11589c<C11617j> f11637m = AbstractC11590d.m9040a(this);

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$a.class */
    public class View$OnClickListenerC4733a implements View.OnClickListener {
        public View$OnClickListenerC4733a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean c = ComposeMessageView.this.f11642r.m7744c();
            ComposeMessageView.this.f11642r.m7745b(!c, true);
            ComposeMessageView.this.f11634j.setImageResource(c ? R$drawable.ip_mms_btn : R$drawable.ip_mms_close_btn);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$b.class */
    public class View$OnClickListenerC4734b implements View.OnClickListener {
        public View$OnClickListenerC4734b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Activity activity;
            if ((ComposeMessageView.this.f11638n instanceof FragmentC11932c) && (activity = ((FragmentC11932c) ComposeMessageView.this.f11638n).getActivity()) != null) {
                SettingResultActivity.m26746b(activity, RoleManagerCompat.ROLE_SMS, (Integer) null);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$c.class */
    public class C4735c implements C11617j.AbstractC11620c {

        /* renamed from: a */
        public final /* synthetic */ boolean f11646a;

        public C4735c(boolean z) {
            this.f11646a = z;
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11620c
        /* renamed from: a */
        public void mo8781a(C11617j jVar, int i) {
            ComposeMessageView.this.f11637m.mo9034a((C11589c) jVar);
            if (i == 0) {
                MessageData a = ((C11617j) ComposeMessageView.this.f11637m.mo9033b()).m8828a(ComposeMessageView.this.f11637m);
                if (a != null && a.m27633M()) {
                    ComposeMessageView.m27239A();
                    ComposeMessageView.this.f11638n.mo7865a(a);
                    ComposeMessageView.this.m27200k();
                    if (C12143b.m7032a(ComposeMessageView.this.getContext())) {
                        C12143b.m7028a(ComposeMessageView.this, (AccessibilityManager) null, (int) R$string.sending_message);
                    }
                }
            } else if (i == 1) {
                C12212s0.m6796a((int) R$string.cant_send_message_while_loading_attachments);
            } else if (i == 2) {
                ComposeMessageView.this.f11638n.mo7801n();
            } else if (i == 3) {
                C12151d.m6999b(this.f11646a);
                ComposeMessageView.this.f11638n.mo7842a(true, false);
            } else if (i == 4) {
                C12151d.m6999b(this.f11646a);
                ComposeMessageView.this.f11638n.mo7842a(true, true);
            } else if (i == 5) {
                C12212s0.m6796a((int) R$string.cant_send_message_without_active_subscription);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$d.class */
    public class RunnableC4736d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f11648a;

        public RunnableC4736d(boolean z) {
            this.f11648a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            ComposeMessageView.this.m27209f(this.f11648a);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$e.class */
    public class C4737e extends C11596c.C11605i {
        public C4737e() {
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: a */
        public void mo7730a(C11596c cVar) {
            ComposeMessageView.this.f11641q.mo9034a((C11592f) cVar);
            ComposeMessageView.this.m27186w();
            ComposeMessageView.this.m27184y();
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: b */
        public void mo7729b(C11596c cVar) {
            ComposeMessageView.this.f11641q.mo9034a((C11592f) cVar);
            ComposeMessageView.this.m27184y();
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11596c.C11605i, p459j.p460a.p474c0.p475c.p478y.C11596c.AbstractC11599c
        /* renamed from: c */
        public void mo7831c(C11596c cVar) {
            ComposeMessageView.this.f11641q.mo9034a((C11592f) cVar);
            ComposeMessageView.this.m27184y();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$f.class */
    public class View$OnFocusChangeListenerC4738f implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC4738f() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (view == ComposeMessageView.this.f11625a && z) {
                ComposeMessageView.this.f11638n.mo7805l();
                ComposeMessageView.this.f11634j.setImageResource(R$drawable.ip_mms_btn);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$g.class */
    public class View$OnClickListenerC4739g implements View.OnClickListener {
        public View$OnClickListenerC4739g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ComposeMessageView.this.f11638n.mo7814h()) {
                ComposeMessageView.this.m27202j();
            }
            ComposeMessageView.this.f11634j.setImageResource(R$drawable.ip_mms_btn);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$h.class */
    public class View$OnClickListenerC4740h implements View.OnClickListener {
        public View$OnClickListenerC4740h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ComposeMessageView.this.m27215d(ComposeMessageView.this.f11642r.m7750a(true, ComposeMessageView.this.m27206h()));
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$i.class */
    public class View$OnLongClickListenerC4741i implements View.OnLongClickListener {
        public View$OnLongClickListenerC4741i() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (ComposeMessageView.this.f11638n.mo7794u()) {
                ComposeMessageView.this.m27189t();
                return true;
            }
            ComposeMessageView.this.m27215d(ComposeMessageView.this.f11642r.m7750a(true, ComposeMessageView.this.m27206h()));
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$j.class */
    public class View$OnClickListenerC4742j implements View.OnClickListener {
        public View$OnClickListenerC4742j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ComposeMessageView.this.m27200k();
            ComposeMessageView.this.f11626b.setText((CharSequence) null);
            ((C11617j) ComposeMessageView.this.f11637m.mo9033b()).m8807d(null);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$k */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$k.class */
    public class View$OnClickListenerC4743k implements View.OnClickListener {
        public View$OnClickListenerC4743k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ComposeMessageView.this.m27209f(true);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$l */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$l.class */
    public class C4744l extends View.AccessibilityDelegate {
        public C4744l() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            if (accessibilityEvent.getEventType() == 2) {
                accessibilityEvent.getText().clear();
                accessibilityEvent.getText().add(ComposeMessageView.this.getResources().getText(ComposeMessageView.m27231a((C11596c) ComposeMessageView.this.f11641q.mo9033b()) ? R$string.send_button_long_click_description_with_sim_selector : R$string.send_button_long_click_description_no_sim_selector));
                accessibilityEvent.setEventType(16384);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ComposeMessageView$m */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ComposeMessageView$m.class */
    public interface AbstractC4745m extends C11617j.AbstractC11623f {
        /* renamed from: a */
        void mo7865a(MessageData messageData);

        /* renamed from: a */
        void mo7846a(ArrayList<String> arrayList, Uri uri, Rect rect, boolean z);

        /* renamed from: a */
        void mo7843a(boolean z, Runnable runnable);

        /* renamed from: a */
        void mo7842a(boolean z, boolean z2);

        /* renamed from: c */
        void mo7827c(boolean z);

        /* renamed from: h */
        boolean mo7814h();

        /* renamed from: i */
        int mo7811i();

        /* renamed from: j */
        boolean mo7809j();

        /* renamed from: k */
        void mo7807k();

        /* renamed from: l */
        void mo7805l();

        /* renamed from: m */
        Uri mo7803m();

        /* renamed from: n */
        void mo7801n();

        /* renamed from: o */
        int mo7799o();

        /* renamed from: p */
        void mo7797p();

        /* renamed from: r */
        void mo7795r();

        /* renamed from: u */
        boolean mo7794u();
    }

    public ComposeMessageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11639o = context;
    }

    /* renamed from: A */
    public static void m27239A() {
        AbstractC12178k b = AbstractC12178k.m6912b();
        Context a = AbstractC11516a.m9413n().mo9412a();
        if (b.mo6906a(a.getString(R$string.send_sound_pref_key), a.getResources().getBoolean(R$bool.send_sound_pref_default))) {
            AbstractC12165g0.m6944b().mo6942a(a, R$raw.message_sent, null);
        }
    }

    /* renamed from: a */
    public static boolean m27231a(C11596c cVar) {
        boolean z = true;
        if (!C14017g4.m2804t() || cVar.m8998a(true) <= 1) {
            z = false;
        }
        return z;
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11965e
    /* renamed from: a */
    public void mo7719a() {
        this.f11625a.requestFocus();
        this.f11642r.m7749a(true, true);
        this.f11634j.setImageResource(R$drawable.ip_mms_btn);
        m27220c();
    }

    /* renamed from: a */
    public final void m27238a(int i) {
        if (i == 1) {
            this.f11629e.setImportantForAccessibility(2);
            this.f11629e.setContentDescription(null);
            m27224b(1);
        } else if (i == 2) {
            this.f11629e.setImportantForAccessibility(1);
            this.f11629e.setContentDescription(m27204i());
            m27224b(2);
        } else if (i == 3) {
            this.f11628d.setImportantForAccessibility(2);
            this.f11628d.setContentDescription(null);
            m27224b(3);
        }
    }

    /* renamed from: a */
    public void m27237a(Bundle bundle) {
        this.f11642r.m7756a(bundle);
    }

    /* renamed from: a */
    public void m27235a(MessageData messageData) {
        this.f11637m.mo9033b().m8827a(this.f11637m, messageData, false);
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11965e
    /* renamed from: a */
    public void mo7718a(MessagePartData messagePartData) {
        this.f11637m.mo9033b().m8816b(messagePartData);
        m27221b(false);
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11965e
    /* renamed from: a */
    public void mo7717a(PendingAttachmentData pendingAttachmentData) {
        this.f11637m.mo9033b().m8830a(pendingAttachmentData, this.f11637m);
        mo7719a();
    }

    /* renamed from: a */
    public void m27232a(C11592f<C11596c> fVar) {
        this.f11641q = fVar;
        this.f11641q.mo9033b().m9007a(this.f11643s);
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: a */
    public void mo7860a(C11617j jVar) {
        this.f11637m.mo9034a((C11589c<C11617j>) jVar);
        this.f11638n.mo7842a(false, false);
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: a */
    public void mo7859a(C11617j jVar, int i) {
        this.f11637m.mo9034a((C11589c<C11617j>) jVar);
        String p = jVar.m8795p();
        String q = jVar.m8794q();
        int i2 = C11617j.f26072u;
        if ((i & i2) == i2) {
            this.f11626b.setText(p);
            PlainTextEditText plainTextEditText = this.f11626b;
            plainTextEditText.setSelection(plainTextEditText.getText().length());
        }
        int i3 = C11617j.f26071t;
        if ((i & i3) == i3) {
            this.f11625a.setText(q);
            PlainTextEditText plainTextEditText2 = this.f11625a;
            plainTextEditText2.setSelection(plainTextEditText2.getText().length());
        }
        int i4 = C11617j.f26070s;
        if ((i & i4) == i4) {
            this.f11638n.mo7827c(this.f11633i.m27429a(jVar));
        }
        int i5 = C11617j.f26073v;
        if ((i & i5) == i5) {
            m27186w();
        }
        m27184y();
    }

    /* renamed from: a */
    public void m27230a(C11617j jVar, AbstractC4745m mVar) {
        this.f11638n = mVar;
        this.f11637m.mo9038b((C11589c<C11617j>) jVar);
        jVar.m8826a(this);
        jVar.m8825a(mVar);
        int i = this.f11638n.mo7811i();
        if (i != -1) {
            this.f11627c.setTextColor(i);
        }
    }

    /* renamed from: a */
    public void m27229a(C11634p.C11635a aVar) {
        String e = m27214e();
        String str = aVar.f26117a;
        C12151d.m7000b(str);
        if (e != null && !TextUtils.equals(e, str)) {
            m27226a(str, true);
        }
    }

    /* renamed from: a */
    public void m27228a(C11960e eVar) {
        this.f11642r = eVar;
    }

    /* renamed from: a */
    public void m27227a(String str) {
        m27226a(str, true);
    }

    /* renamed from: a */
    public final void m27226a(String str, boolean z) {
        this.f11637m.mo9033b().m8808c(str, z);
    }

    /* renamed from: a */
    public void m27225a(ArrayList<String> arrayList, Uri uri, Rect rect) {
        this.f11638n.mo7846a(arrayList, uri, rect, true);
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11965e
    /* renamed from: a */
    public void mo7716a(Collection<MessagePartData> collection) {
        this.f11637m.mo9033b().m8821a(collection);
        m27221b(true);
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11965e
    /* renamed from: a */
    public void mo7715a(boolean z) {
        if (z) {
            this.f11634j.setImportantForAccessibility(1);
            this.f11625a.setImportantForAccessibility(1);
            this.f11630f.setImportantForAccessibility(1);
            m27238a(this.f11640p);
            return;
        }
        this.f11629e.setImportantForAccessibility(2);
        this.f11625a.setImportantForAccessibility(2);
        this.f11630f.setImportantForAccessibility(2);
        this.f11634j.setImportantForAccessibility(2);
    }

    /* renamed from: a */
    public boolean m27236a(ActionBar actionBar) {
        C11960e eVar = this.f11642r;
        return eVar != null ? eVar.m7755a(actionBar) : false;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.C11960e.AbstractC11965e
    /* renamed from: b */
    public PlainTextEditText mo7714b() {
        return this.f11625a;
    }

    /* renamed from: b */
    public final void m27224b(int i) {
        if (C14017g4.m2804t()) {
            this.f11634j.setAccessibilityTraversalBefore(R$id.compose_message_text);
            if (i == 2) {
                this.f11625a.setAccessibilityTraversalBefore(R$id.self_send_icon);
            } else if (i == 3) {
                this.f11625a.setAccessibilityTraversalBefore(R$id.send_message_button);
            }
        }
    }

    /* renamed from: b */
    public final void m27221b(boolean z) {
        Resources resources = getContext().getResources();
        C12143b.m7027a(this, (AccessibilityManager) null, z ? resources.getString(R$string.mediapicker_gallery_item_selected_content_description) : resources.getString(R$string.mediapicker_gallery_item_unselected_content_description));
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.f11638n.mo7814h()) {
            m27202j();
        }
    }

    /* renamed from: c */
    public final void m27220c() {
        if (C12143b.m7032a(getContext())) {
            int size = this.f11637m.mo9033b().m8792s().size() + this.f11637m.mo9033b().m8791t().size();
            C12143b.m7027a(this, (AccessibilityManager) null, getContext().getResources().getQuantityString(R$plurals.attachment_changed_accessibility_announcement, size, Integer.valueOf(size)));
        }
    }

    /* renamed from: c */
    public void m27218c(boolean z) {
        this.f11642r.m7751a(z);
        this.f11634j.setImageResource(R$drawable.ip_mms_btn);
    }

    /* renamed from: d */
    public void m27217d() {
        this.f11637m.mo9033b().m8838a(this.f11638n.mo7799o());
        this.f11638n.mo7797p();
    }

    /* renamed from: d */
    public final void m27215d(boolean z) {
        if (this.f11638n.mo7814h()) {
            boolean x = this.f11637m.mo9033b().m8787x();
            if (!z || !x) {
                this.f11638n.mo7827c(x);
                this.f11633i.m27429a(this.f11637m.mo9033b());
                return;
            }
            this.f11638n.mo7827c(false);
            this.f11633i.m27426c();
        }
    }

    /* renamed from: e */
    public String m27214e() {
        return this.f11637m.mo9033b().m8790u();
    }

    /* renamed from: e */
    public void m27212e(boolean z) {
        this.f11637m.mo9033b().m8827a(this.f11637m, null, z);
    }

    /* renamed from: f */
    public C11592f<C11617j> m27211f() {
        return AbstractC11590d.m9041a((AbstractC11590d) this.f11637m);
    }

    /* renamed from: f */
    public final void m27209f(boolean z) {
        C12153d0.m6985c("MessagingApp", "UI initiated message sending in conversation " + this.f11637m.mo9033b().m8798m());
        if (this.f11637m.mo9033b().m8785z()) {
            C12153d0.m6981e("MessagingApp", "Message can't be sent: still checking draft");
        } else if (this.f11638n.mo7809j()) {
            this.f11642r.m7742c(false, true);
            this.f11637m.mo9033b().m8806e(this.f11625a.getText().toString());
            this.f11637m.mo9033b().m8807d(this.f11626b.getText().toString());
            this.f11637m.mo9033b().m8818a(z, this.f11638n.mo7384a(), new C4735c(z), this.f11637m);
        } else {
            this.f11638n.mo7843a(true, (Runnable) new RunnableC4736d(z));
        }
    }

    /* renamed from: g */
    public final Uri m27208g() {
        Uri m = this.f11638n.mo7803m();
        if (m != null) {
            return m;
        }
        C11634p.C11635a h = m27206h();
        if (h != null) {
            return h.f26119c;
        }
        ParticipantData h2 = this.f11641q.mo9033b().m8986h();
        return h2 == null ? null : C12155e.m6975a(h2);
    }

    /* renamed from: h */
    public final C11634p.C11635a m27206h() {
        return this.f11641q.mo9033b().m9000a(this.f11637m.mo9033b().m8790u(), false);
    }

    /* renamed from: i */
    public final String m27204i() {
        C11634p.C11635a h = m27206h();
        return h != null ? getResources().getString(R$string.sim_selector_button_content_description_with_selection, h.f26120d) : getResources().getString(R$string.sim_selector_button_content_description);
    }

    /* renamed from: j */
    public final void m27202j() {
        if (this.f11642r.m7742c(false, true)) {
            m27215d(false);
        }
    }

    /* renamed from: k */
    public final void m27200k() {
        this.f11631g.setVisibility(8);
        this.f11625a.requestFocus();
    }

    /* renamed from: l */
    public final boolean m27198l() {
        C11592f<C11596c> fVar = this.f11641q;
        return fVar != null && fVar.mo9031c() && this.f11641q.mo9033b().m8975p();
    }

    /* renamed from: m */
    public final boolean m27196m() {
        Uri m = this.f11638n.mo7803m();
        if (m == null) {
            return false;
        }
        return "g".equals(C12155e.m6978a(m));
    }

    /* renamed from: n */
    public void m27194n() {
        this.f11638n.mo7807k();
    }

    /* renamed from: o */
    public boolean m27193o() {
        return this.f11642r.m7741d();
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 4) {
            return false;
        }
        m27209f(true);
        return true;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        this.f11625a = (PlainTextEditText) findViewById(R$id.compose_message_text);
        this.f11625a.setOnEditorActionListener(this);
        this.f11625a.addTextChangedListener(this);
        this.f11625a.setOnFocusChangeListener(new View$OnFocusChangeListenerC4738f());
        this.f11625a.setOnClickListener(new View$OnClickListenerC4739g());
        this.f11625a.setFilters(new InputFilter[]{new InputFilter.LengthFilter(C11828f.m8193a(-1).m8184i())});
        this.f11629e = (SimIconView) findViewById(R$id.self_send_icon);
        this.f11629e.setOnClickListener(new View$OnClickListenerC4740h());
        this.f11629e.setOnLongClickListener(new View$OnLongClickListenerC4741i());
        this.f11626b = (PlainTextEditText) findViewById(R$id.compose_subject_text);
        this.f11626b.addTextChangedListener(this);
        this.f11626b.setFilters(new InputFilter[]{new InputFilter.LengthFilter(C11828f.m8193a(-1).m8185h())});
        this.f11632h = (ImageButton) findViewById(R$id.delete_subject_button);
        this.f11632h.setOnClickListener(new View$OnClickListenerC4742j());
        this.f11631g = findViewById(R$id.subject_view);
        this.f11630f = (ImageButton) findViewById(R$id.send_message_button);
        this.f11630f.setEnabled(false);
        this.f11630f.setOnClickListener(new View$OnClickListenerC4743k());
        this.f11630f.setAccessibilityDelegate(new C4744l());
        this.f11634j = (ImageButton) findViewById(R$id.attach_media_button);
        this.f11634j.setOnClickListener(new View$OnClickListenerC4733a());
        this.f11633i = (AttachmentPreview) findViewById(R$id.attachment_draft_view);
        this.f11633i.m27430a(this);
        this.f11627c = (TextView) findViewById(R$id.char_counter);
        this.f11628d = (TextView) findViewById(R$id.mms_indicator);
        this.f11635k = findViewById(R$id.default_app_promote);
        this.f11636l = findViewById(R$id.default_app_button);
        this.f11636l.setOnClickListener(new View$OnClickListenerC4734b());
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        Context context = this.f11639o;
        BugleActionBarActivity bugleActionBarActivity = context instanceof BugleActionBarActivity ? (BugleActionBarActivity) context : null;
        if (bugleActionBarActivity == null || !bugleActionBarActivity.m27395E()) {
            this.f11637m.m9043d();
            m27184y();
            return;
        }
        C12153d0.m6983d("MessagingApp", "got onTextChanged after onDestroy");
    }

    /* renamed from: p */
    public boolean m27192p() {
        return this.f11642r.m7737f();
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: q */
    public void mo7796q() {
        this.f11638n.mo7795r();
    }

    /* renamed from: r */
    public void m27191r() {
        this.f11642r.m7735g();
        this.f11634j.setImageResource(R$drawable.ip_mms_btn);
    }

    /* renamed from: s */
    public void m27190s() {
        m27209f(false);
    }

    /* renamed from: t */
    public final boolean m27189t() {
        if (this.f11631g.getVisibility() != 8) {
            return false;
        }
        this.f11631g.setVisibility(0);
        this.f11631g.requestFocus();
        return true;
    }

    /* renamed from: u */
    public void m27188u() {
        this.f11637m.m9042e();
        this.f11638n = null;
        this.f11642r.m7739e();
    }

    /* renamed from: v */
    public void m27187v() {
        C11960e eVar = this.f11642r;
        boolean z = eVar != null && eVar.m7744c();
        ImageButton imageButton = this.f11634j;
        if (imageButton != null) {
            imageButton.setImageResource(z ? R$drawable.ip_mms_close_btn : R$drawable.ip_mms_btn);
        }
    }

    /* renamed from: w */
    public final void m27186w() {
        this.f11625a.setFilters(new InputFilter[]{new InputFilter.LengthFilter(C11828f.m8193a(this.f11637m.mo9033b().m8789v()).m8184i())});
        this.f11626b.setFilters(new InputFilter[]{new InputFilter.LengthFilter(C11828f.m8193a(this.f11637m.mo9033b().m8789v()).m8185h())});
    }

    /* renamed from: x */
    public void m27185x() {
        AbstractC12181l0.m6886t().m6891m();
        View view = this.f11635k;
        if (view != null && this.f11636l != null) {
            view.setVisibility(8);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x0292, code lost:
        r12 = 4;
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0220  */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m27184y() {
        /*
            Method dump skipped, instructions count: 867
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.p078ui.conversation.ComposeMessageView.m27184y():void");
    }

    /* renamed from: z */
    public void m27183z() {
        this.f11637m.mo9033b().m8806e(this.f11625a.getText().toString());
        this.f11637m.mo9033b().m8807d(this.f11626b.getText().toString());
        this.f11637m.mo9033b().m8813b(this.f11637m);
    }
}
