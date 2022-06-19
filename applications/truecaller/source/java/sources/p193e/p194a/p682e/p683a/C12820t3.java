package p193e.p194a.p682e.p683a;

import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.messaging.linkpreviews.LinkMetaData;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p244k.p245a.p248g2.AbstractC6559a;
import p193e.p194a.p195a.p283v0.C7285c;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.t0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b%\u0010&J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR%\u0010\u0015\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R%\u0010\u001a\u001a\n \u0010*\u0004\u0018\u00010\u00160\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0019R%\u0010\u001f\u001a\n \u0010*\u0004\u0018\u00010\u001b0\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0012\u001a\u0004\b\u001d\u0010\u001eR%\u0010$\u001a\n \u0010*\u0004\u0018\u00010 0 8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u0012\u001a\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Le/a/e/a/t3;", "Ln3/b/a/q;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/widget/EditText;", "kotlin.jvm.PlatformType", C22021b.f61237c, "Ls1/g;", "getEtInput", "()Landroid/widget/EditText;", "etInput", "Landroid/widget/Button;", "a", "getBtnExtract", "()Landroid/widget/Button;", "btnExtract", "Landroid/widget/ImageView;", AbstractC2405c.f7629a, "getIvResult", "()Landroid/widget/ImageView;", "ivResult", "Landroid/widget/TextView;", "d", "getTvResult", "()Landroid/widget/TextView;", "tvResult", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.a.t3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/t3.class */
public final class C12820t3 extends q {

    /* renamed from: e */
    public static final /* synthetic */ int f37293e = 0;

    /* renamed from: a */
    public final g f37294a = C19286f.m13659t(this, C2752R.C2754id.btnExtract);

    /* renamed from: b */
    public final g f37295b = C19286f.m13659t(this, C2752R.C2754id.etInput);

    /* renamed from: c */
    public final g f37296c = C19286f.m13659t(this, C2752R.C2754id.ivResult);

    /* renamed from: d */
    public final g f37297d = C19286f.m13659t(this, C2752R.C2754id.tvResult);

    /* renamed from: e.a.e.a.t3$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/t3$a.class */
    public static final class View$OnClickListenerC12821a implements View.OnClickListener {

        @e(c = "com.truecaller.ui.dialogs.QaLinkPreviewDialog$onViewCreated$1$1", f = "QaLinkPreviewDialog.kt", l = {58}, m = "invokeSuspend")
        /* renamed from: e.a.e.a.t3$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/e/a/t3$a$a.class */
        public static final class C12822a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f37299e;

            /* renamed from: f */
            public int f37300f;

            /* renamed from: h */
            public final /* synthetic */ String f37302h;

            @e(c = "com.truecaller.ui.dialogs.QaLinkPreviewDialog$onViewCreated$1$1$1", f = "QaLinkPreviewDialog.kt", l = {}, m = "invokeSuspend")
            /* renamed from: e.a.e.a.t3$a$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/e/a/t3$a$a$a.class */
            public static final class C12823a extends i implements p<i0, d<? super s>, Object> {

                /* renamed from: f */
                public final /* synthetic */ LinkMetaData f37304f;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12823a(LinkMetaData linkMetaData, d dVar) {
                    super(2, dVar);
                    C12822a.this = r5;
                    this.f37304f = linkMetaData;
                }

                /* renamed from: i */
                public final d<s> m22640i(Object obj, d<?> dVar) {
                    l.e(dVar, "completion");
                    return new C12823a(this.f37304f, dVar);
                }

                /* renamed from: k */
                public final Object m22639k(Object obj, Object obj2) {
                    d dVar = (d) obj2;
                    l.e(dVar, "completion");
                    C12823a c12823a = new C12823a(this.f37304f, dVar);
                    s sVar = s.a;
                    c12823a.m22638s(sVar);
                    return sVar;
                }

