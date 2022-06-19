package p193e.p194a.p437c.p438a.p494m.p497c;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.FileProvider;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.io.File;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.r.a.k;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27020r;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p477g.C9082w1;
import p193e.p194a.p437c.p438a.p494m.p495a.AbstractC9246a;
import p193e.p194a.p437c.p438a.p494m.p495a.C9248b;
import p193e.p194a.p437c.p438a.p494m.p496b.C9255b0;
import p193e.p194a.p437c.p438a.p494m.p496b.C9283r;
import p193e.p194a.p437c.p438a.p494m.p496b.C9285t;
import p193e.p194a.p437c.p438a.p494m.p496b.C9286u;
import p193e.p194a.p437c.p438a.p494m.p496b.C9289x;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.j0;
import s1.a.l;
import s1.f0.b;
import s1.f0.r;
import s1.f0.v;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001:\u00012B\u0007¢\u0006\u0004\bM\u00109J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J)\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u001d\u0010(\u001a\u00020#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R(\u0010:\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b2\u00103\u0012\u0004\b8\u00109\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u001d\u0010@\u001a\u00020;8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?R\"\u0010H\u001a\u00020A8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u0016\u0010L\u001a\u00020I8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010K¨\u0006N"}, d2 = {"Le/a/c/a/m/c/i;", "Landroidx/fragment/app/Fragment;", "Ljava/io/File;", "file", "Landroid/net/Uri;", "QA", "(Ljava/io/File;)Landroid/net/Uri;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "", "g", "Ljava/lang/String;", "selectedDate", "Le/a/c/a/m/b/u;", "f", "Le/a/c/a/m/b/u;", "rvAdapter", "Le/a/c/a/m/b/x;", "d", "Ls1/g;", "getViewModel", "()Le/a/c/a/m/b/x;", "viewModel", "Le/a/c/a/m/b/x$a;", "a", "Le/a/c/a/m/b/x$a;", "getViewModelFactory", "()Le/a/c/a/m/b/x$a;", "setViewModelFactory", "(Le/a/c/a/m/b/x$a;)V", "viewModelFactory", "Ls1/w/f;", C22021b.f61237c, "Ls1/w/f;", "getIoContext", "()Ls1/w/f;", "setIoContext", "(Ls1/w/f;)V", "getIoContext$annotations", "()V", "ioContext", "Le/a/c/a/g/w1;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "PA", "()Le/a/c/a/g/w1;", "binding", "Le/a/c/a/m/b/t;", AbstractC2405c.f7629a, "Le/a/c/a/m/b/t;", "RA", "()Le/a/c/a/m/b/t;", "setSpinnerAdapter", "(Le/a/c/a/m/b/t;)V", "spinnerAdapter", "Lq3/a/i0;", "e", "Lq3/a/i0;", "scope", "<init>", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.m.c.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/i.class */
public final class C9322i extends Fragment {

    /* renamed from: i */
    public static final /* synthetic */ l[] f28341i = {C22128a.m8621g0(C9322i.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/QaLayoutUpdatesClassViewerBinding;", 0)};
    @Inject

    /* renamed from: a */
    public C9289x.C9290a f28342a;
    @Inject

    /* renamed from: b */
    public f f28343b;

    /* renamed from: c */
    public C9285t f28344c;

    /* renamed from: e */
    public final i0 f28346e;

    /* renamed from: h */
    public final ViewBindingProperty f28349h;

    /* renamed from: d */
    public final g f28345d = C25225a.m3978P1(new C9327d());

    /* renamed from: f */
    public final C9286u f28347f = new C9286u();

    /* renamed from: g */
    public String f28348g = "";

    /* renamed from: e.a.c.a.m.c.i$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/i$a.class */
    public static final class C9323a extends m implements s1.z.b.l<C9322i, C9082w1> {
        public C9323a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27690d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.classSelector;
            Spinner spinner = (Spinner) requireView.findViewById(i);
            if (spinner != null) {
                i = C4078R.C4080id.fromDateHeader;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    i = C4078R.C4080id.fromDatePicker;
                    Button button = (Button) requireView.findViewById(i);
                    if (button != null) {
                        i = C4078R.C4080id.msgLimitHeader;
                        TextView textView2 = (TextView) requireView.findViewById(i);
                        if (textView2 != null) {
                            i = C4078R.C4080id.msgLimitValue;
                            EditText editText = (EditText) requireView.findViewById(i);
                            if (editText != null) {
                                i = C4078R.C4080id.recyclerView;
                                RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                                if (recyclerView != null) {
                                    i = C4078R.C4080id.sendAllFeedbackButton;
                                    Button button2 = (Button) requireView.findViewById(i);
                                    if (button2 != null) {
                                        i = C4078R.C4080id.sendFeedbackButton;
                                        Button button3 = (Button) requireView.findViewById(i);
                                        if (button3 != null) {
                                            i = C4078R.C4080id.spinnerHeader;
                                            TextView textView3 = (TextView) requireView.findViewById(i);
                                            if (textView3 != null) {
                                                return new C9082w1((ConstraintLayout) requireView, spinner, textView, button, textView2, editText, recyclerView, button2, button3, textView3);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\"\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000e0\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"e/a/c/a/m/c/i$b", "Ln3/r/a/k;", "Landroid/app/DatePickerDialog$OnDateSetListener;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/widget/DatePicker;", ViewAction.VIEW, "", "year", "month", "day", "Ls1/s;", "onDateSet", "(Landroid/widget/DatePicker;III)V", "Lkotlin/Function1;", "", "a", "Ls1/z/b/l;", "callback", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.c.a.m.c.i$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/i$b.class */
    public static final class C9324b extends k implements DatePickerDialog.OnDateSetListener {

        /* renamed from: a */
        public s1.z.b.l<? super String, s> f28350a;

        public Dialog onCreateDialog(Bundle bundle) {
            Calendar calendar = Calendar.getInstance();
            return new DatePickerDialog(requireActivity(), this, calendar.get(1), calendar.get(2), calendar.get(5));
        }

        @Override // android.app.DatePickerDialog.OnDateSetListener
        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            s1.z.c.l.e(datePicker, ViewAction.VIEW);
            s1.z.b.l<? super String, s> lVar = this.f28350a;
            if (lVar == null) {
                s1.z.c.l.l("callback");
                throw null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(i3);
            sb.append('-');
            sb.append(i2);
            sb.append('-');
            sb.append(i);
            lVar.d(sb.toString());
        }
    }

    @e(c = "com.truecaller.insights.ui.qa.view.InsightsUpdatesClassViewer$onActivityResult$1", f = "InsightsUpdatesClassViewer.kt", l = {168}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.m.c.i$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/i$c.class */
    public static final class C9325c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f28351e;

        /* renamed from: f */
        public Object f28352f;

        /* renamed from: g */
        public int f28353g;

        /* renamed from: i */
        public final /* synthetic */ Intent f28355i;

        @e(c = "com.truecaller.insights.ui.qa.view.InsightsUpdatesClassViewer$onActivityResult$1$1$2", f = "InsightsUpdatesClassViewer.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.c.a.m.c.i$c$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/i$c$a.class */
        public static final class C9326a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public final /* synthetic */ C9325c f28356e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9326a(d dVar, C9325c c9325c) {
                super(2, dVar);
                this.f28356e = c9325c;
            }

            /* renamed from: i */
            public final d<s> m27686i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C9326a(dVar, this.f28356e);
            }

            /* renamed from: k */
            public final Object m27685k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                C9325c c9325c = this.f28356e;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                Toast.makeText(C9322i.this.getContext(), "Finished writing file.", 1).show();
                return sVar;
            }

            /* renamed from: s */
            public final Object m27684s(Object obj) {
                C25225a.m3932a3(obj);
                Toast.makeText(C9322i.this.getContext(), "Finished writing file.", 1).show();
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9325c(Intent intent, d dVar) {
            super(2, dVar);
            C9322i.this = r5;
            this.f28355i = intent;
        }

        /* renamed from: i */
        public final d<s> m27689i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C9325c(this.f28355i, dVar);
        }

        /* renamed from: k */
        public final Object m27688k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C9325c(this.f28355i, dVar).m27687s(s.a);
        }

        /* renamed from: s */
        public final Object m27687s(Object obj) {
            Uri uri;
            C9322i c9322i;
            ContentResolver contentResolver;
            OutputStream openOutputStream;
            a aVar = a.a;
            int i = this.f28353g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Intent intent = this.f28355i;
                if (intent != null) {
                    uri = intent.getData();
                    if (uri != null) {
                        c9322i = C9322i.this;
                        C9289x m27694OA = C9322i.m27694OA(c9322i);
                        this.f28351e = uri;
                        this.f28352f = c9322i;
                        this.f28353g = 1;
                        obj = s1.a.a.a.v0.f.d.a4(m27694OA.f28263b, new C9255b0(m27694OA, null), this);
                        if (obj == aVar) {
                            return aVar;
                        }
                    }
                }
                return s.a;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c9322i = (C9322i) this.f28352f;
                uri = (Uri) this.f28351e;
                C25225a.m3932a3(obj);
            }
            List<C9283r> list = (List) obj;
            l[] lVarArr = C9322i.f28341i;
            Objects.requireNonNull(c9322i);
            List m3962T1 = C25225a.m3962T1("Address, Message, Date, isSpam, passesFilter");
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C9283r c9283r : list) {
                String obj2 = v.g0(r.t(r.t(c9283r.f28248a, ",", StringConstant.SPACE, false, 4), StringConstant.NEW_LINE, "", false, 4)).toString();
                long j = c9283r.f28250c;
                StringBuilder sb = new StringBuilder();
                C22128a.m8666T0(sb, c9283r.f28249b, ", ", obj2, ", ");
                sb.append(String.valueOf(j));
                sb.append(", ");
                sb.append(c9283r.f28251d);
                sb.append(", ");
                sb.append(c9283r.f28252e);
                arrayList.add(sb.toString());
            }
            String O = s1.u.i.O(s1.u.i.l0(m3962T1, arrayList), StringConstant.NEW_LINE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
            Context context = C9322i.this.getContext();
            if (context != null && (contentResolver = context.getContentResolver()) != null && (openOutputStream = contentResolver.openOutputStream(uri)) != null) {
                try {
                    byte[] bytes = O.getBytes(b.a);
                    s1.z.c.l.d(bytes, "(this as java.lang.String).getBytes(charset)");
                    openOutputStream.write(bytes);
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            s1.a.a.a.v0.f.d.w2(C9322i.this.f28346e, (f) null, (j0) null, new C9326a(null, this), 3, (Object) null);
            return s.a;
        }
    }

    /* renamed from: e.a.c.a.m.c.i$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/i$d.class */
    public static final class C9327d extends m implements s1.z.b.a<C9289x> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9327d() {
            super(0);
            C9322i.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [e.a.c.a.m.c.i, n3.v.c1] */
        public Object invoke() {
            AbstractC27040y0 abstractC27040y0;
            ?? r0 = C9322i.this;
            C9289x.C9290a c9290a = r0.f28342a;
            if (c9290a == null) {
                s1.z.c.l.l("viewModelFactory");
                throw null;
            }
            C26993b1 viewModelStore = r0.getViewModelStore();
            String canonicalName = C9289x.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
            if (C9289x.class.isInstance(abstractC27040y02)) {
                abstractC27040y0 = abstractC27040y02;
                if (c9290a instanceof C26986a1.C26990e) {
                    ((C26986a1.C26990e) c9290a).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC27040y0 m1024b = c9290a instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) c9290a).m1024b(m8543z2, C9289x.class) : c9290a.create(C9289x.class);
                AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            s1.z.c.l.d(abstractC27040y0, "ViewModelProvider(this, …ingViewModel::class.java)");
            return (C9289x) abstractC27040y0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C9322i() {
        int i = AbstractC9246a.f28129a;
        AbstractC9246a abstractC9246a = AbstractC9246a.C9247a.f28130a;
        if (abstractC9246a == null) {
            s1.z.c.l.l("instance");
            throw null;
        }
        C9248b c9248b = (C9248b) abstractC9246a;
        this.f28342a = (C9289x.C9290a) c9248b.f28137F.get();
        f mo12793B1 = c9248b.f28142f.mo12793B1();
        Objects.requireNonNull(mo12793B1, "Cannot return null from a non-@Nullable component method");
        this.f28343b = mo12793B1;
        this.f28346e = C27020r.m994b(this);
        this.f28349h = new C19350a(new C9323a());
    }

    /* renamed from: OA */
    public static final C9289x m27694OA(C9322i c9322i) {
        return (C9289x) c9322i.f28345d.getValue();
    }

    /* renamed from: PA */
    public final C9082w1 m27693PA() {
        return (C9082w1) this.f28349h.m34468b(this, f28341i[0]);
    }

    /* renamed from: QA */
    public final Uri m27692QA(File file) {
        Context requireContext = requireContext();
        Context requireContext2 = requireContext();
        s1.z.c.l.d(requireContext2, "requireContext()");
        Context applicationContext = requireContext2.getApplicationContext();
        s1.z.c.l.d(applicationContext, "requireContext().applicationContext");
        String packageName = applicationContext.getPackageName();
        Uri m42989b = FileProvider.m42989b(requireContext, packageName + ".fileprovider", file);
        s1.z.c.l.d(m42989b, "FileProvider.getUriForFi…roviderAuthority(), file)");
        return m42989b;
    }

    /* renamed from: RA */
    public final C9285t m27691RA() {
        C9285t c9285t = this.f28344c;
        if (c9285t != null) {
            return c9285t;
        }
        s1.z.c.l.l("spinnerAdapter");
        throw null;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1 && i == 1) {
            i0 i0Var = this.f28346e;
            f fVar = this.f28343b;
            if (fVar != null) {
                s1.a.a.a.v0.f.d.w2(i0Var, fVar, (j0) null, new C9325c(intent, null), 2, (Object) null);
            } else {
                s1.z.c.l.l("ioContext");
                throw null;
            }
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.qa_layout_updates_class_viewer, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C9322i.super.onViewCreated(view, bundle);
        Spinner spinner = m27693PA().f27704a;
        s1.z.c.l.d(spinner, "binding.classSelector");
        spinner.setOnItemSelectedListener(new C9328j(this));
        m27693PA().f27705b.setOnClickListener(new View$OnClickListenerC9330k(this));
        m27693PA().f27709f.setOnClickListener(new View$OnClickListenerC9332l(this));
        m27693PA().f27708e.setOnClickListener(new View$OnClickListenerC9334m(this));
        s1.a.a.a.v0.f.d.w2(this.f28346e, (f) null, (j0) null, new C9335n(this, null), 3, (Object) null);
        RecyclerView recyclerView = m27693PA().f27707d;
        s1.z.c.l.d(recyclerView, "binding.recyclerView");
        recyclerView.setAdapter(this.f28347f);
        RecyclerView recyclerView2 = m27693PA().f27707d;
        s1.z.c.l.d(recyclerView2, "binding.recyclerView");
        recyclerView2.setLayoutManager(new LinearLayoutManager(view.getContext()));
    }
}
