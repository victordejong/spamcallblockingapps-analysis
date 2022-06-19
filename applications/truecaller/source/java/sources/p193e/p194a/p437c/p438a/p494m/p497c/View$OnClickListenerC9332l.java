package p193e.p194a.p437c.p438a.p494m.p497c;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.Spinner;
import android.widget.Toast;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p494m.p496b.C9272l;
import p193e.p194a.p437c.p438a.p494m.p496b.C9289x;
import p193e.p194a.p437c.p579q.C10516k;
import q3.a.i0;
import q3.a.j0;
import s1.f0.b;
import s1.f0.r;
import s1.f0.v;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.c.l */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/l.class */
public final class View$OnClickListenerC9332l implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9322i f28364a;

    @e(c = "com.truecaller.insights.ui.qa.view.InsightsUpdatesClassViewer$setupClickListeners$3$1", f = "InsightsUpdatesClassViewer.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.m.c.l$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/l$a.class */
    public static final class C9333a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ List f28366f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9333a(List list, d dVar) {
            super(2, dVar);
            View$OnClickListenerC9332l.this = r5;
            this.f28366f = list;
        }

        /* renamed from: i */
        public final d<s> m27679i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9333a(this.f28366f, dVar);
        }

        /* renamed from: k */
        public final Object m27678k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9333a c9333a = new C9333a(this.f28366f, dVar);
            s sVar = s.a;
            c9333a.m27677s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m27677s(Object obj) {
            C25225a.m3932a3(obj);
            C9322i c9322i = View$OnClickListenerC9332l.this.f28364a;
            List list = this.f28366f;
            s1.a.l[] lVarArr = C9322i.f28341i;
            Objects.requireNonNull(c9322i);
            List m3962T1 = C25225a.m3962T1("Address,Sentence");
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (((C9272l) obj2).f28222b) {
                    arrayList.add(obj2);
                }
            }
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C10516k c10516k = ((C9272l) it.next()).f28221a;
                String str = c10516k.f31281b;
                C9289x c9289x = (C9289x) c9322i.f28345d.getValue();
                String str2 = c10516k.f31287h;
                Objects.requireNonNull(c9289x);
                l.e(str2, "sentence");
                arrayList2.add(new k(str, c9289x.f28264c.mo26290y(str2)));
            }
            ArrayList arrayList3 = new ArrayList(C25225a.m4004J(arrayList2, 10));
            Iterator it2 = arrayList2.iterator();
            while (true) {
                String str3 = null;
                if (!it2.hasNext()) {
                    break;
                }
                k kVar = (k) it2.next();
                Object obj3 = kVar.a;
                String str4 = (String) kVar.b;
                if (str4 != null) {
                    str3 = v.g0(r.t(r.t(str4, ",", StringConstant.SPACE, false, 4), StringConstant.NEW_LINE, "", false, 4)).toString();
                }
                arrayList3.add(new k(obj3, str3));
            }
            ArrayList arrayList4 = new ArrayList();
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                Object next = it3.next();
                if (((k) next).b != null) {
                    arrayList4.add(next);
                }
            }
            ArrayList arrayList5 = new ArrayList(C25225a.m4004J(arrayList4, 10));
            Iterator it4 = arrayList4.iterator();
            while (it4.hasNext()) {
                k kVar2 = (k) it4.next();
                arrayList5.add(((String) kVar2.a) + ", \"" + ((String) kVar2.b) + '\"');
            }
            String O = s1.u.i.O(s1.u.i.l0(m3962T1, arrayList5), StringConstant.NEW_LINE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62);
            Spinner spinner = c9322i.m27693PA().f27704a;
            l.d(spinner, "binding.classSelector");
            Object selectedItem = spinner.getSelectedItem();
            if (selectedItem != null) {
                String str5 = '_' + s1.u.i.O(v.U((String) selectedItem, new String[]{StringConstant.SPACE}, false, 0, 6), AnalyticsConstants.DELIMITER_MAIN, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62) + ".csv";
                Context context = c9322i.getContext();
                File createTempFile = File.createTempFile("updates_feedback_", str5, context != null ? context.getExternalFilesDir(null) : null);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                    byte[] bytes = O.getBytes(b.a);
                    l.d(bytes, "(this as java.lang.String).getBytes(charset)");
                    fileOutputStream.write(bytes);
                    C25225a.m4016G(fileOutputStream, null);
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("text/plain");
                    l.d(createTempFile, "newFile");
                    intent.putExtra("android.intent.extra.STREAM", c9322i.m27692QA(createTempFile));
                    c9322i.startActivity(Intent.createChooser(intent, "Share feedback using"));
                } catch (Throwable th) {
                    System.out.println(th);
                }
            }
            return s.a;
        }
    }

    public View$OnClickListenerC9332l(C9322i c9322i) {
        this.f28364a = c9322i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        List<C9272l> list = this.f28364a.f28347f.f28257a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((C9272l) obj).f28222b) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            Toast.makeText(this.f28364a.getContext(), "Please select some items before sending feedback", 0).show();
            return;
        }
        C9322i c9322i = this.f28364a;
        i0 i0Var = c9322i.f28346e;
        f fVar = c9322i.f28343b;
        if (fVar == null) {
            l.l("ioContext");
            throw null;
        }
        s1.a.a.a.v0.f.d.w2(i0Var, fVar, (j0) null, new C9333a(arrayList, null), 2, (Object) null);
    }
}
