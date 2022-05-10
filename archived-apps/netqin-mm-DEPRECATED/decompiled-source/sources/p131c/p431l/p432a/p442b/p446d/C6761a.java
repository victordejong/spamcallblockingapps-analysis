package p131c.p431l.p432a.p442b.p446d;

import android.content.Context;
import android.media.AudioManager;
import android.text.TextUtils;
import com.netqin.p525cm.utils.NQSPFManager;
import p131c.p431l.p432a.p442b.p445c.C6727b;
import p131c.p431l.p432a.p442b.p445c.C6758g;
import p131c.p431l.p432a.p465k.AbstractC6834a;
import p131c.p431l.p432a.p468n.C6843d;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6851j;
/* renamed from: c.l.a.b.d.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/d/a.class */
public class C6761a implements AbstractC6834a {

    /* renamed from: k */
    public static boolean f20847k = false;

    /* renamed from: a */
    public Context f20848a;

    /* renamed from: b */
    public C6758g f20849b;

    /* renamed from: c */
    public String f20850c;

    /* renamed from: d */
    public String f20851d;

    /* renamed from: e */
    public long f20852e;

    /* renamed from: f */
    public AudioManager f20853f;

    /* renamed from: g */
    public C6727b f20854g;

    /* renamed from: h */
    public String f20855h = "";

    /* renamed from: i */
    public int f20856i = -1;

    /* renamed from: j */
    public int f20857j = -1;

    public C6761a(Context context) {
        this.f20853f = null;
        this.f20848a = context;
        this.f20849b = C6758g.m19873a(context);
        this.f20853f = (AudioManager) context.getSystemService("audio");
        C6851j<NQSPFManager.EnumAntiHarass> jVar = NQSPFManager.m3184a(this.f20848a).f35744c;
        this.f20854g = C6727b.m19968a(this.f20848a);
    }

    @Override // p131c.p431l.p432a.p465k.AbstractC6834a
    /* renamed from: a */
    public int mo19627a() {
        return 120;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02ca  */
    @Override // p131c.p431l.p432a.p465k.AbstractC6834a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo19626a(android.content.Context r6, android.content.Intent r7) {
        /*
            Method dump skipped, instructions count: 1088
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p442b.p446d.C6761a.mo19626a(android.content.Context, android.content.Intent):boolean");
    }

    @Override // p131c.p431l.p432a.p465k.AbstractC6834a
    /* renamed from: a */
    public boolean mo19625a(String str) {
        return false;
    }

    @Override // p131c.p431l.p432a.p465k.AbstractC6834a
    /* renamed from: a */
    public boolean mo19624a(String str, int i) {
        boolean z;
        C6850i.m19579a("AntiHarassPhoneStateObserver", "onNewSystemCallLog-calllogtype:" + i);
        C6850i.m19579a("AntiHarassPhoneStateObserver", "onNewSystemCallLog-mCheatPhoneNumber:" + this.f20851d);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (!str.equals(this.f20850c) || i == 2) {
            z = false;
            if (str.equals(this.f20851d)) {
                z = false;
                if (i == 3) {
                    z = false;
                    if (!C6843d.m19590d()) {
                        C6850i.m19577b("AntiHarassPhoneStateObserver", "onNewSystemCallLog-->三秒内挂断，被看作是响一声来电！！！");
                        C6850i.m19577b("AntiHarassPhoneStateObserver", "onNewSystemCallLog-->mHarassHandler.isBlockPrankCall()" + this.f20854g.m19929k());
                        if (this.f20854g.m19929k()) {
                            m19861b();
                        }
                        this.f20851d = null;
                        z = false;
                    }
                }
            }
        } else {
            C6850i.m19577b("AntiHarassPhoneStateObserver", "onNewSystemCallLog-->mHangupPhoneNumber=" + this.f20850c);
            z = C6843d.m19590d() ? true : m19860c();
        }
        this.f20857j = i;
        return z;
    }

    /* renamed from: b */
    public final boolean m19861b() {
        boolean b = this.f20849b.m19867b(this.f20851d);
        this.f20851d = null;
        this.f20857j = -1;
        return b;
    }

    /* renamed from: c */
    public final boolean m19860c() {
        boolean c = this.f20849b.m19865c(this.f20850c);
        this.f20850c = null;
        return c;
    }

    /* renamed from: d */
    public final void m19859d() {
        C6850i.m19579a("AntiHarassPhoneStateObserver", "mutting");
        try {
            this.f20856i = this.f20853f.getRingerMode();
            C6850i.m19579a("AntiHarassPhoneStateObserver", "静音前来电模式：" + this.f20856i);
            this.f20853f.setRingerMode(0);
            int ringerMode = this.f20853f.getRingerMode();
            C6850i.m19579a("AntiHarassPhoneStateObserver", "静音后来电模式：" + ringerMode);
        } catch (Exception e) {
            C6850i.m19579a("AntiHarassPhoneStateObserver", e.getMessage());
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public void m19858e() {
    }

    /* renamed from: f */
    public final void m19857f() {
        C6850i.m19580a("restoring--defaultRingerMode is:" + this.f20856i);
        int i = this.f20856i;
        if (i != -1) {
            this.f20853f.setRingerMode(i);
            this.f20856i = -1;
        }
    }
}
