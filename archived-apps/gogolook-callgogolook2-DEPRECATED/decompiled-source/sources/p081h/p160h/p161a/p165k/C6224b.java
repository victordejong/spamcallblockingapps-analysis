package p081h.p160h.p161a.p165k;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.gogolook.adsdk.R$id;
import com.gogolook.adsdk.R$layout;
import java.util.List;
import kotlin.Metadata;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\b\n��\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010&\u001a\u00020'2\u0006\u0010\"\u001a\u00020#H\u0002J\b\u0010(\u001a\u00020!H\u0007J\u0016\u0010)\u001a\u00020!2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00160+H\u0002J\u0010\u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020\u0016H\u0002J\u000e\u0010.\u001a\u00020!2\u0006\u0010-\u001a\u00020\u0016J\b\u0010/\u001a\u00020!H\u0002J&\u00100\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u00101\u001a\u0002022\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00160+H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\n\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001a\u0010\u001bR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n��¨\u00063"}, m815d2 = {"Lcom/gogolook/adsdk/debug/AdLogViewer;", "", "()V", "adLogClearButton", "Landroid/widget/Button;", "adLogCopyButton", "adUnitSelectorView", "Landroid/widget/ScrollView;", "displayMetrics", "Landroid/util/DisplayMetrics;", "isActive", "", "isActive$annotations", "()Z", "setActive", "(Z)V", "isExpand", "logView", "Landroid/widget/TextView;", "mainView", "Landroid/widget/LinearLayout;", "selectedAdUnit", "", "selectedAdUnitView", "windowLayoutParams", "Landroid/view/WindowManager$LayoutParams;", "getWindowLayoutParams", "()Landroid/view/WindowManager$LayoutParams;", "windowLayoutParams$delegate", "Lkotlin/Lazy;", "windowManager", "Landroid/view/WindowManager;", "addSystemAlertView", "", "context", "Landroid/content/Context;", "view", "Landroid/view/View;", "getLayoutInflater", "Landroid/view/LayoutInflater;", "hideViewer", "initAdUnitSelectionView", "adUnitNames", "", "onSelectedAdUnit", "adUnitName", "refreshDisplay", "showAdUnitSelector", "showViewer", "systemWindowType", "", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
@SuppressLint({"StaticFieldLeak"})
/* renamed from: h.h.a.k.b */
/* loaded from: classes2-dex2jar.jar:h/h/a/k/b.class */
public final class C6224b {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f15425a;

    /* renamed from: b */
    public static boolean f15426b;

    /* renamed from: d */
    public static WindowManager f15428d;

    /* renamed from: e */
    public static LinearLayout f15429e;

    /* renamed from: f */
    public static String f15430f;

    /* renamed from: g */
    public static TextView f15431g;

    /* renamed from: h */
    public static TextView f15432h;

    /* renamed from: i */
    public static ScrollView f15433i;

    /* renamed from: j */
    public static Button f15434j;

    /* renamed from: k */
    public static Button f15435k;

    /* renamed from: m */
    public static final C6224b f15437m = new C6224b();

    /* renamed from: c */
    public static final AbstractC14974f f15427c = C14975g.m662a(C6231g.f15445a);

    /* renamed from: l */
    public static boolean f15436l = true;

    /* renamed from: h.h.a.k.b$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/b$a.class */
    public static final class View$OnClickListenerC6225a implements View.OnClickListener {

