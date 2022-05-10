package p012b.p076s.p118e;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import p012b.p042i.p044i.C0869a;
import p012b.p076s.p118e.AbstractC1878y;
/* renamed from: b.s.e.x */
/* loaded from: classes-dex2jar.jar:b/s/e/x.class */
public class TextureView$SurfaceTextureListenerC1876x extends TextureView implements AbstractC1878y, TextureView.SurfaceTextureListener {

    /* renamed from: a */
    public Surface f7436a;

    /* renamed from: b */
    public AbstractC1878y.AbstractC1879a f7437b;

    /* renamed from: c */
    public C1844i f7438c;

    /* renamed from: b.s.e.x$a */
    /* loaded from: classes-dex2jar.jar:b/s/e/x$a.class */
    public class RunnableC1877a implements Runnable {
        public RunnableC1877a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextureView$SurfaceTextureListenerC1876x xVar = TextureView$SurfaceTextureListenerC1876x.this;
            AbstractC1878y.AbstractC1879a aVar = xVar.f7437b;
            if (aVar != null) {
                aVar.mo31839a((AbstractC1878y) xVar);
            }
        }
    }

    static {
        Log.isLoggable("VideoTextureView", 3);
    }

    public TextureView$SurfaceTextureListenerC1876x(Context context) {
        super(context, null);
        setSurfaceTextureListener(this);
    }

    @Override // p012b.p076s.p118e.AbstractC1878y
    /* renamed from: a */
    public int mo31843a() {
        return 1;
    }

    /* renamed from: a */
    public void m31845a(AbstractC1878y.AbstractC1879a aVar) {
        this.f7437b = aVar;
    }

    @Override // p012b.p076s.p118e.AbstractC1878y
    /* renamed from: a */
    public boolean mo31842a(C1844i iVar) {
        this.f7438c = iVar;
        if (iVar == null || !m31844b()) {
            return false;
        }
        iVar.m31935a(this.f7436a).mo7696a(new RunnableC1877a(), C0869a.m35685c(getContext()));
        return true;
    }

    /* renamed from: b */
    public boolean m31844b() {
        Surface surface = this.f7436a;
        return surface != null && surface.isValid();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        C1844i iVar = this.f7438c;
        int i4 = 0;
        int f = iVar != null ? iVar.m31912v().m38196f() : 0;
        C1844i iVar2 = this.f7438c;
        if (iVar2 != null) {
            i4 = iVar2.m31912v().m38197e();
        }
        if (f == 0 || i4 == 0) {
            setMeasuredDimension(TextureView.getDefaultSize(f, i), TextureView.getDefaultSize(i4, i2));
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

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f7436a = new Surface(surfaceTexture);
        AbstractC1878y.AbstractC1879a aVar = this.f7437b;
        if (aVar != null) {
            aVar.mo31840a(this, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        AbstractC1878y.AbstractC1879a aVar = this.f7437b;
        if (aVar != null) {
            aVar.mo31841a((View) this);
        }
        this.f7436a = null;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        AbstractC1878y.AbstractC1879a aVar = this.f7437b;
        if (aVar != null) {
            aVar.mo31838b(this, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
