package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p131c.p421j.p427e.p428a.C6688a;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader.class */
public class ImageLoader {

    /* renamed from: a */
    public final RequestQueue f35158a;

    /* renamed from: c */
    public final ImageCache f35160c;

    /* renamed from: g */
    public Runnable f35164g;

    /* renamed from: b */
    public int f35159b = 100;

    /* renamed from: d */
    public final HashMap<String, C9010e> f35161d = new HashMap<>();

    /* renamed from: e */
    public final HashMap<String, C9010e> f35162e = new HashMap<>();

    /* renamed from: f */
    public final Handler f35163f = new Handler(Looper.getMainLooper());

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageCache.class */
    public interface ImageCache {
        Bitmap getBitmap(String str);

        void putBitmap(String str, Bitmap bitmap);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageContainer.class */
    public class ImageContainer {

        /* renamed from: a */
        public Bitmap f35165a;

        /* renamed from: b */
        public final ImageListener f35166b;

        /* renamed from: c */
        public final String f35167c;

        /* renamed from: d */
        public final String f35168d;

        public ImageContainer(Bitmap bitmap, String str, String str2, ImageListener imageListener) {
            this.f35165a = bitmap;
            this.f35168d = str;
            this.f35167c = str2;
            this.f35166b = imageListener;
        }

        public void cancelRequest() {
            C6688a.m20048a();
            if (this.f35166b != null) {
                C9010e eVar = (C9010e) ImageLoader.this.f35161d.get(this.f35167c);
                if (eVar == null) {
                    C9010e eVar2 = (C9010e) ImageLoader.this.f35162e.get(this.f35167c);
                    if (eVar2 != null) {
                        eVar2.removeContainerAndCancelIfNecessary(this);
                        if (eVar2.f35181d.size() == 0) {
                            ImageLoader.this.f35162e.remove(this.f35167c);
                        }
                    }
                } else if (eVar.removeContainerAndCancelIfNecessary(this)) {
                    ImageLoader.this.f35161d.remove(this.f35167c);
                }
            }
        }

        public Bitmap getBitmap() {
            return this.f35165a;
        }

