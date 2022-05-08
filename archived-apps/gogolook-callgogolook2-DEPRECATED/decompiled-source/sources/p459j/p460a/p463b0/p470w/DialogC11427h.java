package p459j.p460a.p463b0.p470w;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import kotlin.Metadata;
import p459j.p460a.p582w0.p587d5.C13980g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, m815d2 = {"Lgogolook/callgogolook2/main/smslog/SmsFilterTrialDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "callback", "Lgogolook/callgogolook2/main/smslog/SmsFilterTrialDialog$Callback;", "(Landroid/content/Context;Lgogolook/callgogolook2/main/smslog/SmsFilterTrialDialog$Callback;)V", "getCallback", "()Lgogolook/callgogolook2/main/smslog/SmsFilterTrialDialog$Callback;", "Callback", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.w.h */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/h.class */
public final class DialogC11427h extends Dialog {

    /* renamed from: a */
    public final AbstractC11430c f25549a;

    /* renamed from: j.a.b0.w.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/h$a.class */
    public static final class View$OnClickListenerC11428a implements View.OnClickListener {
        public View$OnClickListenerC11428a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13980g.f31390a.m9459a("has_sms_filter_intro_complete", (String) true);
            DialogC11427h.this.dismiss();
            DialogC11427h.this.m9654a().mo9553a();
        }
    }

    /* renamed from: j.a.b0.w.h$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/h$b.class */
    public static final class View$OnClickListenerC11429b implements View.OnClickListener {
        public View$OnClickListenerC11429b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13980g.f31390a.m9459a("has_sms_filter_intro_complete", (String) true);
            DialogC11427h.this.dismiss();
            DialogC11427h.this.m9654a().mo9552b();
        }
    }

    /* renamed from: j.a.b0.w.h$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/h$c.class */
    public interface AbstractC11430c {
        /* renamed from: a */
        void mo9553a();

        /* renamed from: b */
        void mo9552b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC11427h(Context context, AbstractC11430c cVar) {
        super(context);
        C15149k.m377b(context, "context");
        C15149k.m377b(cVar, "callback");
        this.f25549a = cVar;
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        setContentView(R$layout.dialog_template_in_app_with_content_dialog);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R$id.cl_parent);
        constraintLayout.setPadding(0, 0, 0, 0);
        constraintLayout.setBackground(new ColorDrawable(0));
        ((ImageView) findViewById(R$id.iv_main)).setImageResource(R$drawable.img_filter);
        ((TextView) findViewById(R$id.tv_title)).setText(R$string.sms_filter_dialog_title);
        ((TextView) findViewById(R$id.tv_content)).setText(R$string.sms_filter_dialog_content);
        TextView textView = (TextView) findViewById(R$id.tv_positive);
        textView.setText(R$string.got_it);
        textView.setOnClickListener(new View$OnClickListenerC11428a());
        TextView textView2 = (TextView) findViewById(R$id.tv_negative);
        textView2.setText(R$string.sms_filter_dialog_know_more);
        textView2.setOnClickListener(new View$OnClickListenerC11429b());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
    }

    /* renamed from: a */
    public final AbstractC11430c m9654a() {
        return this.f25549a;
    }
}
