package p193e.p194a.p372b0.p430q;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.view.View;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.MediaFormat;
import com.tenor.android.core.constant.ViewAction;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b0.q.r */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/r.class */
public final class C8608r implements AbstractC8607q {

    /* renamed from: a */
    public final Context f26449a;

    /* renamed from: b */
    public final f f26450b;

    /* renamed from: c */
    public final f f26451c;

    @e(c = "com.truecaller.common.util.ImageRendererImpl", f = "ImageRenderer.kt", l = {44, 45}, m = "renderViewAsPng")
    /* renamed from: e.a.b0.q.r$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/r$a.class */
    public static final class C8609a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f26452d;

        /* renamed from: e */
        public int f26453e;

        /* renamed from: g */
        public Object f26455g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8609a(d dVar) {
            super(dVar);
            C8608r.this = r4;
        }

        /* renamed from: s */
        public final Object m28228s(Object obj) {
            this.f26452d = obj;
            this.f26453e |= Integer.MIN_VALUE;
            return C8608r.this.mo28229a(null, 0, 0, this);
        }
    }

    @e(c = "com.truecaller.common.util.ImageRendererImpl$renderViewAsPng$2", f = "ImageRenderer.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b0.q.r$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/r$b.class */
    public static final class C8610b extends i implements p<i0, d<? super Uri>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Bitmap f26457f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8610b(Bitmap bitmap, d dVar) {
            super(2, dVar);
            C8608r.this = r5;
            this.f26457f = bitmap;
        }

        /* renamed from: i */
        public final d<s> m28227i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8610b(this.f26457f, dVar);
        }

        /* renamed from: k */
        public final Object m28226k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8608r c8608r = C8608r.this;
            Bitmap bitmap = this.f26457f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Uri m28326O = C8582g0.m28326O(c8608r.f26449a, bitmap, MediaFormat.PNG, Bitmap.CompressFormat.PNG, 100);
            bitmap.recycle();
            return m28326O;
        }

        /* renamed from: s */
        public final Object m28225s(Object obj) {
            C25225a.m3932a3(obj);
            Uri m28326O = C8582g0.m28326O(C8608r.this.f26449a, this.f26457f, MediaFormat.PNG, Bitmap.CompressFormat.PNG, 100);
            this.f26457f.recycle();
            return m28326O;
        }
    }

    @e(c = "com.truecaller.common.util.ImageRendererImpl$renderViewAsPng$bitmap$1", f = "ImageRenderer.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b0.q.r$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/r$c.class */
    public static final class C8611c extends i implements p<i0, d<? super Bitmap>, Object> {

        /* renamed from: f */
        public final /* synthetic */ View f26459f;

        /* renamed from: g */
        public final /* synthetic */ int f26460g;

        /* renamed from: h */
        public final /* synthetic */ int f26461h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8611c(View view, int i, int i2, d dVar) {
            super(2, dVar);
            C8608r.this = r5;
            this.f26459f = view;
            this.f26460g = i;
            this.f26461h = i2;
        }

        /* renamed from: i */
        public final d<s> m28224i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8611c(this.f26459f, this.f26460g, this.f26461h, dVar);
        }

        /* renamed from: k */
        public final Object m28223k(Object obj, Object obj2) {
            return m28224i(obj, (d) obj2).m28222s(s.a);
        }

        /* renamed from: s */
        public final Object m28222s(Object obj) {
            C25225a.m3932a3(obj);
            C8608r c8608r = C8608r.this;
            View view = this.f26459f;
            int i = this.f26460g;
            int i2 = this.f26461h;
            Objects.requireNonNull(c8608r);
            l.e(view, ViewAction.VIEW);
            Context context = view.getContext();
            l.d(context, "view.context");
            int m13645A = C19291g.m13645A(context, i);
            Context context2 = view.getContext();
            l.d(context2, "view.context");
            int m13645A2 = C19291g.m13645A(context2, i2);
            view.measure(View.MeasureSpec.makeMeasureSpec(m13645A, 1073741824), View.MeasureSpec.makeMeasureSpec(m13645A2, 1073741824));
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            Bitmap createBitmap = Bitmap.createBitmap(m13645A, m13645A2, Bitmap.Config.ARGB_8888);
            view.draw(new Canvas(createBitmap));
            l.d(createBitmap, "bitmap");
            return createBitmap;
        }
    }

    @Inject
    public C8608r(Context context, @Named("UI") f fVar, @Named("IO") f fVar2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "ui");
        l.e(fVar2, "async");
        this.f26449a = context;
        this.f26450b = fVar;
        this.f26451c = fVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f3  */
    @Override // p193e.p194a.p372b0.p430q.AbstractC8607q
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo28229a(android.view.View r9, int r10, int r11, s1.w.d<? super android.net.Uri> r12) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p430q.C8608r.mo28229a(android.view.View, int, int, s1.w.d):java.lang.Object");
    }
}