        public String getRequestUrl() {
            return this.f35168d;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$ImageListener.class */
    public interface ImageListener extends Response.ErrorListener {
        void onResponse(ImageContainer imageContainer, boolean z);
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$a.class */
    public static final class C9006a implements ImageListener {

        /* renamed from: a */
        public final /* synthetic */ int f35170a;

        /* renamed from: b */
        public final /* synthetic */ ImageView f35171b;

        /* renamed from: c */
        public final /* synthetic */ int f35172c;

        public C9006a(int i, ImageView imageView, int i2) {
            this.f35170a = i;
            this.f35171b = imageView;
            this.f35172c = i2;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            int i = this.f35170a;
            if (i != 0) {
                this.f35171b.setImageResource(i);
            }
        }

        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageContainer imageContainer, boolean z) {
            if (imageContainer.getBitmap() != null) {
                this.f35171b.setImageBitmap(imageContainer.getBitmap());
                return;
            }
            int i = this.f35172c;
            if (i != 0) {
                this.f35171b.setImageResource(i);
            }
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$b.class */
    public class C9007b implements Response.Listener<Bitmap> {

        /* renamed from: a */
        public final /* synthetic */ String f35173a;

        public C9007b(String str) {
            this.f35173a = str;
        }

        public void onResponse(Bitmap bitmap) {
            ImageLoader.this.m3689a(this.f35173a, bitmap);
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$c.class */
    public class C9008c implements Response.ErrorListener {

        /* renamed from: a */
        public final /* synthetic */ String f35175a;

        public C9008c(String str) {
            this.f35175a = str;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            ImageLoader.this.m3688a(this.f35175a, volleyError);
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$d.class */
    public class RunnableC9009d implements Runnable {
        public RunnableC9009d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (C9010e eVar : ImageLoader.this.f35162e.values()) {
                for (ImageContainer imageContainer : eVar.f35181d) {
                    if (imageContainer.f35166b != null) {
                        if (eVar.getError() == null) {
                            imageContainer.f35165a = eVar.f35179b;
                            imageContainer.f35166b.onResponse(imageContainer, false);
                        } else {
                            imageContainer.f35166b.onErrorResponse(eVar.getError());
                        }
                    }
                }
            }
            ImageLoader.this.f35162e.clear();
            ImageLoader.this.f35164g = null;
        }
    }

    /* renamed from: com.mopub.volley.toolbox.ImageLoader$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ImageLoader$e.class */
    public static class C9010e {

        /* renamed from: a */
        public final Request<?> f35178a;

        /* renamed from: b */
        public Bitmap f35179b;

        /* renamed from: c */
        public VolleyError f35180c;

        /* renamed from: d */
        public final List<ImageContainer> f35181d;

        public C9010e(Request<?> request, ImageContainer imageContainer) {
            ArrayList arrayList = new ArrayList();
            this.f35181d = arrayList;
            this.f35178a = request;
            arrayList.add(imageContainer);
        }

        public void addContainer(ImageContainer imageContainer) {
            this.f35181d.add(imageContainer);
        }

        public VolleyError getError() {
            return this.f35180c;
        }

        public boolean removeContainerAndCancelIfNecessary(ImageContainer imageContainer) {
            this.f35181d.remove(imageContainer);
            if (this.f35181d.size() != 0) {
                return false;
            }
            this.f35178a.cancel();
            return true;
        }

        public void setError(VolleyError volleyError) {
            this.f35180c = volleyError;
        }
    }

    public ImageLoader(RequestQueue requestQueue, ImageCache imageCache) {
        this.f35158a = requestQueue;
        this.f35160c = imageCache;
    }

    /* renamed from: a */
    public static String m3691a(String str, int i, int i2, ImageView.ScaleType scaleType) {
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
        return new C9006a(i2, imageView, i);
    }

    /* renamed from: a */
    public Request<Bitmap> m3690a(String str, int i, int i2, ImageView.ScaleType scaleType, String str2) {
        return new ImageRequest(str, new C9007b(str2), i, i2, scaleType, Bitmap.Config.RGB_565, new C9008c(str2));
    }

    /* renamed from: a */
    public void m3689a(String str, Bitmap bitmap) {
        this.f35160c.putBitmap(str, bitmap);
        C9010e remove = this.f35161d.remove(str);
        if (remove != null) {
            remove.f35179b = bitmap;
            m3687a(str, remove);
        }
    }

    /* renamed from: a */
    public void m3688a(String str, VolleyError volleyError) {
        C9010e remove = this.f35161d.remove(str);
        if (remove != null) {
            remove.setError(volleyError);
            m3687a(str, remove);
        }
    }

    /* renamed from: a */
    public final void m3687a(String str, C9010e eVar) {
        this.f35162e.put(str, eVar);
        if (this.f35164g == null) {
            RunnableC9009d dVar = new RunnableC9009d();
            this.f35164g = dVar;
            this.f35163f.postDelayed(dVar, this.f35159b);
        }
    }

    public ImageContainer get(String str, ImageListener imageListener) {
        return get(str, imageListener, 0, 0);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2) {
        return get(str, imageListener, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2, ImageView.ScaleType scaleType) {
        C6688a.m20048a();
        String a = m3691a(str, i, i2, scaleType);
        Bitmap bitmap = this.f35160c.getBitmap(a);
        if (bitmap != null) {
            ImageContainer imageContainer = new ImageContainer(bitmap, str, null, null);
            imageListener.onResponse(imageContainer, true);
            return imageContainer;
        }
        ImageContainer imageContainer2 = new ImageContainer(null, str, a, imageListener);
        imageListener.onResponse(imageContainer2, true);
        C9010e eVar = this.f35161d.get(a);
        C9010e eVar2 = eVar;
        if (eVar == null) {
            eVar2 = this.f35162e.get(a);
        }
        if (eVar2 != null) {
            eVar2.addContainer(imageContainer2);
            return imageContainer2;
        }
        Request<Bitmap> a2 = m3690a(str, i, i2, scaleType, a);
        this.f35158a.add(a2);
        this.f35161d.put(a, new C9010e(a2, imageContainer2));
        return imageContainer2;
    }

    public boolean isCached(String str, int i, int i2) {
        return isCached(str, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public boolean isCached(String str, int i, int i2, ImageView.ScaleType scaleType) {
        C6688a.m20048a();
        return this.f35160c.getBitmap(m3691a(str, i, i2, scaleType)) != null;
    }

    public void setBatchedResponseDelay(int i) {
        this.f35159b = i;
    }
}
