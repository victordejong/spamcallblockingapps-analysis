package p459j.p460a.p521j0.p522u.p523d;

import androidx.annotation.UiThread;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import java.util.Locale;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14023h4;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14189u3;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.j0.u.d.d1 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/d1.class */
public abstract class AbstractC12548d1 {

    /* renamed from: a */
    public NumberInfo f28247a;

    /* renamed from: b */
    public RowInfo f28248b;

    /* renamed from: c */
    public float f28249c;

    /* renamed from: j.a.j0.u.d.d1$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/d1$a.class */
    public class C12549a implements Action1<C12552d> {

        /* renamed from: a */
        public final /* synthetic */ boolean f28250a;

        public C12549a(boolean z) {
            this.f28250a = z;
        }

        /* renamed from: a */
        public void call(C12552d dVar) {
            if (dVar.f28256c > dVar.f28254a) {
                String a = AbstractC12548d1.this.m5928a(dVar.f28256c);
                AbstractC12548d1.this.f28248b.m28251a(C14206w4.m2224a((int) R$string.calldialog_noinfo_useful_callout, a), RowInfo.Secondary.Type.NO_INFO, C14206w4.m2224a((int) R$string.calldialog_noinfo_useful_callout_emphasize, a), MyApplication.m29013o().getResources().getColor(2131099793));
                AbstractC12548d1.this.f28247a.usefulInfoType = NumberInfo.UsefulInfoType.CALL_OUT_COUNT;
            } else if (dVar.f28257d > dVar.f28254a) {
                String a2 = AbstractC12548d1.this.m5928a(dVar.f28257d);
                AbstractC12548d1.this.f28248b.m28251a(C14206w4.m2224a((int) R$string.calldialog_noinfo_useful_answer, a2), RowInfo.Secondary.Type.NO_INFO, C14206w4.m2224a((int) R$string.calldialog_noinfo_useful_answer_emphasize, a2), MyApplication.m29013o().getResources().getColor(2131099793));
                AbstractC12548d1.this.f28247a.usefulInfoType = NumberInfo.UsefulInfoType.PICK_UP_COUNT;
            } else if (this.f28250a) {
                AbstractC12548d1.this.f28248b.m28251a(C14206w4.m2224a((int) R$string.calldialog_noinfo_useful_public, String.valueOf(dVar.f28258e)), RowInfo.Secondary.Type.NO_INFO, C14206w4.m2224a((int) R$string.calldialog_noinfo_useful_public_emphasize, String.valueOf(dVar.f28258e)), MyApplication.m29013o().getResources().getColor(2131099793));
                AbstractC12548d1.this.f28247a.usefulInfoType = NumberInfo.UsefulInfoType.ANSWER_RATE;
            } else if (!dVar.f28259f && !C14217x3.m2160b(dVar.f28260g)) {
                AbstractC12548d1.this.f28248b.m28251a(C14206w4.m2224a((int) R$string.calldialog_noinfo_useful_oversea, dVar.f28260g), RowInfo.Secondary.Type.NO_INFO, C14206w4.m2224a((int) R$string.calldialog_noinfo_useful_oversea_emphasize, dVar.f28260g), MyApplication.m29013o().getResources().getColor(2131099793));
                AbstractC12548d1.this.f28247a.usefulInfoType = NumberInfo.UsefulInfoType.FOREIGN_NUMBER;
            }
            AbstractC12548d1.this.mo5579b();
        }
    }

    /* renamed from: j.a.j0.u.d.d1$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/d1$b.class */
    public class C12550b implements Single.OnSubscribe<C12552d> {
        public C12550b() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super C12552d> singleSubscriber) {
            String str;
            C12552d dVar = new C12552d();
            dVar.f28254a = 1;
            dVar.f28255b = System.currentTimeMillis() - 31536000000L;
            dVar.f28256c = C14023h4.m2762a(AbstractC12548d1.this.f28248b.m28234d(), dVar.f28255b);
            dVar.f28257d = C14023h4.m2755b(AbstractC12548d1.this.f28248b.m28234d(), dVar.f28255b);
            dVar.f28258e = Math.round(AbstractC12548d1.this.f28249c * 100.0f);
            String n = C14017g4.m2810n();
            try {
                str = PhoneNumberUtil.getInstance().getRegionCodeForNumber(PhoneNumberUtil.getInstance().parse(AbstractC12548d1.this.f28248b.m28234d(), C14017g4.m2810n().toUpperCase(Locale.US)));
            } catch (NumberParseException e) {
                e.printStackTrace();
                str = null;
            }
            dVar.f28259f = (C14217x3.m2160b(n) || C14217x3.m2160b(str)) ? false : n.equals(str);
            dVar.f28260g = C14189u3.m2264c().m2270a(AbstractC12548d1.this.f28248b.m28234d(), AbstractC12548d1.this.f28247a);
            singleSubscriber.onSuccess(dVar);
        }
    }

    /* renamed from: j.a.j0.u.d.d1$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/d1$c.class */
    public class C12551c implements Single.OnSubscribe<Object> {
        public C12551c() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Object> singleSubscriber) {
            AbstractC12548d1.this.mo5579b();
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.j0.u.d.d1$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/d1$d.class */
    public static class C12552d {

        /* renamed from: a */
        public int f28254a;

        /* renamed from: b */
        public long f28255b;

        /* renamed from: c */
        public int f28256c;

        /* renamed from: d */
        public int f28257d;

        /* renamed from: e */
        public int f28258e;

        /* renamed from: f */
        public boolean f28259f;

        /* renamed from: g */
        public String f28260g;
    }

    public AbstractC12548d1(NumberInfo numberInfo, RowInfo rowInfo, String str) {
        this.f28249c = -1.0f;
        this.f28247a = numberInfo;
        this.f28248b = rowInfo;
        int F = this.f28247a.m28390F();
        int i = this.f28247a.m28320i();
        if (F >= 0 && i > 0) {
            this.f28249c = F > i ? 1.0f : F / i;
        }
    }

    /* renamed from: a */
    public final String m5928a(int i) {
        return i > 20 ? "20+" : String.valueOf(i);
    }

    /* renamed from: a */
    public void m5929a() {
        if (!this.f28247a.m28296s0() || C14217x3.m2160b(this.f28248b.m28234d()) || this.f28248b.m28224h().type != RowInfo.Primary.Type.NUMBER || this.f28248b.m28223i().type != RowInfo.Secondary.Type.NO_INFO) {
            Single.create(new C12551c()).subscribeOn(AndroidSchedulers.mainThread()).subscribe();
        } else {
            Single.create(new C12550b()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12549a(this.f28249c >= 0.65f), C14081m3.m2611a());
        }
    }

    @UiThread
    /* renamed from: b */
    public abstract void mo5579b();
}
