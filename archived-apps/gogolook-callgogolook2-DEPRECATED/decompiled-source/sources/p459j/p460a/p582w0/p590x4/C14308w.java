package p459j.p460a.p582w0.p590x4;

import android.util.LruCache;
import androidx.core.app.Person;
import androidx.lifecycle.SavedStateHandle;
import kotlin.Metadata;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p459j.p460a.p474c0.p475c.C11522d;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\f\bÆ\u0002\u0018��2\u00020\u0001:\u000223B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u000bJ\u0012\u0010+\u001a\u00020\u00042\b\u0010,\u001a\u0004\u0018\u00010\u0004H\u0007J\u000e\u0010-\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0004J\u000e\u0010.\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0004J \u0010/\u001a\u00020��2\u0006\u0010)\u001a\u00020\u00042\b\b\u0001\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��R\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040 X\u0082\u0004¢\u0006\u0004\n\u0002\u0010!R\u001a\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020$0#X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020&0#X\u0082\u000e¢\u0006\u0002\n��¨\u00064"}, m815d2 = {"Lgogolook/callgogolook2/util/analytics/SmsDialogNotificationEventCacheHelper;", "", "()V", "EVENT_WHOSCALL_SMS_DIALOG_NOTIFICATION", "", "KEY_ACTION", "KEY_INFO_SPEED", "KEY_STATUS", "KEY_TYPE", "KEY_VERSION", "VALUE_ACTION_BLOCK_VIA_NOTIFICATION", "", "VALUE_ACTION_CALL_VIA_DIALOG", "VALUE_ACTION_CLEAR_NOTIFICATION", "VALUE_ACTION_CLOSE_DIALOG", "VALUE_ACTION_COPY_OTP_VIA_DIALOG", "VALUE_ACTION_COPY_OTP_VIA_NOTIFICATION", "VALUE_ACTION_MARK_READ_VIA_NOTIFICATION", "VALUE_ACTION_OPEN_CONVERSATION_PAGE", "VALUE_ACTION_OPEN_NDP_VIA_DIALOG", "VALUE_ACTION_REPLY_VIA_NOTIFICATION", "VALUE_ACTION_REPORT", "VALUE_ACTION_REPORT_AGAIN", "VALUE_ACTION_REPORT_AS_NOT_SPAM", "VALUE_ACTION_REPORT_AS_SPAM", "VALUE_ACTION_SCAN_URL_VIA_NOTIFICATION", "VALUE_ACTION_SCAN_URL_VIA_NOTIFICATION_CTA", "VALUE_ACTION_UNBLOCK_VIA_NOTIFICATION", "VALUE_TYPE_DIALOG", "VALUE_TYPE_NOTIFICATION", "VALUE_TYPE_NOTIFICATION_WITH_METAPHOR_FOR_NON_DEFAULT", "eventKeys", "", "[Ljava/lang/String;", "tagToEventCacheMap", "Landroid/util/LruCache;", "Lgogolook/callgogolook2/util/analytics/SmsDialogNotificationEventCacheHelper$EventCacheHelper;", "tagToProbeMap", "Lgogolook/callgogolook2/util/debug/TimeProbe;", "commitCacheWithAction", "", NovaHomeBadger.TAG, "action", "getSmsTag", "conversationId", "startTimeProbe", "stopTimeProbe", "trackEventToCache", Person.KEY_KEY, SavedStateHandle.VALUES, "EventCacheHelper", "EventKey", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.x4.w */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/w.class */
public final class C14308w {

    /* renamed from: d */
    public static final C14308w f32062d = new C14308w();

    /* renamed from: a */
    public static final String[] f32059a = {"version", "type", "action", "info_speed", "default_sms_app_status"};

    /* renamed from: b */
    public static LruCache<String, C14309a> f32060b = new LruCache<>(5);

    /* renamed from: c */
    public static LruCache<String, C13930d> f32061c = new LruCache<>(5);

    /* renamed from: j.a.w0.x4.w$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/w$a.class */
    public static final class C14309a extends AbstractC14272h {
        @Override // p459j.p460a.p582w0.p590x4.AbstractC14272h
        /* renamed from: a */
        public void mo1618a(C14296p.C14297a.C14298a aVar) {
            C15149k.m377b(aVar, "builder");
            C14296p.m1830a("whoscall_sms_dialog_notification", aVar.m1811a());
        }

        @Override // p459j.p460a.p582w0.p590x4.AbstractC14272h
        /* renamed from: h */
        public String[] mo1617h() {
            C14308w wVar = C14308w.f32062d;
            return C14308w.f32059a;
        }
    }

    /* renamed from: c */
    public static final String m1622c(String str) {
        String a = C11522d.m9287a(":sms:", str);
        C15149k.m383a((Object) a, "BugleNotifications.build…TION_TAG, conversationId)");
        return a;
    }

    /* renamed from: a */
    public final C14308w m1624a(String str, String str2, int i) {
        synchronized (this) {
            C15149k.m377b(str, NovaHomeBadger.TAG);
            C15149k.m377b(str2, Person.KEY_KEY);
            C14309a aVar = f32060b.get(str);
            C14309a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = new C14309a();
            }
            aVar2.m1949a(str2, Integer.valueOf(i));
            f32060b.put(str, aVar2);
        }
        return this;
    }

    /* renamed from: a */
    public final void m1626a(String str) {
        synchronized (this) {
            C15149k.m377b(str, NovaHomeBadger.TAG);
            C13930d dVar = f32061c.get(str);
            C13930d dVar2 = dVar;
            if (dVar == null) {
                dVar2 = new C13930d();
                f32061c.put(str, dVar2);
            }
            dVar2.m3018e();
        }
    }

    /* renamed from: a */
    public final void m1625a(String str, int i) {
        synchronized (this) {
            C15149k.m377b(str, NovaHomeBadger.TAG);
            C14309a aVar = f32060b.get(str);
            if (aVar != null) {
                C13930d dVar = f32061c.get(str);
                if (dVar != null && dVar.m3020c()) {
                    aVar.m1949a("info_speed", Long.valueOf(dVar.m3025a()));
                }
                aVar.m1949a("version", 2);
                aVar.m1949a("action", Integer.valueOf(i));
                aVar.m1949a("default_sms_app_status", Integer.valueOf(C12810o.m5236i() ? 0 : 1));
                aVar.m1945c();
            }
        }
    }

    /* renamed from: b */
    public final void m1623b(String str) {
        synchronized (this) {
            C15149k.m377b(str, NovaHomeBadger.TAG);
            C13930d dVar = f32061c.get(str);
            if (dVar != null) {
                dVar.m3017f();
            }
        }
    }
}
