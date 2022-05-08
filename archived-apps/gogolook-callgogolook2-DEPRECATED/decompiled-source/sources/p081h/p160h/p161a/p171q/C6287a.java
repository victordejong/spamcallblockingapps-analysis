package p081h.p160h.p161a.p171q;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� \u00132\u00020\u0001:\u0001\u0013B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u0014"}, m815d2 = {"Lcom/gogolook/adsdk/view/NativeViewHolder;", "", "()V", "callToActionView", "Landroid/widget/TextView;", "iconImageView", "Landroid/widget/ImageView;", "innerCloseButtonView", "mainImageView", "mainView", "Landroid/view/View;", "getMainView", "()Landroid/view/View;", "setMainView", "(Landroid/view/View;)V", "outerCloseButtonView", "privacyInformationIconImageView", "textView", "titleView", "Companion", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.q.a */
/* loaded from: classes2-dex2jar.jar:h/h/a/q/a.class */
public final class C6287a {

    /* renamed from: j */
    public static final C6288a f15565j = new C6288a(null);

    /* renamed from: a */
    public View f15566a;

    /* renamed from: b */
    public TextView f15567b;

    /* renamed from: c */
    public TextView f15568c;

    /* renamed from: d */
    public TextView f15569d;

    /* renamed from: e */
    public ImageView f15570e;

    /* renamed from: f */
    public ImageView f15571f;

    /* renamed from: g */
    public ImageView f15572g;

    /* renamed from: h */
    public ImageView f15573h;

    /* renamed from: i */
    public ImageView f15574i;

    /* renamed from: h.h.a.q.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/q/a$a.class */
    public static final class C6288a {
        public C6288a() {
        }

        public /* synthetic */ C6288a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C6287a m23402a(View view, C6289b bVar) {
            C6287a aVar;
            C15149k.m377b(view, "view");
            C15149k.m377b(bVar, "viewBinder");
            try {
                C6287a aVar2 = new C6287a(null);
                aVar2.f15567b = (TextView) view.findViewById(bVar.f15576b);
                aVar2.f15568c = (TextView) view.findViewById(bVar.f15577c);
                aVar2.f15569d = (TextView) view.findViewById(bVar.f15578d);
                aVar2.f15570e = (ImageView) view.findViewById(bVar.f15579e);
                aVar2.f15571f = (ImageView) view.findViewById(bVar.f15580f);
                aVar2.f15572g = (ImageView) view.findViewById(bVar.f15581g);
                aVar2.f15573h = (ImageView) view.findViewById(bVar.f15582h);
                aVar2.f15574i = (ImageView) view.findViewById(bVar.f15583i);
                aVar2.m23404a(view);
                aVar = aVar2;
            } catch (ClassCastException e) {
                aVar = new C6287a(null);
            }
            return aVar;
        }
    }

    public C6287a() {
    }

    public /* synthetic */ C6287a(C15145g gVar) {
        this();
    }

    /* renamed from: a */
    public static final C6287a m23403a(View view, C6289b bVar) {
        return f15565j.m23402a(view, bVar);
    }

    /* renamed from: a */
    public final View m23405a() {
        View view = this.f15566a;
        if (view != null) {
            return view;
        }
        C15149k.m373d("mainView");
        throw null;
    }

    /* renamed from: a */
    public final void m23404a(View view) {
        C15149k.m377b(view, "<set-?>");
        this.f15566a = view;
    }
}
