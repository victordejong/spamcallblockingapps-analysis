package p193e.p194a.p372b0.p373a.p374a;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.activity.ComponentActivity;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.common.p156ui.dialogs.StartupXDialogState;
import kotlin.Metadata;
import n3.b.a.h;
import n3.r.a.l;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27042z0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018�� \u001a2\u00020\u0001:\u0001\u001bB\u0007¢\u0006\u0004\b\u0019\u0010\rJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u0011\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0004J\u0011\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0018\u001a\u00020\u00138B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Le/a/b0/a/a/h;", "Le/a/b0/a/a/a;", "", "ZA", "()Ljava/lang/String;", "YA", "XA", "WA", "", "QA", "()Ljava/lang/Integer;", "Ls1/s;", "aB", "()V", "bB", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Le/a/b0/a/a/i;", "j", "Ls1/g;", "cB", "()Le/a/b0/a/a/i;", "viewModel", "<init>", "k", AbstractC2405c.f7629a, "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b0.a.a.h */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/h.class */
public class C8230h extends AbstractC8213a {

    /* renamed from: k */
    public static final C8233c f25388k = new C8233c(null);

    /* renamed from: j */
    public final g f25389j = MediaSessionCompat.m43278P(this, d0.a(C8237i.class), new C8231a(this), new C8232b(this));

    /* renamed from: e.a.b0.a.a.h$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/h$a.class */
    public static final class C8231a extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f25390b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8231a(Fragment fragment) {
            super(0);
            this.f25390b = fragment;
        }

