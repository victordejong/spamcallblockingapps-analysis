package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.NonNull;
import com.facebook.stetho.server.http.HttpStatus;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.NetworkChecks;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import okhttp3.internal.p012ws.WebSocketProtocol;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/AnalyticsWrapper.class */
public class AnalyticsWrapper {

    /* renamed from: com.tmobile.services.nameid.utility.AnalyticsWrapper$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/AnalyticsWrapper$1.class */
    static /* synthetic */ class C18931 {

        /* renamed from: a */
        static final /* synthetic */ int[] f14234a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            int[] iArr = new int[SubscriptionHelper.State.values().length];
            f14234a = iArr;
            try {
                iArr[SubscriptionHelper.State.PENDING_PREMIUM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14234a[SubscriptionHelper.State.PREMIUM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14234a[SubscriptionHelper.State.PENDING_TRIAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14234a[SubscriptionHelper.State.TRIAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f14234a[SubscriptionHelper.State.REDUCED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f14234a[SubscriptionHelper.State.PENDING_REDUCED_METRO.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f14234a[SubscriptionHelper.State.REDUCED_METRO.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f14234a[SubscriptionHelper.State.PENDING_REDUCED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/AnalyticsWrapper$CallResolutionType.class */
    private enum CallResolutionType {
        UNKNOWN,
        ANSWERED,
        BLOCKED,
        DECLINED,
        MISSED,
        VM
    }

    private AnalyticsWrapper() {
        throw new IllegalAccessError("This is a utility class, it should not be created.");
    }

    /* renamed from: A */
    public static void m5887A(@Nonnull String str, @Nonnull String str2, @Nonnull String str3) {
        m5883E(str, AnalyticsHelper.m5905a(str2, str3));
    }

    /* renamed from: B */
    public static void m5886B(@Nonnull String str) {
        m5883E(str, AnalyticsHelper.m5904b("PNB-4"));
    }

    /* renamed from: C */
    public static void m5885C(@Nonnull String str, int i) {
        m5884D(str, AnalyticsHelper.m5902d(i));
    }

    /* renamed from: D */
    public static void m5884D(@Nonnull String str, @Nonnull String str2) {
        m5883E(str, AnalyticsHelper.m5904b(str2));
    }

    /* renamed from: E */
    public static void m5883E(@Nonnull String str, @Nonnull String str2) {
        StringBuilder sb = new StringBuilder(50);
        m5878b(sb, Long.valueOf(System.currentTimeMillis()));
        m5878b(sb, str);
        m5878b(sb, str2);
        AnalyticsSender.m5896f().m5899c(203, sb.toString(), false);
    }

    /* renamed from: F */
    public static void m5882F(@Nonnull String str) {
        m5883E(str, AnalyticsHelper.m5903c("PNB-4"));
    }

    /* renamed from: G */
    public static void m5881G(@Nonnull String str, int i) {
        m5880H(str, AnalyticsHelper.m5902d(i));
    }

    /* renamed from: H */
    public static void m5880H(@Nonnull String str, @Nonnull String str2) {
        m5883E(str, AnalyticsHelper.m5903c(str2));
    }

    /* renamed from: a */
    public static void m5879a(String str, String str2, String str3, String str4, String str5, String str6) {
        StringBuilder sb = new StringBuilder();
        m5878b(sb, str);
        m5878b(sb, str2);
        m5878b(sb, str3);
        m5878b(sb, str4);
        m5878b(sb, str5);
        m5878b(sb, str6);
        AnalyticsSender.m5896f().m5899c(201, sb.toString(), false);
    }

    /* renamed from: b */
    private static void m5878b(StringBuilder sb, Object obj) {
        m5877c(sb, obj, '|');
    }

    /* renamed from: c */
    private static void m5877c(StringBuilder sb, Object obj, char c) {
        if (sb.length() > 0) {
            sb.append(c);
        }
        sb.append(obj);
    }

    /* renamed from: d */
    public static void m5876d(@NonNull String str, int i, int i2, int i3, int i4) {
        String str2;
        String str3;
        StringBuilder sb = new StringBuilder();
        Context l = MainApplication.m7528l();
        String str4 = "0";
        if (l != null) {
            str3 = NetworkChecks.f14407b.m5479d(l, NetworkChecks.NetworkType.Mobile.f14410b) ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0";
            str2 = NetworkChecks.f14407b.m5479d(l, NetworkChecks.NetworkType.Wifi.f14412b) ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0";
            if (NetworkChecks.f14407b.m5479d(l, NetworkChecks.NetworkType.VPN.f14411b)) {
                str4 = TmoUserStatus.CUSTOMER_TYPE_POSTPAID;
            }
        } else {
            str2 = "0";
            str3 = str4;
            str4 = "0";
        }
        m5878b(sb, str);
        m5878b(sb, Long.valueOf(System.currentTimeMillis()));
        m5878b(sb, Integer.valueOf(i));
        m5878b(sb, str3);
        m5878b(sb, str2);
        m5878b(sb, str4);
        m5878b(sb, Integer.valueOf(i2));
        m5878b(sb, Integer.valueOf(i3));
        m5878b(sb, Integer.valueOf(i4));
        AnalyticsSender.m5896f().m5899c(124, sb.toString(), true);
    }

    /* renamed from: e */
    public static void m5875e(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4, @NonNull String str5) {
        String str6;
        String str7;
        StringBuilder sb = new StringBuilder();
        Context l = MainApplication.m7528l();
        String str8 = TmoUserStatus.CUSTOMER_TYPE_POSTPAID;
        String str9 = (l == null || Build.VERSION.SDK_INT < 22 || !((TelephonyManager) l.getSystemService("phone")).hasCarrierPrivileges()) ? "0" : TmoUserStatus.CUSTOMER_TYPE_POSTPAID;
        if (l != null) {
            str7 = NetworkChecks.f14407b.m5479d(l, NetworkChecks.NetworkType.Mobile.f14410b) ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0";
            str6 = NetworkChecks.f14407b.m5479d(l, NetworkChecks.NetworkType.Wifi.f14412b) ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0";
            if (!NetworkChecks.f14407b.m5479d(l, NetworkChecks.NetworkType.VPN.f14411b)) {
                str8 = "0";
            }
        } else {
            str6 = "0";
            str7 = "0";
            str8 = "0";
        }
        String g0 = TmoApiWrapper.m6640g0(str4);
        String str10 = g0;
        if (g0 == null) {
            str10 = "";
        }
        String substring = str4.length() >= 4 ? str4.substring(str4.length() - 4) : "";
        m5878b(sb, str);
        m5878b(sb, Long.valueOf(System.currentTimeMillis()));
        m5878b(sb, "0");
        m5878b(sb, str7);
        m5878b(sb, str6);
        m5878b(sb, str8);
        m5878b(sb, str2);
        m5878b(sb, str5);
        m5878b(sb, str9);
        m5878b(sb, "");
        m5878b(sb, str3);
        m5878b(sb, str10);
        m5878b(sb, substring);
        AnalyticsSender.m5896f().m5899c(125, sb.toString(), true);
    }

    /* renamed from: f */
    public static void m5874f(@NonNull String str, String str2, int i, TmoUserStatus tmoUserStatus, int i2, @NonNull String str3) {
        String g0 = TmoApiWrapper.m6640g0(str3);
        String str4 = "";
        String str5 = g0;
        if (g0 == null) {
            str5 = "";
        }
        String substring = str3.length() >= 4 ? str3.substring(str3.length() - 4) : "";
        String errorText = tmoUserStatus.getErrorText() != null ? tmoUserStatus.getErrorText() : "";
        boolean isEligible = tmoUserStatus.isEligible();
        String str6 = TmoUserStatus.CUSTOMER_TYPE_POSTPAID;
        String str7 = isEligible ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0";
        String statusText = tmoUserStatus.getStatusText() != null ? tmoUserStatus.getStatusText() : "";
        String typeLetter = tmoUserStatus.getTypeLetter() != null ? tmoUserStatus.getTypeLetter() : "";
        String str8 = Objects.equals(tmoUserStatus.getScamId(), Boolean.TRUE) ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0";
        String str9 = Objects.equals(tmoUserStatus.getScamBlock(), Boolean.TRUE) ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0";
        String str10 = tmoUserStatus.isCNAMON() ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0";
        String str11 = tmoUserStatus.isCNAMEligible() ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0";
        if (!tmoUserStatus.getVMTTOFF()) {
            str6 = "0";
        }
        String customerType = tmoUserStatus.getCustomerType() != null ? tmoUserStatus.getCustomerType() : "";
        String pnb = tmoUserStatus.getPnb() != null ? tmoUserStatus.getPnb() : "";
        if (tmoUserStatus.getVmtt() != null) {
            str4 = tmoUserStatus.getVmtt();
        }
        StringBuilder sb = new StringBuilder();
        m5878b(sb, str);
        m5878b(sb, Long.valueOf(System.currentTimeMillis()));
        m5878b(sb, Integer.valueOf(i2));
        m5878b(sb, str2);
        m5878b(sb, Integer.valueOf(i));
        m5878b(sb, str5);
        m5878b(sb, substring);
        m5878b(sb, errorText);
        m5878b(sb, str7);
        m5878b(sb, statusText);
        m5878b(sb, typeLetter);
        m5878b(sb, str8);
        m5878b(sb, str9);
        m5878b(sb, str10);
        m5878b(sb, str11);
        m5878b(sb, str6);
        m5878b(sb, customerType);
        m5878b(sb, pnb);
        m5878b(sb, str4);
        AnalyticsSender.m5896f().m5899c(WebSocketProtocol.PAYLOAD_SHORT, sb.toString(), true);
    }

    /* renamed from: g */
    public static void m5873g(@NonNull String str, String str2, int i, int i2, @NonNull String str3) {
        String g0 = TmoApiWrapper.m6640g0(str3);
        String str4 = g0;
        if (g0 == null) {
            str4 = "";
        }
        String substring = str3.length() >= 4 ? str3.substring(str3.length() - 4) : "";
        StringBuilder sb = new StringBuilder();
        m5878b(sb, str);
        m5878b(sb, Long.valueOf(System.currentTimeMillis()));
        m5878b(sb, Integer.valueOf(i2));
        m5878b(sb, str2);
        m5878b(sb, Integer.valueOf(i));
        m5878b(sb, str4);
        m5878b(sb, substring);
        m5878b(sb, "");
        m5878b(sb, "");
        m5878b(sb, "");
        m5878b(sb, "");
        m5878b(sb, "");
        m5878b(sb, "");
        m5878b(sb, "");
        m5878b(sb, "");
        m5878b(sb, "");
        m5878b(sb, "");
        m5878b(sb, "");
        m5878b(sb, "");
        AnalyticsSender.m5896f().m5899c(WebSocketProtocol.PAYLOAD_SHORT, sb.toString(), true);
    }

    /* renamed from: h */
    public static void m5872h(boolean z, boolean z2, @Nullable String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(z ? "add" : "remove");
        String str2 = ((sb.toString() + "/") + "SCAMBLOCK") + "/";
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(z2 ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0");
        String str3 = sb2.toString() + "/";
        String str4 = str3;
        if (str != null) {
            str4 = str3 + str;
        }
        AnalyticsSender.m5896f().m5899c(111, str4, true);
    }

    /* renamed from: i */
    public static void m5871i(int i, int i2, int i3) {
        String str = ((("" + Integer.toString(i)) + "/") + Integer.toString(i2)) + "/";
        String str2 = str;
        if (i3 >= 0) {
            str2 = str + Integer.toString(i3);
        }
        AnalyticsSender.m5896f().m5899c(112, str2, false);
    }

    /* renamed from: j */
    public static void m5870j(String str, String str2, int i, String str3, int i2, Date date) {
        int i3;
        String f = StringParsingUtils.m5334f(str2);
        long time = date.getTime();
        Context l = MainApplication.m7528l();
        if (l == null || !PermissionChecker.m5423b(l)) {
            i3 = 2;
        } else {
            List<Contact> b = ContactUtils.m5815b(str, l, true);
            i3 = 0;
            if ((!b.isEmpty() ? b.get(0) : null) != null) {
                i3 = 1;
            }
        }
        StringBuilder sb = new StringBuilder();
        m5878b(sb, str);
        m5878b(sb, f);
        m5878b(sb, Integer.valueOf(i));
        m5878b(sb, str3);
        m5878b(sb, Integer.valueOf(i2));
        m5878b(sb, String.valueOf(time));
        m5878b(sb, Integer.valueOf(i3));
        String sb2 = sb.toString();
        LogUtil.m5643d("AnalyticsWrapper#", "Event 93 logged. Payload: [" + sb2 + "]");
        AnalyticsSender.m5896f().m5899c(93, sb2, true);
    }

    /* renamed from: k */
    public static void m5869k(boolean z, boolean z2, @NonNull String str, @NonNull String str2, @NonNull String str3) {
        StringBuilder sb = new StringBuilder(100);
        m5878b(sb, Integer.valueOf(z ? 1 : 0));
        m5878b(sb, Integer.valueOf(z2 ? 1 : 0));
        m5878b(sb, str);
        m5878b(sb, str2);
        m5878b(sb, str3);
        AnalyticsSender.m5896f().m5899c(122, sb.toString(), true);
    }

    /* renamed from: l */
    public static void m5868l(@NonNull String str, @NonNull String str2, int i, int i2, boolean z, int i3) {
        m5867m(str, str2, i, i2, z, String.valueOf(i3));
    }

    /* renamed from: m */
    public static void m5867m(@NonNull String str, @NonNull String str2, int i, int i2, boolean z, @NonNull String str3) {
        StringBuilder sb = new StringBuilder(100);
        m5878b(sb, str);
        m5878b(sb, str2);
        m5878b(sb, Integer.valueOf(i));
        m5878b(sb, Integer.valueOf(i2));
        m5878b(sb, Integer.valueOf(z ? 1 : 0));
        m5878b(sb, str3);
        AnalyticsSender.m5896f().m5899c(123, sb.toString(), false);
    }

    /* renamed from: n */
    public static void m5866n() {
        AnalyticsSender.m5896f().m5899c(43, TmoUserStatus.CUSTOMER_TYPE_POSTPAID, false);
    }

    /* renamed from: o */
    public static void m5865o(String str, String str2) {
        StringBuilder sb = new StringBuilder(100);
        m5878b(sb, Long.valueOf(System.currentTimeMillis()));
        m5878b(sb, MainApplication.m7526n());
        m5878b(sb, str);
        m5878b(sb, str2);
        AnalyticsSender.m5896f().m5899c(204, sb.toString(), false);
    }

    /* renamed from: p */
    public static String m5864p() {
        if (PreferenceUtils.m5390g("PREF_ANALYTICS_IID").isEmpty()) {
            PreferenceUtils.m5383n("PREF_ANALYTICS_IID", UUID.randomUUID().toString());
        }
        return PreferenceUtils.m5390g("PREF_ANALYTICS_IID");
    }

    /* renamed from: q */
    public static void m5863q(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        m5878b(sb, str);
        m5878b(sb, str2);
        m5878b(sb, str3);
        AnalyticsSender.m5896f().m5899c(202, sb.toString(), false);
    }

    /* renamed from: r */
    public static void m5862r() {
        long d = PreferenceUtils.m5393d("PREF_PREVIOUS_SESSION_START");
        long d2 = PreferenceUtils.m5393d("PREF_SESSION_START");
        long d3 = PreferenceUtils.m5393d("PREF_SESSION_END");
        PreferenceUtils.m5384m("PREF_PREVIOUS_SESSION_START", d2);
        StringBuilder sb = new StringBuilder();
        m5878b(sb, String.valueOf(d));
        m5878b(sb, String.valueOf(d2));
        m5878b(sb, String.valueOf(d3));
        AnalyticsSender.m5896f().m5899c(205, sb.toString(), false);
    }

    /* renamed from: s */
    public static void m5861s(String str, String str2, String str3, String str4, String str5, String str6) {
        String str7;
        StringBuilder sb = new StringBuilder();
        Context l = MainApplication.m7528l();
        if (l == null) {
            str7 = "000";
        } else {
            boolean c = BuildUtils.m5851c();
            String str8 = TmoUserStatus.CUSTOMER_TYPE_POSTPAID;
            if (c) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("");
                sb2.append(DeviceInfoUtils.m5754j(l, "com.tmobile.pr.mytmobile") ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0");
                String sb3 = sb2.toString();
                StringBuilder sb4 = new StringBuilder();
                sb4.append(sb3);
                sb4.append(DeviceInfoUtils.m5754j(l, "com.tmobile.vvm.application") ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0");
                String sb5 = sb4.toString();
                StringBuilder sb6 = new StringBuilder();
                sb6.append(sb5);
                if (!DeviceInfoUtils.m5754j(l, "com.whitepages.nameid.tmobile")) {
                    str8 = "0";
                }
                sb6.append(str8);
                str7 = sb6.toString();
            } else {
                StringBuilder sb7 = new StringBuilder();
                sb7.append("");
                sb7.append(DeviceInfoUtils.m5754j(l, "com.nuance.nmc.sihome.metropcs") ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0");
                String sb8 = sb7.toString();
                StringBuilder sb9 = new StringBuilder();
                sb9.append(sb8);
                sb9.append(DeviceInfoUtils.m5754j(l, "com.metropcs.service.vvm") ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0");
                String sb10 = sb9.toString();
                StringBuilder sb11 = new StringBuilder();
                sb11.append(sb10);
                if (!DeviceInfoUtils.m5754j(l, "com.whitepages.nameid.tmobile")) {
                    str8 = "0";
                }
                sb11.append(str8);
                str7 = sb11.toString();
            }
        }
        m5878b(sb, str);
        m5878b(sb, str2);
        m5878b(sb, str3);
        m5878b(sb, str4);
        m5878b(sb, str5);
        m5878b(sb, str6);
        m5878b(sb, str7);
        AnalyticsSender.m5896f().m5899c(HttpStatus.HTTP_OK, sb.toString(), true);
    }

    /* renamed from: t */
    public static void m5860t(int i, String str) {
        AnalyticsSender f = AnalyticsSender.m5896f();
        f.m5899c(115, i + "/" + str, false);
    }

    /* renamed from: u */
    public static void m5859u() {
        AnalyticsSender.m5896f().m5899c(113, "", false);
    }

    /* renamed from: v */
    public static void m5858v(long j, long j2, String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        m5878b(sb, Long.valueOf(j));
        m5878b(sb, Long.valueOf(j2));
        m5878b(sb, str2);
        m5878b(sb, str);
        m5878b(sb, str3);
        m5878b(sb, str4);
        m5878b(sb, str5);
        AnalyticsSender.m5896f().m5899c(120, sb.toString(), true);
        if (str3.equals(TmoUserStatus.CUSTOMER_TYPE_POSTPAID)) {
            m5878b(sb2, str4);
            m5878b(sb2, str5);
            AnalyticsSender.m5896f().m5899c(121, sb2.toString(), true);
        }
    }

    /* renamed from: w */
    public static void m5857w(int i, String str) {
        AnalyticsSender f = AnalyticsSender.m5896f();
        f.m5899c(116, i + "/" + str, false);
    }

    /* renamed from: x */
    public static void m5856x() {
        AnalyticsSender.m5896f().m5899c(114, "", false);
    }

    /* renamed from: y */
    public static void m5855y(boolean z, TmoApiWrapper.AccountType accountType, SubscriptionHelper.State state, boolean z2, @Nullable String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(z ? "add" : "remove");
        String str3 = ((sb.toString() + "/") + accountType.getValue()) + "/";
        switch (C18931.f14234a[state.ordinal()]) {
            case 1:
            case 2:
                str2 = str3 + TmoApiWrapper.AccountType.NAMEID.getValue();
                break;
            case 3:
            case 4:
                str2 = str3 + TmoApiWrapper.AccountType.TRIAL.getValue();
                break;
            case 5:
            case 6:
            case 7:
            case 8:
                str2 = str3 + TmoApiWrapper.AccountType.SCREEN_IT.getValue();
                break;
            default:
                str2 = str3 + TmoApiWrapper.AccountType.NONE.getValue();
                break;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2 + "/");
        sb2.append(z2 ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0");
        String str4 = sb2.toString() + "/";
        String str5 = str4;
        if (str != null) {
            str5 = str4 + str;
        }
        AnalyticsSender.m5896f().m5899c(110, str5, false);
    }

    /* renamed from: z */
    public static void m5854z(@Nonnull String str, int i, int i2) {
        String d = AnalyticsHelper.m5902d(i2);
        String d2 = AnalyticsHelper.m5902d(i);
        if ("PNB-0".equals(d)) {
            m5884D(str, d2);
        } else if ("PNB-0".equals(d2)) {
            m5880H(str, d);
        } else {
            m5887A(str, d2, d);
        }
    }
}
