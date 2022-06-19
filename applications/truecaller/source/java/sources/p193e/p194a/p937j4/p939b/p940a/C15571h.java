package p193e.p194a.p937j4.p939b.p940a;

import android.app.job.JobScheduler;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.huawei.updatesdk.service.otaupdate.UpdateDialogStatusCode;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ScreenDensity;
import com.truecaller.TrueApp;
import com.truecaller.buildinfo.BuildName;
import com.truecaller.filters.sync.FilterUploadWorker;
import com.truecaller.service.SyncPhoneBookService;
import com.truecaller.service.p176t9.RefreshT9MappingWorker;
import com.truecaller.settings.CallingSettings;
import com.truecaller.ugc.EnhancedSearchStateWorker;
import e.a.r.t.c;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.C20399t1;
import p193e.p194a.p1041l0.C17362o;
import p193e.p194a.p1066n.AbstractC18380m;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.p1118b2.C18953a;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p417k.C8502h;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p426p.p429h.C8561a;
import p193e.p194a.p372b0.p430q.C8588j;
import p193e.p194a.p372b0.p430q.C8604n;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p937j4.p939b.p941b.C15576b;
import q3.a.h1;
import q3.a.j0;
import q3.a.t0;
import s1.a.a.a.v0.f.d;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.j4.b.a.h */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/a/h.class */
public final class C15571h {

    /* renamed from: a */
    public static volatile boolean f44036a = false;

    /* renamed from: b */
    public static volatile SharedPreferences f44037b;

    /* renamed from: c */
    public static SharedPreferences.Editor f44038c;

    /* renamed from: A */
    public static void m18655A(Context context, C15576b c15576b) {
        m18627x("language", c15576b.f44042j.f26267b);
        m18652D(context);
    }

