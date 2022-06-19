package p193e.p194a.p947k.p968b;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.slider.Slider;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.videocallerid.C4718R;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p947k.p969c.AbstractC16015i1;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import p193e.p194a.p947k.p972m.C16133g;
import p193e.p194a.p947k.p973n.p976f.AbstractC16199d;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.a.l;
import s1.g;
import s1.h;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0001\u0018�� A2\u00020\u00012\u00020\u0002:\u0001BB\u0007¢\u0006\u0004\b@\u0010\u0011J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\u001d\u0010\u001a\u001a\u00020\u00158V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R(\u0010!\u001a\u00020\u00158��@��X\u0081.¢\u0006\u0018\n\u0004\b\u001b\u0010\u001c\u0012\u0004\b \u0010\u0011\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001fR\"\u0010)\u001a\u00020\"8��@��X\u0081.¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001d\u0010/\u001a\u00020*8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\"\u00107\u001a\u0002008��@��X\u0081.¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010?\u001a\u0002088��@��X\u0081.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>¨\u0006C"}, d2 = {"Le/a/k/b/a;", "Ln3/r/a/k;", "Lq3/a/i0;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "()V", "Lq3/a/p1;", "SA", "()Lq3/a/p1;", "Ls1/w/f;", "e", "Ls1/g;", "getCoroutineContext", "()Ls1/w/f;", "coroutineContext", "f", "Ls1/w/f;", "getUiContext$video_caller_id_release", "setUiContext$video_caller_id_release", "(Ls1/w/f;)V", "getUiContext$video_caller_id_release$annotations", "uiContext", "Le/a/k/n/f/d;", "i", "Le/a/k/n/f/d;", "getIncomingVideoRepository$video_caller_id_release", "()Le/a/k/n/f/d;", "setIncomingVideoRepository$video_caller_id_release", "(Le/a/k/n/f/d;)V", "incomingVideoRepository", "Le/a/k/m/g;", "j", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/k/m/g;", "binding", "Le/a/k/c/q;", "g", "Le/a/k/c/q;", "RA", "()Le/a/k/c/q;", "setExoPlayerUtil$video_caller_id_release", "(Le/a/k/c/q;)V", "exoPlayerUtil", "Le/a/k/c/i1;", "h", "Le/a/k/c/i1;", "getSettings$video_caller_id_release", "()Le/a/k/c/i1;", "setSettings$video_caller_id_release", "(Le/a/k/c/i1;)V", "settings", "<init>", "l", AbstractC2405c.f7629a, "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k.b.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/b/a.class */
public final class C15918a extends AbstractC15934i implements i0 {

    /* renamed from: k */
    public static final /* synthetic */ l[] f44897k = {C22128a.m8621g0(C15918a.class, "binding", "getBinding()Lcom/truecaller/videocallerid/databinding/DialogVideoCallerIdDebugCachedVideosBinding;", 0)};

    /* renamed from: l */
    public static final C15922c f44898l = new C15922c(null);
    @Inject

    /* renamed from: f */
    public f f44900f;
    @Inject

    /* renamed from: g */
    public AbstractC16044q f44901g;
    @Inject

    /* renamed from: h */
    public AbstractC16015i1 f44902h;
    @Inject

    /* renamed from: i */
    public AbstractC16199d f44903i;

    /* renamed from: e */
    public final g f44899e = C25225a.m3982O1(h.c, new C15923d());

    /* renamed from: j */
    public final ViewBindingProperty f44904j = new C19350a(new C15921b());

    @e(c = "com.truecaller.videocallerid.debug.CachedVideosDebugDialog$populateVideoList$1", f = "CachedVideosDebugDialog.kt", l = {73, 74}, m = "invokeSuspend")
    /* renamed from: e.a.k.b.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/b/a$a.class */
    public static final class C15919a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f44905e;

        /* renamed from: f */
        public int f44906f;

        /* renamed from: e.a.k.b.a$a$a */
        /* loaded from: classes5-dex2jar.jar:e/a/k/b/a$a$a.class */
        public static final class C15920a extends m implements s1.z.b.l<C15941n, s> {

            /* renamed from: b */
            public final /* synthetic */ int f44908b;

            /* renamed from: c */
            public final /* synthetic */ Object f44909c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15920a(int i, Object obj) {
                super(1);
                this.f44908b = i;
                this.f44909c = obj;
            }

            /* renamed from: d */
            public final Object m18138d(Object obj) {
                s sVar = s.a;
                int i = this.f44908b;
                if (i != 0) {
                    if (i != 1) {
                        throw null;
                    }
                    C15941n c15941n = (C15941n) obj;
                    s1.z.c.l.e(c15941n, "videoFileItem");
                    C15918a c15918a = C15918a.this;
                    String str = c15941n.f44945b.f45067a;
                    l[] lVarArr = C15918a.f44897k;
                    Objects.requireNonNull(c15918a);
                    s1.a.a.a.v0.f.d.w2(c15918a, (f) null, (j0) null, new C15927c(c15918a, str, null), 3, (Object) null);
                    return sVar;
                }
                C15941n c15941n2 = (C15941n) obj;
                s1.z.c.l.e(c15941n2, "videoFileItem");
                if (c15941n2.f44946c) {
                    FragmentManager parentFragmentManager = C15918a.this.getParentFragmentManager();
                    s1.z.c.l.d(parentFragmentManager, "parentFragmentManager");
                    String str2 = c15941n2.f44945b.f45067a;
                    s1.z.c.l.e(parentFragmentManager, "fragmentManager");
                    s1.z.c.l.e(str2, "path");
                    C15936k c15936k = new C15936k();
                    Bundle bundle = new Bundle();
                    bundle.putString("path", str2);
                    c15936k.setArguments(bundle);
                    c15936k.show(parentFragmentManager, C15936k.class.getSimpleName());
                } else {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(c15941n2.f44945b.f45067a));
                    C15918a.this.requireContext().startActivity(intent);
                }
                return sVar;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15919a(d dVar) {
            super(2, dVar);
            C15918a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18141i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15919a(dVar);
        }

        /* renamed from: k */
        public final Object m18140k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15919a(dVar).m18139s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0110  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0112  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m18139s(java.lang.Object r11) {
            /*
                Method dump skipped, instructions count: 484
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p968b.C15918a.C15919a.m18139s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.k.b.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/b/a$b.class */
    public static final class C15921b extends m implements s1.z.b.l<C15918a, C16133g> {
        public C15921b() {
            super(1);
        }

        /* renamed from: d */
        public Object m18137d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4718R.C4720id.cachedVideoList;
            RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
            if (recyclerView != null) {
                i = C4718R.C4720id.clearCacheButton;
                MaterialButton findViewById = requireView.findViewById(i);
                if (findViewById != null) {
                    i = C4718R.C4720id.downloadPercentageSlider;
                    Slider findViewById2 = requireView.findViewById(i);
                    if (findViewById2 != null) {
                        i = C4718R.C4720id.noVideoTextView;
                        TextView textView = (TextView) requireView.findViewById(i);
                        if (textView != null) {
                            i = C4718R.C4720id.percentageTextView;
                            TextView textView2 = (TextView) requireView.findViewById(i);
                            if (textView2 != null) {
                                return new C16133g((ConstraintLayout) requireView, recyclerView, findViewById, findViewById2, textView, textView2);
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.k.b.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/b/a$c.class */
    public static final class C15922c {
        public C15922c(s1.z.c.f fVar) {
        }
    }

    /* renamed from: e.a.k.b.a$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/b/a$d.class */
    public static final class C15923d extends m implements a<f> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15923d() {
            super(0);
            C15918a.this = r4;
        }

        public Object invoke() {
            f fVar = C15918a.this.f44900f;
            if (fVar != null) {
                return fVar.plus(s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null));
            }
            s1.z.c.l.l("uiContext");
            throw null;
        }
    }

    /* renamed from: QA */
    public final C16133g m18144QA() {
        return (C16133g) this.f44904j.m34468b(this, f44897k[0]);
    }

    /* renamed from: RA */
    public final AbstractC16044q m18143RA() {
        AbstractC16044q abstractC16044q = this.f44901g;
        if (abstractC16044q != null) {
            return abstractC16044q;
        }
        s1.z.c.l.l("exoPlayerUtil");
        throw null;
    }

    /* renamed from: SA */
    public final p1 m18142SA() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C15919a(null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return (f) this.f44899e.getValue();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C4718R.layout.dialog_video_caller_id_debug_cached_videos, viewGroup, false);
    }

    public void onDestroy() {
        s1.a.a.a.v0.f.d.R(getCoroutineContext(), (CancellationException) null, 1, (Object) null);
        C15918a.super.onDestroy();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C15918a.super.onViewCreated(view, bundle);
        m18144QA().f45473a.setLayoutManager(new LinearLayoutManager(requireContext()));
        m18142SA();
        AbstractC16015i1 abstractC16015i1 = this.f44902h;
        if (abstractC16015i1 == null) {
            s1.z.c.l.l("settings");
            throw null;
        }
        int i = abstractC16015i1.getInt("debugVideoDownloadPercentage", 100);
        Slider slider = m18144QA().f45475c;
        slider.setValue(i);
        slider.f6737l.add(new C15930e(this, i));
        m18144QA().f45474b.setOnClickListener(new View$OnClickListenerC15928d(this));
    }
}