        /* renamed from: a */
        public static final View$OnClickListenerC6225a f15438a = new View$OnClickListenerC6225a();

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C6224b bVar = C6224b.f15437m;
            C15149k.m383a((Object) view, "it");
            Object tag = view.getTag();
            if (tag != null) {
                bVar.m23530a((String) tag);
                return;
            }
            throw new C14986p("null cannot be cast to non-null type kotlin.String");
        }
    }

    /* renamed from: h.h.a.k.b$b */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/b$b.class */
    public static final class RunnableC6226b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ TextView f15439a;

        /* renamed from: b */
        public final /* synthetic */ String f15440b;

        public RunnableC6226b(TextView textView, String str) {
            this.f15439a = textView;
            this.f15440b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f15439a.setText(C6219a.f15420f.m23551a(this.f15440b));
        }
    }

    /* renamed from: h.h.a.k.b$c */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/b$c.class */
    public static final class View$OnClickListenerC6227c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f15441a;

        public View$OnClickListenerC6227c(Context context, List list) {
            this.f15441a = context;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C6224b bVar = C6224b.f15437m;
            String str = C6224b.f15430f;
            if (str != null) {
                Object systemService = this.f15441a.getSystemService("clipboard");
                Object obj = systemService;
                if (!(systemService instanceof ClipboardManager)) {
                    obj = null;
                }
                ClipboardManager clipboardManager = (ClipboardManager) obj;
                if (clipboardManager != null) {
                    clipboardManager.setPrimaryClip(ClipData.newPlainText("AdLog", C6219a.f15420f.m23551a(str)));
                }
            }
        }
    }

    /* renamed from: h.h.a.k.b$d */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/b$d.class */
    public static final class View$OnClickListenerC6228d implements View.OnClickListener {

        /* renamed from: a */
        public static final View$OnClickListenerC6228d f15442a = new View$OnClickListenerC6228d();

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C6224b bVar = C6224b.f15437m;
            String str = C6224b.f15430f;
            if (str != null) {
                C6219a.m23542b(str);
                C6224b.f15437m.m23526b(str);
            }
        }
    }

    /* renamed from: h.h.a.k.b$e */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/b$e.class */
    public static final class View$OnClickListenerC6229e implements View.OnClickListener {

        /* renamed from: a */
        public static final View$OnClickListenerC6229e f15443a = new View$OnClickListenerC6229e();

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C6224b.f15437m.m23528b();
        }
    }

    /* renamed from: h.h.a.k.b$f */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/b$f.class */
    public static final class View$OnClickListenerC6230f implements View.OnClickListener {

        /* renamed from: a */
        public static final View$OnClickListenerC6230f f15444a = new View$OnClickListenerC6230f();

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (C6224b.m23523d()) {
                C6224b bVar = C6224b.f15437m;
                TextView textView = C6224b.f15431g;
                int i = 8;
                if (textView != null) {
                    C6224b bVar2 = C6224b.f15437m;
                    textView.setVisibility(C6224b.f15436l ? 8 : 0);
                }
                C6224b bVar3 = C6224b.f15437m;
                Button button = C6224b.f15435k;
                if (button != null) {
                    C6224b bVar4 = C6224b.f15437m;
                    button.setVisibility(C6224b.f15436l ? 8 : 0);
                }
                C6224b bVar5 = C6224b.f15437m;
                Button button2 = C6224b.f15434j;
                if (button2 != null) {
                    C6224b bVar6 = C6224b.f15437m;
                    if (!C6224b.f15436l) {
                        i = 0;
                    }
                    button2.setVisibility(i);
                }
                C6224b bVar7 = C6224b.f15437m;
                C6224b.f15436l = !C6224b.f15436l;
            }
        }
    }

    /* renamed from: h.h.a.k.b$g */
    /* loaded from: classes2-dex2jar.jar:h/h/a/k/b$g.class */
    public static final class C6231g extends AbstractC15150l implements AbstractC15107a<WindowManager.LayoutParams> {

        /* renamed from: a */
        public static final C6231g f15445a = new C6231g();

        public C6231g() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final WindowManager.LayoutParams invoke() {
            return new WindowManager.LayoutParams();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C6224b.class), "windowLayoutParams", "getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;");
        C15131a0.m412a(sVar);
        f15425a = new AbstractC14906i[]{sVar};
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0109 A[Catch: Exception -> 0x01a0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x01a0, blocks: (B:3:0x000c, B:5:0x0012, B:7:0x001d, B:8:0x0027, B:9:0x0032, B:10:0x0033, B:10:0x0033, B:11:0x0036, B:14:0x0090, B:16:0x00a3, B:17:0x00ad, B:18:0x00b8, B:19:0x00b9, B:19:0x00b9, B:22:0x00c3, B:24:0x00cb, B:26:0x00da, B:28:0x00f5, B:30:0x0109, B:32:0x0120, B:34:0x0134, B:36:0x0140, B:39:0x0159, B:41:0x0164, B:43:0x0178, B:44:0x017f, B:44:0x017f, B:45:0x0182, B:46:0x0186, B:46:0x0186, B:47:0x0189), top: B:51:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0134 A[Catch: Exception -> 0x01a0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x01a0, blocks: (B:3:0x000c, B:5:0x0012, B:7:0x001d, B:8:0x0027, B:9:0x0032, B:10:0x0033, B:10:0x0033, B:11:0x0036, B:14:0x0090, B:16:0x00a3, B:17:0x00ad, B:18:0x00b8, B:19:0x00b9, B:19:0x00b9, B:22:0x00c3, B:24:0x00cb, B:26:0x00da, B:28:0x00f5, B:30:0x0109, B:32:0x0120, B:34:0x0134, B:36:0x0140, B:39:0x0159, B:41:0x0164, B:43:0x0178, B:44:0x017f, B:44:0x017f, B:45:0x0182, B:46:0x0186, B:46:0x0186, B:47:0x0189), top: B:51:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0159 A[Catch: Exception -> 0x01a0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x01a0, blocks: (B:3:0x000c, B:5:0x0012, B:7:0x001d, B:8:0x0027, B:9:0x0032, B:10:0x0033, B:10:0x0033, B:11:0x0036, B:14:0x0090, B:16:0x00a3, B:17:0x00ad, B:18:0x00b8, B:19:0x00b9, B:19:0x00b9, B:22:0x00c3, B:24:0x00cb, B:26:0x00da, B:28:0x00f5, B:30:0x0109, B:32:0x0120, B:34:0x0134, B:36:0x0140, B:39:0x0159, B:41:0x0164, B:43:0x0178, B:44:0x017f, B:44:0x017f, B:45:0x0182, B:46:0x0186, B:46:0x0186, B:47:0x0189), top: B:51:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0178 A[Catch: Exception -> 0x01a0, TRY_ENTER, TryCatch #0 {Exception -> 0x01a0, blocks: (B:3:0x000c, B:5:0x0012, B:7:0x001d, B:8:0x0027, B:9:0x0032, B:10:0x0033, B:10:0x0033, B:11:0x0036, B:14:0x0090, B:16:0x00a3, B:17:0x00ad, B:18:0x00b8, B:19:0x00b9, B:19:0x00b9, B:22:0x00c3, B:24:0x00cb, B:26:0x00da, B:28:0x00f5, B:30:0x0109, B:32:0x0120, B:34:0x0134, B:36:0x0140, B:39:0x0159, B:41:0x0164, B:43:0x0178, B:44:0x017f, B:44:0x017f, B:45:0x0182, B:46:0x0186, B:46:0x0186, B:47:0x0189), top: B:51:0x000c }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m23535a(android.content.Context r6, int r7, java.util.List<java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p161a.p165k.C6224b.m23535a(android.content.Context, int, java.util.List):void");
    }

    /* renamed from: c */
    public static final void m23525c() {
        f15426b = false;
        try {
            WindowManager windowManager = f15428d;
            if (windowManager != null) {
                windowManager.removeView(f15429e);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: d */
    public static final boolean m23523d() {
        return f15426b;
    }

    /* renamed from: a */
    public final LayoutInflater m23536a(Context context) {
        Object systemService = context.getSystemService("layout_inflater");
        if (systemService != null) {
            return (LayoutInflater) systemService;
        }
        throw new C14986p("null cannot be cast to non-null type android.view.LayoutInflater");
    }

    /* renamed from: a */
    public final WindowManager.LayoutParams m23537a() {
        AbstractC14974f fVar = f15427c;
        AbstractC14906i iVar = f15425a[0];
        return (WindowManager.LayoutParams) fVar.getValue();
    }

    /* renamed from: a */
    public final void m23534a(Context context, WindowManager windowManager, View view, WindowManager.LayoutParams layoutParams) {
        if ((Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(context)) && windowManager != null && view != null) {
            try {
                windowManager.addView(view, layoutParams);
            } catch (SecurityException e) {
                e.toString();
            }
        }
    }

    /* renamed from: a */
    public final void m23530a(String str) {
        TextView textView = f15431g;
        if (textView != null) {
            textView.setVisibility(0);
        }
        ScrollView scrollView = f15433i;
        if (scrollView != null) {
            scrollView.setVisibility(8);
        }
        TextView textView2 = f15432h;
        if (textView2 != null) {
            textView2.setText(str);
        }
        if (!C15149k.m384a((Object) f15430f, (Object) str)) {
            f15430f = str;
            TextView textView3 = f15431g;
            if (textView3 != null) {
                textView3.setText("");
            }
        }
        m23526b(str);
    }

    /* renamed from: a */
    public final void m23529a(List<String> list) {
        LinearLayout linearLayout = f15429e;
        if (linearLayout != null) {
            f15433i = (ScrollView) linearLayout.findViewById(R$id.sv_ad_unit_selector);
            LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(R$id.ll_ad_unit_container);
            if (linearLayout2 != null) {
                C6224b bVar = f15437m;
                Context context = linearLayout.getContext();
                C15149k.m383a((Object) context, "context");
                LayoutInflater a = bVar.m23536a(context);
                for (String str : list) {
                    View inflate = a.inflate(R$layout.ad_loger_adunit_item, (ViewGroup) null, false);
                    if (inflate != null) {
                        TextView textView = (TextView) inflate;
                        textView.setText(str);
                        textView.setTag(str);
                        textView.setOnClickListener(View$OnClickListenerC6225a.f15438a);
                        linearLayout2.addView(textView);
                    } else {
                        throw new C14986p("null cannot be cast to non-null type android.widget.TextView");
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final void m23528b() {
        TextView textView = f15431g;
        if (textView != null) {
            textView.setVisibility(8);
        }
        ScrollView scrollView = f15433i;
        if (scrollView != null) {
            scrollView.setVisibility(0);
        }
    }

    /* renamed from: b */
    public final void m23526b(String str) {
        TextView textView;
        C15149k.m377b(str, "adUnitName");
        if (f15426b && !(!C15149k.m384a((Object) f15430f, (Object) str)) && (textView = f15431g) != null) {
            textView.post(new RunnableC6226b(textView, str));
        }
    }
}