    /* renamed from: B */
    public static void m18654B(String str) {
        m18628w(str, System.currentTimeMillis());
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
        if (m18635p() == false) goto L18;
     */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m18653C() {
        /*
            e.a.b0.g.a r0 = p193e.p194a.p372b0.p411g.AbstractApplicationC8442a.m28551L()
            e.a.w1 r0 = (p193e.p194a.AbstractC21187w1) r0
            e.a.j2 r0 = r0.mo10154s()
            e.a.l.p2.v0 r0 = r0.mo11643f()
            r5 = r0
            java.lang.String r0 = "qaForceAds"
            boolean r0 = m18636o(r0)
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L64
            r0 = r7
            r6 = r0
            r0 = r5
            boolean r0 = r0.mo16408H()
            if (r0 != 0) goto L66
            java.lang.String r0 = "adsDisabledUntil"
            java.lang.Long r0 = m18639l(r0)
            long r0 = r0.longValue()
            r8 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L47
            long r0 = java.lang.System.currentTimeMillis()
            r1 = r8
            long r0 = r0 - r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L47
            r0 = 1
            r10 = r0
            goto L4a
        L47:
            r0 = 0
            r10 = r0
        L4a:
            r0 = r7
            r6 = r0
            r0 = r10
            if (r0 != 0) goto L66
            r0 = r7
            r6 = r0
            e.a.b0.g.a r0 = p193e.p194a.p372b0.p411g.AbstractApplicationC8442a.m28551L()
            boolean r0 = r0.mo28540W()
            if (r0 == 0) goto L66
            r0 = r7
            r6 = r0
            boolean r0 = m18635p()
            if (r0 != 0) goto L66
        L64:
            r0 = 1
            r6 = r0
        L66:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p937j4.p939b.p940a.C15571h.m18653C():boolean");
    }

    /* renamed from: D */
    public static void m18652D(Context context) {
        if (!f44037b.getBoolean("languageAuto", true)) {
            String m18647d = m18647d("language");
            String[] split = m18647d.split(AnalyticsConstants.DELIMITER_MAIN);
            C8502h.m28436b(context, split.length == 2 ? new Locale(split[0], split[1]) : new Locale(m18647d));
            return;
        }
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return;
        }
        m18627x("language", locale.getLanguage());
        C8502h.m28436b(context, locale);
    }

    /* renamed from: E */
    public static void m18651E(Context context) {
        boolean z = false;
        int m18641j = m18641j("global_settings_ver", 0);
        if (!(m18641j < 82)) {
            return;
        }
        AbstractApplicationC8442a abstractApplicationC8442a = (AbstractApplicationC8442a) context.getApplicationContext();
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) abstractApplicationC8442a).mo10154s();
        String m18646e = m18646e("version", "7.60");
        int m18641j2 = m18641j("VERSION_CODE", 0);
        CallingSettings mo12414d6 = mo10154s.mo12414d6();
        AbstractC21881d mo12143x4 = mo10154s.mo12143x4();
        AbstractC8541a mo12420d = mo10154s.mo12420d();
        mo10154s.mo11648b();
        if (m18646e.compareTo("2.99") < 0) {
            m18630u("GOOGLE_REVIEW_ASK_TIMESTAMP");
        }
        if (m18646e.compareTo(ScreenDensity.SD_300) < 0) {
            m18626y("clearTCHistory", true);
        }
        if (m18646e.compareTo("3.32") < 0) {
            mo12143x4.putInt("backupBatchSize", 100);
        }
        if (m18646e.compareTo(ScreenDensity.SD_400) < 0) {
            m18626y("notificationPush", true);
        }
        if (m18646e.compareTo("4.04") < 0) {
            m18654B("collaborativeUserTimestamp");
            AbstractC14840m mo11655T = mo10154s.mo11655T();
            boolean z2 = m18636o("CALL_FILTER_TOP") || m18636o("SMS_FILTER_TOP");
            if (m18636o("CALL_FILTER_UNKNOWN") || m18636o("SMS_FILTER_UNKNOWN")) {
                z = true;
            }
            mo11655T.mo19557k(z2);
            mo11655T.mo19558j(z);
        }
        if (m18646e.compareTo("4.10") < 0) {
            if (!m18636o("profileVerified") || C8588j.m28281h(context) == null) {
                m18628w("wizardStep", 0L);
            } else {
                c.Da(context, true);
            }
        }
        if (m18646e.compareTo("4.34") < 0 && h.j(m18647d("language"))) {
            m18655A(context, C15565c.m18677a(C15565c.f44028d));
        }
        if (m18646e.compareTo("4.40") < 0) {
            m18626y("hasShownWelcome", true);
            m18627x("countryHash", "37e8d09fd4a669e5d4b3337e926b76ce");
        }
        if (m18646e.compareTo("5.10") < 0) {
            C15569f c15569f = new C15569f(context);
            m18628w("notificationsSeenCount", ((TreeSet) c15569f.m18666n()).size() - c15569f.m18668l());
            m18630u("certValidationError");
            m18630u("toast");
            m18630u("theme_name");
            m18630u("toastDuration");
            m18628w("FEEDBACK_DISMISSED_COUNT", 0L);
            if (m18636o("GOOGLE_REVIEW_DONE")) {
                m18626y("FEEDBACK_LIKES_TRUECALLER", true);
            } else {
                m18626y("FEEDBACK_LIKES_TRUECALLER", false);
            }
            m18626y("HAS_SHARED", false);
        }
        if (m18646e.compareTo("5.30") < 0) {
            mo12414d6.putBoolean("clipboardSearchEnabled", true);
        }
        if (m18646e.compareTo("5.40") < 0) {
            context.deleteDatabase("truecaller.data.History.s3db");
            context.deleteDatabase("truecaller.data.CallersPb.s3db");
        }
        if (m18646e.compareTo("5.81") < 0) {
            context.deleteDatabase("TC.logview.3.11.s3db");
        }
        if (m18646e.compareTo("6.03") < 0) {
            context.deleteDatabase("BlockedSms.s3db");
            AbstractC14840m mo11655T2 = mo10154s.mo11655T();
            mo11655T2.mo19557k(m18642i("TOP_SPAMMERS_SETTINGS") > 0);
            mo11655T2.mo19558j(m18642i("UNKNOWN_SETTINGS") > 0);
            if (AbstractApplicationC8442a.m28551L().mo28540W()) {
                C8561a.m28386d(context);
            }
        }
        int i = m18641j;
        if (m18646e.compareTo("6.09") < 0) {
            Iterator<Map.Entry<String, ?>> it = context.getSharedPreferences("TC.settings.3.0.beta5", 0).getAll().entrySet().iterator();
            while (true) {
                i = m18641j;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, ?> next = it.next();
                String key = next.getKey();
                Object value = next.getValue();
                if (value instanceof String) {
                    m18627x(key, (String) value);
                } else if (value instanceof Boolean) {
                    m18626y(key, ((Boolean) value).booleanValue());
                } else if (value instanceof Long) {
                    m18628w(key, ((Long) value).longValue());
                } else if (value instanceof Integer) {
                    m18628w(key, ((Integer) value).intValue());
                }
            }
        }
        if (m18646e.compareTo("6.17") < 0) {
            if (m18642i("wizardStep") >= 3) {
                c.Da(context, true);
            }
            context.deleteDatabase("truecaller.data.NameSuggestion.s3db");
            Locale m28443f = abstractApplicationC8442a.m28549N().mo12726G().m28443f();
            m18626y("languageAuto", m28443f != null && h.e(C15565c.m18677a(m28443f).f44042j.f26267b, m18647d("language")));
            if (AbstractApplicationC8442a.m28551L().mo28540W()) {
                mo10154s.mo12712H0().mo19521d();
            }
        }
        if (m18646e.compareTo("6.21") < 0) {
            context.deleteDatabase("truecaller.data.cms.s3db");
        }
        if (m18646e.compareTo("6.24") < 0) {
            C8561a.m28386d(context);
        }
        if (m18646e.compareTo("6.50") < 0) {
            if (TextUtils.equals(mo12420d.getString("profileAcceptAuto"), "1")) {
                mo12420d.putString("profileAcceptAuto", DtbConstants.NETWORK_TYPE_UNKNOWN);
            }
            mo12414d6.putInt("blockCallMethod", C19231g0.m13806K(m18647d("blockCallMode")));
            m18630u("blockCallMode");
        }
        if (m18646e.compareTo("7.00") < 0) {
            m18630u("DISPLAY_CALL_TAB");
        }
        if (m18646e.compareTo("7.01") < 0) {
            m18630u("CHECK_DEVICE_ID");
        }
        if (m18646e.compareTo("7.30") < 0) {
            context.deleteDatabase("adKeywords.db");
            m18626y("hasShownWelcome", false);
        }
        if (m18646e.compareTo("7.50") < 0) {
            m18630u("INMOBI_ID");
            m18630u("INVITE_PEOPLE_LAST_DISMISSED");
            m18630u("INVITE_PEOPLE_DISMISSED");
            m18630u("clearNativeCallLog");
            m18630u("nudgeEnableTopSpammersCounter");
            m18630u("blockHintCounter");
            m18630u("updatePhonebookJobLastRun");
            m18630u("linkedinLoggedIn");
            m18630u("firstSearchDone");
            m18630u("counterLoyalUser");
            m18630u("dualSimSlotId");
            m18630u("dualSimProviderField");
            m18630u("dualSimProviderIndexing");
            m18630u("ui_lang");
            m18630u("counterLoyalUser");
            m18630u("click_item_action_dialer");
            m18630u("multi_sim_call_log_sim_field");
            m18630u("multi_sim_call_log_sim_indexing");
            m18630u("selected_theme");
            m18630u("has_cleared_using_backspace_count");
            m18630u("hasShownRatingDialog");
            m18630u("ratingDialogDate");
            m18630u("hasShownInviteDialog");
            m18630u("inviteDialogDate");
            m18630u("hasPlusOned");
            m18630u("plusOneDialogDate");
            m18630u("force_show_rate");
            m18630u("force_show_invite");
            m18630u("force_show_google_plus");
            context.deleteDatabase("truecaller.data.CommonConnectionsListDao.s3db");
            context.deleteDatabase("truecaller.data.Whitelist.s3db");
        }
        if (m18641j2 <= 435) {
            m18627x("version", "12.21.6");
            context.deleteDatabase("truecaller.data.LogCounterEvent.s3db");
            context.deleteDatabase("truecaller.data.LogEvent.s3db");
            m18629v("batchLoggingBatchId");
            m18629v("batchLoggingBatchSize");
            m18629v("checkIfLogEventCountersLastRun");
            m18629v("key_show_ringtone_onboarding");
            m18626y("enhancedNotificationsEnabled", true);
            m18627x("callLogTapBehavior", "call");
            mo12414d6.remove("lastCallMadeWithTcTime");
            mo12414d6.remove("lastDialerPromotionTime");
            m18629v("dialerTipsShownCount");
        }
        if (m18641j2 < 450) {
            m18626y("showMissedCallsNotifications", TrueApp.m36032b0().mo10154s().mo11647c().mo13831b());
            m18629v("showAlternativeMissedCallNotification");
            m18629v("removeDoubleMissedCallNotifications");
        }
        if (m18641j2 < 454) {
            m18626y("showMissedCallReminders", true);
        }
        if (m18641j2 < 1300) {
            m18630u("blockUpdateLastPressed");
            m18630u("blockUpdateLastPerformed");
            m18630u("blockUpdateCount");
            m18630u("blockUpdateCountLastIncremented");
            m18630u("regionCode");
            m18630u("TC_SEARCH_TIMESTAMP");
            m18630u("callerIdTheme");
            if (C17362o.m16183e(context)) {
                mo10154s.mo12471Z0().mo11854a().mo16228t();
            }
        }
        if (m18641j2 < 1314) {
            m18630u("last_successful_availability_update");
            m18630u("last_successful_time_zone_update");
            m18630u("key_busy_reason");
        }
        if (m18641j2 < 1318) {
            SyncPhoneBookService.m34744a(context, true);
        }
        if (m18641j2 < 1335) {
            mo12420d.putBoolean("flash_disabled", mo12420d.getBoolean("availability_disabled"));
            File databasePath = context.getDatabasePath("missed_calls.db");
            if (databasePath.exists()) {
                databasePath.delete();
            }
            File databasePath2 = context.getDatabasePath("missed_calls.db-journal");
            if (databasePath2.exists()) {
                databasePath2.delete();
            }
        }
        if (m18641j2 == 1335 || m18641j2 == 1336) {
            for (int i2 = 0; i2 < 2; i2++) {
                String str = new String[]{"afterCallWarnFriends", "afterCallPromoteTcCounter"}[i2];
                try {
                    int i3 = f44037b.getInt(str, Integer.MIN_VALUE);
                    if (i3 != Integer.MIN_VALUE) {
                        f44037b.edit().putLong(str, i3).apply();
                    }
                } catch (ClassCastException e) {
                }
            }
        }
        if (m18641j2 <= 1340) {
            m18630u("blockCount");
        }
        if (m18641j2 <= 1358) {
            m18630u("FEEDBACK_PLUS_ONE_FIRST_CHECKED");
            m18630u("FEEDBACK_PLUS_ONE_DONE");
            m18630u("FEEDBACK_PLUS_ONE_DISMISS_COUNT");
        }
        if (i < 1) {
            new C15574j(context).mo18673c(true);
            m18630u("PROFILE_MANUALLY_DEACTIVATED");
            m18630u("updatePhonebookTimestamp");
            m18630u("updatePhonebookEnabled");
            m18630u("syncPictures");
            m18630u("syncPicturesOverwrite");
            m18630u("facebookFriendsTimestamp");
            m18630u("linkedinFriendsTimestamp");
            m18630u("googleFriendsTimestamp");
            m18630u("twitterFriendsTimestamp");
            m18630u("whatsNewDialogShownTimestamp");
            m18630u("whatsNewDialogShownTimes");
            m18630u("key_has_shown_default_dialer_sticky");
            m18630u("showDefaultDialerPopupAfterDial");
            m18630u("forceDefaultDialerPopup");
            m18630u("key_has_shown_truecaller_notification");
            m18630u("key_force_show_truecaller_notification");
            m18630u("key_truecaller_notification_click_count");
            m18630u("key_has_shown_identify_unknown_senders");
            m18630u("last_banner_dismiss_timestamp");
            context.deleteDatabase("TC.friend.2.90.s3db");
            context.deleteDatabase("truecaller.data.automataStorage.s3db");
            m18630u("featureDisableOnboarding");
            m18630u("dialerPromotionStartTime");
            m18630u("callerIdHintCount");
        }
        if (i < 2) {
            m18630u("suppressAftercall");
            m18630u("callerIdDialerPromoFirstShow");
            m18630u("callerIdDialerPromoLastShow");
        }
        if (i < 3) {
            m18630u("referralsDisabledUntil");
        }
        if (i < 5) {
            C18334g0.m15214n0("shortcutsInboxShownTimes");
            C18334g0.m15214n0("general_requestPinMessagesShortcutShown");
        }
        if (i < 6) {
            C18334g0.m15214n0("HAS_INVITED");
        }
        if (i < 7) {
            C18334g0.m15194x0("PromoReferralDismissCount", m18642i("Promo{Referral}DismissCount"));
            C18334g0.m15194x0("PromoDefaultsmsDismissCount", m18642i("Promo{Defaultsms}DismissCount"));
            C18334g0.m15194x0("PromoBuyproDismissCount", m18642i("Promo{Buypro}DismissCount"));
            C18334g0.m15214n0("Promo{Referral}DismissCount");
            C18334g0.m15214n0("Promo{Defaultsms}DismissCount");
            C18334g0.m15214n0("Promo{Buypro}DismissCount");
            C18334g0.m15214n0("home_screen_banner_close_count");
        }
        if (i < 8) {
            m18629v("lastDialerPromotionInteractionTime_onboarding");
            m18629v("lastDialerPromotionInteractionTime_frequentlyCalled");
            m18629v("lastDialerPromotionInteractionTime_missed");
            m18629v("lastDialerPromotionInteractionTime_outgoingUnanswered");
            m18629v("lastDialerPromotionInteractionTime_incoming");
        }
        if (i < 9) {
            ((AbstractC18380m) ((C20399t1.C20403c) AbstractC17399l2.f48744a.m16142a().mo11178f()).f57362t.get()).mo15069l();
        }
        if (i < 10) {
            m18629v("profileNumberBackEnd");
        }
        if (i < 11) {
            String m15251Q = C18334g0.m15251Q("wizard_StartPage");
            if (m15251Q.equals("Page_CallVerification") || m15251Q.equals("Page_SmsVerification")) {
                C18334g0.m15214n0("wizard_StartPage");
            }
        }
        if (i < 12) {
            mo12420d.remove("featureAdUnifiedSearchHistory");
            mo12420d.remove("featureAdUnifiedBlock");
            mo12420d.remove("featureAdUnifiedCallLog");
            mo12420d.remove("featureAdUnifiedInbox");
        }
        if (i < 13) {
            mo12420d.remove("presenceSettingNeedSync");
        }
        if (i < 15) {
            RefreshT9MappingWorker.m34740n();
        }
        if (i < 16) {
            mo12420d.remove("featureBusinessSuggestion");
        }
        if (i < 17) {
            m18629v("HeartBeatLastTime");
        }
        if (i < 18) {
            mo12420d.remove("filter_scheduledFilterSyncingEnabled");
            mo12420d.remove("filter_settingsLastVisitTimestamp");
        }
        if (i < 19) {
            mo12414d6.putBoolean("whatsAppCallsEnabled", true);
        }
        if (i < 20) {
            mo12420d.remove("filter_filterJustActivated");
        }
        if (i < 21) {
            m18629v("call_counter");
            m18629v("lastCallMeBackTime");
            m18629v("MsgMastSyncTime");
        }
        if (i < 23) {
            m18629v("backupWhatsNewShown");
        }
        if (i < 24) {
            m18629v("featureShowOptInReadMore");
        }
        if (i < 25) {
            m18629v("debugLoggingUploadTriggered");
            m18629v("lastTracingFeatureTime");
        }
        if (i < 26) {
            m18629v("initializeJobLastRun");
        }
        if (i < 27) {
            m18629v("EmojiBarTipWasShown");
            m18629v("EmojiBarEverUsed");
            m18629v("ConversationScreenOpenCount");
        }
        if (i < 28) {
            if (m18643h("backupNeedsSync")) {
                EnhancedSearchStateWorker.m34601n(m18643h("backupSyncValue"), context);
            }
            m18629v("backupNeedsSync");
            m18629v("backupSyncValue");
        }
        if (i < 29) {
            m18629v("UNUSED_DIRECTORIES_DELETED_ON_UPGRADE");
        }
        if (i < 30) {
            FilterUploadWorker.m35426n(context);
            m18629v("filter_filtersRestored");
        }
        if (i < 31) {
            m18629v("imTooltipShown");
        }
        if (i < 32) {
            mo10154s.mo12224r4().mo11854a().mo30896d(true, true);
        }
        if (i < 33) {
            context.deleteDatabase("tcQuick.db");
            context.deleteDatabase("tcInstant.db");
        }
        if (i < 34) {
            mo10154s.mo12708H4().mo16475c();
        }
        if (i < 35) {
            C21782c.m9085a(C26702l.m1431n(context), "ContactsPremiumStatusFetchWorkAction", context);
        }
        if (i < 37) {
            mo10154s.mo12564S0().mo29698b();
        }
        if (i < 38) {
            m18629v("key_call_alert_promo_shown");
        }
        if (i < 39) {
            mo12414d6.remove("contactListPromoteBackupCount");
            mo12420d.putBoolean("restoreOnboardingShown", true);
        }
        if (i < 41) {
            m18629v("showDefaultSmsScreen");
            m18629v("imPromo");
        }
        if (i < 42) {
            m18629v("imGifDisplayType");
            m18629v("imGifPreviewType");
        }
        if (i < 43) {
            m18629v("voiceClipOnboardingTIpShown");
        }
        if (i < 44) {
            mo10154s.mo12453a7().mo11854a().mo31705V(false, Collections.singleton(5));
        }
        if (i < 45) {
            try {
                ((JobScheduler) context.getSystemService("jobscheduler")).cancel(UpdateDialogStatusCode.SHOW);
            } catch (Exception e2) {
            }
        }
        if (i < 46) {
            mo12414d6.putBoolean("afterCallForPbContacts", m18643h("afterCall"));
        }
        if (i < 49) {
            mo12420d.putBoolean("deleteBackupDuplicates", true);
            mo10154s.mo12453a7().mo11854a().mo31705V(false, Collections.singleton(4));
        }
        if (i < 50) {
            mo12420d.remove("subscriptionStatusChangedIsFreeTrial");
            m18630u("qaEngagementRewardEnv");
            m18630u("qa_engagement_reward_state");
            context.getSharedPreferences("EngagementRewards", 0).edit().clear().apply();
        }
        if (i < 51) {
            m18629v("fcmRegisteredOnServer");
        }
        if (i < 52) {
            m18629v("alwaysDownloadImages");
        }
        if (i < 53) {
            l.e(context, AnalyticsConstants.CONTEXT);
            d.w2(h1.a, t0.d, (j0) null, new C18953a(context, null), 2, (Object) null);
        }
        if (i < 54) {
            m18629v("pendingSpamProtectionOffNotificationsCount");
            m18629v("latestSpamProtectionOffNotificationShowtime");
        }
        if (i < 56) {
            HashSet hashSet = new HashSet();
            hashSet.add(4);
            hashSet.add(0);
            mo10154s.mo12453a7().mo11854a().mo31705V(false, hashSet);
        }
        if (i < 57) {
            mo10154s.mo12565S().mo31009q2(true);
        }
        if (i < 58) {
            m18629v("translatedAtLeastOnce");
        }
        if (i < 59) {
            mo12420d.putBoolean("deleteBackupDuplicates", true);
            mo10154s.mo12453a7().mo11854a().mo31705V(false, Collections.singleton(4));
        }
        if (i < 60) {
            l.e(context, AnalyticsConstants.CONTEXT);
            C26702l m1431n = C26702l.m1431n(context);
            l.d(m1431n, "WorkManager.getInstance(context)");
            C21782c.m9083c(m1431n, "FetchSearchWarningsWorkAction", context, null, null, 12);
        }
        if (i < 61) {
            m18629v("groupChatsUnavailablePromo");
        }
        if (i < 62) {
            m18629v("messageSignature");
        }
        if (i < 63) {
            m18629v("hasCompletedTcxOnboarding");
            m18629v("tcxPromoDismissCount");
            m18629v("tcxPromoDismissDate");
            m18629v("tcxPromoImpressionCount");
            m18629v("tcxOnboardingTooltipId");
            m18629v("tcxOnboardingTooltipDismissTime");
        }
        if (i < 64) {
            mo10154s.mo12224r4().mo11854a().mo30884p().mo11828g();
        }
        if (i < 65) {
            new C15570g(context).m18657f(1);
        }
        if (i < 66) {
            m18629v("showAfterCallForPBContacts");
        }
        if (i < 67) {
            RefreshT9MappingWorker.m34740n();
        }
        if (i < 68) {
            mo12420d.putBoolean("deleteBackupDuplicates", true);
            mo10154s.mo12453a7().mo11854a().mo31705V(false, Collections.singleton(4));
        }
        if (i < 69) {
            mo12420d.putBoolean("deleteBackupDuplicates", true);
            HashSet hashSet2 = new HashSet();
            hashSet2.add(4);
            hashSet2.add(0);
            mo10154s.mo12453a7().mo11854a().mo31705V(false, hashSet2);
        }
        if (i < 70) {
            mo12420d.putBoolean("messageLinksMigrated", false);
        }
        if (i < 71) {
            m18629v("getUrlSpamScoreThreshold");
            C19291g.m13543i1(new File(context.getFilesDir(), "whitelisted_urls.json"));
        }
        if (i < 72) {
            if (mo10154s.mo12565S().mo30971y() == 0) {
                m18629v("manualCleanupSpamPeriod");
            }
            if (mo10154s.mo12565S().mo31151R1() == 0) {
                m18629v("manualCleanupOtpPeriod");
            }
        }
        if (i < 73) {
            m18629v("notDefaultSmsBadgeShown");
        }
        if (i < 74) {
            m18629v("hasTruedialerIntegration");
        }
        if (i < 75) {
            m18629v("key_add_account_sticky_times");
            m18629v("key_add_account_sticky_last_time");
        }
        if (i < 78) {
            m18626y("messagesShortcutInstalled", true);
        }
        if (i < 79) {
            m18629v("historyMessagesTcYMigrated");
            if (i >= 76) {
                mo10154s.mo12565S().mo31070g1(false);
            }
        }
        if (i < 80) {
            m18629v("scheduleSmsPromo");
            m18629v("featurePromoSpamOffCount");
        }
        if (i < 81) {
            m18629v("mdauPromoShownTimes");
            m18629v("mdauPromoShownTimestamp");
        }
        if (i < 82) {
            mo10154s.mo12565S().mo31203H(false);
        }
        m18628w("global_settings_ver", 82L);
    }

    /* renamed from: a */
    public static void m18650a() {
        f44036a = false;
        f44038c.apply();
    }

    /* renamed from: b */
    public static boolean m18649b(String str) {
        return f44037b.contains(str);
    }

    /* renamed from: c */
    public static boolean m18648c(String str, long j) {
        return System.currentTimeMillis() - m18639l(str).longValue() > j;
    }

    /* renamed from: d */
    public static String m18647d(String str) {
        return m18646e(str, "");
    }

    /* renamed from: e */
    public static String m18646e(String str, String str2) {
        return f44037b.getString(str, str2);
    }

    /* renamed from: f */
    public static String m18645f(String str) {
        return C22128a.m8725C2("truecaller.alarm.notification.", str, ".fired");
    }

    /* renamed from: g */
    public static long m18644g(String str) {
        return m18639l("truecaller.alarm.notification." + str + ".set").longValue();
    }

    /* renamed from: h */
    public static boolean m18643h(String str) {
        return f44037b.getBoolean(str, false);
    }

    /* renamed from: i */
    public static int m18642i(String str) {
        return (int) f44037b.getLong(str, 0L);
    }

    /* renamed from: j */
    public static int m18641j(String str, int i) {
        return (int) f44037b.getLong(str, i);
    }

    /* renamed from: k */
    public static int m18640k(Context context) {
        String m18647d = m18647d("dialpad_feedback_index_str");
        String str = m18647d;
        if (TextUtils.isEmpty(m18647d)) {
            str = "-1";
        }
        int intValue = Integer.valueOf(str).intValue();
        int i = intValue;
        if (intValue == -1) {
            i = Settings.System.getInt(context.getContentResolver(), "haptic_feedback_enabled", 1);
            m18627x("dialpad_feedback_index_str", String.valueOf(i));
        }
        return i;
    }

    /* renamed from: l */
    public static Long m18639l(String str) {
        return Long.valueOf(f44037b.getLong(str, 0L));
    }

    /* renamed from: m */
    public static String m18638m() {
        return f44037b.getString("t9_lang", "auto");
    }

    /* renamed from: n */
    public static void m18637n(Context context) {
        Throwable th;
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase openOrCreateDatabase;
        f44037b = context.getSharedPreferences("tc.settings", 0);
        f44038c = f44037b.edit();
        AbstractC15539j2 mo10154s = TrueApp.m36032b0().mo10154s();
        CallingSettings mo12414d6 = mo10154s.mo12414d6();
        AbstractC21881d mo12143x4 = mo10154s.mo12143x4();
        if (m18636o("defaultsLoaded")) {
            m18651E(context);
            return;
        }
        m18628w("VERSION_CODE", 1221006L);
        m18627x("osVersion", Build.VERSION.RELEASE);
        m18628w("global_settings_ver", 82L);
        mo12143x4.putLong("key_init_timestamp", System.currentTimeMillis());
        mo12414d6.putBoolean("clipboardSearchEnabled", true);
        mo12414d6.putBoolean("afterCall", true);
        mo12414d6.putBoolean("afterCallForPbContacts", true);
        m18626y("notificationPush", true);
        m18655A(context, C15565c.m18677a(C15565c.f44028d));
        m18626y("clearTCHistory", true);
        mo12143x4.putInt("backupBatchSize", 100);
        m18627x("countryHash", "37e8d09fd4a669e5d4b3337e926b76ce");
        m18654B("collaborativeUserTimestamp");
        mo12143x4.putInt("whatsNewDialogShownRevision", 30);
        m18628w("addPhotoBadgeTimestamp", System.currentTimeMillis() + 604800000);
        m18626y("languageAuto", true);
        m18626y("enhancedNotificationsEnabled", true);
        m18626y("showMissedCallsNotifications", true);
        m18627x("callLogTapBehavior", "call");
        m18626y("showMissedCallReminders", false);
        SharedPreferences sharedPreferences = f44037b;
        if (context.getDatabasePath("TC.settings.3.0.beta5.s3db").exists()) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                openOrCreateDatabase = context.openOrCreateDatabase("TC.settings.3.0.beta5.s3db", 0, null);
            } catch (Throwable th2) {
                th = th2;
                sQLiteDatabase = null;
            }
            try {
                Cursor query = openOrCreateDatabase.query(AnalyticsConstants.PREFERENCES, new String[]{AnalyticsConstants.KEY, "value", "type"}, null, null, null, null, null);
                while (true) {
                    cursor2 = query;
                    if (!query.moveToNext()) {
                        break;
                    }
                    String string = query.getString(0);
                    byte[] blob = query.getBlob(1);
                    int i = query.getInt(2);
                    DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(blob));
                    if (i == 2) {
                        edit.putLong(string, dataInputStream.readInt());
                    } else if (i == 4) {
                        edit.putLong(string, dataInputStream.readLong());
                    } else if (i == 8) {
                        edit.putFloat(string, dataInputStream.readFloat());
                    } else if (i == 16) {
                        edit.putBoolean(string, dataInputStream.readBoolean());
                    } else if (i == 32) {
                        try {
                            edit.putString(string, dataInputStream.readUTF());
                        } catch (IOException e) {
                            C10480a.m26061I1(new IOException("Failed to read value with key " + string + " from DB prefs", e));
                        }
                    }
                    C12864a2.m22543o(dataInputStream);
                }
                edit.commit();
                query.close();
                openOrCreateDatabase.close();
                context.deleteDatabase("TC.settings.3.0.beta5.s3db");
                m18651E(context);
            } catch (Throwable th3) {
                th = th3;
                cursor = cursor2;
                sQLiteDatabase = openOrCreateDatabase;
                edit.commit();
                if (cursor != null) {
                    cursor.close();
                }
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
                context.deleteDatabase("TC.settings.3.0.beta5.s3db");
                m18651E(context);
                throw th;
            }
        }
        mo10154s.mo12314k7().mo21254o(true);
        m18626y("defaultsLoaded", true);
    }

    /* renamed from: o */
    public static boolean m18636o(String str) {
        return f44037b.getBoolean(str, false);
    }

    /* renamed from: p */
    public static boolean m18635p() {
        return BuildName.toBuildName(AbstractApplicationC8442a.m28551L().m28549N().mo12175v().getName()) == BuildName.WILEYFOX;
    }

    /* renamed from: q */
    public static boolean m18634q() {
        AbstractC8541a mo12420d = ((AbstractC21187w1) AbstractApplicationC8442a.m28551L()).mo10154s().mo12420d();
        boolean z = false;
        if (mo12420d.getBoolean("featureAvailability", false)) {
            z = false;
            if (!mo12420d.getBoolean("availability_disabled")) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: r */
    public static boolean m18633r(String str, long j) {
        return m18639l(str).longValue() >= j;
    }

    /* renamed from: s */
    public static boolean m18632s() {
        AbstractC8541a mo12420d = ((AbstractC21187w1) AbstractApplicationC8442a.m28551L()).mo10154s().mo12420d();
        boolean z = false;
        if (mo12420d.getBoolean("featureFlash", false)) {
            z = false;
            if (!mo12420d.getBoolean("flash_disabled")) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: t */
    public static boolean m18631t(Context context) {
        return C8604n.m28240e(context);
    }

    /* renamed from: u */
    public static void m18630u(String str) {
        f44038c.remove(str);
        if (f44036a) {
            return;
        }
        m18650a();
    }

    /* renamed from: v */
    public static void m18629v(String str) {
        if (!f44037b.contains(str)) {
            return;
        }
        f44038c.remove(str);
        if (f44036a) {
            return;
        }
        m18650a();
    }

    /* renamed from: w */
    public static void m18628w(String str, long j) {
        f44038c.putLong(str, j);
        if (f44036a) {
            return;
        }
        m18650a();
    }

    /* renamed from: x */
    public static void m18627x(String str, String str2) {
        f44038c.putString(str, str2);
        if (f44036a) {
            return;
        }
        m18650a();
    }

    /* renamed from: y */
    public static void m18626y(String str, boolean z) {
        f44038c.putBoolean(str, z);
        if (f44036a) {
            return;
        }
        m18650a();
    }

    /* renamed from: z */
    public static void m18625z(String str, long j) {
        m18628w("truecaller.alarm.notification." + str + ".set", j);
        m18626y(m18645f(str), false);
    }
}
