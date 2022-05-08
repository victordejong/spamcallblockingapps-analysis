package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import androidx.annotation.MainThread;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p081h.p430l.p437f.p438a.C10747a;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader.class */
public class ImageLoader {

    /* renamed from: a */
    public final RequestQueue f9565a;

    /* renamed from: c */
    public final ImageCache f9567c;

    /* renamed from: g */
    public Runnable f9571g;

    /* renamed from: b */
    public int f9566b = 100;

    /* renamed from: d */
    public final HashMap<String, C4057e> f9568d = new HashMap<>();

    /* renamed from: e */
    public final HashMap<String, C4057e> f9569e = new HashMap<>();

    /* renamed from: f */
    public final Handler f9570f = new Handler(Looper.getMainLooper());

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageCache.class */
    public interface ImageCache {
        Bitmap getBitmap(String str);

        void putBitmap(String str, Bitmap bitmap);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageContainer.class */
    public class ImageContainer {

        /* renamed from: a */
        public Bitmap f9572a;

        /* renamed from: b */
        public final ImageListener f9573b;

        /* renamed from: c */
        public final String f9574c;

        /* renamed from: d */
        public final String f9575d;

        public ImageContainer(Bitmap bitmap, String str, String str2, ImageListener imageListener) {
            this.f9572a = bitmap;
            this.f9575d = str;
            this.f9574c = str2;
            this.f9573b = imageListener;
        }

        @MainThread
        public void cancelRequest() {
            C10747a.m10740a();
            if (this.f9573b != null) {
                C4057e eVar = (C4057e) ImageLoader.this.f9568d.get(this.f9574c);
                if (eVar == null) {
                    C4057e eVar2 = (C4057e) ImageLoader.this.f9569e.get(this.f9574c);
                    if (eVar2 != null) {
                        eVar2.removeContainerAndCancelIfNecessary(this);
                        if (eVar2.f9588d.size() == 0) {
                            ImageLoader.this.f9569e.remove(this.f9574c);
                        }
                    }
                } else if (eVar.removeContainerAndCancelIfNecessary(this)) {
                    ImageLoader.this.f9568d.remove(this.f9574c);
                }
            }
        }

        public Bitmap getBitmap() {
            return this.f9572a;
        }

