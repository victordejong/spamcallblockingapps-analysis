package com.aotter.net.trek.common.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Base64;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/util/Drawables.class */
public enum Drawables {
    INTERSTITIAL_CLOSE_BUTTON_NORMAL("iVBORw0KGgoAAAANSUhEUgAAAGAAAABgBAMAAAAQtmoLAAAALVBMVEUAAAAAAAD///8JCQlVVVW1tbUoKCjj4+Pv7+9kZGRbW1vX19fFxcWZmZm/v78OgDMTAAAAAXRSTlMAQObYZgAAAdRJREFUWMPslj1Ow0AQhVFuMDhYClCEQWCHn8IICVoo6FFOYJqI1kgcwJwgKejhAEjkBtDTUHMCToG0WiO/zChjaZQur54v31uvs+uNddZZYXocM+w2z610/3mU2PNI2PNI2P2zr+cyuf+pOMSe/y0oJHkThFboeEr/GcyXlwrzJbWSBmKZIH8hyHYNCim4pYVsgUIIjkjkFRUoyEsJpDUoUPBASi5AAYKs0ICkigoJPJGaywjIRqUOpGqn5hGlSq1rTdHswWQMszfNXiiN8iCoDtqKfhZq1rJTLzaaMI+hzGPcvKFs9B7rthR95qDYYWYJXMWRqGjjfQ3IcAbpilksYYRDCM/CIhDYwylkNxXgA3tgu90A4JqnuFIsN2DmRaAgUODyEwnkRKjAB1wL4IQIFbiFnwI4JVScg4C+BTAiVMxBQDMBHBIqUEB3CoAKEGjAPqECBXTmBexK3kXbj9W7cfar4X/57Nfb9wey/6L+Q8A+ZhwHWbej0nsY28e980KxryzvpWhfu86L3f508H+c2J8/uuJvKtiDSIHsJhzhRqIIuJFIXjOU8oYuoikNU7+O2Ma3+ttphmZZ96CNdYq6A5R3ODC7NJR1mgh3y0bBKKAdAACkBvonfGpKNgAAAABJRU5ErkJggg=="),
    INTERSTITIAL_CLOSE_BUTTON_PRESSED("iVBORw0KGgoAAAANSUhEUgAAAGAAAABgBAMAAAAQtmoLAAAALVBMVEUAAAAAAAD///8JCQlVVVW1tbUoKCjj4+Pv7+9kZGRbW1vX19fFxcWZmZm/v78OgDMTAAAAAXRSTlMAQObYZgAAAdRJREFUWMPslj1Ow0AQhVFuMDhYClCEQWCHn8IICVoo6FFOYJqI1kgcwJwgKejhAEjkBtDTUHMCToG0WiO/zChjaZQur54v31uvs+uNddZZYXocM+w2z610/3mU2PNI2PNI2P2zr+cyuf+pOMSe/y0oJHkThFboeEr/GcyXlwrzJbWSBmKZIH8hyHYNCim4pYVsgUIIjkjkFRUoyEsJpDUoUPBASi5AAYKs0ICkigoJPJGaywjIRqUOpGqn5hGlSq1rTdHswWQMszfNXiiN8iCoDtqKfhZq1rJTLzaaMI+hzGPcvKFs9B7rthR95qDYYWYJXMWRqGjjfQ3IcAbpilksYYRDCM/CIhDYwylkNxXgA3tgu90A4JqnuFIsN2DmRaAgUODyEwnkRKjAB1wL4IQIFbiFnwI4JVScg4C+BTAiVMxBQDMBHBIqUEB3CoAKEGjAPqECBXTmBexK3kXbj9W7cfar4X/57Nfb9wey/6L+Q8A+ZhwHWbej0nsY28e980KxryzvpWhfu86L3f508H+c2J8/uuJvKtiDSIHsJhzhRqIIuJFIXjOU8oYuoikNU7+O2Ma3+ttphmZZ96CNdYq6A5R3ODC7NJR1mgh3y0bBKKAdAACkBvonfGpKNgAAAABJRU5ErkJggg==");
    

    /* renamed from: a */
    public final String f1534a;

    /* renamed from: b */
    public Bitmap f1535b;

    Drawables(String str) {
        this.f1534a = str;
    }

    public void clear() {
        this.f1535b = null;
    }

    public Drawable createDrawable(Context context) {
        BitmapDrawable bitmapDrawable = new BitmapDrawable(context.getResources(), getBitmap());
        bitmapDrawable.setTargetDensity(Dips.asIntPixels(context.getResources().getDisplayMetrics().xdpi, context));
        return bitmapDrawable;
    }

    public Bitmap getBitmap() {
        if (this.f1535b == null) {
            byte[] decode = Base64.decode(this.f1534a, 0);
            this.f1535b = BitmapFactory.decodeByteArray(decode, 0, decode.length);
        }
        return this.f1535b;
    }
}
