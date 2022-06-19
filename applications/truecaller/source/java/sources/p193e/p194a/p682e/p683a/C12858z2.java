package p193e.p194a.p682e.p683a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.insights.categorizer.CategorizerInputType;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.multisim.SimInfo;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1059m3.C18188u;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p437c.p538g.AbstractC10105a;
import p193e.p194a.p437c.p538g.AbstractC10159f;
import p193e.p194a.p437c.p538g.AbstractC10199t;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.c0.c;
import s1.d0.c;
import s1.d0.j;
import s1.u.i;
import s1.w.f;
import s1.z.c.m;
import w3.b.a.b;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b-\u0010.J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006/"}, d2 = {"Le/a/e/a/z2;", "Ln3/r/a/k;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/c/g/t;", "f", "Le/a/c/g/t;", "getUpdatesClassifier", "()Le/a/c/g/t;", "setUpdatesClassifier", "(Le/a/c/g/t;)V", "updatesClassifier", "Le/a/m3/u;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/m3/u;", "binding", "Le/a/c/g/f;", "g", "Le/a/c/g/f;", "getInsightsAndroidCategorizer", "()Le/a/c/g/f;", "setInsightsAndroidCategorizer", "(Le/a/c/g/f;)V", "insightsAndroidCategorizer", "Le/a/e4/p;", "e", "Le/a/e4/p;", "getMultiSimManager", "()Le/a/e4/p;", "setMultiSimManager", "(Le/a/e4/p;)V", "multiSimManager", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.a.z2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/z2.class */
public final class C12858z2 extends AbstractC12791o2 {

    /* renamed from: i */
    public static final /* synthetic */ l[] f37389i = {C22128a.m8621g0(C12858z2.class, "binding", "getBinding()Lcom/truecaller/databinding/DialogInsightsSmsTesterBinding;", 0)};
    @Inject

    /* renamed from: e */
    public AbstractC13497p f37390e;
    @Inject

    /* renamed from: f */
    public AbstractC10199t f37391f;
    @Inject

    /* renamed from: g */
    public AbstractC10159f f37392g;

    /* renamed from: h */
    public final ViewBindingProperty f37393h = new C19350a(new C12859a());

    /* renamed from: e.a.e.a.z2$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/z2$a.class */
    public static final class C12859a extends m implements s1.z.b.l<C12858z2, C18188u> {
        public C12859a() {
            super(1);
        }

