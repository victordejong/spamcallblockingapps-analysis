package p459j.p460a.p463b0;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.main.FakeCallActivity;
import p081h.p119d.p120a.C5775k;
import p081h.p119d.p120a.C5776l;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13938c4;
import p459j.p460a.p582w0.C14111p;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p583a5.C13892b;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p613z0.DialogC14618f;
/* renamed from: j.a.b0.c */
/* loaded from: classes2-dex2jar.jar:j/a/b0/c.class */
public class DialogC11112c extends Dialog {

    /* renamed from: a */
    public DialogInterface.OnDismissListener f24982a;

    /* renamed from: j.a.b0.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/c$a.class */
    public class View$OnClickListenerC11113a implements View.OnClickListener {
        public View$OnClickListenerC11113a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(DialogC11112c.this.getContext(), FakeCallActivity.class);
            intent.putExtra("source", "disclosure_popup");
            DialogC11112c.this.getContext().startActivity(intent);
        }
    }

    /* renamed from: j.a.b0.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/c$b.class */
    public class View$OnClickListenerC11114b implements View.OnClickListener {
        public View$OnClickListenerC11114b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14261f.m1980a(C14261f.EnumC14265d.a_Disclosure_Popup_Accept);
            C13915b3.m3055b("isNumberTransmissionAccepted", true);
            C14111p.m2472a();
            if (C13892b.m3132c("onboarding_tutorial")) {
                C13938c4.m3012a(DialogC11112c.this.getContext());
            }
            if (!C13878a3.m3250a()) {
                C13878a3.m3213f(DialogC11112c.this.getOwnerActivity());
            }
            DialogC11112c.this.dismiss();
        }
    }

    /* renamed from: j.a.b0.c$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/c$c.class */
    public class View$OnClickListenerC11115c implements View.OnClickListener {

        /* renamed from: j.a.b0.c$c$a */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/c$c$a.class */
        public class DialogInterface$OnClickListenerC11116a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC11116a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C13915b3.m3055b("isNumberTransmissionAccepted", true);
                C14111p.m2472a();
                dialogInterface.dismiss();
                C14261f.m1979a(C14261f.EnumC14265d.a_Intro_Refuse_Accept, "page", "popup");
                if (C13892b.m3132c("onboarding_tutorial")) {
                    C13938c4.m3012a(DialogC11112c.this.getContext());
                }
            }
        }

        /* renamed from: j.a.b0.c$c$b */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/c$c$b.class */
        public class DialogInterface$OnClickListenerC11117b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC11117b(View$OnClickListenerC11115c cVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C13915b3.m3055b("isNumberTransmissionAccepted", false);
                C14111p.m2472a();
                dialogInterface.dismiss();
                C14261f.m1979a(C14261f.EnumC14265d.a_Intro_Refuse_Refuse, "page", "popup");
            }
        }

        public View$OnClickListenerC11115c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14261f.m1980a(C14261f.EnumC14265d.a_Disclosure_Popup_Refuse);
            DialogInterface.OnDismissListener onDismissListener = DialogC11112c.this.f24982a;
            DialogC11112c.this.setOnDismissListener(null);
            DialogC11112c.this.dismiss();
            DialogC14618f fVar = new DialogC14618f(DialogC11112c.this.getContext());
            fVar.setOnDismissListener(onDismissListener);
            fVar.m998b(C14206w4.m2225a((int) R$string.intro_caller_refuse_content));
            fVar.m997b(C14206w4.m2225a((int) R$string.intro_caller_disclosure_yes), new DialogInterface$OnClickListenerC11116a());
            fVar.m1002a(C14206w4.m2225a((int) R$string.intro_caller_disclosure_no), new DialogInterface$OnClickListenerC11117b(this));
            fVar.setCancelable(false);
            fVar.show();
        }
    }

    /* renamed from: j.a.b0.c$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/c$d.class */
    public class DialogInterface$OnShowListenerC11118d implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public final /* synthetic */ ScrollView f24987a;

        public DialogInterface$OnShowListenerC11118d(DialogC11112c cVar, ScrollView scrollView) {
            this.f24987a = scrollView;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            this.f24987a.fullScroll(130);
        }
    }

    public DialogC11112c(Context context) {
        super(context, 16973840);
        m10257a();
        setCancelable(false);
    }

    /* renamed from: a */
    public final void m10257a() {
        C14261f.m1980a(C14261f.EnumC14265d.a_Disclosure_Popup_View);
        View inflate = LayoutInflater.from(getContext()).inflate(R$layout.dialog_in_app_disclosure, (ViewGroup) null);
        ScrollView scrollView = (ScrollView) inflate.findViewById(R$id.srlv_all);
        TextView textView = (TextView) inflate.findViewById(R$id.txv_demo);
        TextView textView2 = (TextView) inflate.findViewById(R$id.txv_yes);
        TextView textView3 = (TextView) inflate.findViewById(R$id.txv_no);
        ImageView imageView = (ImageView) inflate.findViewById(R$id.imgv_image);
        C5775k<Integer> m = C5776l.m24470c(getContext()).m24452a(Integer.valueOf((int) R$drawable.anim_calldialog_example)).m24523m();
        m.mo24496b((int) R$drawable.calldialog_example);
        m.mo24491f();
        m.mo24518a(imageView);
        if (C13878a3.m3250a()) {
            textView.setOnClickListener(new View$OnClickListenerC11113a());
        } else {
            textView.setVisibility(8);
        }
        textView2.setOnClickListener(new View$OnClickListenerC11114b());
        textView3.setOnClickListener(new View$OnClickListenerC11115c());
        setContentView(inflate);
        setOnShowListener(new DialogInterface$OnShowListenerC11118d(this, scrollView));
    }

    @Override // android.app.Dialog
    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        super.setOnDismissListener(onDismissListener);
        this.f24982a = onDismissListener;
    }
}
