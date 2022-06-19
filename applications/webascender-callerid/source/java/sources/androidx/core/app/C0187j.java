package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import f.h.b;
import java.util.ArrayList;
/* renamed from: androidx.core.app.j */
/* loaded from: classes-dex2jar.jar:androidx/core/app/j.class */
public class C0187j {

    /* renamed from: androidx.core.app.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/j$a.class */
    public static class C0188a {

        /* renamed from: a */
        final Bundle f1223a;

        /* renamed from: b */
        private IconCompat f1224b;

        /* renamed from: c */
        private final C0198n[] f1225c;

        /* renamed from: d */
        private final C0198n[] f1226d;

        /* renamed from: e */
        private boolean f1227e;

        /* renamed from: f */
        boolean f1228f;

        /* renamed from: g */
        private final int f1229g;

        /* renamed from: h */
        private final boolean f1230h;
        @Deprecated

        /* renamed from: i */
        public int f1231i;

        /* renamed from: j */
        public CharSequence f1232j;

        /* renamed from: k */
        public PendingIntent f1233k;

        public C0188a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.b((Resources) null, "", i) : null, charSequence, pendingIntent);
        }

        public C0188a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false);
        }

        C0188a(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C0198n[] c0198nArr, C0198n[] c0198nArr2, boolean z, int i, boolean z2, boolean z3) {
            this.f1228f = true;
            this.f1224b = iconCompat;
            if (iconCompat != null && iconCompat.g() == 2) {
                this.f1231i = iconCompat.c();
            }
            this.f1232j = C0190e.m6144d(charSequence);
            this.f1233k = pendingIntent;
            this.f1223a = bundle == null ? new Bundle() : bundle;
            this.f1225c = c0198nArr;
            this.f1226d = c0198nArr2;
            this.f1227e = z;
            this.f1229g = i;
            this.f1228f = z2;
            this.f1230h = z3;
        }

        /* renamed from: a */
        public PendingIntent m6165a() {
            return this.f1233k;
        }

        /* renamed from: b */
        public boolean m6164b() {
            return this.f1227e;
        }

        /* renamed from: c */
        public C0198n[] m6163c() {
            return this.f1226d;
        }

        /* renamed from: d */
        public Bundle m6162d() {
            return this.f1223a;
        }

        /* renamed from: e */
        public IconCompat m6161e() {
            int i;
            if (this.f1224b == null && (i = this.f1231i) != 0) {
                this.f1224b = IconCompat.b((Resources) null, "", i);
            }
            return this.f1224b;
        }

        /* renamed from: f */
        public C0198n[] m6160f() {
            return this.f1225c;
        }

        /* renamed from: g */
        public int m6159g() {
            return this.f1229g;
        }

        /* renamed from: h */
        public boolean m6158h() {
            return this.f1228f;
        }

        /* renamed from: i */
        public CharSequence m6157i() {
            return this.f1232j;
        }

        /* renamed from: j */
        public boolean m6156j() {
            return this.f1230h;
        }
    }

    /* renamed from: androidx.core.app.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/j$d.class */
    public static final class C0189d {
        /* renamed from: b */
        public static Notification.BubbleMetadata m6154b(C0189d c0189d) {
            if (c0189d == null) {
                return null;
            }
            new Notification.BubbleMetadata.Builder();
            c0189d.m6155a();
            throw null;
        }

        /* renamed from: a */
        public boolean m6155a() {
            throw null;
        }
    }

    /* renamed from: androidx.core.app.j$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/j$e.class */
    public static class C0190e {

        /* renamed from: A */
        String f1234A;

        /* renamed from: B */
        Bundle f1235B;

        /* renamed from: C */
        int f1236C;

        /* renamed from: D */
        int f1237D;

        /* renamed from: E */
        Notification f1238E;

        /* renamed from: F */
        RemoteViews f1239F;

        /* renamed from: G */
        RemoteViews f1240G;

        /* renamed from: H */
        RemoteViews f1241H;

        /* renamed from: I */
        String f1242I;

        /* renamed from: J */
        int f1243J;

        /* renamed from: K */
        String f1244K;

        /* renamed from: L */
        long f1245L;

        /* renamed from: M */
        int f1246M;

        /* renamed from: N */
        boolean f1247N;

        /* renamed from: O */
        C0189d f1248O;

        /* renamed from: P */
        Notification f1249P;

        /* renamed from: Q */
        boolean f1250Q;
        @Deprecated

        /* renamed from: R */
        public ArrayList<String> f1251R;

        /* renamed from: a */
        public Context f1252a;

        /* renamed from: b */
        public ArrayList<C0188a> f1253b;

        /* renamed from: c */
        ArrayList<C0188a> f1254c;

        /* renamed from: d */
        CharSequence f1255d;

        /* renamed from: e */
        CharSequence f1256e;

        /* renamed from: f */
        PendingIntent f1257f;

        /* renamed from: g */
        PendingIntent f1258g;

        /* renamed from: h */
        RemoteViews f1259h;

        /* renamed from: i */
        Bitmap f1260i;

        /* renamed from: j */
        CharSequence f1261j;

        /* renamed from: k */
        int f1262k;

        /* renamed from: l */
        int f1263l;

        /* renamed from: m */
        boolean f1264m;

        /* renamed from: n */
        boolean f1265n;

        /* renamed from: o */
        AbstractC0191f f1266o;

        /* renamed from: p */
        CharSequence f1267p;

        /* renamed from: q */
        CharSequence[] f1268q;

        /* renamed from: r */
        int f1269r;

        /* renamed from: s */
        int f1270s;

        /* renamed from: t */
        boolean f1271t;

        /* renamed from: u */
        String f1272u;

        /* renamed from: v */
        boolean f1273v;

        /* renamed from: w */
        String f1274w;

        /* renamed from: x */
        boolean f1275x;

        /* renamed from: y */
        boolean f1276y;

        /* renamed from: z */
        boolean f1277z;

        @Deprecated
        public C0190e(Context context) {
            this(context, null);
        }

        public C0190e(Context context, String str) {
            this.f1253b = new ArrayList<>();
            this.f1254c = new ArrayList<>();
            this.f1264m = true;
            this.f1275x = false;
            this.f1236C = 0;
            this.f1237D = 0;
            this.f1243J = 0;
            this.f1246M = 0;
            Notification notification = new Notification();
            this.f1249P = notification;
            this.f1252a = context;
            this.f1242I = str;
            notification.when = System.currentTimeMillis();
            this.f1249P.audioStreamType = -1;
            this.f1263l = 0;
            this.f1251R = new ArrayList<>();
            this.f1247N = true;
        }

        /* renamed from: d */
        protected static CharSequence m6144d(CharSequence charSequence) {
            if (charSequence == null) {
                return charSequence;
            }
            CharSequence charSequence2 = charSequence;
            if (charSequence.length() > 5120) {
                charSequence2 = charSequence.subSequence(0, 5120);
            }
            return charSequence2;
        }

        /* renamed from: e */
        private Bitmap m6143e(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap != null) {
                if (Build.VERSION.SDK_INT >= 27) {
                    bitmap2 = bitmap;
                } else {
                    Resources resources = this.f1252a.getResources();
                    int dimensionPixelSize = resources.getDimensionPixelSize(b.b);
                    int dimensionPixelSize2 = resources.getDimensionPixelSize(b.a);
                    if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                        return bitmap;
                    }
                    double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                    bitmap2 = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
                }
            }
            return bitmap2;
        }

        /* renamed from: p */
        private void m6132p(int i, boolean z) {
            if (z) {
                Notification notification = this.f1249P;
                notification.flags = i | notification.flags;
                return;
            }
            Notification notification2 = this.f1249P;
            notification2.flags = (i ^ (-1)) & notification2.flags;
        }

        /* renamed from: A */
        public C0190e m6153A(Uri uri) {
            Notification notification = this.f1249P;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        /* renamed from: B */
        public C0190e m6152B(AbstractC0191f abstractC0191f) {
            if (this.f1266o != abstractC0191f) {
                this.f1266o = abstractC0191f;
                if (abstractC0191f != null) {
                    abstractC0191f.m6116f(this);
                }
            }
            return this;
        }

        /* renamed from: C */
        public C0190e m6151C(CharSequence charSequence) {
            this.f1249P.tickerText = m6144d(charSequence);
            return this;
        }

        /* renamed from: D */
        public C0190e m6150D(long[] jArr) {
            this.f1249P.vibrate = jArr;
            return this;
        }

        /* renamed from: E */
        public C0190e m6149E(int i) {
            this.f1237D = i;
            return this;
        }

        /* renamed from: F */
        public C0190e m6148F(long j) {
            this.f1249P.when = j;
            return this;
        }

        /* renamed from: a */
        public C0190e m6147a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f1253b.add(new C0188a(i, charSequence, pendingIntent));
            return this;
        }

        /* renamed from: b */
        public Notification m6146b() {
            return new k(this).c();
        }

        /* renamed from: c */
        public Bundle m6145c() {
            if (this.f1235B == null) {
                this.f1235B = new Bundle();
            }
            return this.f1235B;
        }

        /* renamed from: f */
        public C0190e m6142f(boolean z) {
            m6132p(16, z);
            return this;
        }

        /* renamed from: g */
        public C0190e m6141g(String str) {
            this.f1234A = str;
            return this;
        }

        /* renamed from: h */
        public C0190e m6140h(String str) {
            this.f1242I = str;
            return this;
        }

        /* renamed from: i */
        public C0190e m6139i(int i) {
            this.f1236C = i;
            return this;
        }

        /* renamed from: j */
        public C0190e m6138j(PendingIntent pendingIntent) {
            this.f1257f = pendingIntent;
            return this;
        }

        /* renamed from: k */
        public C0190e m6137k(CharSequence charSequence) {
            this.f1256e = m6144d(charSequence);
            return this;
        }

        /* renamed from: l */
        public C0190e m6136l(CharSequence charSequence) {
            this.f1255d = m6144d(charSequence);
            return this;
        }

        /* renamed from: m */
        public C0190e m6135m(RemoteViews remoteViews) {
            this.f1241H = remoteViews;
            return this;
        }

        /* renamed from: n */
        public C0190e m6134n(int i) {
            Notification notification = this.f1249P;
            notification.defaults = i;
            if ((i & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        /* renamed from: o */
        public C0190e m6133o(PendingIntent pendingIntent) {
            this.f1249P.deleteIntent = pendingIntent;
            return this;
        }

        /* renamed from: q */
        public C0190e m6131q(PendingIntent pendingIntent, boolean z) {
            this.f1258g = pendingIntent;
            m6132p(128, z);
            return this;
        }

        /* renamed from: r */
        public C0190e m6130r(Bitmap bitmap) {
            this.f1260i = m6143e(bitmap);
            return this;
        }

        /* renamed from: s */
        public C0190e m6129s(int i, int i2, int i3) {
            Notification notification = this.f1249P;
            notification.ledARGB = i;
            notification.ledOnMS = i2;
            notification.ledOffMS = i3;
            notification.flags = ((i2 == 0 || i3 == 0) ? 0 : 1) | (notification.flags & (-2));
            return this;
        }

        /* renamed from: t */
        public C0190e m6128t(boolean z) {
            this.f1275x = z;
            return this;
        }

        /* renamed from: u */
        public C0190e m6127u() {
            this.f1250Q = true;
            return this;
        }

        /* renamed from: v */
        public C0190e m6126v(int i) {
            this.f1262k = i;
            return this;
        }

        /* renamed from: w */
        public C0190e m6125w(boolean z) {
            m6132p(2, z);
            return this;
        }

        /* renamed from: x */
        public C0190e m6124x(int i) {
            this.f1263l = i;
            return this;
        }

        /* renamed from: y */
        public C0190e m6123y(boolean z) {
            this.f1264m = z;
            return this;
        }

        /* renamed from: z */
        public C0190e m6122z(int i) {
            this.f1249P.icon = i;
            return this;
        }
    }

    /* renamed from: androidx.core.app.j$f */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/j$f.class */
    public static abstract class AbstractC0191f {

        /* renamed from: a */
        protected C0190e f1278a;

        /* renamed from: b */
        CharSequence f1279b;

        /* renamed from: c */
        CharSequence f1280c;

        /* renamed from: d */
        boolean f1281d = false;

        /* renamed from: a */
        public void m6121a(Bundle bundle) {
        }

        /* renamed from: b */
        public abstract void m6120b(AbstractC0186i abstractC0186i);

        /* renamed from: c */
        public RemoteViews m6119c(AbstractC0186i abstractC0186i) {
            return null;
        }

        /* renamed from: d */
        public RemoteViews m6118d(AbstractC0186i abstractC0186i) {
            return null;
        }

        /* renamed from: e */
        public RemoteViews m6117e(AbstractC0186i abstractC0186i) {
            return null;
        }

        /* renamed from: f */
        public void m6116f(C0190e c0190e) {
            if (this.f1278a != c0190e) {
                this.f1278a = c0190e;
                if (c0190e == null) {
                    return;
                }
                c0190e.m6152B(this);
            }
        }
    }

    /* renamed from: a */
    public static Bundle m6166a(Notification notification) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return notification.extras;
        }
        if (i < 16) {
            return null;
        }
        return C0192l.m6113c(notification);
    }
}
