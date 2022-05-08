package com.tmobile.services.nameid.utility;

import android.content.Context;
import androidx.annotation.StringRes;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.utility.NotificationUtil;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmQuery;
import java.util.Date;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MessagingService.class */
public class MessagingService extends FirebaseMessagingService {
    /* renamed from: a */
    private static Caller m5560a(Context context, String str, String str2, Date date) {
        Realm G0 = Realm.m3064G0();
        try {
            final String d = PhoneNumberHelper.m5415d(str2);
            final Caller caller = new Caller();
            caller.setE164Number(d);
            caller.setDate(date);
            caller.setBucketId(CategorySetting.BucketId.CALL_BLOCKING.getValue());
            if (d.equals("0000000000")) {
                caller.setName(context.getString(C1517R.string.private_caller_name));
            } else {
                caller.setName(str);
            }
            if (!caller.isScammer() || Caller.shouldSuppressScam()) {
                caller.setCategorySuppressed(Caller.shouldSuppressCategory());
            } else {
                caller.setCategorySuppressed(false);
            }
            caller.setNameSuppressed(Caller.shouldSuppressName());
            caller.setNumberAsInput(str2);
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.o0
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    MessagingService.m5549l(d, caller, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
            return caller;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: b */
    private static Caller m5559b(Context context, String str, String str2, Date date, CallerSetting.Action action, int i, int i2, boolean z) {
        Realm G0 = Realm.m3064G0();
        try {
            String d = PhoneNumberHelper.m5415d(str2);
            final Caller caller = new Caller();
            caller.setE164Number(d);
            caller.setDate(date);
            caller.setBucketId(i2);
            if (!d.equals("0000000000") || i2 != CategorySetting.BucketId.NONE.getValue()) {
                caller.setName(str);
            } else {
                caller.setName(context.getString(C1517R.string.private_caller_name));
            }
            if (!caller.isScammer() || Caller.shouldSuppressScam()) {
                caller.setCategorySuppressed(Caller.shouldSuppressCategory());
            } else {
                caller.setCategorySuppressed(false);
            }
            caller.setNameSuppressed(Caller.shouldSuppressName());
            caller.setNumberAsInput(str2);
            final ActivityItem activityItem = new ActivityItem();
            activityItem.setDate(date);
            activityItem.setUnread(true);
            activityItem.setE164Number(d);
            activityItem.setId("notification" + date.getTime());
            activityItem.setControlNumber(i);
            if (!d.contains("0000000000") || i2 != CategorySetting.BucketId.NONE.getValue()) {
                activityItem.setName(str);
            } else {
                activityItem.setName(context.getString(C1517R.string.private_caller_name));
            }
            activityItem.setBucketId(i2);
            if (!z || action != CallerSetting.Action.APPROVED) {
                activityItem.setType(action.getValue());
            } else {
                activityItem.setType(ActivityItem.Type.APPROVED.getValue());
            }
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.n0
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    MessagingService.m5550k(ActivityItem.this, caller, realm);
                }
            });
            EventManager.m5722d(context, activityItem);
            if (G0 != null) {
                G0.close();
            }
            return caller;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: c */
    static boolean m5558c(boolean z, int i, CallerSetting.Action action) {
        LogUtil.m5643d("MessagingService#", "isPnb = " + z + " bucketId = " + i + " setting = " + action);
        StringBuilder sb = new StringBuilder();
        sb.append("PNB pref = ");
        sb.append(PreferenceUtils.m5395b("PREF_NOTIFICATION_BLOCK_LIST_BLOCKED", false));
        LogUtil.m5643d("MessagingService#", sb.toString());
        LogUtil.m5643d("MessagingService#", "Scam pref = " + PreferenceUtils.m5395b("PREF_NOTIFICATION_SCAM_BLOCKED", false));
        LogUtil.m5643d("MessagingService#", "Category pref = " + PreferenceUtils.m5395b("PREF_NOTIFICATION_CATEGORY_VOICEMAIL", false));
        if (z) {
            return action == CallerSetting.Action.BLOCKED ? PreferenceUtils.m5395b("PREF_NOTIFICATION_BLOCK_LIST_BLOCKED", false) : action != CallerSetting.Action.VOICEMAIL;
        }
        if (i == CategorySetting.BucketId.SCAM.getValue() || i == CategorySetting.BucketId.CALL_BLOCKING.getValue()) {
            if (action == CallerSetting.Action.BLOCKED) {
                return PreferenceUtils.m5395b("PREF_NOTIFICATION_SCAM_BLOCKED", true);
            }
            return false;
        } else if (action == CallerSetting.Action.VOICEMAIL) {
            return PreferenceUtils.m5395b("PREF_NOTIFICATION_CATEGORY_VOICEMAIL", false);
        } else {
            return false;
        }
    }

    /* renamed from: d */
    private static boolean m5557d() {
        boolean z = false;
        if (PreferenceUtils.m5395b("PREF_NOTIFICATION_MESSAGE_BLOCKED", false)) {
            z = false;
            if (Feature.PNB_MESSAGING.isOwned()) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: e */
    private static String m5556e(int i) {
        if (i <= 1) {
            return "";
        }
        return " (" + i + ")";
    }

    /* renamed from: f */
    private static void m5555f(String str, String str2, CallerSetting.Action action, Context context, int i, boolean z, Date date, int i2, boolean z2) {
        Caller b = m5559b(context, str, str2, date, action, i2, i, z2);
        boolean z3 = i == CategorySetting.BucketId.CALL_BLOCKING.getValue() || i == CategorySetting.BucketId.SCAM.getValue();
        if (Feature.CATEGORY_BLOCK.isOwned() || z3 || z) {
            String g = PhoneNumberHelper.m5412g(str2, "");
            String nameNoContact = b.getNameNoContact();
            Contact contact = b.getContact();
            NotificationFormatter scamNotificationFormatter = z3 ? new ScamNotificationFormatter(g, action, context, i) : z ? new PnbNotificationFormatter(g, nameNoContact, action, contact, context) : new CategoryNotificationFormatter(g, action, context, i, contact);
            String b2 = scamNotificationFormatter.mo5378b();
            String a = scamNotificationFormatter.mo5379a();
            String c = scamNotificationFormatter.mo5377c();
            if (!m5558c(z, i, action)) {
                LogUtil.m5632o("MessagingService#", "received notification but user has this specific notification disabled");
            } else {
                NotificationUtil.Facade.m5432a().m5431b(context, !b.isEmail() ? PhoneNumberHelper.m5415d(str2) : b.getE164Number(), b2, a, c, action, z, NotificationUtil.m5446k(str2), Feature.NOTIFICATION_HANDLERS.isOwned(), i);
            }
        } else {
            LogUtil.m5643d("MessagingService#formatNotification", "Returning, State is not premium, trial or scam");
        }
    }

    @StringRes
    /* renamed from: g */
    private static int m5554g(int i) {
        return i == 1 ? C1517R.string.notification_message_blocked : C1517R.string.notification_messages_blocked;
    }

    /* renamed from: h */
    private static void m5553h(Map<String, String> map, Context context) {
        if (map.containsKey("d")) {
            m5548m(map.get("d"), context);
        } else {
            LogUtil.m5643d("MessagingService#handleCallMessage", "Did not receive call log message field: d");
        }
    }

    /* renamed from: i */
    public static void m5552i(Map<String, String> map, Context context) {
        if (!map.isEmpty()) {
            LogUtil.m5632o("MessagingService#handleMessage", "Message payload:\n" + map.toString());
            if (map.containsKey("t")) {
                String lowerCase = map.get("t").toLowerCase();
                LogUtil.m5643d("MessagingService#handleMessage", "Message type: " + lowerCase);
                char c = 65535;
                int hashCode = lowerCase.hashCode();
                if (hashCode != 55) {
                    if (hashCode == 56 && lowerCase.equals("8")) {
                        c = 1;
                    }
                } else if (lowerCase.equals("7")) {
                    c = 0;
                }
                if (c == 0) {
                    m5553h(map, context);
                } else if (c == 1) {
                    m5551j(map, context);
                }
            }
        }
    }

    /* renamed from: j */
    private static void m5551j(Map<String, String> map, Context context) {
        if (Feature.PNB_MESSAGING.isOwned()) {
            if (map.containsKey("d")) {
                m5547n(map.get("d"), context);
            } else {
                LogUtil.m5643d("MessagingService#handleSmsBlockMessage", "Did not receive call log message field: d");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static /* synthetic */ void m5550k(ActivityItem activityItem, Caller caller, Realm realm) {
        RealmQuery Q0 = realm.m3053Q0(ActivityItem.class);
        Q0.m2885q("controlNumber", Integer.valueOf(activityItem.getControlNumber()));
        if (Q0.m2896f() == 0) {
            LogUtil.m5643d("MessagingService#addCallerIfNeeded", "Adding new caller to realm");
            Caller.storeInRealm(caller, realm);
            realm.m3045v0(activityItem, new ImportFlag[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static /* synthetic */ void m5549l(String str, Caller caller, Realm realm) {
        RealmQuery Q0 = realm.m3053Q0(Caller.class);
        Q0.m2882t("e164Number", str);
        if (Q0.m2896f() == 0) {
            LogUtil.m5643d("MessagingService#addCallerIfNeeded", "Adding new caller to Realm.");
            Caller.storeInRealm(caller, realm);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00d0, code lost:
        if ("not found".equalsIgnoreCase(r0) != false) goto L_0x00d3;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m5548m(java.lang.String r10, android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.MessagingService.m5548m(java.lang.String, android.content.Context):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x003f, code lost:
        if ("not found".equalsIgnoreCase(r0) != false) goto L_0x0042;
     */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m5547n(java.lang.String r8, android.content.Context r9) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.MessagingService.m5547n(java.lang.String, android.content.Context):void");
    }

    /* renamed from: o */
    private static void m5546o(String str, String str2, CallerSetting.Action action, int i, int i2, Date date, Context context) {
        String str3;
        String str4;
        if (!m5557d()) {
            LogUtil.m5632o("MessagingService#", "Received notification, but user has SMS blocking notification disabled.");
            return;
        }
        Caller a = m5560a(context, str, str2, date);
        String g = PhoneNumberHelper.m5412g(str2, "");
        String j = NotificationUtil.m5447j(str2);
        String str5 = str;
        if (j != null) {
            str5 = j.isEmpty() ? str : j;
        }
        String string = context.getString(m5554g(i));
        String e = m5556e(i);
        if (!str5.isEmpty()) {
            str3 = g + " - " + string + e;
            str4 = str5 + " - " + string + e;
        } else {
            str3 = string + e;
            str4 = g + " - " + string + e;
            str5 = g;
        }
        NotificationUtil.Facade.m5432a().m5430c(context, !a.isEmail() ? PhoneNumberHelper.m5415d(str2) : a.getE164Number(), str5, str3, str4, NotificationUtil.m5446k(str2));
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        LogUtil.m5643d("MessagingService#", "Message received! From: " + remoteMessage.getFrom() + " To: " + remoteMessage.getTo() + ", FCMType: " + remoteMessage.getMessageType());
        m5552i(remoteMessage.getData(), getApplicationContext());
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageSent(String str) {
        LogUtil.m5632o("MessagingService#", "Sent message " + str);
        super.onMessageSent(str);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onSendError(String str, Exception exc) {
        LogUtil.m5641f("MessagingService#", "Error sending FCM", exc);
        super.onSendError(str, exc);
    }
}
