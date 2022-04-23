package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;
/* renamed from: androidx.core.app.j */
/* loaded from: classes-dex2jar.jar:androidx/core/app/j.class */
public final class C0612j {

    /* renamed from: androidx.core.app.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/j$a.class */
    public static final class C0613a {

        /* renamed from: a */
        final Bundle f2805a;

        /* renamed from: b */
        boolean f2806b;

        /* renamed from: c */
        public int f2807c;

        /* renamed from: d */
        public CharSequence f2808d;

        /* renamed from: e */
        public PendingIntent f2809e;

        /* renamed from: f */
        private final C0619m[] f2810f;

        /* renamed from: g */
        private final C0619m[] f2811g;

        /* renamed from: h */
        private boolean f2812h;

        /* renamed from: i */
        private final int f2813i;

        public C0613a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i, charSequence, pendingIntent, new Bundle());
        }

        private C0613a(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
            this.f2806b = true;
            this.f2807c = i;
            this.f2808d = C0615c.m8717d(charSequence);
            this.f2809e = pendingIntent;
            this.f2805a = bundle;
            this.f2810f = null;
            this.f2811g = null;
            this.f2812h = true;
            this.f2813i = 0;
            this.f2806b = true;
        }

        /* renamed from: a */
        public final boolean m8736a() {
            return this.f2812h;
        }

        /* renamed from: b */
        public final C0619m[] m8735b() {
            return this.f2810f;
        }

        /* renamed from: c */
        public final int m8734c() {
            return this.f2813i;
        }

        /* renamed from: d */
        public final C0619m[] m8733d() {
            return this.f2811g;
        }
    }

    /* renamed from: androidx.core.app.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/j$b.class */
    public static final class C0614b extends AbstractC0616d {

        /* renamed from: e */
        private CharSequence f2814e;

        /* renamed from: a */
        public final C0614b m8732a(CharSequence charSequence) {
            this.f2814e = C0615c.m8717d(charSequence);
            return this;
        }

        @Override // androidx.core.app.C0612j.AbstractC0616d
        /* renamed from: a */
        public final void mo8715a(AbstractC0611i iVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(iVar.mo8713a()).setBigContentTitle(this.f2857b).bigText(this.f2814e);
                if (this.f2859d) {
                    bigText.setSummaryText(this.f2858c);
                }
            }
        }
    }

    /* renamed from: androidx.core.app.j$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/j$c.class */
    public static final class C0615c {

        /* renamed from: A */
        String f2815A;

        /* renamed from: B */
        Bundle f2816B;

        /* renamed from: C */
        int f2817C;

        /* renamed from: D */
        int f2818D;

        /* renamed from: E */
        Notification f2819E;

        /* renamed from: F */
        RemoteViews f2820F;

        /* renamed from: G */
        RemoteViews f2821G;

        /* renamed from: H */
        RemoteViews f2822H;

        /* renamed from: I */
        String f2823I;

        /* renamed from: J */
        int f2824J;

        /* renamed from: K */
        String f2825K;

        /* renamed from: L */
        long f2826L;

        /* renamed from: M */
        int f2827M;

        /* renamed from: N */
        Notification f2828N;
        @Deprecated

        /* renamed from: O */
        public ArrayList<String> f2829O;

        /* renamed from: a */
        public Context f2830a;

        /* renamed from: b */
        public ArrayList<C0613a> f2831b;

        /* renamed from: c */
        ArrayList<C0613a> f2832c;

        /* renamed from: d */
        CharSequence f2833d;

        /* renamed from: e */
        CharSequence f2834e;

        /* renamed from: f */
        PendingIntent f2835f;

        /* renamed from: g */
        PendingIntent f2836g;

        /* renamed from: h */
        RemoteViews f2837h;

        /* renamed from: i */
        Bitmap f2838i;

        /* renamed from: j */
        CharSequence f2839j;

        /* renamed from: k */
        int f2840k;

        /* renamed from: l */
        int f2841l;

        /* renamed from: m */
        boolean f2842m;

        /* renamed from: n */
        boolean f2843n;

        /* renamed from: o */
        AbstractC0616d f2844o;

        /* renamed from: p */
        CharSequence f2845p;

        /* renamed from: q */
        CharSequence[] f2846q;

        /* renamed from: r */
        int f2847r;

        /* renamed from: s */
        int f2848s;

        /* renamed from: t */
        boolean f2849t;

        /* renamed from: u */
        String f2850u;

        /* renamed from: v */
        boolean f2851v;

        /* renamed from: w */
        String f2852w;

        /* renamed from: x */
        boolean f2853x;

        /* renamed from: y */
        boolean f2854y;

        /* renamed from: z */
        boolean f2855z;

        private C0615c(Context context) {
            this.f2831b = new ArrayList<>();
            this.f2832c = new ArrayList<>();
            this.f2842m = true;
            this.f2853x = false;
            this.f2817C = 0;
            this.f2818D = 0;
            this.f2824J = 0;
            this.f2827M = 0;
            this.f2828N = new Notification();
            this.f2830a = context;
            this.f2823I = null;
            this.f2828N.when = System.currentTimeMillis();
            this.f2828N.audioStreamType = -1;
            this.f2841l = 0;
            this.f2829O = new ArrayList<>();
        }

        @Deprecated
        public C0615c(Context context, byte b) {
            this(context);
        }

        /* renamed from: d */
        protected static CharSequence m8717d(CharSequence charSequence) {
            if (charSequence == null) {
                return charSequence;
            }
            CharSequence charSequence2 = charSequence;
            if (charSequence.length() > 5120) {
                charSequence2 = charSequence.subSequence(0, 5120);
            }
            return charSequence2;
        }

        /* renamed from: a */
        public final C0615c m8731a() {
            this.f2828N.flags |= 16;
            return this;
        }

        /* renamed from: a */
        public final C0615c m8730a(int i) {
            this.f2828N.icon = i;
            return this;
        }

        /* renamed from: a */
        public final C0615c m8729a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.f2831b.add(new C0613a(i, charSequence, pendingIntent));
            return this;
        }

        /* renamed from: a */
        public final C0615c m8728a(long j) {
            this.f2828N.when = j;
            return this;
        }

        /* renamed from: a */
        public final C0615c m8727a(PendingIntent pendingIntent) {
            this.f2835f = pendingIntent;
            return this;
        }

        /* renamed from: a */
        public final C0615c m8726a(Uri uri) {
            Notification notification = this.f2828N;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f2828N.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        /* renamed from: a */
        public final C0615c m8725a(AbstractC0616d dVar) {
            if (this.f2844o != dVar) {
                this.f2844o = dVar;
                AbstractC0616d dVar2 = this.f2844o;
                if (dVar2 != null) {
                    dVar2.m8714a(this);
                }
            }
            return this;
        }

        /* renamed from: a */
        public final C0615c m8724a(CharSequence charSequence) {
            this.f2833d = m8717d(charSequence);
            return this;
        }

        /* renamed from: a */
        public final C0615c m8723a(String str) {
            this.f2823I = str;
            return this;
        }

        /* renamed from: b */
        public final C0615c m8722b() {
            this.f2853x = true;
            return this;
        }

        /* renamed from: b */
        public final C0615c m8721b(CharSequence charSequence) {
            this.f2834e = m8717d(charSequence);
            return this;
        }

        /* renamed from: c */
        public final C0615c m8720c() {
            this.f2841l = 2;
            return this;
        }

        /* renamed from: c */
        public final C0615c m8719c(CharSequence charSequence) {
            this.f2828N.tickerText = m8717d(charSequence);
            return this;
        }

        /* renamed from: d */
        public final Bundle m8718d() {
            if (this.f2816B == null) {
                this.f2816B = new Bundle();
            }
            return this.f2816B;
        }

        /* renamed from: e */
        public final Notification m8716e() {
            return new C0617k(this).m8710b();
        }
    }

    /* renamed from: androidx.core.app.j$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/j$d.class */
    public static abstract class AbstractC0616d {

        /* renamed from: a */
        protected C0615c f2856a;

        /* renamed from: b */
        CharSequence f2857b;

        /* renamed from: c */
        CharSequence f2858c;

        /* renamed from: d */
        boolean f2859d = false;

        /* renamed from: a */
        public void mo8715a(AbstractC0611i iVar) {
        }

        /* renamed from: a */
        public final void m8714a(C0615c cVar) {
            if (this.f2856a != cVar) {
                this.f2856a = cVar;
                C0615c cVar2 = this.f2856a;
                if (cVar2 != null) {
                    cVar2.m8725a(this);
                }
            }
        }
    }

    /* renamed from: a */
    public static Bundle m8737a(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return C0618l.m8708a(notification);
        }
        return null;
    }
}
