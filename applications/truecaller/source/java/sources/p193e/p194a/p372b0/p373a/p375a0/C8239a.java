package p193e.p194a.p372b0.p373a.p375a0;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import q3.a.i0;
import q3.a.o;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b0.a.a0.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/a0/a.class */
public final class C8239a extends C8243a {

    /* renamed from: V */
    public final AvatarXView f25400V;

    /* renamed from: W */
    public final int f25401W;

    /* renamed from: X */
    public final Context f25402X;

    /* renamed from: Y */
    public final f f25403Y;

    /* renamed from: Z */
    public final int f25404Z;

    @e(c = "com.truecaller.common.ui.notification.NotificationAvatarXPresenter", f = "NotificationAvatarXPresenter.kt", l = {43}, m = "asBitmap")
    /* renamed from: e.a.b0.a.a0.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/a0/a$a.class */
    public static final class C8240a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f25405d;

        /* renamed from: e */
        public int f25406e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8240a(d dVar) {
            super(dVar);
            C8239a.this = r4;
        }

        /* renamed from: s */
        public final Object m28758s(Object obj) {
            this.f25405d = obj;
            this.f25406e |= Integer.MIN_VALUE;
            return C8239a.this.m28760rk(0, this);
        }
    }

    @e(c = "com.truecaller.common.ui.notification.NotificationAvatarXPresenter$asBitmap$2", f = "NotificationAvatarXPresenter.kt", l = {48}, m = "invokeSuspend")
    /* renamed from: e.a.b0.a.a0.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/a0/a$b.class */
    public static final class C8241b extends i implements p<i0, d<? super Bitmap>, Object> {

        /* renamed from: e */
        public Object f25408e;

        /* renamed from: f */
        public int f25409f;

        /* renamed from: h */
        public final /* synthetic */ int f25411h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8241b(int i, d dVar) {
            super(2, dVar);
            C8239a.this = r5;
            this.f25411h = i;
        }

        /* renamed from: i */
        public final d<s> m28757i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8241b(this.f25411h, dVar);
        }

        /* renamed from: k */
        public final Object m28756k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8241b(this.f25411h, dVar).m28755s(s.a);
        }

        /* renamed from: s */
        public final Object m28755s(Object obj) {
            Object obj2;
            C8239a c8239a;
            a aVar = a.a;
            int i = this.f25409f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C8239a.this.f25400V.measure(View.MeasureSpec.makeMeasureSpec(this.f25411h, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f25411h, 1073741824));
                AvatarXView avatarXView = C8239a.this.f25400V;
                int i2 = this.f25411h;
                avatarXView.layout(0, 0, i2, i2);
                C8239a c8239a2 = C8239a.this;
                int i3 = this.f25411h;
                this.f25408e = c8239a2;
                this.f25409f = 1;
                Objects.requireNonNull(c8239a2);
                o oVar = new o(C25225a.m3844s1(this), 1);
                oVar.z();
                Uri uri = c8239a2.f25430b;
                if (uri == null) {
                    oVar.c((Object) null);
                } else if (c8239a2.mo28729Oj() != null) {
                    oVar.c(c8239a2.mo28729Oj());
                } else {
                    C21853e m15664K1 = C17891a1.C17902k.m15664K1(c8239a2.f25402X);
                    l.d(m15664K1, "GlideApp.with(context)");
                    C17891a1.C17902k.m15653O0(m15664K1, uri, new Integer(-1)).m8429M(new C8242b(i3, i3, oVar, c8239a2, i3));
                }
                obj2 = oVar.y();
                if (obj2 == aVar) {
                    l.e(this, "frame");
                }
                if (obj2 == aVar) {
                    return aVar;
                }
                c8239a = c8239a2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c8239a = (C8239a) this.f25408e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            c8239a.mo28720Xj((Drawable) obj2);
            int i4 = this.f25411h;
            Bitmap createBitmap = Bitmap.createBitmap(i4, i4, Bitmap.Config.ARGB_8888);
            C8239a.this.f25400V.draw(new Canvas(createBitmap));
            return createBitmap;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8239a(Context context, f fVar, int i) {
        super(new C19235i0(context));
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "cpuContext");
        this.f25402X = context;
        this.f25403Y = fVar;
        this.f25404Z = i;
        AvatarXView avatarXView = new AvatarXView(context, null, 0);
        this.f25400V = avatarXView;
        this.f25401W = context.getResources().getDimensionPixelSize(i);
        avatarXView.setPresenter(this);
    }

    public /* synthetic */ C8239a(Context context, f fVar, int i, int i2) {
        this(context, fVar, (i2 & 4) != 0 ? C3700R.dimen.notification_tcx_call_avatar_size : i);
    }

    /* renamed from: sk */
    public static /* synthetic */ Object m28759sk(C8239a c8239a, int i, d dVar, int i2) {
        if ((i2 & 1) != 0) {
            i = c8239a.f25401W;
        }
        return c8239a.m28760rk(i, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* renamed from: rk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m28760rk(int r7, s1.w.d<? super android.graphics.Bitmap> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p372b0.p373a.p375a0.C8239a.C8240a
            if (r0 == 0) goto L28
            r0 = r8
            e.a.b0.a.a0.a$a r0 = (p193e.p194a.p372b0.p373a.p375a0.C8239a.C8240a) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f25406e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f25406e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.b0.a.a0.a$a r0 = new e.a.b0.a.a0.a$a
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f25405d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f25406e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L60
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r8 = r0
            goto L8d
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            s1.w.f r0 = r0.f25403Y
            r12 = r0
            e.a.b0.a.a0.a$b r0 = new e.a.b0.a.a0.a$b
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = 0
            r1.<init>(r3, r4)
            r9 = r0
            r0 = r8
            r1 = 1
            r0.f25406e = r1
            r0 = r12
            r1 = r9
            r2 = r8
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = r11
            if (r0 != r1) goto L8d
            r0 = r11
            return r0
        L8d:
            r0 = r8
            java.lang.String r1 = "withContext(cpuContext) …vas)\n        bitmap\n    }"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p373a.p375a0.C8239a.m28760rk(int, s1.w.d):java.lang.Object");
    }
}
