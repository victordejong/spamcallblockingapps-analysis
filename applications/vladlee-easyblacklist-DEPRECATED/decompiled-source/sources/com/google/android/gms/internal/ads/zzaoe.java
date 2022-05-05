package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoe.class */
public final class zzaoe extends zzaoo {

    /* renamed from: a */
    private static final Set<String> f11084a = CollectionUtils.setOf("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");

    /* renamed from: b */
    private String f11085b = "top-right";

    /* renamed from: c */
    private boolean f11086c = true;

    /* renamed from: d */
    private int f11087d = 0;

    /* renamed from: e */
    private int f11088e = 0;

    /* renamed from: f */
    private int f11089f = -1;

    /* renamed from: g */
    private int f11090g = 0;

    /* renamed from: h */
    private int f11091h = 0;

    /* renamed from: i */
    private int f11092i = -1;

    /* renamed from: j */
    private final Object f11093j = new Object();

    /* renamed from: k */
    private final zzbdi f11094k;

    /* renamed from: l */
    private final Activity f11095l;

    /* renamed from: m */
    private zzbey f11096m;

    /* renamed from: n */
    private ImageView f11097n;

    /* renamed from: o */
    private LinearLayout f11098o;

    /* renamed from: p */
    private zzaon f11099p;

    /* renamed from: q */
    private PopupWindow f11100q;

    /* renamed from: r */
    private RelativeLayout f11101r;

    /* renamed from: s */
    private ViewGroup f11102s;

    public zzaoe(zzbdi zzbdiVar, zzaon zzaonVar) {
        super(zzbdiVar, "resize");
        this.f11094k = zzbdiVar;
        this.f11095l = zzbdiVar.zzyn();
        this.f11099p = zzaonVar;
    }

    public final void zza(int i, int i2, boolean z) {
        synchronized (this.f11093j) {
            this.f11087d = i;
            this.f11088e = i2;
        }
    }

