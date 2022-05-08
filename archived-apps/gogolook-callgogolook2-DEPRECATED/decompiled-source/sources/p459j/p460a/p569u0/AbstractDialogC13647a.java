package p459j.p460a.p569u0;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import kotlin.Metadata;
import p459j.p460a.p569u0.C13673f;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14287l;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b&\u0018��2\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0006H$J\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0014J\b\u0010\u001b\u001a\u00020\u0014H\u0016R(\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001c"}, m815d2 = {"Lgogolook/callgogolook2/template/AbstractDialogTemplate;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "<set-?>", "Lgogolook/callgogolook2/template/TemplateConfiguration;", "config", "getConfig", "()Lgogolook/callgogolook2/template/TemplateConfiguration;", "setConfig", "(Lgogolook/callgogolook2/template/TemplateConfiguration;)V", "viewHolder", "Lgogolook/callgogolook2/template/TemplateViewHolder;", "getViewBinder", "Lgogolook/callgogolook2/template/TemplateViewBinder;", "configuration", "isConfigEmpty", "", "load", "", "type", "Lgogolook/callgogolook2/template/TemplateConfiguration$TYPE;", "setDialogBackgroundColor", TtmlNode.ATTR_TTS_COLOR, "", "setup", "show", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.u0.a */
/* loaded from: classes3-dex2jar.jar:j/a/u0/a.class */
public abstract class AbstractDialogC13647a extends Dialog {

    /* renamed from: a */
    public C13673f f30599a;

    /* renamed from: b */
    public C13683i f30600b;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0004"}, m815d2 = {"<anonymous>", "", "run", "gogolook/callgogolook2/template/AbstractDialogTemplate$setup$1$1$1", "gogolook/callgogolook2/template/AbstractDialogTemplate$$special$$inlined$apply$lambda$1"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.u0.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/a$a.class */
    public static final class RunnableC13648a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C13683i f30601a;

        /* renamed from: j.a.u0.a$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/u0/a$a$a.class */
        public static final class RunnableC13649a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ View f30602a;

            public RunnableC13649a(View view) {
                this.f30602a = view;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ((ScrollView) this.f30602a).fullScroll(130);
            }
        }

        public RunnableC13648a(C13683i iVar, AbstractDialogC13647a aVar) {
            this.f30601a = iVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            View view = this.f30601a.m3650b().get("main_scroll_view");
            if (view != null) {
                if (!(view instanceof ScrollView)) {
                    view = null;
                }
                if (view == null) {
                    return;
                }
                if (view != null) {
                    ScrollView scrollView = (ScrollView) view;
                    C14174u.m2293k().postDelayed(new RunnableC13649a(view), 500L);
                    return;
                }
                throw new C14986p("null cannot be cast to non-null type android.widget.ScrollView");
            }
        }
    }

    /* renamed from: j.a.u0.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/a$b.class */
    public static final class View$OnClickListenerC13650b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ImageView f30603a;

        /* renamed from: b */
        public final /* synthetic */ AbstractDialogC13647a f30604b;

        public View$OnClickListenerC13650b(ImageView imageView, C13683i iVar, AbstractDialogC13647a aVar) {
            this.f30603a = imageView;
            this.f30604b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13673f a = this.f30604b.m3736a();
            if (a != null) {
                if (!C14217x3.m2160b(a.f30653g)) {
                    C13673f a2 = this.f30604b.m3736a();
                    if (a2 != null) {
                        C14287l.m1917a(2, a2.f30649c);
                        Context context = this.f30603a.getContext();
                        C13673f a3 = this.f30604b.m3736a();
                        if (a3 != null) {
                            String str = a3.f30653g;
                            C13673f a4 = this.f30604b.m3736a();
                            if (a4 != null) {
                                C13659c.m3720a(context, str, a4.f30650d);
                                C13673f a5 = this.f30604b.m3736a();
                                if (a5 == null) {
                                    C15149k.m378b();
                                    throw null;
                                } else if (a5.f30655i) {
                                    this.f30604b.dismiss();
                                }
                            } else {
                                C15149k.m378b();
                                throw null;
                            }
                        } else {
                            C15149k.m378b();
                            throw null;
                        }
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                }
                C13673f a6 = this.f30604b.m3736a();
                if (a6 == null) {
                    C15149k.m378b();
                    throw null;
                } else if (a6.f30643N != null) {
                    C13673f a7 = this.f30604b.m3736a();
                    if (a7 != null) {
                        a7.f30643N.onClick();
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                }
            } else {
                C15149k.m378b();
                throw null;
            }
        }
    }

    /* renamed from: j.a.u0.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/a$c.class */
    public static final class View$OnClickListenerC13651c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ TextView f30605a;

        /* renamed from: b */
        public final /* synthetic */ AbstractDialogC13647a f30606b;

        public View$OnClickListenerC13651c(TextView textView, AbstractDialogC13647a aVar) {
            this.f30605a = textView;
            this.f30606b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13673f.C13676c cVar;
            C13673f.AbstractC13677d dVar;
            C13673f.C13676c cVar2;
            String str;
            C13673f a = this.f30606b.m3736a();
            String str2 = null;
            if (a != null) {
                C14287l.m1917a(3, a.f30649c);
                StringBuilder sb = new StringBuilder();
                sb.append("prefs_dialog_clicked_for_");
                C13673f a2 = this.f30606b.m3736a();
                if (a2 != null) {
                    sb.append(a2.f30649c);
                    C13915b3.m3055b(sb.toString(), true);
                    C13673f a3 = this.f30606b.m3736a();
                    if (!(a3 == null || (cVar2 = a3.f30656j) == null || (str = cVar2.f30674b) == null)) {
                        Context context = this.f30605a.getContext();
                        C13673f a4 = this.f30606b.m3736a();
                        if (a4 != null) {
                            str2 = a4.f30650d;
                        }
                        C13659c.m3720a(context, str, str2);
                    }
                    C13673f a5 = this.f30606b.m3736a();
                    if (!(a5 == null || (dVar = a5.f30644O) == null)) {
                        dVar.onClick();
                    }
                    C13673f a6 = this.f30606b.m3736a();
                    if (a6 != null && (cVar = a6.f30656j) != null && cVar.f30675c) {
                        this.f30606b.dismiss();
                        return;
                    }
                    return;
                }
                C15149k.m378b();
                throw null;
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: j.a.u0.a$d */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/a$d.class */
    public static final class View$OnClickListenerC13652d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ TextView f30607a;

        /* renamed from: b */
        public final /* synthetic */ AbstractDialogC13647a f30608b;

        public View$OnClickListenerC13652d(TextView textView, C13683i iVar, AbstractDialogC13647a aVar) {
            this.f30607a = textView;
            this.f30608b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13673f.C13675b bVar;
            C13673f.AbstractC13677d dVar;
            C13673f.C13675b bVar2;
            String str;
            C13673f a = this.f30608b.m3736a();
            String str2 = null;
            C14287l.m1917a(4, a != null ? a.f30649c : null);
            C13673f a2 = this.f30608b.m3736a();
            if (!(a2 == null || (bVar2 = a2.f30657k) == null || (str = bVar2.f30674b) == null)) {
                Context context = this.f30607a.getContext();
                C13673f a3 = this.f30608b.m3736a();
                if (a3 != null) {
                    str2 = a3.f30650d;
                }
                C13659c.m3720a(context, str, str2);
            }
            C13673f a4 = this.f30608b.m3736a();
            if (!(a4 == null || (dVar = a4.f30645P) == null)) {
                dVar.onClick();
            }
            C13673f a5 = this.f30608b.m3736a();
            if (a5 != null && (bVar = a5.f30657k) != null && bVar.f30675c) {
                this.f30608b.dismiss();
            }
        }
    }

    /* renamed from: j.a.u0.a$e */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/a$e.class */
    public static final class View$OnClickListenerC13653e implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ImageView f30609a;

        /* renamed from: b */
        public final /* synthetic */ AbstractDialogC13647a f30610b;

        public View$OnClickListenerC13653e(ImageView imageView, AbstractDialogC13647a aVar) {
            this.f30609a = imageView;
            this.f30610b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13673f.AbstractC13677d dVar;
            C13673f.C13675b bVar;
            C13673f a = this.f30610b.m3736a();
            if (!(a == null || (bVar = a.f30658l) == null)) {
                String str = bVar.f30674b;
                if (str != null) {
                    String str2 = null;
                    if (!(str.length() > 0)) {
                        str = null;
                    }
                    if (str != null) {
                        Context context = this.f30609a.getContext();
                        C13673f a2 = this.f30610b.m3736a();
                        if (a2 != null) {
                            str2 = a2.f30650d;
                        }
                        C13659c.m3720a(context, str, str2);
                    }
                }
            }
            C13673f a3 = this.f30610b.m3736a();
            if (!(a3 == null || (dVar = a3.f30646Q) == null)) {
                dVar.onClick();
            }
            this.f30610b.dismiss();
        }
    }

    /* renamed from: j.a.u0.a$f */
    /* loaded from: classes3-dex2jar.jar:j/a/u0/a$f.class */
    public static final class DialogInterface$OnShowListenerC13654f implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public final /* synthetic */ C13683i f30611a;

        /* renamed from: b */
        public final /* synthetic */ AbstractDialogC13647a f30612b;

        public DialogInterface$OnShowListenerC13654f(C13683i iVar, AbstractDialogC13647a aVar) {
            this.f30611a = iVar;
            this.f30612b = aVar;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            C13673f a = this.f30612b.m3736a();
            if (a != null) {
                C13659c.m3719a(a);
            }
            View view = this.f30611a.m3650b().get("main_scroll_view");
            if (view == null) {
                return;
            }
            if (view != null) {
                ((ScrollView) view).fullScroll(130);
                return;
            }
            throw new C14986p("null cannot be cast to non-null type android.widget.ScrollView");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractDialogC13647a(Context context) {
        super(context, 16973840);
        C15149k.m377b(context, "context");
        m3731c();
    }

    /* renamed from: a */
    public final C13673f m3736a() {
        return this.f30599a;
    }

    /* renamed from: a */
    public abstract C13681h mo3710a(C13673f fVar);

    /* renamed from: a */
    public final void m3735a(int i) {
        View d;
        C13683i iVar = this.f30600b;
        if (iVar != null && (d = iVar.m3645d()) != null) {
            d.setBackgroundColor(i);
        }
    }

    /* renamed from: a */
    public final void m3734a(C13673f.EnumC13678e eVar) {
        C15149k.m377b(eVar, "type");
        C13673f b = C13679g.m3691a().m3685b(getContext(), eVar);
        if (b != null) {
            this.f30599a = b;
        }
    }

    /* renamed from: b */
    public final void m3732b(C13673f fVar) {
        C15149k.m377b(fVar, "configuration");
        this.f30599a = fVar;
    }

    /* renamed from: b */
    public final boolean m3733b() {
        return this.f30599a == null;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0340  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3731c() {
        /*
            Method dump skipped, instructions count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p569u0.AbstractDialogC13647a.m3731c():void");
    }

    @Override // android.app.Dialog
    public void show() {
        C13673f fVar = this.f30599a;
        if (fVar != null) {
            C14287l.m1917a(1, fVar != null ? fVar.f30649c : null);
            if (C14191v.m2254c(getContext())) {
                super.show();
            }
        }
    }
}
