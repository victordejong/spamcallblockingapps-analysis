package com.mopub.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
import p131c.p421j.p427e.p428a.C6688a;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView.class */
public class NetworkImageView extends ImageView {

    /* renamed from: a */
    public String f35193a;

    /* renamed from: b */
    public int f35194b;

    /* renamed from: c */
    public Bitmap f35195c;

    /* renamed from: d */
    public int f35196d;

    /* renamed from: e */
    public Bitmap f35197e;

    /* renamed from: f */
    public ImageLoader f35198f;

    /* renamed from: g */
    public ImageLoader.ImageContainer f35199g;

    /* renamed from: com.mopub.volley.toolbox.NetworkImageView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView$a.class */
    public class C9011a implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f35200a;

        /* renamed from: com.mopub.volley.toolbox.NetworkImageView$a$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView$a$a.class */
        public class RunnableC9012a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ ImageLoader.ImageContainer f35202a;

            public RunnableC9012a(ImageLoader.ImageContainer imageContainer) {
                this.f35202a = imageContainer;
            }

            @Override // java.lang.Runnable
            public void run() {
                C9011a.this.onResponse(this.f35202a, false);
            }
        }

        public C9011a(boolean z) {
            this.f35200a = z;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.f35196d != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f35196d);
            } else if (NetworkImageView.this.f35197e != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageBitmap(networkImageView2.f35197e);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            if (z && this.f35200a) {
                NetworkImageView.this.post(new RunnableC9012a(imageContainer));
            } else if (imageContainer.getBitmap() != null) {
                NetworkImageView.this.setImageBitmap(imageContainer.getBitmap());
            } else if (NetworkImageView.this.f35194b != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f35194b);
            } else {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                Bitmap bitmap = networkImageView2.f35195c;
                if (bitmap != null) {
                    networkImageView2.setImageBitmap(bitmap);
                }
            }
        }
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public final void m3676a() {
        int i = this.f35194b;
        if (i != 0) {
            setImageResource(i);
            return;
        }
        Bitmap bitmap = this.f35195c;
        if (bitmap != null) {
            setImageBitmap(bitmap);
        } else {
            setImageBitmap(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3674a(boolean r9) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.NetworkImageView.m3674a(boolean):void");
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.f35199g;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            setImageBitmap(null);
            this.f35199g = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m3674a(true);
    }

    public void setDefaultImageBitmap(Bitmap bitmap) {
        this.f35194b = 0;
        this.f35195c = bitmap;
    }

    public void setDefaultImageResId(int i) {
        this.f35195c = null;
        this.f35194b = i;
    }

    public void setErrorImageBitmap(Bitmap bitmap) {
        this.f35196d = 0;
        this.f35197e = bitmap;
    }

    public void setErrorImageResId(int i) {
        this.f35197e = null;
        this.f35196d = i;
    }

    public void setImageUrl(String str, ImageLoader imageLoader) {
        C6688a.m20048a();
        this.f35193a = str;
        this.f35198f = imageLoader;
        m3674a(false);
    }
}
