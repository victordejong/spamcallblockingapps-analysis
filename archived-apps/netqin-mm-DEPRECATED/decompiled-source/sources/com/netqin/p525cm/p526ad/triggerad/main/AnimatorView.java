package com.netqin.p525cm.p526ad.triggerad.main;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import p131c.p390g.p391a.p392a.C6475a;
import p131c.p390g.p391a.p392a.C6478b;
import p131c.p431l.p432a.p433a.p439f.p440a.C6714b;
import p131c.p431l.p432a.p433a.p439f.p440a.p441c.C6717b;
import p131c.p431l.p432a.p433a.p439f.p440a.p441c.C6718c;
import p131c.p431l.p432a.p433a.p439f.p440a.p441c.C6719d;
import p131c.p431l.p432a.p433a.p439f.p440a.p441c.C6720e;
import p131c.p431l.p432a.p433a.p439f.p440a.p441c.C6721f;
import p131c.p431l.p432a.p433a.p439f.p440a.p441c.C6722g;
import p131c.p431l.p432a.p433a.p439f.p440a.p441c.C6723h;
/* renamed from: com.netqin.cm.ad.triggerad.main.AnimatorView */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/triggerad/main/AnimatorView.class */
public class AnimatorView extends View {

    /* renamed from: a */
    public C6478b f35229a;

    /* renamed from: b */
    public C6475a f35230b;

    /* renamed from: c */
    public C6714b f35231c;

    /* renamed from: com.netqin.cm.ad.triggerad.main.AnimatorView$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/triggerad/main/AnimatorView$a.class */
    public class C9020a extends C6475a.AbstractC6477b {
        public C9020a() {
        }

        @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6477b
        /* renamed from: b */
        public void mo3645b() {
            AnimatorView.this.m3646f();
        }
    }

    /* renamed from: com.netqin.cm.ad.triggerad.main.AnimatorView$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/triggerad/main/AnimatorView$b.class */
    public class C9021b extends C6475a.AbstractC6477b {
        public C9021b() {
        }

        @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6477b
        /* renamed from: b */
        public void mo3645b() {
            AnimatorView.this.m3648e();
        }
    }

    /* renamed from: com.netqin.cm.ad.triggerad.main.AnimatorView$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/triggerad/main/AnimatorView$c.class */
    public class RunnableC9022c implements Runnable {
        public RunnableC9022c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AnimatorView.this.m3650d();
            AnimatorView.this.m3652c();
        }
    }

    /* renamed from: com.netqin.cm.ad.triggerad.main.AnimatorView$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/triggerad/main/AnimatorView$d.class */
    public class RunnableC9023d implements Runnable {
        public RunnableC9023d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AnimatorView.this.f35231c.m19997c();
            AnimatorView.this.f35231c.m19999b();
        }
    }

    public AnimatorView(Context context) {
        this(context, null);
    }

    public AnimatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35229a = new C6478b(this);
    }

    /* renamed from: a */
    public void m3656a() {
        m3654b();
    }

    /* renamed from: b */
    public final void m3654b() {
        C6717b.f20689v = 0;
        C6475a a = C6475a.m20763a(C6720e.class);
        a.m20768a(0L);
        a.m20762a(true);
        a.m20764a(new C9020a());
        this.f35230b = a;
        this.f35229a.m20735a(a);
    }

    /* renamed from: c */
    public final void m3652c() {
        C6475a a = C6475a.m20763a(C6717b.class);
        a.m20768a(1200L);
        this.f35229a.m20735a(a);
        C6475a a2 = C6475a.m20763a(C6723h.class);
        a2.m20760b(700L);
        a2.m20768a(1200L);
        this.f35229a.m20735a(a2);
        C6475a a3 = C6475a.m20763a(C6718c.class);
        a3.m20760b(700L);
        a3.m20768a(1200L);
        this.f35229a.m20735a(a3);
        postDelayed(new RunnableC9023d(), 7230L);
    }

    /* renamed from: d */
    public final void m3650d() {
        C6475a a = C6475a.m20763a(C6721f.class);
        a.m20768a(0L);
        this.f35229a.m20735a(a);
    }

    /* renamed from: e */
    public final void m3648e() {
        C6475a a = C6475a.m20763a(C6722g.class);
        a.m20768a(0L);
        this.f35229a.m20735a(a);
        postDelayed(new RunnableC9022c(), 400L);
    }

    /* renamed from: f */
    public final void m3646f() {
        C6475a a = C6475a.m20763a(C6719d.class);
        a.m20768a(0L);
        a.m20762a(true);
        a.m20764a(new C9021b());
        this.f35229a.m20735a(a);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.f35229a.m20736a(canvas);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f35229a.m20737a(i, i2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public void setTriggerAdHelper(C6714b bVar) {
        this.f35231c = bVar;
    }
}