        /* renamed from: d */
        public Object m22594d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362117;
            TextInputEditText findViewById = requireView.findViewById(C2752R.C2754id.addressString);
            if (findViewById != null) {
                i = 2131362996;
                MaterialButton findViewById2 = requireView.findViewById(C2752R.C2754id.createNotifButton);
                if (findViewById2 != null) {
                    i = 2131364791;
                    TextInputEditText findViewById3 = requireView.findViewById(C2752R.C2754id.messageString);
                    if (findViewById3 != null) {
                        i = 2131366343;
                        TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.textView8);
                        if (textView != null) {
                            return new C18188u((LinearLayout) requireView, findViewById, findViewById2, findViewById3, textView);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.e.a.z2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/z2$b.class */
    public static final class View$OnClickListenerC12860b implements View.OnClickListener {
        public View$OnClickListenerC12860b() {
            C12858z2.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC10105a mo26645s;
            C12858z2 c12858z2 = C12858z2.this;
            l[] lVarArr = C12858z2.f37389i;
            TextInputEditText textInputEditText = c12858z2.m22595QA().f51417c;
            s1.z.c.l.d(textInputEditText, "binding.messageString");
            String valueOf = String.valueOf(textInputEditText.getText());
            TextInputEditText textInputEditText2 = c12858z2.m22595QA().f51415a;
            s1.z.c.l.d(textInputEditText2, "binding.addressString");
            String valueOf2 = String.valueOf(textInputEditText2.getText());
            C12858z2 c12858z22 = C12858z2.this;
            String str = valueOf;
            String str2 = valueOf2;
            Objects.requireNonNull(c12858z22);
            if (!(str.length() == 0)) {
                boolean z = false;
                if (str2.length() == 0) {
                    z = true;
                }
                if (!z) {
                    StringBuilder sb = new StringBuilder();
                    c cVar = new c('A', 'Z');
                    StringBuilder sb2 = new StringBuilder();
                    c.a aVar = s1.c0.c.b;
                    sb2.append(j.g(cVar, aVar));
                    sb2.append(j.g(cVar, aVar));
                    sb.append(sb2.toString());
                    sb.append('-');
                    sb.append(str2);
                    String sb3 = sb.toString();
                    TrueApp m36032b0 = TrueApp.m36032b0();
                    s1.z.c.l.d(m36032b0, "TrueApp.getApp()");
                    AbstractC19854f<AbstractC7343q> mo12417d3 = m36032b0.mo10154s().mo12417d3();
                    s1.z.c.l.d(mo12417d3, "TrueApp.getApp().objects…ph.notificationsManager()");
                    AbstractC13497p abstractC13497p = c12858z22.f37390e;
                    String str3 = null;
                    if (abstractC13497p == null) {
                        s1.z.c.l.l("multiSimManager");
                        throw null;
                    }
                    List<SimInfo> mo21742d = abstractC13497p.mo21742d();
                    s1.z.c.l.d(mo21742d, "multiSimManager.allSimInfos");
                    SimInfo simInfo = (SimInfo) i.D(mo21742d);
                    if (simInfo != null) {
                        str3 = simInfo.f13984b;
                    }
                    Message.C4209b c4209b = new Message.C4209b();
                    c4209b.m35006g(Entity.C4195a.m35042a(Entity.f13305h, 0L, "text/plain", 0, str, false, 0, 0, 0, 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 262133));
                    c4209b.m35003j(str3);
                    c4209b.f13425e = new b();
                    TrueApp m36032b02 = TrueApp.m36032b0();
                    s1.z.c.l.d(m36032b02, "TrueApp.getApp()");
                    AbstractC8621z mo12296m = m36032b02.mo10154s().mo12296m();
                    if (str3 == null) {
                        str3 = "-1";
                    }
                    c4209b.f13423c = Participant.m35455d(sb3, mo12296m, str3);
                    Message m35012a = c4209b.m35012a();
                    s1.z.c.l.d(m35012a, "Message.Builder()\n      …\n                .build()");
                    Conversation.C4191b c4191b = new Conversation.C4191b();
                    c4191b.f13249m.add(m35012a.f13382c);
                    Conversation m35063b = c4191b.m35063b();
                    s1.z.c.l.d(m35063b, "Conversation.Builder()\n …\n                .build()");
                    AbstractC10159f abstractC10159f = c12858z22.f37392g;
                    if (abstractC10159f == null) {
                        s1.z.c.l.l("insightsAndroidCategorizer");
                        throw null;
                    }
                    mo26645s = abstractC10159f.mo26645s(str, (r7 & 2) != 0 ? CategorizerInputType.SMS : null);
                    if (mo26645s instanceof AbstractC10105a.C10107b) {
                        System.out.println((Object) "SPAM MESSAGE in tester");
                    } else if (mo26645s instanceof AbstractC10105a.C10106a) {
                        d.c3((f) null, new C12675a3(c12858z22, str, null), 1, (Object) null);
                    }
                    mo12417d3.mo11854a().mo29767j(Collections.singletonMap(m35063b, Collections.singletonList(m35012a)));
                    return;
                }
            }
            Toast.makeText(c12858z22.getContext(), "Please enter valid address and message ", 1).show();
        }
    }

    /* renamed from: QA */
    public final C18188u m22595QA() {
        return (C18188u) this.f37393h.m34468b(this, f37389i[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C2752R.layout.dialog_insights_sms_tester, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        m22595QA().f51416b.setOnClickListener(new View$OnClickListenerC12860b());
    }
}
