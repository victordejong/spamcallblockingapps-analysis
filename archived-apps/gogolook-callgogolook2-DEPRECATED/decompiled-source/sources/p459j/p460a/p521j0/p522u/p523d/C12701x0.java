package p459j.p460a.p521j0.p522u.p523d;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import androidx.annotation.NonNull;
import com.facebook.ads.AdError;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.receiver.CheckTeaserNotificationReceiver;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p613z0.C14602b;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.DialogC14644l;
/* renamed from: j.a.j0.u.d.x0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/x0.class */
public class C12701x0 {

    /* renamed from: a */
    public Context f28649a;

    /* renamed from: b */
    public EnumC12703b f28650b;

    /* renamed from: c */
    public boolean f28651c = false;

    /* renamed from: d */
    public boolean f28652d = false;

    /* renamed from: e */
    public Dialog f28653e = null;

    /* renamed from: f */
    public String f28654f = null;

    /* renamed from: g */
    public String f28655g = null;

    /* renamed from: h */
    public String f28656h = null;

    /* renamed from: i */
    public DialogInterface.OnClickListener f28657i = null;

    /* renamed from: j */
    public String f28658j = null;

    /* renamed from: k */
    public DialogInterface.OnClickListener f28659k = null;

    /* renamed from: j.a.j0.u.d.x0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/x0$a.class */
    public static /* synthetic */ class C12702a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f28660a = new int[EnumC12703b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f28660a[EnumC12703b.PowerDataSaverCallEnd.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f28660a[EnumC12703b.DataSaverCallEnd.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f28660a[EnumC12703b.DataSaverOnBoarding.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: j.a.j0.u.d.x0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/x0$b.class */
    public enum EnumC12703b {
        PowerDataSaverCallEnd,
        DataSaverCallEnd,
        DataSaverOnBoarding
    }

    public C12701x0(@NonNull Context context, @NonNull EnumC12703b bVar) {
        this.f28649a = null;
        this.f28650b = null;
        this.f28649a = context;
        this.f28650b = bVar;
    }

    /* renamed from: a */
    public C12701x0 m5512a(DialogInterface.OnClickListener onClickListener) {
        this.f28659k = onClickListener;
        return this;
    }

    /* renamed from: a */
    public C12701x0 m5511a(boolean z) {
        this.f28651c = z;
        return this;
    }

    /* renamed from: a */
    public final void m5513a() {
        int i = C12702a.f28660a[this.f28650b.ordinal()];
        if (i == 1) {
            this.f28652d = true;
            this.f28654f = null;
            this.f28655g = C14206w4.m2225a((int) R$string.ced_permission_powerdataoff);
        } else if (i == 2) {
            this.f28652d = true;
            this.f28654f = null;
            this.f28655g = C14206w4.m2225a((int) R$string.ced_permission_dataoff);
        } else if (i == 3) {
            this.f28652d = false;
            this.f28654f = C14206w4.m2225a((int) R$string.onboarding_datasaver_title);
            this.f28655g = C14206w4.m2225a((int) R$string.onboarding_datasaver_content);
        }
        this.f28656h = C14206w4.m2225a((int) R$string.button_go_to_setting);
        this.f28658j = C14206w4.m2225a(this.f28651c ? R$string.button_never_ask_again : R$string.button_no);
    }

    /* renamed from: b */
    public Dialog m5510b() {
        if (this.f28653e == null) {
            m5513a();
            if (this.f28651c) {
                DialogC14644l lVar = new DialogC14644l(this.f28649a);
                lVar.setTitle(this.f28654f);
                lVar.m935a(this.f28655g);
                lVar.m932b(this.f28656h, this.f28657i);
                lVar.m934a(this.f28658j, this.f28659k);
                lVar.m933a(true);
                this.f28653e = lVar;
            } else {
                DialogC14618f fVar = new DialogC14618f(this.f28649a);
                fVar.setTitle(this.f28654f);
                fVar.m998b(this.f28655g);
                fVar.m997b(this.f28656h, this.f28657i);
                fVar.m1002a(this.f28658j, this.f28659k);
                this.f28653e = fVar;
            }
            this.f28653e.setCancelable(false);
        }
        return this.f28653e;
    }

    /* renamed from: b */
    public C12701x0 m5509b(DialogInterface.OnClickListener onClickListener) {
        this.f28657i = onClickListener;
        return this;
    }

    /* renamed from: c */
    public void m5508c() {
        if (this.f28653e == null) {
            this.f28653e = m5510b();
        }
        if (!this.f28652d || this.f28653e.getWindow() == null) {
            this.f28653e.show();
            return;
        }
        this.f28653e.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
        if (!C13878a3.m3244a(new C14602b(this.f28653e).m1029e())) {
            CheckTeaserNotificationReceiver.m26396b(this.f28649a);
        }
    }
}
