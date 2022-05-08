package com.mopub.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
import p081h.p430l.p437f.p438a.C10747a;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView.class */
public class NetworkImageView extends ImageView {

    /* renamed from: a */
    public String f9600a;

    /* renamed from: b */
    public int f9601b;
    @Nullable

    /* renamed from: c */
    public Bitmap f9602c;

    /* renamed from: d */
    public int f9603d;
    @Nullable

    /* renamed from: e */
    public Bitmap f9604e;

    /* renamed from: f */
    public ImageLoader f9605f;

    /* renamed from: g */
    public ImageLoader.ImageContainer f9606g;

    /* renamed from: com.mopub.volley.toolbox.NetworkImageView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView$a.class */
    public class C4058a implements ImageLoader.ImageListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f9607a;

        /* renamed from: com.mopub.volley.toolbox.NetworkImageView$a$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/NetworkImageView$a$a.class */
        public class RunnableC4059a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ ImageLoader.ImageContainer f9609a;

            public RunnableC4059a(ImageLoader.ImageContainer imageContainer) {
                this.f9609a = imageContainer;
            }

            @Override // java.lang.Runnable
            public void run() {
                C4058a.this.onResponse(this.f9609a, false);
            }
        }

        public C4058a(boolean z) {
            this.f9607a = z;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.f9603d != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f9603d);
            } else if (NetworkImageView.this.f9604e != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageBitmap(networkImageView2.f9604e);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
            if (z && this.f9607a) {
                NetworkImageView.this.post(new RunnableC4059a(imageContainer));
            } else if (imageContainer.getBitmap() != null) {
                NetworkImageView.this.setImageBitmap(imageContainer.getBitmap());
            } else if (NetworkImageView.this.f9601b != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f9601b);
            } else {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                Bitmap bitmap = networkImageView2.f9602c;
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
    public final void m29878a() {
        int i = this.f9601b;
        if (i != 0) {
            setImageResource(i);
            return;
        }
        Bitmap bitmap = this.f9602c;
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
    public void m29876a(boolean r9) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.NetworkImageView.m29876a(boolean):void");
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        ImageLoader.ImageContainer imageContainer = this.f9606g;
        if (imageContainer != null) {
            imageContainer.cancelRequest();
            setImageBitmap(null);
            this.f9606g = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m29876a(true);
    }

    public void setDefaultImageBitmap(Bitmap bitmap) {
        this.f9601b = 0;
        this.f9602c = bitmap;
    }

    public void setDefaultImageResId(int i) {
        this.f9602c = null;
        this.f9601b = i;
    }

    public void setErrorImageBitmap(Bitmap bitmap) {
        this.f9603d = 0;
        this.f9604e = bitmap;
    }

    public void setErrorImageResId(int i) {
        this.f9604e = null;
        this.f9603d = i;
    }

    @MainThread
    public void setImageUrl(String str, ImageLoader imageLoader) {
        C10747a.m10740a();
        this.f9600a = str;
        this.f9605f = imageLoader;
        m29876a(false);
    }
}