        public String getRequestUrl() {
            return this.f9575d;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageListener.class */
    public interface ImageListener extends Response.ErrorListener {
        void onResponse(ImageContainer imageContainer, boolean z);
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$a.class */
    public static final class C4053a implements ImageListener {

        /* renamed from: a */
        public final /* synthetic */ int f9577a;

        /* renamed from: b */
        public final /* synthetic */ ImageView f9578b;

        /* renamed from: c */
        public final /* synthetic */ int f9579c;

        public C4053a(int i, ImageView imageView, int i2) {
            this.f9577a = i;
            this.f9578b = imageView;
            this.f9579c = i2;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            int i = this.f9577a;
            if (i != 0) {
                this.f9578b.setImageResource(i);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageContainer imageContainer, boolean z) {
            if (imageContainer.getBitmap() != null) {
                this.f9578b.setImageBitmap(imageContainer.getBitmap());
                return;
            }
            int i = this.f9579c;
            if (i != 0) {
                this.f9578b.setImageResource(i);
            }
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$b.class */
    public class C4054b implements Response.Listener<Bitmap> {

        /* renamed from: a */
        public final /* synthetic */ String f9580a;

        public C4054b(String str) {
            this.f9580a = str;
        }

        public void onResponse(Bitmap bitmap) {
            ImageLoader.this.m29891a(this.f9580a, bitmap);
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$c.class */
    public class C4055c implements Response.ErrorListener {

        /* renamed from: a */
        public final /* synthetic */ String f9582a;

        public C4055c(String str) {
            this.f9582a = str;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            ImageLoader.this.m29890a(this.f9582a, volleyError);
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$d.class */
    public class RunnableC4056d implements Runnable {
        public RunnableC4056d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (C4057e eVar : ImageLoader.this.f9569e.values()) {
                for (ImageContainer imageContainer : eVar.f9588d) {
                    if (imageContainer.f9573b != null) {
                        if (eVar.getError() == null) {
                            imageContainer.f9572a = eVar.f9586b;
                            imageContainer.f9573b.onResponse(imageContainer, false);
                        } else {
                            imageContainer.f9573b.onErrorResponse(eVar.getError());
                        }
                    }
                }
            }
            ImageLoader.this.f9569e.clear();
            ImageLoader.this.f9571g = null;
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$e.class */
    public static class C4057e {

        /* renamed from: a */
        public final Request<?> f9585a;

        /* renamed from: b */
        public Bitmap f9586b;

        /* renamed from: c */
        public VolleyError f9587c;

        /* renamed from: d */
        public final List<ImageContainer> f9588d = new ArrayList();

        public C4057e(Request<?> request, ImageContainer imageContainer) {
            this.f9585a = request;
            this.f9588d.add(imageContainer);
        }

        public void addContainer(ImageContainer imageContainer) {
            this.f9588d.add(imageContainer);
        }

        public VolleyError getError() {
            return this.f9587c;
        }

        public boolean removeContainerAndCancelIfNecessary(ImageContainer imageContainer) {
            this.f9588d.remove(imageContainer);
            if (this.f9588d.size() != 0) {
                return false;
            }
            this.f9585a.cancel();
            return true;
        }

        public void setError(VolleyError volleyError) {
            this.f9587c = volleyError;
        }
    }

    public ImageLoader(RequestQueue requestQueue, ImageCache imageCache) {
        this.f9565a = requestQueue;
        this.f9567c = imageCache;
    }

    /* renamed from: a */
    public static String m29893a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        StringBuilder sb = new StringBuilder(str.length() + 12);
        sb.append("#W");
        sb.append(i);
        sb.append("#H");
        sb.append(i2);
        sb.append("#S");
        sb.append(scaleType.ordinal());
        sb.append(str);
        return sb.toString();
    }

    public static ImageListener getImageListener(ImageView imageView, int i, int i2) {
        return new C4053a(i2, imageView, i);
    }

    /* renamed from: a */
    public Request<Bitmap> m29892a(String str, int i, int i2, ImageView.ScaleType scaleType, String str2) {
        return new ImageRequest(str, new C4054b(str2), i, i2, scaleType, Bitmap.Config.RGB_565, new C4055c(str2));
    }

    /* renamed from: a */
    public void m29891a(String str, Bitmap bitmap) {
        this.f9567c.putBitmap(str, bitmap);
        C4057e remove = this.f9568d.remove(str);
        if (remove != null) {
            remove.f9586b = bitmap;
            m29889a(str, remove);
        }
    }

    /* renamed from: a */
    public void m29890a(String str, VolleyError volleyError) {
        C4057e remove = this.f9568d.remove(str);
        if (remove != null) {
            remove.setError(volleyError);
            m29889a(str, remove);
        }
    }

    /* renamed from: a */
    public final void m29889a(String str, C4057e eVar) {
        this.f9569e.put(str, eVar);
        if (this.f9571g == null) {
            this.f9571g = new RunnableC4056d();
            this.f9570f.postDelayed(this.f9571g, this.f9566b);
        }
    }

    public ImageContainer get(String str, ImageListener imageListener) {
        return get(str, imageListener, 0, 0);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2) {
        return get(str, imageListener, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    @MainThread
    public ImageContainer get(String str, ImageListener imageListener, int i, int i2, ImageView.ScaleType scaleType) {
        C10747a.m10740a();
        String a = m29893a(str, i, i2, scaleType);
        Bitmap bitmap = this.f9567c.getBitmap(a);
        if (bitmap != null) {
            ImageContainer imageContainer = new ImageContainer(bitmap, str, null, null);
            imageListener.onResponse(imageContainer, true);
            return imageContainer;
        }
        ImageContainer imageContainer2 = new ImageContainer(null, str, a, imageListener);
        imageListener.onResponse(imageContainer2, true);
        C4057e eVar = this.f9568d.get(a);
        C4057e eVar2 = eVar;
        if (eVar == null) {
            eVar2 = this.f9569e.get(a);
        }
        if (eVar2 != null) {
            eVar2.addContainer(imageContainer2);
            return imageContainer2;
        }
        Request<Bitmap> a2 = m29892a(str, i, i2, scaleType, a);
        this.f9565a.add(a2);
        this.f9568d.put(a, new C4057e(a2, imageContainer2));
        return imageContainer2;
    }

    public boolean isCached(String str, int i, int i2) {
        return isCached(str, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    @MainThread
    public boolean isCached(String str, int i, int i2, ImageView.ScaleType scaleType) {
        C10747a.m10740a();
        return this.f9567c.getBitmap(m29893a(str, i, i2, scaleType)) != null;
    }

    public void setBatchedResponseDelay(int i) {
        this.f9566b = i;
    }
}