                /* renamed from: s */
                public final Object m22638s(Object obj) {
                    LinkMetaData.Type type;
                    C25225a.m3932a3(obj);
                    TextView textView = (TextView) C12820t3.this.f37297d.getValue();
                    l.d(textView, "tvResult");
                    StringBuilder sb = new StringBuilder();
                    StringBuilder m8728C = C22128a.m8728C("• url: ");
                    LinkMetaData linkMetaData = this.f37304f;
                    m8728C.append(linkMetaData != null ? linkMetaData.f13534a : null);
                    sb.append(m8728C.toString());
                    l.d(sb, "append(value)");
                    sb.append('\n');
                    l.d(sb, "append('\\n')");
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("• title: ");
                    LinkMetaData linkMetaData2 = this.f37304f;
                    sb2.append(linkMetaData2 != null ? linkMetaData2.f13535b : null);
                    sb.append(sb2.toString());
                    l.d(sb, "append(value)");
                    sb.append('\n');
                    l.d(sb, "append('\\n')");
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("• description: ");
                    LinkMetaData linkMetaData3 = this.f37304f;
                    sb3.append(linkMetaData3 != null ? linkMetaData3.f13536c : null);
                    sb.append(sb3.toString());
                    l.d(sb, "append(value)");
                    sb.append('\n');
                    l.d(sb, "append('\\n')");
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("• type: ");
                    LinkMetaData linkMetaData4 = this.f37304f;
                    sb4.append((linkMetaData4 == null || (type = linkMetaData4.f13538e) == null) ? null : type.name());
                    sb.append(sb4.toString());
                    l.d(sb, "append(value)");
                    sb.append('\n');
                    l.d(sb, "append('\\n')");
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("• imageUrl: ");
                    LinkMetaData linkMetaData5 = this.f37304f;
                    sb5.append(linkMetaData5 != null ? linkMetaData5.f13537d : null);
                    sb.append(sb5.toString());
                    l.d(sb, "append(value)");
                    sb.append('\n');
                    l.d(sb, "append('\\n')");
                    s sVar = s.a;
                    String sb6 = sb.toString();
                    l.d(sb6, "StringBuilder().apply(builderAction).toString()");
                    textView.setText(sb6);
                    ComponentCallbacks2C22236i m8444g = ComponentCallbacks2C22222c.m8444g(C12820t3.this);
                    LinkMetaData linkMetaData6 = this.f37304f;
                    String str = null;
                    if (linkMetaData6 != null) {
                        str = linkMetaData6.f13537d;
                    }
                    m8444g.mo8407r(str).m8427O((ImageView) C12820t3.this.f37296c.getValue());
                    return sVar;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12822a(String str, d dVar) {
                super(2, dVar);
                View$OnClickListenerC12821a.this = r5;
                this.f37302h = str;
            }

            /* renamed from: i */
            public final d<s> m22643i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C12822a c12822a = new C12822a(this.f37302h, dVar);
                c12822a.f37299e = obj;
                return c12822a;
            }

            /* renamed from: k */
            public final Object m22642k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C12822a c12822a = new C12822a(this.f37302h, dVar);
                c12822a.f37299e = obj;
                return c12822a.m22641s(s.a);
            }

            /* renamed from: s */
            public final Object m22641s(Object obj) {
                i0 i0Var;
                Object mo29853c;
                a aVar = a.a;
                int i = this.f37300f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    i0Var = (i0) this.f37299e;
                    C12820t3 c12820t3 = C12820t3.this;
                    int i2 = C12820t3.f37293e;
                    Objects.requireNonNull(c12820t3);
                    TrueApp m36032b0 = TrueApp.m36032b0();
                    l.d(m36032b0, "(TrueApp.getApp())");
                    AbstractC19462a mo12776C4 = m36032b0.mo10154s().mo12776C4();
                    Objects.requireNonNull(C12820t3.this);
                    TrueApp m36032b02 = TrueApp.m36032b0();
                    l.d(m36032b02, "(TrueApp.getApp())");
                    AbstractC6559a mo12372g6 = m36032b02.mo10154s().mo12372g6();
                    l.d(mo12372g6, "(TrueApp.getApp()).objectsGraph.previewManager()");
                    C7285c c7285c = new C7285c(mo12776C4, mo12372g6);
                    String str = this.f37302h;
                    this.f37299e = i0Var;
                    this.f37300f = 1;
                    mo29853c = c7285c.mo29853c(str, null, this);
                    obj = mo29853c;
                    if (obj == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    i0Var = (i0) this.f37299e;
                    C25225a.m3932a3(obj);
                }
                C12820t3 c12820t32 = C12820t3.this;
                int i3 = C12820t3.f37293e;
                s1.a.a.a.v0.f.d.w2(i0Var, C18334g0.m15209q(c12820t32.getContext()).mo12378g(), (j0) null, new C12823a((LinkMetaData) obj, null), 2, (Object) null);
                return s.a;
            }
        }

        public View$OnClickListenerC12821a() {
            C12820t3.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            EditText editText = (EditText) C12820t3.this.f37295b.getValue();
            l.d(editText, "etInput");
            s1.a.a.a.v0.f.d.w2(h1.a, t0.d, (j0) null, new C12822a(editText.getText().toString(), null), 2, (Object) null);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.dialog_qa_link_preview, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C12820t3.super.onViewCreated(view, bundle);
        TextView textView = (TextView) this.f37297d.getValue();
        l.d(textView, "tvResult");
        textView.setMovementMethod(new ScrollingMovementMethod());
        ((Button) this.f37294a.getValue()).setOnClickListener(new View$OnClickListenerC12821a());
    }
}
