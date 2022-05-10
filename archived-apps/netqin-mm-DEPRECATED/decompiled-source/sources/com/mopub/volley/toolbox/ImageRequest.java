package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.widget.ImageView;
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
    public static final Object f35182w = new Object();

    /* renamed from: q */
    public final Object f35183q;

    /* renamed from: r */
    public Response.Listener<Bitmap> f35184r;

    /* renamed from: s */
    public final Bitmap.Config f35185s;

    /* renamed from: t */
    public final int f35186t;

    /* renamed from: u */
    public final int f35187u;

    /* renamed from: v */
    public final ImageView.ScaleType f35188v;

    @Deprecated
    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, Bitmap.Config config, Response.ErrorListener errorListener) {
        this(str, listener, i, i2, ImageView.ScaleType.CENTER_INSIDE, config, errorListener);
    }

    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, Response.ErrorListener errorListener) {
        super(0, str, errorListener);
        this.f35183q = new Object();
        setRetryPolicy(new DefaultRetryPolicy(1000, 2, 2.0f));
        this.f35184r = listener;
        this.f35185s = config;
        this.f35186t = i;
        this.f35187u = i2;
        this.f35188v = scaleType;
    }

    /* renamed from: a */
    public static int m3680a(int i, int i2, int i3, int i4) {
        double d = i;
        double d2 = i3;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = d / d2;
        double d4 = i2;
        double d5 = i4;
        Double.isNaN(d4);
        Double.isNaN(d5);
        double min = Math.min(d3, d4 / d5);
        float f = 1.0f;
        while (true) {
            float f2 = 2.0f * f;
            if (f2 > min) {
                return (int) f;
            }
            f = f2;
        }
    }

    /* renamed from: a */
    public static int m3679a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        }
        if (i == 0) {
            double d = i2;
            double d2 = i4;
            Double.isNaN(d);
            Double.isNaN(d2);
            double d3 = d / d2;
            double d4 = i3;
            Double.isNaN(d4);
            return (int) (d4 * d3);
        } else if (i2 == 0) {
            return i;
        } else {
            double d5 = i4;
            double d6 = i3;
            Double.isNaN(d5);
            Double.isNaN(d6);
            double d7 = d5 / d6;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d8 = i;
                Double.isNaN(d8);
                double d9 = i2;
                if (d8 * d7 < d9) {
                    Double.isNaN(d9);
                    i = (int) (d9 / d7);
                }
                return i;
            }
            double d10 = i;
            Double.isNaN(d10);
            double d11 = i2;
            if (d10 * d7 > d11) {
                Double.isNaN(d11);
                i = (int) (d11 / d7);
            }
            return i;
        }
    }

    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public Response<Bitmap> mo3669a(NetworkResponse networkResponse) {
        Response<Bitmap> b;
        synchronized (f35182w) {
            try {
                b = m3677b(networkResponse);
            } catch (OutOfMemoryError e) {
                VolleyLog.m3737e("Caught OOM for %d byte image, url=%s", Integer.valueOf(networkResponse.data.length), getUrl());
                return Response.error(new ParseError(e));
            }
        }
        return b;
    }

    /* renamed from: a */
    public void deliverResponse(Bitmap bitmap) {
        Response.Listener<Bitmap> listener;
        synchronized (this.f35183q) {
            listener = this.f35184r;
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
    public final com.mopub.volley.Response<android.graphics.Bitmap> m3677b(com.mopub.volley.NetworkResponse r7) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.ImageRequest.m3677b(com.mopub.volley.NetworkResponse):com.mopub.volley.Response");
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f35183q) {
            this.f35184r = null;
        }
    }

    @Override // com.mopub.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }
}
