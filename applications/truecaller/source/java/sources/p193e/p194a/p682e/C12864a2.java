package p193e.p194a.p682e;

import android.animation.Animator;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.airbnb.lottie.LottieAnimationView;
import com.amazon.device.ads.DTBAdViewSupportClient;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.calling.dialer.call_log.items.entries.CallIconType;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.log.AssertionUtil;
import com.truecaller.network.notification.NotificationScope;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.old.p171ui.activities.DialogBrowserActivity;
import com.truecaller.p183ui.settings.SettingsCategory;
import com.truecaller.premium.PremiumNotificationService;
import com.truecaller.referral.ReferralNotificationService;
import com.truecaller.whoviewedme.ReceiveProfileViewService;
import e.a.h.f.n0.a;
import e.m.e.q;
import e.m.e.s;
import e.m.e.t;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeSet;
import p1727n3.p1755d.p1756a.C25691a;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1812c.C26493a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1011l.C17245u1;
import p193e.p194a.p1011l.C17251v1;
import p193e.p194a.p1011l.p1020g.C16911r;
import p193e.p194a.p1011l.p1020g.C16912s;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.p1097b.C18728h0;
import p193e.p194a.p1114o5.AbstractC19130y0;
import p193e.p194a.p1114o5.C19053k1;
import p193e.p194a.p1114o5.C19090q;
import p193e.p194a.p1114o5.C19133z0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1129p5.p1130q0.C19255a;
import p193e.p194a.p1129p5.p1130q0.C19256b;
import p193e.p194a.p1129p5.p1130q0.C19261f;
import p193e.p194a.p1129p5.p1132s0.C19272a;
import p193e.p194a.p1129p5.p1132s0.C19274b;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p615c4.C10945m;
import p193e.p194a.p682e.p684b.p693m.AbstractC12990d;
import p193e.p194a.p751f4.p761f.C13994b;
import p193e.p194a.p751f4.p761f.C13999c;
import p193e.p194a.p937j4.p939b.p940a.C15569f;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import p193e.p194a.p997k3.p998j.C16463d;
import p193e.p194a.p997k3.p998j.C16487j;
import q3.a.g0;
import q3.a.h1;
import q3.a.j0;
import q3.a.p1;
import q3.a.t0;
import q3.a.y1;
import r3.a.a.b;
import r3.a.a.c;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.f0.v;
import s1.w.f;
import s1.w.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.e.a2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a2.class */
public final class C12864a2 {
    /* renamed from: A */
    public static Uri m22593A(long j, String str, boolean z) {
        Uri uri;
        if (!h.j(str)) {
            Uri parse = Uri.parse(str);
            uri = parse;
            if (z) {
                uri = parse;
                if (h.d(parse.getHost(), "truecaller.com")) {
                    uri = parse;
                    if ("1".equals(parse.getLastPathSegment())) {
                        ArrayList arrayList = new ArrayList(parse.getPathSegments());
                        arrayList.set(arrayList.size() - 1, "3");
                        uri = parse.buildUpon().path(h.p(arrayList, StringConstant.SLASH)).build();
                    }
                }
            }
        } else {
            uri = null;
        }
        if (j > 0) {
            Uri uri2 = C17891a1.f50888a;
            if (uri2 == null) {
                return null;
            }
            return uri2.buildUpon().appendPath("photo").appendQueryParameter("tcphoto", uri != null ? uri.toString() : "").appendQueryParameter("pbid", String.valueOf(j)).build();
        }
        return uri;
    }

    /* renamed from: B */
    public static final Uri m22592B(Contact contact, boolean z) {
        l.e(contact, "$this$getPhotoUri");
        Long m35548R = contact.m35548R();
        if (m35548R == null) {
            m35548R = 0L;
        }
        l.d(m35548R, "phonebookId ?: 0");
        return m22593A(m35548R.longValue(), contact.m35573B(), z);
    }

