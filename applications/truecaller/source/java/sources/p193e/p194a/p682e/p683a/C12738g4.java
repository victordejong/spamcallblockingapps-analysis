package p193e.p194a.p682e.p683a;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import e.m.a.g.e.e;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18176o;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p430q.AbstractC8597j0;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.f0.r;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.e.a.g4 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/g4.class */
public final class C12738g4 extends e {

    /* renamed from: a */
    public boolean f37103a;

    /* renamed from: b */
    public C18176o f37104b;

    /* renamed from: c */
    public final String f37105c;

    /* renamed from: d */
    public final String f37106d;

    /* renamed from: e */
    public final l<Boolean, s> f37107e;

    /* renamed from: e.a.e.a.g4$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/g4$a.class */
    public static final class View$OnClickListenerC12739a implements View.OnClickListener {
        public View$OnClickListenerC12739a() {
            C12738g4.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12738g4.this.dismiss();
        }
    }

    /* renamed from: e.a.e.a.g4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/g4$b.class */
    public static final class View$OnClickListenerC12740b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ String f37110b;

        /* renamed from: c */
        public final /* synthetic */ Uri f37111c;

        public View$OnClickListenerC12740b(String str, Uri uri) {
            C12738g4.this = r4;
            this.f37110b = str;
            this.f37111c = uri;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12738g4 c12738g4 = C12738g4.this;
            c12738g4.f37103a = true;
            Context requireContext = c12738g4.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            C8582g0.m28323R(requireContext, null, requireContext.getString(C2752R.string.WarnYourFriendsShareTitle), requireContext.getString(C2752R.string.WarnYourFriendsShareMessage, this.f37110b), this.f37111c);
            C12738g4.this.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C12738g4(String str, String str2, l<? super Boolean, s> lVar) {
        this.f37105c = str;
        this.f37106d = str2;
        this.f37107e = lVar;
    }

    public C12738g4(String str, String str2, l lVar, int i) {
        this.f37105c = str;
        this.f37106d = str2;
        this.f37107e = null;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.bottom_sheet_warn_your_friends, viewGroup, false);
        int i = 2131362348;
        TextView textView = (TextView) inflate.findViewById(C2752R.C2754id.blockTitle);
        if (textView != null) {
            i = 2131362425;
            MaterialButton findViewById = inflate.findViewById(2131362425);
            if (findViewById != null) {
                i = 2131362448;
                MaterialButton findViewById2 = inflate.findViewById(C2752R.C2754id.btnShare);
                if (findViewById2 != null) {
                    i = 2131364231;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) inflate.findViewById(2131364231);
                    if (appCompatImageView != null) {
                        i = 2131364799;
                        TextView textView2 = (TextView) inflate.findViewById(C2752R.C2754id.message_text);
                        if (textView2 != null) {
                            i = 2131366658;
                            TextView textView3 = (TextView) inflate.findViewById(C2752R.C2754id.txtName);
                            if (textView3 != null) {
                                i = 2131366659;
                                TextView textView4 = (TextView) inflate.findViewById(C2752R.C2754id.txtNumber);
                                if (textView4 != null) {
                                    C18176o c18176o = new C18176o((ConstraintLayout) inflate, textView, findViewById, findViewById2, appCompatImageView, textView2, textView3, textView4);
                                    s1.z.c.l.d(c18176o, "BottomSheetWarnYourFrien… true), container, false)");
                                    this.f37104b = c18176o;
                                    if (c18176o != null) {
                                        return c18176o.f51377a;
                                    }
                                    s1.z.c.l.l("binding");
                                    throw null;
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C12738g4.super.onDismiss(dialogInterface);
        l<Boolean, s> lVar = this.f37107e;
        if (lVar != null) {
            s sVar = (s) lVar.d(Boolean.valueOf(this.f37103a));
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C12738g4.super.onViewCreated(view, bundle);
        C18176o c18176o = this.f37104b;
        if (c18176o == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView = c18176o.f51378b;
        s1.z.c.l.d(textView, "binding.blockTitle");
        textView.setText(getString((int) C2752R.string.WarnYourFriendsTitle, new Object[]{this.f37105c}));
        C18176o c18176o2 = this.f37104b;
        if (c18176o2 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView2 = c18176o2.f51381e;
        s1.z.c.l.d(textView2, "binding.txtName");
        textView2.setText(this.f37105c);
        C18176o c18176o3 = this.f37104b;
        if (c18176o3 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView3 = c18176o3.f51382f;
        s1.z.c.l.d(textView3, "binding.txtNumber");
        textView3.setText(C8605o.m28239a(this.f37106d));
        View inflate = getLayoutInflater().inflate(C2752R.layout.view_warn_your_friends_web, (ViewGroup) null);
        View findViewById = inflate.findViewById(2131364874);
        s1.z.c.l.d(findViewById, "sharedView.findViewById<TextView>(R.id.name)");
        ((TextView) C22128a.m8624f1((TextView) findViewById, this.f37105c, inflate, 2131364968, "sharedView.findViewById<TextView>(R.id.number)")).setText(this.f37106d);
        if (r.o(this.f37105c, this.f37106d, false, 2)) {
            C18176o c18176o4 = this.f37104b;
            if (c18176o4 == null) {
                s1.z.c.l.l("binding");
                throw null;
            }
            TextView textView4 = c18176o4.f51382f;
            s1.z.c.l.d(textView4, "binding.txtNumber");
            C19286f.m13683U(textView4, false);
            View findViewById2 = inflate.findViewById(2131364968);
            s1.z.c.l.d(findViewById2, "sharedView.findViewById<TextView>(R.id.number)");
            C19286f.m13683U(findViewById2, false);
        }
        Context context = getContext();
        Context applicationContext = context != null ? context.getApplicationContext() : null;
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC8597j0 mo12392f0 = applicationContext.mo10154s().mo12392f0();
        s1.z.c.l.d(mo12392f0, "(context?.applicationCon…raph.tcSearchUrlCreator()");
        String mo28262a = mo12392f0.mo28262a(this.f37106d);
        s1.z.c.l.d(inflate, "sharedView");
        Bitmap m28327N = C8582g0.m28327N(inflate);
        Uri m28325P = C8582g0.m28325P(getContext(), m28327N);
        m28327N.recycle();
        if (m28325P != null) {
            C18176o c18176o5 = this.f37104b;
            if (c18176o5 == null) {
                s1.z.c.l.l("binding");
                throw null;
            }
            MaterialButton materialButton = c18176o5.f51380d;
            s1.z.c.l.d(materialButton, "binding.btnShare");
            materialButton.setEnabled(true);
        }
        C18176o c18176o6 = this.f37104b;
        if (c18176o6 == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        c18176o6.f51379c.setOnClickListener(new View$OnClickListenerC12739a());
        C18176o c18176o7 = this.f37104b;
        if (c18176o7 != null) {
            c18176o7.f51380d.setOnClickListener(new View$OnClickListenerC12740b(mo28262a, m28325P));
        } else {
            s1.z.c.l.l("binding");
            throw null;
        }
    }
}