        public Object invoke() {
            return C22128a.m8612i1(this.f25390b, "requireActivity()", "requireActivity().viewModelStore");
        }
    }

    /* renamed from: e.a.b0.a.a.h$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/h$b.class */
    public static final class C8232b extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f25391b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8232b(Fragment fragment) {
            super(0);
            this.f25391b = fragment;
        }

        public Object invoke() {
            l requireActivity = this.f25391b.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: e.a.b0.a.a.h$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/h$c.class */
    public static final class C8233c {

        /* renamed from: e.a.b0.a.a.h$c$a */
        /* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/h$c$a.class */
        public static final class C8234a extends m implements a<C26986a1.AbstractC26987b> {

            /* renamed from: b */
            public final /* synthetic */ ComponentActivity f25392b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C8234a(ComponentActivity componentActivity) {
                super(0);
                this.f25392b = componentActivity;
            }

            public Object invoke() {
                return this.f25392b.getDefaultViewModelProviderFactory();
            }
        }

        /* renamed from: e.a.b0.a.a.h$c$b */
        /* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/h$c$b.class */
        public static final class C8235b extends m implements a<C26993b1> {

            /* renamed from: b */
            public final /* synthetic */ ComponentActivity f25393b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C8235b(ComponentActivity componentActivity) {
                super(0);
                this.f25393b = componentActivity;
            }

            public Object invoke() {
                C26993b1 viewModelStore = this.f25393b.getViewModelStore();
                s1.z.c.l.d(viewModelStore, "viewModelStore");
                return viewModelStore;
            }
        }

        /* renamed from: e.a.b0.a.a.h$c$c */
        /* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/h$c$c.class */
        public static final class C8236c implements AbstractC27012l0<StartupXDialogState> {

            /* renamed from: a */
            public final /* synthetic */ a f25394a;

            /* renamed from: b */
            public final /* synthetic */ a f25395b;

            /* renamed from: c */
            public final /* synthetic */ s1.z.b.l f25396c;

            /* renamed from: d */
            public final /* synthetic */ g f25397d;

            public C8236c(a aVar, a aVar2, s1.z.b.l lVar, g gVar, s1.a.l lVar2) {
                this.f25394a = aVar;
                this.f25395b = aVar2;
                this.f25396c = lVar;
                this.f25397d = gVar;
            }

            @Override // p1727n3.p1868v.AbstractC27012l0
            public void onChanged(StartupXDialogState startupXDialogState) {
                a aVar;
                StartupXDialogState startupXDialogState2 = startupXDialogState;
                if (startupXDialogState2 != null) {
                    int ordinal = startupXDialogState2.ordinal();
                    if (ordinal == 0) {
                        return;
                    }
                    if (ordinal == 1) {
                        a aVar2 = this.f25395b;
                        if (aVar2 != null) {
                            s sVar = (s) aVar2.invoke();
                        }
                    } else if (ordinal == 2 && (aVar = this.f25394a) != null) {
                        s sVar2 = (s) aVar.invoke();
                    }
                }
                s1.z.b.l lVar = this.f25396c;
                if (lVar != null) {
                    s sVar3 = (s) lVar.d(startupXDialogState2);
                }
                ((C8237i) this.f25397d.getValue()).m28761c().m42865k(this);
            }
        }

        public C8233c(f fVar) {
        }

        /* renamed from: b */
        public static /* synthetic */ void m28762b(C8233c c8233c, h hVar, String str, String str2, String str3, String str4, Integer num, a aVar, a aVar2, s1.z.b.l lVar, boolean z, C8230h c8230h, int i) {
            if ((i & 32) != 0) {
                num = null;
            }
            if ((i & 64) != 0) {
                aVar = null;
            }
            if ((i & 128) != 0) {
                aVar2 = null;
            }
            if ((i & 256) != 0) {
                lVar = null;
            }
            if ((i & 512) != 0) {
                z = true;
            }
            if ((i & 1024) != 0) {
                c8230h = null;
            }
            c8233c.m28763a(hVar, str, str2, str3, str4, num, aVar, aVar2, lVar, z, c8230h);
        }

        /* renamed from: a */
        public final void m28763a(h hVar, String str, String str2, String str3, String str4, Integer num, a<s> aVar, a<s> aVar2, s1.z.b.l<? super StartupXDialogState, s> lVar, boolean z, C8230h c8230h) {
            s1.z.c.l.e(hVar, "activity");
            s1.z.c.l.e(str, "title");
            s1.z.c.l.e(str2, "subtitle");
            s1.z.c.l.e(str3, "positiveButtonText");
            C27042z0 c27042z0 = new C27042z0(d0.a(C8237i.class), new C8235b(hVar), new C8234a(hVar));
            ((C8237i) c27042z0.getValue()).m28761c().mo1000l(StartupXDialogState.SHOWING);
            ((C8237i) c27042z0.getValue()).m28761c().m42867f(hVar, new C8236c(aVar2, aVar, lVar, c27042z0, null));
            C8230h c8230h2 = c8230h != null ? c8230h : new C8230h();
            Bundle bundle = new Bundle();
            bundle.putString("title", str);
            bundle.putString("subtitle", str2);
            bundle.putString("positive_button_text", str3);
            bundle.putString("negative_button_text", str4);
            if (num != null) {
                bundle.putInt("image_res_id", num.intValue());
            }
            c8230h2.setArguments(bundle);
            c8230h2.setCancelable(z);
            c8230h2.show(hVar.getSupportFragmentManager(), (String) null);
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: QA */
    public Integer mo9002QA() {
        Bundle arguments = getArguments();
        return arguments != null ? Integer.valueOf(arguments.getInt("image_res_id")) : null;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: WA */
    public String mo9001WA() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString("negative_button_text") : null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r4 != null) goto L7;
     */
    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: XA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo9000XA() {
        /*
            r3 = this;
            r0 = r3
            android.os.Bundle r0 = r0.getArguments()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L17
            r0 = r4
            java.lang.String r1 = "positive_button_text"
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L17
            goto L1a
        L17:
            java.lang.String r0 = ""
            r4 = r0
        L1a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p373a.p374a.C8230h.mo9000XA():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r4 != null) goto L7;
     */
    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: YA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo8999YA() {
        /*
            r3 = this;
            r0 = r3
            android.os.Bundle r0 = r0.getArguments()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L17
            r0 = r4
            java.lang.String r1 = "subtitle"
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L17
            goto L1a
        L17:
            java.lang.String r0 = ""
            r4 = r0
        L1a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p373a.p374a.C8230h.mo8999YA():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r4 != null) goto L7;
     */
    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: ZA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo8998ZA() {
        /*
            r3 = this;
            r0 = r3
            android.os.Bundle r0 = r0.getArguments()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L17
            r0 = r4
            java.lang.String r1 = "title"
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L17
            goto L1a
        L17:
            java.lang.String r0 = ""
            r4 = r0
        L1a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p373a.p374a.C8230h.mo8998ZA():java.lang.String");
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: aB */
    public void mo8997aB() {
        m28764cB().m28761c().mo1000l(StartupXDialogState.DISMISSED_NEGATIVE);
        dismiss();
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        m28764cB().m28761c().mo1000l(StartupXDialogState.DISMISSED_POSITIVE);
        dismiss();
    }

    /* renamed from: cB */
    public final C8237i m28764cB() {
        return (C8237i) this.f25389j.getValue();
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C8230h.super.onDismiss(dialogInterface);
        if (m28764cB().m28761c().m42869d() == StartupXDialogState.SHOWING) {
            m28764cB().m28761c().mo1000l(StartupXDialogState.DISMISSED);
        }
    }
}