    /* renamed from: C */
    public static final C17409e m22591C(AbstractC17405c abstractC17405c, Contact contact) {
        l.e(abstractC17405c, "$this$getPresenceForContact");
        l.e(contact, AnalyticsConstants.CONTACT);
        Object[] array = C17891a1.C17902k.m15636X(contact).toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        return abstractC17405c.mo9922b((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    /* renamed from: D */
    public static final Bitmap.Config m22590D(Bitmap bitmap) {
        l.e(bitmap, "$this$getSafeConfig");
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        return config;
    }

    /* renamed from: E */
    public static final Bitmap m22589E(View view, int i) {
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(C19291g.m13612L(view.getContext(), i));
        view.draw(canvas);
        l.d(createBitmap, "returnedBitmap");
        return createBitmap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [e.a.j4.b.a.f, e.a.j4.b.a.i] */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Throwable, java.lang.RuntimeException] */
    /* renamed from: F */
    public static C19133z0 m22588F(Context context) {
        List<C13999c.C14000a> list;
        try {
            ?? c15569f = new C15569f(context);
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : ((HashMap) c15569f.m18669k()).entrySet()) {
                NotificationScope notificationScope = (NotificationScope) entry.getKey();
                if (notificationScope.value > 0) {
                    C13999c c13999c = (C13999c) C13994b.m20877a((entry.getValue() != null ? ((Long) entry.getValue()).longValue() : false) == true ? 1L : 0L, notificationScope, C15571h.m18647d("language")).execute().b;
                    if (c13999c != null && (list = c13999c.f40460a) != null) {
                        arrayList.addAll(list);
                    }
                }
            }
            Collection<InternalTruecallerNotification> m18662r = c15569f.m18662r(arrayList);
            c15569f.m18670j(m18662r, Boolean.TRUE);
            return new C19133z0(c15569f.m18622e(), Math.min(((TreeSet) c15569f.m18666n()).size(), ((TreeSet) c15569f.m18665o(m18662r)).size()));
        } catch (IOException | RuntimeException e) {
            C10480a.m26061I1(e);
            return null;
        }
    }

    /* renamed from: G */
    public static String m22587G(String str, t tVar) {
        q l = tVar.l(str);
        return (l == null || (l instanceof s)) ? "" : l.g();
    }

    /* renamed from: H */
    public static void m22586H(InternalTruecallerNotification internalTruecallerNotification, Context context, long j) {
        h1 h1Var = h1.a;
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) context.getApplicationContext()).mo10154s();
        int ordinal = internalTruecallerNotification.m34842q().ordinal();
        String str = null;
        if (ordinal == 10) {
            C17251v1 mo12403e3 = mo10154s.mo12403e3();
            Objects.requireNonNull(mo12403e3);
            l.e(internalTruecallerNotification, RemoteMessageConst.NOTIFICATION);
            d.w2(h1Var, mo12403e3.f48400h, (j0) null, new C17245u1(mo12403e3, internalTruecallerNotification, null), 2, (Object) null);
        } else if (ordinal == 15) {
            TrueApp.m36032b0().mo10154s().mo12656L3().mo11854a().mo18984b().mo11828g();
        } else if (ordinal == 28) {
            if (internalTruecallerNotification.f14111j.f40462b == null) {
                return;
            }
            mo10154s.mo12492X5().mo10253a(context, internalTruecallerNotification.f14111j.f40462b);
        } else if (ordinal == 29) {
            int i = ReferralNotificationService.f14451a;
            String str2 = "onNotificationReceived() called with: context = [" + context + "], notification = [" + internalTruecallerNotification + "]";
            Intent intent = new Intent(context, ReferralNotificationService.class);
            String m34847j = internalTruecallerNotification.m34847j("r");
            if (!h.j(m34847j)) {
                m34847j.hashCode();
                m34847j.hashCode();
                boolean z = true;
                switch (m34847j.hashCode()) {
                    case -1154529449:
                        if (m34847j.equals("joiner")) {
                            z = false;
                            break;
                        }
                        break;
                    case -759238347:
                        if (m34847j.equals("clearCache")) {
                            z = true;
                            break;
                        }
                        break;
                    case -722568161:
                        if (m34847j.equals("referrer")) {
                            z = true;
                            break;
                        }
                        break;
                    case 106940687:
                        if (m34847j.equals("promo")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                        str = "com.truecaller.intent.action.REFERRAL_JOINER_NOTIFICATION_RECEIVED";
                        break;
                    case true:
                        str = "com.truecaller.intent.action.ACTION_CLEAR_CACHE_NOTIFICATION_RECEIVED";
                        break;
                    case true:
                        str = "com.truecaller.intent.action.REFERRAL_REFERRER_NOTIFICATION_RECEIVED";
                        break;
                    case true:
                        str = "com.truecaller.intent.action.REFERRAL_REFERRER_PROMO_NOTIFICATION_RECEIVED";
                        break;
                }
            }
            if (h.j(str)) {
                AssertionUtil.reportThrowableButNeverCrash(new IllegalArgumentException("Role is not present in referral notification"));
                return;
            }
            intent.setAction(str);
            intent.putExtra("title", internalTruecallerNotification.mo18605h(context));
            intent.putExtra("text", internalTruecallerNotification.mo18608d(context));
            intent.putExtra("days", internalTruecallerNotification.m34847j("d"));
            intent.putExtra(AnalyticsConstants.NAME, internalTruecallerNotification.m34847j("f"));
            Bundle extras = intent.getExtras();
            if (extras != null) {
                extras.size();
            }
            if (extras != null) {
                for (String str3 : extras.keySet()) {
                    StringBuilder m8692L = C22128a.m8692L("[", str3, ContainerUtils.KEY_VALUE_DELIMITER);
                    m8692L.append(extras.get(str3));
                    m8692L.append("]");
                    m8692L.toString();
                }
            }
            context.startService(intent);
        } else if (ordinal == 43) {
            ((AbstractC19130y0) C25225a.m3820x0(context.getApplicationContext(), AbstractC19130y0.class)).mo12626N6().mo20190i();
        } else if (ordinal != 44) {
            switch (ordinal) {
                case 35:
                    int i2 = ReceiveProfileViewService.f16510j;
                    l.e(context, AnalyticsConstants.CONTEXT);
                    l.e(internalTruecallerNotification, RemoteMessageConst.NOTIFICATION);
                    Intent intent2 = new Intent(context, ReceiveProfileViewService.class);
                    intent2.putExtra("EXTRA_TC_ID", internalTruecallerNotification.m34844o());
                    intent2.putExtra("EXTRA_PROFILE_VIEW_EVENT_SOURCE", internalTruecallerNotification.m34847j("ac"));
                    AbstractServiceC26431i.enqueueWork(context, ReceiveProfileViewService.class, (int) C2752R.C2754id.who_viewed_me_notification_id, intent2);
                    return;
                case 36:
                    mo10154s.mo12722G4().mo19737b(internalTruecallerNotification);
                    return;
                case 37:
                case 38:
                    int i3 = PremiumNotificationService.f14205l;
                    l.e(context, AnalyticsConstants.CONTEXT);
                    l.e(internalTruecallerNotification, RemoteMessageConst.NOTIFICATION);
                    Intent intent3 = new Intent(context, PremiumNotificationService.class);
                    intent3.putExtra("PAGE_URL", internalTruecallerNotification.m34840s());
                    intent3.putExtra("REASON", internalTruecallerNotification.m34847j("rs"));
                    intent3.putExtra("TYPE", internalTruecallerNotification.m34842q().value);
                    String m34847j2 = internalTruecallerNotification.m34847j("ft");
                    Boolean bool = null;
                    if (m34847j2 != null) {
                        bool = Boolean.valueOf(Boolean.parseBoolean(m34847j2));
                    }
                    intent3.putExtra("IS_FREE_TRIAL", bool);
                    AbstractServiceC26431i.enqueueWork(context, PremiumNotificationService.class, (int) C2752R.C2754id.premium_subscription_grace, intent3);
                    return;
                case 39:
                    mo10154s.mo12679J6().mo24621c(internalTruecallerNotification, j, false);
                    return;
                case 40:
                    mo10154s.mo12679J6().mo24621c(internalTruecallerNotification, j, true);
                    return;
                case 41:
                    mo10154s.mo12679J6().mo24614j(internalTruecallerNotification, j);
                    return;
                default:
                    switch (ordinal) {
                        case 46:
                            mo10154s.mo12809A().mo28568p(internalTruecallerNotification.m34847j("t"));
                            return;
                        case 47:
                            C16912s mo12293m2 = mo10154s.mo12293m2();
                            Objects.requireNonNull(mo12293m2);
                            l.e(internalTruecallerNotification, RemoteMessageConst.NOTIFICATION);
                            if (!mo12293m2.f47495d.m16772c()) {
                                return;
                            }
                            d.w2(h1Var, mo12293m2.f47497f, (j0) null, new C16911r(mo12293m2, internalTruecallerNotification, null), 2, (Object) null);
                            return;
                        case 48:
                            mo10154s.mo12134y().mo17846V(internalTruecallerNotification.m34847j("no"));
                            return;
                        case 49:
                            mo10154s.mo12685J().mo14526F(new C18728h0(internalTruecallerNotification.m34847j("ci"), internalTruecallerNotification.m34847j("cc"), internalTruecallerNotification.m34847j("n")));
                            return;
                        default:
                            return;
                    }
            }
        } else {
            mo10154s.mo12577R1().mo18960a(internalTruecallerNotification);
        }
    }

    /* renamed from: I */
    public static final byte[] m22585I(byte[] bArr, String str) {
        byte[] bArr2;
        l.e(bArr, "$this$hash");
        l.e(str, "type");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            bArr2 = messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            bArr2 = null;
        }
        return bArr2;
    }

