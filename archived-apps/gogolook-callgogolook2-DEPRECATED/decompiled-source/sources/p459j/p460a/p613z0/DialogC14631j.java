package p459j.p460a.p613z0;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14213x;
import p459j.p460a.p582w0.C14217x3;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0010\u0011BQ\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000f¨\u0006\u0012"}, m815d2 = {"Lgogolook/callgogolook2/view/UpgradeVersionDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "imgRes", "", "title", "", "content", "dismissOnPositiveBtnClick", "", "cancelable", "showCloseBtn", "actionCallback", "Lgogolook/callgogolook2/view/UpgradeVersionDialog$ActionCallback;", "(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZZZLgogolook/callgogolook2/view/UpgradeVersionDialog$ActionCallback;)V", "ActionCallback", "Builder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.z0.j */
/* loaded from: classes3-dex2jar.jar:j/a/z0/j.class */
public final class DialogC14631j extends Dialog {

    /* renamed from: j.a.z0.j$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/j$a.class */
    public static final class View$OnClickListenerC14632a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC14634c f32668b;

        /* renamed from: c */
        public final /* synthetic */ Context f32669c;

        /* renamed from: d */
        public final /* synthetic */ boolean f32670d;

        public View$OnClickListenerC14632a(AbstractC14634c cVar, Context context, boolean z) {
            this.f32668b = cVar;
            this.f32669c = context;
            this.f32670d = z;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC14634c cVar = this.f32668b;
            if (cVar != null) {
                cVar.mo956a();
            }
            Context context = this.f32669c;
            C14217x3.m2127k(context, context.getPackageName());
            if (this.f32670d) {
                C14213x.m2211a(DialogC14631j.this);
            }
        }
    }

    /* renamed from: j.a.z0.j$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/j$b.class */
    public static final class View$OnClickListenerC14633b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC14634c f32672b;

        public View$OnClickListenerC14633b(AbstractC14634c cVar) {
            this.f32672b = cVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC14634c cVar = this.f32672b;
            if (cVar != null) {
                cVar.mo955b();
            }
            C14213x.m2211a(DialogC14631j.this);
        }
    }

    /* renamed from: j.a.z0.j$c */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/j$c.class */
    public interface AbstractC14634c {
        /* renamed from: a */
        void mo956a();

        /* renamed from: b */
        void mo955b();
    }

    /* renamed from: j.a.z0.j$d */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/j$d.class */
    public static final class C14635d {

        /* renamed from: a */
        public boolean f32673a;

        /* renamed from: b */
        public boolean f32674b;

        /* renamed from: c */
        public boolean f32675c;
        @DrawableRes

        /* renamed from: d */
        public Integer f32676d;

        /* renamed from: e */
        public String f32677e;

        /* renamed from: f */
        public String f32678f;

        /* renamed from: g */
        public AbstractC14634c f32679g;

        /* renamed from: h */
        public final Context f32680h;

        public C14635d(Context context) {
            C15149k.m377b(context, "context");
            this.f32680h = context;
        }

        /* renamed from: a */
        public final Dialog m954a() {
            return new DialogC14631j(this.f32680h, this.f32676d, this.f32677e, this.f32678f, this.f32673a, this.f32675c, this.f32674b, this.f32679g, null);
        }

        /* renamed from: a */
        public final C14635d m953a(@DrawableRes int i) {
            this.f32676d = Integer.valueOf(i);
            return this;
        }

        /* renamed from: a */
        public final C14635d m952a(AbstractC14634c cVar) {
            C15149k.m377b(cVar, "callback");
            this.f32679g = cVar;
            return this;
        }

        /* renamed from: a */
        public final C14635d m951a(String str) {
            C15149k.m377b(str, "c");
            this.f32678f = str;
            return this;
        }

        /* renamed from: a */
        public final C14635d m950a(boolean z) {
            this.f32675c = z;
            return this;
        }

        /* renamed from: b */
        public final C14635d m949b() {
            this.f32673a = true;
            return this;
        }

        /* renamed from: b */
        public final C14635d m948b(String str) {
            C15149k.m377b(str, "t");
            this.f32677e = str;
            return this;
        }

        /* renamed from: c */
        public final C14635d m947c() {
            this.f32674b = true;
            return this;
        }
    }

    public DialogC14631j(Context context, @DrawableRes Integer num, String str, String str2, boolean z, boolean z2, boolean z3, AbstractC14634c cVar) {
        super(context);
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        setContentView(R$layout.dialog_template_in_app_with_content_dialog);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R$id.cl_parent);
        constraintLayout.setPadding(0, 0, 0, 0);
        constraintLayout.setBackground(new ColorDrawable(0));
        ImageView imageView = (ImageView) findViewById(R$id.iv_main);
        if (num != null) {
            imageView.setImageResource(num.intValue());
            ((TextView) findViewById(R$id.tv_title)).setText(str);
            ((TextView) findViewById(R$id.tv_content)).setText(str2);
            TextView textView = (TextView) findViewById(R$id.tv_positive);
            textView.setText(R$string.update_force_other_button);
            textView.setOnClickListener(new View$OnClickListenerC14632a(cVar, context, z));
            ((TextView) findViewById(R$id.tv_negative)).setVisibility(8);
            if (z3) {
                ImageView imageView2 = (ImageView) findViewById(R$id.iv_close);
                imageView2.setVisibility(0);
                imageView2.setOnClickListener(new View$OnClickListenerC14633b(cVar));
            }
            setCanceledOnTouchOutside(false);
            setCancelable(z2);
            return;
        }
        throw new IllegalArgumentException("image resource cannot be null");
    }

    public /* synthetic */ DialogC14631j(Context context, @DrawableRes Integer num, String str, String str2, boolean z, boolean z2, boolean z3, AbstractC14634c cVar, C15145g gVar) {
        this(context, num, str, str2, z, z2, z3, cVar);
    }
}
