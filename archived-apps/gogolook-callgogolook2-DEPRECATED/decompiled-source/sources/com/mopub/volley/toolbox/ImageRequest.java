package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.widget.ImageView;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.ParseError;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageRequest.class */
public class ImageRequest extends Request<Bitmap> {
    public static final float DEFAULT_IMAGE_BACKOFF_MULT = 2.0f;
    public static final int DEFAULT_IMAGE_MAX_RETRIES = 2;
    public static final int DEFAULT_IMAGE_TIMEOUT_MS = 1000;

    /* renamed from: w */
    public static final Object f9589w = new Object();

    /* renamed from: q */
    public final Object f9590q;
    @Nullable
    @GuardedBy("mLock")

    /* renamed from: r */
    public Response.Listener<Bitmap> f9591r;

    /* renamed from: s */
    public final Bitmap.Config f9592s;

    /* renamed from: t */
    public final int f9593t;

    /* renamed from: u */
    public final int f9594u;

    /* renamed from: v */
    public final ImageView.ScaleType f9595v;

    @Deprecated
    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, Bitmap.Config config, Response.ErrorListener errorListener) {
        this(str, listener, i, i2, ImageView.ScaleType.CENTER_INSIDE, config, errorListener);
    }

    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, @Nullable Response.ErrorListener errorListener) {
        super(0, str, errorListener);
        this.f9590q = new Object();
        setRetryPolicy(new DefaultRetryPolicy(1000, 2, 2.0f));
        this.f9591r = listener;
        this.f9592s = config;
        this.f9593t = i;
        this.f9594u = i2;
        this.f9595v = scaleType;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static int m29882a(int i, int i2, int i3, int i4) {
        float f = 1.0f;
        while (true) {
            float f2 = 2.0f * f;
            if (f2 > Math.min(i / i3, i2 / i4)) {
                return (int) f;
            }
            f = f2;
        }
    }

    /* renamed from: a */
    public static int m29881a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        }
        if (i == 0) {
            return (int) (i3 * (i2 / i4));
        } else if (i2 == 0) {
            return i;
        } else {
            double d = i4 / i3;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d2 = i2;
                if (i * d < d2) {
                    i = (int) (d2 / d);
                }
                return i;
            }
            double d3 = i2;
            if (i * d > d3) {
                i = (int) (d3 / d);
            }
            return i;
        }
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Response<Bitmap> mo29871a(NetworkResponse networkResponse) {
        Response<Bitmap> b;
        synchronized (f9589w) {
            try {
                b = m29879b(networkResponse);
            } catch (OutOfMemoryError e) {
                VolleyLog.m29939e("Caught OOM for %d byte image, url=%s", Integer.valueOf(networkResponse.data.length), getUrl());
                return Response.error(new ParseError(e));
            }
        }
        return b;
    }

    /* renamed from: a */
    public void deliverResponse(Bitmap bitmap) {
        Response.Listener<Bitmap> listener;
        synchronized (this.f9590q) {
            listener = this.f9591r;
        }
        if (listener != null) {
            listener.onResponse(bitmap);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a7, code lost:
        if (r0.getHeight() > r0) goto L_0x00aa;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.mopub.volley.Response<android.graphics.Bitmap> m29879b(com.mopub.volley.NetworkResponse r7) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.ImageRequest.m29879b(com.mopub.volley.NetworkResponse):com.mopub.volley.Response");
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f9590q) {
            this.f9591r = null;
        }
    }

    @Override // com.mopub.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }
}