    /* renamed from: J */
    public static final String m22584J(byte[] bArr, String str) {
        StringBuilder sb;
        l.e(bArr, "$this$hashString");
        l.e(str, "type");
        byte[] m22585I = m22585I(bArr, str);
        if (m22585I != null) {
            StringBuilder sb2 = new StringBuilder();
            int length = m22585I.length;
            int i = 0;
            while (true) {
                sb = sb2;
                if (i >= length) {
                    break;
                }
                String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(m22585I[i])}, 1));
                l.d(format, "java.lang.String.format(this, *args)");
                sb2.append(format);
                l.d(sb2, "str.append(\"%02x\".format(it))");
                i++;
            }
        } else {
            sb = null;
        }
        return String.valueOf(sb);
    }

    /* renamed from: K */
    public static final boolean m22583K(AbstractC19230g abstractC19230g, C20592g c20592g) {
        Object obj;
        l.e(abstractC19230g, "$this$isDarkTheme");
        l.e(c20592g, "featuresRegistry");
        boolean z = false;
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        String mo10938g = ((AbstractC20597i) c20592g.f57726E1.m10941a(c20592g, C20592g.f57695p6[134])).mo10938g();
        if (!(!r.p(mo10938g))) {
            mo10938g = null;
        }
        if (mo10938g == null) {
            return true;
        }
        List U = v.U(mo10938g, new String[]{","}, false, 0, 6);
        String mo13787j = abstractC19230g.mo13787j();
        if (!(!r.p(mo13787j))) {
            mo13787j = null;
        }
        if (mo13787j == null) {
            return true;
        }
        Iterator it = U.iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            obj = it.next();
        } while (!r.n(mo13787j, (String) obj, true));
        if (obj == null) {
            z = true;
        }
        return z;
    }

    /* renamed from: L */
    public static void m22582L(String str) {
        TrueApp.m36032b0().mo10154s().mo12264o4().mo13214l(str);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: M */
    public static final <T, R> List<R> m22581M(Cursor cursor, s1.z.b.l<? super Cursor, ? extends T> lVar, p<? super Contact, ? super T, ? extends R> pVar) {
        s1.u.s sVar;
        String m13628F1;
        l.e(pVar, "mapper");
        if (cursor != null) {
            try {
                s1.u.s arrayList = new ArrayList();
                C16463d c16463d = new C16463d(cursor);
                Contact contact = null;
                while (cursor.moveToNext()) {
                    if (C19291g.m13628F1(cursor, "tc_id") != null) {
                        if (!l.a(contact != null ? contact.getTcId() : null, m13628F1)) {
                            if (contact != null) {
                                contact.m35529b1();
                            }
                            Object d = lVar != null ? lVar.d(cursor) : null;
                            Contact m17354g = c16463d.m17354g(cursor);
                            if (m17354g != null) {
                                l.d(m17354g, "it");
                                Object k = pVar.k(m17354g, d);
                                if (k != null) {
                                    arrayList.add(k);
                                }
                                c16463d.m17355f(cursor, m17354g);
                                contact = m17354g;
                            } else {
                                contact = null;
                            }
                        } else {
                            c16463d.m17355f(cursor, contact);
                        }
                    }
                }
                if (contact != null) {
                    contact.m35529b1();
                }
                C25225a.m4016G(cursor, null);
                sVar = arrayList;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } else {
            sVar = s1.u.s.a;
        }
        return sVar;
    }

    /* renamed from: N */
    public static final <T, R, S> List<R> m22580N(Cursor cursor, s1.z.b.l<? super Cursor, ? extends T> lVar, s1.z.b.l<? super Cursor, ? extends S> lVar2, s1.z.b.q<? super Contact, ? super T, ? super S, ? extends R> qVar) {
        Contact contact;
        String m13628F1;
        l.e(qVar, "mapper");
        try {
            ArrayList arrayList = new ArrayList();
            C16463d c16463d = new C16463d(cursor);
            loop0: while (true) {
                contact = null;
                while (cursor.moveToNext()) {
                    if (C19291g.m13628F1(cursor, "tc_id") != null) {
                        if (!l.a(contact != null ? contact.getTcId() : null, m13628F1)) {
                            if (contact != null) {
                                contact.m35529b1();
                            }
                            Object d = ((a.d) lVar).d(cursor);
                            Object d2 = ((a.e) lVar2).d(cursor);
                            contact = c16463d.m17354g(cursor);
                            if (contact != null) {
                                l.d(contact, "it");
                                Object h = ((a.c) qVar).h(contact, d, d2);
                                if (h != null) {
                                    arrayList.add(h);
                                }
                                c16463d.m17355f(cursor, contact);
                            }
                        } else {
                            c16463d.m17355f(cursor, contact);
                        }
                    }
                }
            }
            if (contact != null) {
                contact.m35529b1();
            }
            th = null;
            return arrayList;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: O */
    public static final void m22579O(LottieAnimationView lottieAnimationView, s1.z.b.l<? super Animator, s1.s> lVar) {
        l.e(lottieAnimationView, "$this$onAnimationEnd");
        l.e(lVar, "listener");
        lottieAnimationView.f1619e.f60854c.f60782b.add(new C19274b(lVar));
    }

    /* renamed from: Q */
    public static void m22577Q(Context context, Uri uri, int i, boolean z) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", z ? 1 : 0);
        int m13612L = C19291g.m13612L(context, 2130970408);
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        intent.putExtras(new C25691a(Integer.valueOf(i | (-16777216)), Integer.valueOf(m13612L), null, null).m3053a());
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        intent.putExtra(DeepLink.REFERRER_URI, Uri.parse(2 + context.getPackageName()));
        try {
            intent.setData(uri);
            Object obj = C26467a.f74235a;
            C26467a.C26468a.m1794b(context, intent, null);
        } catch (ActivityNotFoundException | SecurityException e) {
        }
    }

    /* renamed from: R */
    public static void m22576R(Context context, Fragment fragment, Contact contact, boolean z, int i) {
        Intent intent;
        String valueOf = contact.m35495t0() ? String.valueOf(contact.m35548R()) : C19090q.m14142b(context, contact.m35496t());
        if (!z) {
            intent = C8613t.m28206f(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, valueOf));
        } else {
            intent = new Intent("android.intent.action.EDIT", Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, valueOf));
            intent.putExtra("finishActivityOnSaveCompleted", true);
        }
        if (!z) {
            C8613t.m28197o(fragment, intent);
        } else {
            C8613t.m28200l(fragment, intent, i);
        }
    }

    /* renamed from: S */
    public static boolean m22575S(Context context, String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (z) {
            return C8613t.m28203i(context, str);
        }
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if ("tel".equalsIgnoreCase(scheme)) {
            C8613t.m28198n(context, new Intent("android.intent.action.CALL", Uri.parse(str)));
            return true;
        } else if ("truecaller".equalsIgnoreCase(scheme)) {
            C8613t.m28203i(context, str);
            return true;
        } else {
            if (DTBAdViewSupportClient.MARKET_SCHEME.equalsIgnoreCase(scheme) || "appmarket".equalsIgnoreCase(scheme)) {
                if (C8613t.m28205g(str).resolveActivity(context.getPackageManager()) != null) {
                    C8613t.m28203i(context, str);
                    return true;
                }
            }
            if ("file".equalsIgnoreCase(scheme)) {
                DialogBrowserActivity.m34833pa(context, str, true);
                return true;
            }
            m22577Q(context, parse, C19291g.m13612L(context, 2130970356), false);
            return true;
        }
    }

    /* renamed from: T */
    public static final void m22574T(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "id");
        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://twitter.com/" + str)));
    }

    /* renamed from: U */
    public static f m22573U(C19256b c19256b) {
        Objects.requireNonNull(c19256b);
        g0 g0Var = t0.d;
        Objects.requireNonNull(g0Var, "Cannot return null from a non-@Nullable @Provides method");
        return g0Var;
    }

    /* renamed from: V */
    public static f m22572V(C19256b c19256b) {
        Objects.requireNonNull(c19256b);
        g0 g0Var = t0.b;
        Objects.requireNonNull(g0Var, "Cannot return null from a non-@Nullable @Provides method");
        return g0Var;
    }

    /* renamed from: W */
    public static f m22571W(C19256b c19256b) {
        Objects.requireNonNull(c19256b);
        g0 g0Var = t0.d;
        Objects.requireNonNull(g0Var, "Cannot return null from a non-@Nullable @Provides method");
        return g0Var;
    }

    /* renamed from: X */
    public static f m22570X(C19256b c19256b) {
        Objects.requireNonNull(c19256b);
        t0 t0Var = t0.a;
        y1 y1Var = q3.a.y2.q.c;
        Objects.requireNonNull(y1Var, "Cannot return null from a non-@Nullable @Provides method");
        return y1Var;
    }

    /* renamed from: Y */
    public static final void m22569Y(Activity activity) {
        l.e(activity, "$this$requestPortraitOrientationCompat");
        if (Build.VERSION.SDK_INT == 26) {
            return;
        }
        activity.setRequestedOrientation(1);
    }

    /* renamed from: Z */
    public static final Bitmap m22568Z(Bitmap bitmap, int i) {
        l.e(bitmap, "$this$rotate");
        float f = i;
        Bitmap bitmap2 = bitmap;
        if (f != 0.0f) {
            Matrix matrix = new Matrix();
            matrix.postRotate(f);
            bitmap2 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            l.d(bitmap2, "Bitmap.createBitmap(this…his.height, matrix, true)");
        }
        return bitmap2;
    }

    /* renamed from: a */
    public static final void m22567a(TextView textView, int i) {
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(C19291g.m13535l0(textView.getContext(), i, 2130970409), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    /* renamed from: a0 */
    public static final boolean m22566a0(ContentResolver contentResolver, String str, ArrayList<ContentProviderOperation> arrayList) {
        l.e(contentResolver, "$this$safeApplyBatch");
        l.e(str, "authority");
        l.e(arrayList, "operations");
        boolean z = false;
        try {
            ContentProviderResult[] applyBatch = contentResolver.applyBatch(str, arrayList);
            l.d(applyBatch, "applyBatch(authority, operations)");
            if (applyBatch.length == 0) {
                z = true;
            }
            return !z;
        } catch (OperationApplicationException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return false;
        } catch (RemoteException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
            return false;
        }
    }

    /* renamed from: b */
    public static final void m22565b(TextView textView, int i) {
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(C19291g.m13535l0(textView.getContext(), i, 2130970409), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    /* renamed from: b0 */
    public static final Bitmap m22564b0(Bitmap bitmap, int i, int i2) {
        l.e(bitmap, "$this$scaleCenterCrop");
        float f = i2;
        float width = bitmap.getWidth();
        float f2 = f / width;
        float f3 = i;
        float height = bitmap.getHeight();
        float max = Math.max(f2, f3 / height);
        float f4 = width * max;
        float f5 = max * height;
        float f6 = 2;
        float f7 = (f - f4) / f6;
        float f8 = (f3 - f5) / f6;
        RectF rectF = new RectF(f7, f8, f4 + f7, f5 + f8);
        Bitmap createBitmap = Bitmap.createBitmap(i2, i, m22590D(bitmap));
        new Canvas(createBitmap).drawBitmap(bitmap, (Rect) null, rectF, (Paint) null);
        l.d(createBitmap, "dest");
        return createBitmap;
    }

    /* renamed from: c */
    public static final Bitmap m22563c(Bitmap bitmap, int i, int i2) {
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
        if (!l.a(bitmap, createScaledBitmap)) {
            bitmap.recycle();
        }
        l.d(createScaledBitmap, "scaled");
        return createScaledBitmap;
    }

    /* renamed from: c0 */
    public static void m22562c0(Context context, int i) {
        if (context == null) {
            return;
        }
        try {
            List list = c.a;
            try {
                c.a(context, i);
            } catch (SecurityException e) {
                C10480a.m26061I1(e);
            } catch (b e2) {
                Log.isLoggable("ShortcutBadger", 3);
            }
        } catch (RuntimeException e3) {
            String packageName = context.getPackageName();
            StringBuilder m8692L = C22128a.m8692L("Package name: ", packageName, ". Launch intent: ");
            m8692L.append(String.valueOf(context.getPackageManager().getLaunchIntentForPackage(packageName)));
            C10480a.m26057J1(e3, m8692L.toString());
        }
        l.e(context, "$this$sendBroadcast");
        l.e("com.truecaller.action.UPDATE_CALL_BADGE", "action");
        C27062a.m968b(context).m966d(new Intent("com.truecaller.action.UPDATE_CALL_BADGE"));
    }

    /* renamed from: d */
    public static final String m22561d(String str) {
        return C22128a.m8733A2("[^A-Za-z0-9_]", r.s(str, ' ', '_', false, 4), "");
    }

    /* renamed from: d0 */
    public static void m22560d0(Context context, CharSequence charSequence, CharSequence charSequence2) {
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        if (clipboardManager == null) {
            return;
        }
        clipboardManager.setPrimaryClip(ClipData.newPlainText(charSequence2, charSequence));
    }

    /* renamed from: e */
    public static final String m22559e(boolean z) {
        return z ? "Enabled" : "Disabled";
    }

    /* renamed from: e0 */
    public static void m22558e0(Context context, String str, long j, boolean z) {
        if (!((AbstractC21187w1) context.getApplicationContext()).mo10154s().mo11647c().mo13825h("android.permission.WRITE_CONTACTS")) {
            return;
        }
        C16487j c16487j = new C16487j(context);
        Contact m17325i = c16487j.m17325i(C17891a1.C17904m.m15551b(), "contact_phonebook_id=? AND contact_source=2 AND contact_phonebook_lookup=?", String.valueOf(j), str);
        if (m17325i == null) {
            m17325i = c16487j.m17325i(C17891a1.C17904m.m15551b(), "contact_phonebook_lookup=? AND contact_source=2", str);
        }
        if (m17325i != null) {
            ((ContactDto.Contact) m17325i.mRow).isFavorite = z;
            c16487j.m17331c(m17325i);
        }
        Uri lookupUri = ContactsContract.Contacts.getLookupUri(j, str);
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("starred", Boolean.valueOf(z));
        context.getContentResolver().update(lookupUri, contentValues, null, null);
    }

    /* renamed from: f */
    public static final <T extends Animator> T m22557f(T t, boolean z, s1.z.b.a<s1.s> aVar) {
        l.e(t, "$this$addOnEndListener");
        l.e(aVar, "listener");
        t.addListener(new C19272a(z, aVar));
        return t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0245, code lost:
        if (r8 != null) goto L41;
     */
    /* renamed from: f0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m22556f0(android.view.View r7, com.truecaller.messaging.data.types.Message r8, java.lang.String r9, p193e.p194a.p372b0.p373a.p376b.C8243a r10) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.C12864a2.m22556f0(android.view.View, com.truecaller.messaging.data.types.Message, java.lang.String, e.a.b0.a.b.a):void");
    }

    /* renamed from: g */
    public static final <T> Object m22555g(AbstractC19891x<T> abstractC19891x, s1.w.d<? super T> dVar) {
        i iVar = new i(C25225a.m3844s1(dVar));
        abstractC19891x.mo11829f(new C19053k1(iVar));
        Object a = iVar.a();
        if (a == s1.w.j.a.a) {
            l.e(dVar, "frame");
        }
        return a;
    }

    /* renamed from: g0 */
    public static /* synthetic */ void m22554g0(AbstractC19237j0 abstractC19237j0, int i, CharSequence charSequence, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            charSequence = null;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        abstractC19237j0.mo13754a(i, charSequence, i2);
    }

    /* renamed from: h */
    public static Object m22553h(Task task, s1.z.b.l lVar, int i) {
        Object obj;
        C19261f c19261f = (i & 1) != 0 ? C19261f.f53641b : null;
        l.e(task, "$this$await");
        l.e(c19261f, "exceptionCallback");
        try {
            obj = Tasks.m38514a(task);
        } catch (Exception e) {
            c19261f.m13729d(e);
            obj = null;
        }
        return obj;
    }

    /* renamed from: h0 */
    public static /* synthetic */ void m22552h0(AbstractC12990d abstractC12990d, SettingsCategory settingsCategory, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = null;
        }
        abstractC12990d.mo22279ga(settingsCategory, null, str2);
    }

    /* renamed from: i */
    public static boolean m22551i() {
        int i = Calendar.getInstance().get(11);
        return i >= 9 && i <= 21;
    }

    /* renamed from: i0 */
    public static final void m22550i0(Activity activity) {
        int i;
        l.e(activity, "$this$turnAndKeepScreenOn");
        if (Build.VERSION.SDK_INT >= 27) {
            activity.setShowWhenLocked(true);
            activity.setTurnScreenOn(true);
            i = 128;
        } else {
            i = 2621568;
        }
        activity.getWindow().addFlags(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0147  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m22549j(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.C12864a2.m22549j(android.content.Context):void");
    }

    /* renamed from: j0 */
    public static final <T extends Bitmap, R> R m22548j0(T t, s1.z.b.l<? super T, ? extends R> lVar) {
        l.e(lVar, "block");
        try {
            R r = (R) lVar.d(t);
            if (t != null) {
                t.recycle();
            }
            return r;
        } catch (Throwable th) {
            if (t != null) {
                t.recycle();
            }
            throw th;
        }
    }

    /* renamed from: k */
    public static boolean m22547k(Context context) {
        boolean z;
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>(3);
        arrayList.add(ContentProviderOperation.newDelete(C17891a1.C17904m.m15552a()).build());
        arrayList.add(ContentProviderOperation.newDelete(C17891a1.C17892a.m15709b()).build());
        arrayList.add(ContentProviderOperation.newDelete(C17891a1.C17901j.m15699b()).build());
        arrayList.add(ContentProviderOperation.newDelete(C8582g0.m28295y()).build());
        arrayList.add(ContentProviderOperation.newDelete(Uri.withAppendedPath(C17891a1.f50888a, "msg/msg_conversations")).build());
        arrayList.add(ContentProviderOperation.newDelete(C17891a1.C17902k.m15675H()).build());
        try {
            ContentResolver contentResolver = context.getContentResolver();
            Uri uri = C17891a1.f50888a;
            contentResolver.applyBatch("com.truecaller", arrayList);
            z = true;
        } catch (OperationApplicationException | RemoteException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: l */
    public static final boolean m22546l(Bitmap bitmap, File file, Bitmap.CompressFormat compressFormat, int i) {
        l.e(bitmap, "$this$copyBitmapToFile");
        l.e(file, "file");
        l.e(compressFormat, "compressFormat");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            bitmap.compress(compressFormat, i, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return true;
        } catch (IOException e) {
            fileOutputStream.close();
            return false;
        } catch (Throwable th) {
            fileOutputStream.close();
            throw th;
        }
    }

    /* renamed from: m */
    public static final Bitmap m22545m(Bitmap bitmap, int i, int i2) {
        l.e(bitmap, "$this$createScaledBitmapWithAspectRatio");
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width > height) {
            i2 = (int) (height / (width / i));
        } else if (height > width) {
            i = (int) (width / (height / i2));
        } else {
            float f = height;
            float f2 = f / i2;
            i2 = (int) (f / f2);
            i = (int) (width / f2);
        }
        return (i == 0 || i2 == 0) ? null : Bitmap.createScaledBitmap(bitmap, i, i2, true);
    }

    /* renamed from: n */
    public static boolean m22544n(File file) {
        boolean z = true;
        boolean z2 = true;
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            z2 = true;
            if (listFiles != null) {
                int length = listFiles.length;
                int i = 0;
                while (true) {
                    z2 = z;
                    if (i >= length) {
                        break;
                    }
                    if (!m22544n(listFiles[i])) {
                        z = false;
                    }
                    i++;
                }
            }
        }
        if (!file.delete()) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: o */
    public static void m22543o(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                e.getMessage();
            }
        }
    }

    /* renamed from: p */
    public static final DisplayMetrics m22542p(Activity activity) {
        l.e(activity, "$this$displayMetrics");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = activity.getWindowManager();
        l.d(windowManager, "windowManager");
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: q */
    public static p1 m22541q(Runnable runnable, g0 g0Var, int i) {
        f fVar = (i & 1) != 0 ? t0.d : null;
        l.e(runnable, "$this$executeAsync");
        l.e(fVar, "dispatcher");
        return d.w2(h1.a, fVar, (j0) null, new C19255a(runnable, null), 2, (Object) null);
    }

    /* renamed from: r */
    public static final boolean m22540r(Boolean bool) {
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: s */
    public static boolean m22539s(String str, t tVar) {
        q l = tVar.l(str);
        return (l == null || (l instanceof s)) ? false : l.a();
    }

    /* renamed from: t */
    public static final Object m22538t(Context context, String str) {
        l.e(context, "$this$getBuildConfigField");
        l.e(str, "fieldName");
        try {
            return Class.forName(context.getPackageName() + ".BuildConfig").getField(str).get(null);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        } catch (NoSuchFieldException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    /* renamed from: u */
    public static final CallIconType m22537u(HistoryEvent historyEvent) {
        l.e(historyEvent, "$this$getCallIconType");
        int i = historyEvent.f11551r;
        CallIconType callIconType = i != 1 ? i != 3 ? null : CallIconType.MUTED_CALL_ICON : CallIconType.HUNG_UP_CALL_ICON;
        if (callIconType == null) {
            int i2 = historyEvent.f11550q;
            if (i2 == 1) {
                callIconType = CallIconType.INCOMING_CALL_ICON;
            } else if (i2 == 2) {
                callIconType = CallIconType.OUTGOING_CALL_ICON;
            } else if (i2 != 3) {
                throw new IllegalStateException("We expect history event always has call type(incoming/outgoing/missed).");
            } else {
                callIconType = CallIconType.MISSED_CALL_ICON;
            }
        }
        return callIconType;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [double] */
    /* JADX WARN: Type inference failed for: r0v31, types: [double] */
    /* JADX WARN: Type inference failed for: r0v68, types: [double] */
    /* JADX WARN: Type inference failed for: r0v72, types: [double] */
    /* JADX WARN: Type inference failed for: r0v74, types: [double] */
    /* JADX WARN: Type inference failed for: r0v78, types: [double] */
    /* JADX WARN: Type inference failed for: r0v80, types: [double] */
    /* JADX WARN: Type inference failed for: r0v84, types: [double] */
    /* JADX WARN: Type inference failed for: r0v88, types: [double] */
    /* JADX WARN: Type inference failed for: r0v90, types: [double] */
    /* JADX WARN: Type inference failed for: r0v92, types: [double] */
    /* JADX WARN: Type inference failed for: r0v96, types: [double] */
    /* renamed from: v */
    public static final int m22536v(int i) {
        C26493a.m1753f(i, r0);
        double[] dArr = {dArr[0] * 0.9d};
        double d = dArr[0];
        double d2 = dArr[1];
        double d3 = dArr[2];
        ThreadLocal<double[]> threadLocal = C26493a.f74275a;
        double[] dArr2 = threadLocal.get();
        double[] dArr3 = dArr2;
        if (dArr2 == null) {
            dArr3 = new double[3];
            threadLocal.set(dArr3);
        }
        double d4 = (d + 16.0d) / 116.0d;
        double d5 = (d2 / 500.0d) + d4;
        double d6 = d4 - (d3 / 200.0d);
        char pow = Math.pow(d5, 3.0d);
        if (pow <= 0.008856d) {
            pow = ((d5 * 116.0d) - 16.0d) / 903.3d;
        }
        char pow2 = d > 7.9996247999999985d ? Math.pow(d4, 3.0d) : d / 903.3d;
        char pow3 = Math.pow(d6, 3.0d);
        if (pow3 <= 0.008856d) {
            pow3 = ((d6 * 116.0d) - 16.0d) / 903.3d;
        }
        dArr3[0] = pow * 47710;
        dArr3[1] = pow2 * 0;
        dArr3[2] = pow3 * 38797;
        double d7 = dArr3[0];
        double d8 = dArr3[1];
        double d9 = dArr3[2];
        double d10 = (((-0.4986d) * d9) + (((-1.5372d) * d8) + (3.2406d * d7))) / 100.0d;
        double d11 = ((0.0415d * d9) + ((1.8758d * d8) + ((-0.9689d) * d7))) / 100.0d;
        double d12 = ((d9 * 1.057d) + ((d8 * (-0.204d)) + (d7 * 0.0557d))) / 100.0d;
        return Color.rgb(C26493a.m1749j((int) Math.round((d10 > 0.0031308d ? (Math.pow(d10, 0.4166666666666667d) * 1.055d) - 0.055d : d10 * 12.92d) * 0), 0, 255), C26493a.m1749j((int) Math.round((d11 > 0.0031308d ? (Math.pow(d11, 0.4166666666666667d) * 1.055d) - 0.055d : d11 * 12.92d) * 0), 0, 255), C26493a.m1749j((int) Math.round((d12 > 0.0031308d ? (Math.pow(d12, 0.4166666666666667d) * 1.055d) - 0.055d : d12 * 12.92d) * 0), 0, 255));
    }

    /* renamed from: w */
    public static int m22535w(String str, t tVar) {
        q l = tVar.l(str);
        return (l == null || (l instanceof s)) ? 0 : l.b();
    }

    /* renamed from: x */
    public static final double m22534x(int i) {
        double[] dArr = new double[3];
        C26493a.m1753f(i, dArr);
        return dArr[0];
    }

    /* renamed from: y */
    public static Location m22533y(Context context) {
        Location lastKnownLocation;
        if (((AbstractC21187w1) context.getApplicationContext()).mo10154s().mo11647c().mo13825h("android.permission.ACCESS_COARSE_LOCATION")) {
            try {
                lastKnownLocation = ((LocationManager) context.getSystemService("location")).getLastKnownLocation(AnalyticsConstants.NETWORK);
            } catch (SecurityException e) {
            } catch (RuntimeException e2) {
                String m25486a = C10945m.m25486a(e2);
                l.e("AdsUtil", RemoteMessageConst.Notification.TAG);
                l.e(m25486a, RemoteMessageConst.MessageBody.MSG);
            }
            return lastKnownLocation;
        }
        lastKnownLocation = null;
        return lastKnownLocation;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: z */
    public static long m22532z(String str, t tVar) {
        q l = tVar.l(str);
        return (l == null || (l instanceof s)) ? (char) 0 : l.f();
    }
}
