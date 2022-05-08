package p459j.p460a.p582w0;

import android.content.Context;
import android.content.IntentFilter;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.messaging.receiver.SmsReceiver;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.phone.CallReceiver;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.phone.sms.MmsReceiver;
import java.util.HashSet;
import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004H\u0007J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001d\u0010\u0007\u001a\u0004\u0018\u00010\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0012j\b\u0012\u0004\u0012\u00020\u0004`\u0013X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001a"}, m815d2 = {"Lgogolook/callgogolook2/util/BackgroundReceiverManager;", "", "()V", CallAction.DONE_TAG, "", "callReceiver", "Lgogolook/callgogolook2/phone/CallReceiver;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context$delegate", "Lkotlin/Lazy;", "defaultDialerChangedReceiver", "Lgogolook/callgogolook2/phone/call/dialog/CallUtils$DefaultDialerChangedReceiver;", "mmsBlockReceiver", "Lgogolook/callgogolook2/phone/sms/MmsReceiver;", "registers", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "smsBlockReceiver", "Lgogolook/callgogolook2/messaging/receiver/SmsReceiver;", "register", "", NovaHomeBadger.TAG, "unregister", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.k */
/* loaded from: classes3-dex2jar.jar:j/a/w0/k.class */
public final class C14043k {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f31485a;

    /* renamed from: h */
    public static final C14043k f31492h = new C14043k();

    /* renamed from: b */
    public static final AbstractC14974f f31486b = C14975g.m662a(C14044a.f31493a);

    /* renamed from: c */
    public static final SmsReceiver f31487c = new SmsReceiver();

    /* renamed from: d */
    public static final MmsReceiver f31488d = new MmsReceiver();

    /* renamed from: e */
    public static final CallReceiver f31489e = new CallReceiver();

    /* renamed from: f */
    public static final CallUtils.DefaultDialerChangedReceiver f31490f = new CallUtils.DefaultDialerChangedReceiver();

    /* renamed from: g */
    public static HashSet<String> f31491g = new HashSet<>();

    /* renamed from: j.a.w0.k$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/k$a.class */
    public static final class C14044a extends AbstractC15150l implements AbstractC15107a<Context> {

        /* renamed from: a */
        public static final C14044a f31493a = new C14044a();

        public C14044a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Context invoke() {
            return MyApplication.m29013o();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C14043k.class), "context", "getContext()Landroid/content/Context;");
        C15131a0.m412a(sVar);
        f31485a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final void m2725a(String str) {
        C15149k.m377b(str, NovaHomeBadger.TAG);
        synchronized (f31491g) {
            f31491g.add(str);
            if (f31491g.size() <= 1) {
                C14989s sVar = C14989s.f33022a;
                try {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.setPriority(Integer.MAX_VALUE);
                    intentFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
                    Context a = f31492h.m2726a();
                    if (a != null) {
                        a.registerReceiver(f31487c, intentFilter);
                    }
                } catch (Exception e) {
                    C14080m2.m2612a((Throwable) e);
                }
                try {
                    IntentFilter intentFilter2 = new IntentFilter();
                    intentFilter2.setPriority(Integer.MAX_VALUE);
                    intentFilter2.addAction("android.provider.Telephony.WAP_PUSH_RECEIVED");
                    intentFilter2.addDataType("application/vnd.wap.mms-message");
                    Context a2 = f31492h.m2726a();
                    if (a2 != null) {
                        a2.registerReceiver(f31488d, intentFilter2);
                    }
                } catch (Exception e2) {
                    C14080m2.m2612a((Throwable) e2);
                }
                try {
                    Context a3 = f31492h.m2726a();
                    if (a3 != null) {
                        CallReceiver callReceiver = f31489e;
                        IntentFilter intentFilter3 = new IntentFilter();
                        intentFilter3.addAction("android.intent.action.PHONE_STATE");
                        intentFilter3.addAction("android.intent.action.NEW_OUTGOING_CALL");
                        a3.registerReceiver(callReceiver, intentFilter3);
                    }
                } catch (Exception e3) {
                    C14080m2.m2612a((Throwable) e3);
                }
                if (CallUtils.m26551c()) {
                    try {
                        IntentFilter intentFilter4 = new IntentFilter();
                        intentFilter4.setPriority(Integer.MAX_VALUE);
                        intentFilter4.addAction("android.telecom.action.DEFAULT_DIALER_CHANGED");
                        Context a4 = f31492h.m2726a();
                        if (a4 != null) {
                            a4.registerReceiver(f31490f, intentFilter4);
                        }
                    } catch (Exception e4) {
                        C14080m2.m2612a((Throwable) e4);
                    }
                }
                try {
                    AdUtils.m28815a(f31492h.m2726a(), 1L);
                } catch (Exception e5) {
                    C14080m2.m2612a((Throwable) e5);
                }
            }
        }
    }

    /* renamed from: b */
    public static final void m2724b(String str) {
        C15149k.m377b(str, NovaHomeBadger.TAG);
        synchronized (f31491g) {
            f31491g.remove(str);
            if (f31491g.size() <= 0) {
                C14989s sVar = C14989s.f33022a;
                try {
                    Context a = f31492h.m2726a();
                    if (a != null) {
                        a.unregisterReceiver(f31487c);
                    }
                } catch (Exception e) {
                    C14080m2.m2612a((Throwable) e);
                }
                try {
                    Context a2 = f31492h.m2726a();
                    if (a2 != null) {
                        a2.unregisterReceiver(f31488d);
                    }
                } catch (Exception e2) {
                    C14080m2.m2612a((Throwable) e2);
                }
                try {
                    Context a3 = f31492h.m2726a();
                    if (a3 != null) {
                        a3.unregisterReceiver(f31489e);
                    }
                } catch (Exception e3) {
                    C14080m2.m2612a((Throwable) e3);
                }
                try {
                    Context a4 = f31492h.m2726a();
                    if (a4 != null) {
                        a4.unregisterReceiver(f31490f);
                    }
                } catch (Exception e4) {
                    C14080m2.m2612a((Throwable) e4);
                }
                CallReceiver.m26758a(false);
            }
        }
    }

    /* renamed from: a */
    public final Context m2726a() {
        AbstractC14974f fVar = f31486b;
        AbstractC14906i iVar = f31485a[0];
        return (Context) fVar.getValue();
    }
}