    public final void zzac(boolean z) {
        synchronized (this.f11093j) {
            if (this.f11100q != null) {
                this.f11100q.dismiss();
                this.f11101r.removeView(this.f11094k.getView());
                if (this.f11102s != null) {
                    this.f11102s.removeView(this.f11097n);
                    this.f11102s.addView(this.f11094k.getView());
                    this.f11094k.zza(this.f11096m);
                }
                if (z) {
                    zzdu("default");
                    if (this.f11099p != null) {
                        this.f11099p.zzti();
                    }
                }
                this.f11100q = null;
                this.f11101r = null;
                this.f11102s = null;
                this.f11098o = null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x03b0, code lost:
        if ((r15 + 50) <= r0[1]) goto L_0x03b6;
     */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03d5 A[Catch: all -> 0x087f, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:22:0x0057, B:24:0x0059, B:26:0x006a, B:28:0x0081, B:30:0x0091, B:32:0x00a8, B:34:0x00b8, B:36:0x00cf, B:38:0x00df, B:40:0x00f6, B:42:0x0106, B:44:0x0119, B:46:0x012b, B:48:0x0131, B:50:0x0137, B:57:0x0149, B:58:0x0150, B:60:0x0152, B:62:0x0160, B:65:0x016b, B:67:0x018e, B:70:0x019c, B:73:0x01a8, B:75:0x01b1, B:78:0x01bd, B:80:0x01c6, B:84:0x01d5, B:86:0x01dc, B:87:0x01e7, B:89:0x0223, B:93:0x0232, B:97:0x0241, B:101:0x0250, B:105:0x025f, B:109:0x026e, B:126:0x029c, B:127:0x02b7, B:128:0x02d8, B:130:0x02f9, B:131:0x0301, B:133:0x032a, B:134:0x0356, B:136:0x0371, B:137:0x0379, B:150:0x03c6, B:156:0x03d5, B:158:0x03dc, B:159:0x03fb, B:161:0x0417, B:164:0x0435, B:166:0x0440, B:171:0x0461, B:173:0x046f, B:175:0x047b, B:178:0x048b, B:179:0x0493, B:181:0x0495, B:183:0x04ca, B:185:0x04d2, B:187:0x04ea, B:188:0x053d, B:189:0x0544, B:190:0x0547, B:195:0x05b5, B:196:0x0613, B:200:0x0655, B:205:0x0667, B:210:0x0679, B:215:0x068b, B:220:0x069d, B:225:0x06af, B:241:0x06e0, B:243:0x06ea, B:244:0x06f3, B:246:0x0700, B:248:0x0709, B:249:0x0711, B:251:0x071e, B:252:0x0728, B:253:0x0732, B:255:0x073f, B:257:0x076f, B:259:0x07aa, B:261:0x07b1, B:263:0x07c6, B:264:0x07fc, B:267:0x07ff, B:269:0x080e, B:270:0x0819, B:272:0x0825, B:274:0x0840, B:276:0x0869, B:278:0x086b, B:279:0x0873, B:281:0x0875, B:282:0x087d), top: B:291:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x048b A[Catch: all -> 0x087f, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:22:0x0057, B:24:0x0059, B:26:0x006a, B:28:0x0081, B:30:0x0091, B:32:0x00a8, B:34:0x00b8, B:36:0x00cf, B:38:0x00df, B:40:0x00f6, B:42:0x0106, B:44:0x0119, B:46:0x012b, B:48:0x0131, B:50:0x0137, B:57:0x0149, B:58:0x0150, B:60:0x0152, B:62:0x0160, B:65:0x016b, B:67:0x018e, B:70:0x019c, B:73:0x01a8, B:75:0x01b1, B:78:0x01bd, B:80:0x01c6, B:84:0x01d5, B:86:0x01dc, B:87:0x01e7, B:89:0x0223, B:93:0x0232, B:97:0x0241, B:101:0x0250, B:105:0x025f, B:109:0x026e, B:126:0x029c, B:127:0x02b7, B:128:0x02d8, B:130:0x02f9, B:131:0x0301, B:133:0x032a, B:134:0x0356, B:136:0x0371, B:137:0x0379, B:150:0x03c6, B:156:0x03d5, B:158:0x03dc, B:159:0x03fb, B:161:0x0417, B:164:0x0435, B:166:0x0440, B:171:0x0461, B:173:0x046f, B:175:0x047b, B:178:0x048b, B:179:0x0493, B:181:0x0495, B:183:0x04ca, B:185:0x04d2, B:187:0x04ea, B:188:0x053d, B:189:0x0544, B:190:0x0547, B:195:0x05b5, B:196:0x0613, B:200:0x0655, B:205:0x0667, B:210:0x0679, B:215:0x068b, B:220:0x069d, B:225:0x06af, B:241:0x06e0, B:243:0x06ea, B:244:0x06f3, B:246:0x0700, B:248:0x0709, B:249:0x0711, B:251:0x071e, B:252:0x0728, B:253:0x0732, B:255:0x073f, B:257:0x076f, B:259:0x07aa, B:261:0x07b1, B:263:0x07c6, B:264:0x07fc, B:267:0x07ff, B:269:0x080e, B:270:0x0819, B:272:0x0825, B:274:0x0840, B:276:0x0869, B:278:0x086b, B:279:0x0873, B:281:0x0875, B:282:0x087d), top: B:291:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0495 A[Catch: all -> 0x087f, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:22:0x0057, B:24:0x0059, B:26:0x006a, B:28:0x0081, B:30:0x0091, B:32:0x00a8, B:34:0x00b8, B:36:0x00cf, B:38:0x00df, B:40:0x00f6, B:42:0x0106, B:44:0x0119, B:46:0x012b, B:48:0x0131, B:50:0x0137, B:57:0x0149, B:58:0x0150, B:60:0x0152, B:62:0x0160, B:65:0x016b, B:67:0x018e, B:70:0x019c, B:73:0x01a8, B:75:0x01b1, B:78:0x01bd, B:80:0x01c6, B:84:0x01d5, B:86:0x01dc, B:87:0x01e7, B:89:0x0223, B:93:0x0232, B:97:0x0241, B:101:0x0250, B:105:0x025f, B:109:0x026e, B:126:0x029c, B:127:0x02b7, B:128:0x02d8, B:130:0x02f9, B:131:0x0301, B:133:0x032a, B:134:0x0356, B:136:0x0371, B:137:0x0379, B:150:0x03c6, B:156:0x03d5, B:158:0x03dc, B:159:0x03fb, B:161:0x0417, B:164:0x0435, B:166:0x0440, B:171:0x0461, B:173:0x046f, B:175:0x047b, B:178:0x048b, B:179:0x0493, B:181:0x0495, B:183:0x04ca, B:185:0x04d2, B:187:0x04ea, B:188:0x053d, B:189:0x0544, B:190:0x0547, B:195:0x05b5, B:196:0x0613, B:200:0x0655, B:205:0x0667, B:210:0x0679, B:215:0x068b, B:220:0x069d, B:225:0x06af, B:241:0x06e0, B:243:0x06ea, B:244:0x06f3, B:246:0x0700, B:248:0x0709, B:249:0x0711, B:251:0x071e, B:252:0x0728, B:253:0x0732, B:255:0x073f, B:257:0x076f, B:259:0x07aa, B:261:0x07b1, B:263:0x07c6, B:264:0x07fc, B:267:0x07ff, B:269:0x080e, B:270:0x0819, B:272:0x0825, B:274:0x0840, B:276:0x0869, B:278:0x086b, B:279:0x0873, B:281:0x0875, B:282:0x087d), top: B:291:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x07b1 A[Catch: all -> 0x087f, TryCatch #1 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:22:0x0057, B:24:0x0059, B:26:0x006a, B:28:0x0081, B:30:0x0091, B:32:0x00a8, B:34:0x00b8, B:36:0x00cf, B:38:0x00df, B:40:0x00f6, B:42:0x0106, B:44:0x0119, B:46:0x012b, B:48:0x0131, B:50:0x0137, B:57:0x0149, B:58:0x0150, B:60:0x0152, B:62:0x0160, B:65:0x016b, B:67:0x018e, B:70:0x019c, B:73:0x01a8, B:75:0x01b1, B:78:0x01bd, B:80:0x01c6, B:84:0x01d5, B:86:0x01dc, B:87:0x01e7, B:89:0x0223, B:93:0x0232, B:97:0x0241, B:101:0x0250, B:105:0x025f, B:109:0x026e, B:126:0x029c, B:127:0x02b7, B:128:0x02d8, B:130:0x02f9, B:131:0x0301, B:133:0x032a, B:134:0x0356, B:136:0x0371, B:137:0x0379, B:150:0x03c6, B:156:0x03d5, B:158:0x03dc, B:159:0x03fb, B:161:0x0417, B:164:0x0435, B:166:0x0440, B:171:0x0461, B:173:0x046f, B:175:0x047b, B:178:0x048b, B:179:0x0493, B:181:0x0495, B:183:0x04ca, B:185:0x04d2, B:187:0x04ea, B:188:0x053d, B:189:0x0544, B:190:0x0547, B:195:0x05b5, B:196:0x0613, B:200:0x0655, B:205:0x0667, B:210:0x0679, B:215:0x068b, B:220:0x069d, B:225:0x06af, B:241:0x06e0, B:243:0x06ea, B:244:0x06f3, B:246:0x0700, B:248:0x0709, B:249:0x0711, B:251:0x071e, B:252:0x0728, B:253:0x0732, B:255:0x073f, B:257:0x076f, B:259:0x07aa, B:261:0x07b1, B:263:0x07c6, B:264:0x07fc, B:267:0x07ff, B:269:0x080e, B:270:0x0819, B:272:0x0825, B:274:0x0840, B:276:0x0869, B:278:0x086b, B:279:0x0873, B:281:0x0875, B:282:0x087d), top: B:291:0x0007, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzg(java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 2180
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaoe.zzg(java.util.Map):void");
    }

    public final void zzi(int i, int i2) {
        this.f11087d = i;
        this.f11088e = i2;
    }

    public final boolean zztg() {
        boolean z;
        synchronized (this.f11093j) {
            z = this.f11100q != null;
        }
        return z;
    }
}
