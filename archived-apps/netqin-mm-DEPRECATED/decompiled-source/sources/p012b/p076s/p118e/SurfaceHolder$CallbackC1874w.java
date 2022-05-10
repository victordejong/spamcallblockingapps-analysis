package p012b.p076s.p118e;

import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import p012b.p042i.p044i.C0869a;
import p012b.p076s.p118e.AbstractC1878y;
/* renamed from: b.s.e.w */
/* loaded from: classes-dex2jar.jar:b/s/e/w.class */
public class SurfaceHolder$CallbackC1874w extends SurfaceView implements AbstractC1878y, SurfaceHolder.Callback {

    /* renamed from: a */
    public Surface f7432a = null;

    /* renamed from: b */
    public AbstractC1878y.AbstractC1879a f7433b = null;

    /* renamed from: c */
    public C1844i f7434c;

    /* renamed from: b.s.e.w$a */
    /* loaded from: classes-dex2jar.jar:b/s/e/w$a.class */
    public class RunnableC1875a implements Runnable {
        public RunnableC1875a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SurfaceHolder$CallbackC1874w wVar = SurfaceHolder$CallbackC1874w.this;
            AbstractC1878y.AbstractC1879a aVar = wVar.f7433b;
            if (aVar != null) {
                aVar.mo31839a((AbstractC1878y) wVar);
            }
        }
    }

    static {
        Log.isLoggable("VideoSurfaceView", 3);
    }

    public SurfaceHolder$CallbackC1874w(Context context) {
        super(context, null);
        getHolder().addCallback(this);
    }

    @Override // p012b.p076s.p118e.AbstractC1878y
    /* renamed from: a */
    public int mo31843a() {
        return 0;
    }

    /* renamed from: a */
    public void m31847a(AbstractC1878y.AbstractC1879a aVar) {
        this.f7433b = aVar;
    }

    @Override // p012b.p076s.p118e.AbstractC1878y
    /* renamed from: a */
    public boolean mo31842a(C1844i iVar) {
        this.f7434c = iVar;
        if (iVar == null || !m31846b()) {
            return false;
        }
        iVar.m31935a(this.f7432a).mo7696a(new RunnableC1875a(), C0869a.m35685c(getContext()));
        return true;
    }

    /* renamed from: b */
    public boolean m31846b() {
        Surface surface = this.f7432a;
        return surface != null && surface.isValid();
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        C1844i iVar = this.f7434c;
        int i4 = 0;
        int f = iVar != null ? iVar.m31912v().m38196f() : 0;
        C1844i iVar2 = this.f7434c;
        if (iVar2 != null) {
            i4 = iVar2.m31912v().m38197e();
        }
        if (f == 0 || i4 == 0) {
            setMeasuredDimension(SurfaceView.getDefaultSize(f, i), SurfaceView.getDefaultSize(i4, i2));
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824 && mode2 == 1073741824) {
            int i5 = f * size2;
            int i6 = size * i4;
            if (i5 < i6) {
                i3 = i5 / i4;
            } else {
                i3 = size;
                if (i5 > i6) {
                    size2 = i6 / f;
                    i3 = size;
                }
            }
        } else if (mode == 1073741824) {
            int i7 = (i4 * size) / f;
            if (mode2 != Integer.MIN_VALUE || i7 <= size2) {
                size2 = i7;
                i3 = size;
            } else {
                size2 |= 16777216;
                i3 = size;
            }
        } else if (mode2 == 1073741824) {
            i3 = (f * size2) / i4;
            if (mode == Integer.MIN_VALUE && i3 > size) {
                i3 = size | 16777216;
            }
        } else {
            if (mode2 != Integer.MIN_VALUE || i4 <= size2) {
                i3 = f;
                size2 = i4;
            } else {
                i3 = (size2 * f) / i4;
            }
            if (mode == Integer.MIN_VALUE && i3 > size) {
                size2 = (i4 * size) / f;
                i3 = size;
            }
        }
        setMeasuredDimension(i3, size2);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        AbstractC1878y.AbstractC1879a aVar = this.f7433b;
        if (aVar != null) {
            aVar.mo31838b(this, i2, i3);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.f7432a = surfaceHolder.getSurface();
        if (this.f7433b != null) {
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            this.f7433b.mo31840a(this, surfaceFrame.width(), surfaceFrame.height());
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f7432a = null;
        AbstractC1878y.AbstractC1879a aVar = this.f7433b;
        if (aVar != null) {
            aVar.mo31841a((View) this);
        }
    }
}
