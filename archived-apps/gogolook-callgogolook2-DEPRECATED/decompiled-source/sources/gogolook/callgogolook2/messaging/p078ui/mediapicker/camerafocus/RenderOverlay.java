package gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p459j.p460a.p474c0.p491g.p496e0.p497o.AbstractC12068c;
import p459j.p460a.p474c0.p491g.p496e0.p497o.C12071e;
/* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.camerafocus.RenderOverlay */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/camerafocus/RenderOverlay.class */
public class RenderOverlay extends FrameLayout {

    /* renamed from: a */
    public C4839a f11914a;

    /* renamed from: d */
    public int[] f11917d = new int[2];

    /* renamed from: b */
    public List<AbstractC4840b> f11915b = new ArrayList(10);

    /* renamed from: c */
    public List<AbstractC4840b> f11916c = new ArrayList(10);

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.camerafocus.RenderOverlay$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/camerafocus/RenderOverlay$a.class */
    public class C4839a extends View {

        /* renamed from: a */
        public AbstractC4840b f11918a;

        public C4839a(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            boolean z;
            super.draw(canvas);
            if (RenderOverlay.this.f11915b != null) {
                loop0: while (true) {
                    z = false;
                    for (AbstractC4840b bVar : RenderOverlay.this.f11915b) {
                        bVar.draw(canvas);
                        if (z || ((AbstractC12068c) bVar).m7298e()) {
                            z = true;
                        }
                    }
                }
                if (z) {
                    invalidate();
                }
            }
        }

        @Override // android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            RenderOverlay.this.m26948a();
            super.onLayout(z, i, i2, i3, i4);
            if (RenderOverlay.this.f11915b != null) {
                for (AbstractC4840b bVar : RenderOverlay.this.f11915b) {
                    bVar.mo7271a(i, i2, i3, i4);
                }
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            AbstractC4840b bVar = this.f11918a;
            if (bVar != null) {
                return bVar.onTouchEvent(motionEvent);
            }
            boolean z = false;
            boolean z2 = false;
            if (RenderOverlay.this.f11916c != null) {
                Iterator it = RenderOverlay.this.f11916c.iterator();
                while (true) {
                    z = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    z2 |= ((AbstractC4840b) it.next()).onTouchEvent(motionEvent);
                }
            }
            return z;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.camerafocus.RenderOverlay$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/camerafocus/RenderOverlay$b.class */
    public interface AbstractC4840b {
        /* renamed from: a */
        void mo7271a(int i, int i2, int i3, int i4);

        /* renamed from: a */
        void mo7302a(RenderOverlay renderOverlay);

        /* renamed from: a */
        boolean mo7276a();

        void draw(Canvas canvas);

        boolean onTouchEvent(MotionEvent motionEvent);
    }

    public RenderOverlay(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11914a = new C4839a(context);
        addView(this.f11914a, new FrameLayout.LayoutParams(-1, -1));
        setWillNotDraw(false);
        m26947a(new C12071e(context));
    }

    /* renamed from: a */
    public final void m26948a() {
        getLocationInWindow(this.f11917d);
    }

    /* renamed from: a */
    public void m26947a(AbstractC4840b bVar) {
        this.f11915b.add(bVar);
        bVar.mo7302a(this);
        if (bVar.mo7276a()) {
            this.f11916c.add(0, bVar);
        }
        bVar.mo7271a(getLeft(), getTop(), getRight(), getBottom());
    }

    /* renamed from: b */
    public C12071e m26945b() {
        for (AbstractC4840b bVar : this.f11915b) {
            if (bVar instanceof C12071e) {
                return (C12071e) bVar;
            }
        }
        return null;
    }

    /* renamed from: c */
    public void m26943c() {
        this.f11914a.invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
