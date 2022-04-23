package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import android.widget.ImageView;
import androidx.p026b.C0535g;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Constants;
import com.google.android.gms.internal.base.zaj;
import com.google.android.gms.internal.base.zan;
import com.google.android.gms.internal.base.zao;
import com.google.android.gms.internal.base.zar;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager.class */
public final class ImageManager {

    /* renamed from: a */
    private static final Object f6637a = new Object();

    /* renamed from: b */
    private static HashSet<Uri> f6638b = new HashSet<>();

    /* renamed from: c */
    private static ImageManager f6639c;

    /* renamed from: d */
    private final Context f6640d;

    /* renamed from: e */
    private final Handler f6641e = new zar(Looper.getMainLooper());

    /* renamed from: f */
    private final ExecutorService f6642f = zan.zact().zaa(4, zao.zasg);

    /* renamed from: g */
    private final C1651a f6643g = null;

    /* renamed from: h */
    private final zaj f6644h = new zaj();

    /* renamed from: i */
    private final Map<zab, ImageReceiver> f6645i = new HashMap();

    /* renamed from: j */
    private final Map<Uri, ImageReceiver> f6646j = new HashMap();

    /* renamed from: k */
    private final Map<Uri, Long> f6647k = new HashMap();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$ImageReceiver.class */
    private final class ImageReceiver extends ResultReceiver {

        /* renamed from: a */
        private final Uri f6648a;

        /* renamed from: b */
        private final ArrayList<zab> f6649b = new ArrayList<>();

        ImageReceiver(Uri uri) {
            super(new zar(Looper.getMainLooper()));
            this.f6648a = uri;
        }

        /* renamed from: a */
        public final void m5737a() {
            Intent intent = new Intent(Constants.ACTION_LOAD_IMAGE);
            intent.putExtra(Constants.EXTRA_URI, this.f6648a);
            intent.putExtra(Constants.EXTRA_RESULT_RECEIVER, this);
            intent.putExtra(Constants.EXTRA_PRIORITY, 3);
            ImageManager.this.f6640d.sendBroadcast(intent);
        }

        /* renamed from: a */
        public final void m5735a(zab zabVar) {
            Asserts.checkMainThread("ImageReceiver.addImageRequest() must be called in the main thread");
            this.f6649b.add(zabVar);
        }

        /* renamed from: b */
        public final void m5734b(zab zabVar) {
            Asserts.checkMainThread("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.f6649b.remove(zabVar);
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.f6642f.execute(new RunnableC1653c(this.f6648a, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$OnImageLoadedListener.class */
    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.common.images.ImageManager$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$a.class */
    public static final class C1651a extends C0535g<C1655a, Bitmap> {
        @Override // androidx.p026b.C0535g
        /* renamed from: a */
        protected final /* synthetic */ int mo5733a(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            return bitmap2.getHeight() * bitmap2.getRowBytes();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.common.images.ImageManager$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$b.class */
    public final class RunnableC1652b implements Runnable {

        /* renamed from: a */
        private final zab f6651a;

        public RunnableC1652b(zab zabVar) {
            this.f6651a = zabVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkMainThread("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.f6645i.get(this.f6651a);
            if (imageReceiver != null) {
                ImageManager.this.f6645i.remove(this.f6651a);
                imageReceiver.m5734b(this.f6651a);
            }
            C1655a aVar = this.f6651a.f6668a;
            if (aVar.f6667a == null) {
                zab zabVar = this.f6651a;
                Context context = ImageManager.this.f6640d;
                zaj unused = ImageManager.this.f6644h;
                zabVar.m5728a(context, true);
                return;
            }
            Bitmap a = ImageManager.m5747a(ImageManager.this, aVar);
            if (a != null) {
                this.f6651a.m5729a(ImageManager.this.f6640d, a, true);
                return;
            }
            Long l = (Long) ImageManager.this.f6647k.get(aVar.f6667a);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    zab zabVar2 = this.f6651a;
                    Context context2 = ImageManager.this.f6640d;
                    zaj unused2 = ImageManager.this.f6644h;
                    zabVar2.m5728a(context2, true);
                    return;
                }
                ImageManager.this.f6647k.remove(aVar.f6667a);
            }
            zab zabVar3 = this.f6651a;
            Context unused3 = ImageManager.this.f6640d;
            zaj unused4 = ImageManager.this.f6644h;
            zabVar3.m5730a();
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.f6646j.get(aVar.f6667a);
            ImageReceiver imageReceiver3 = imageReceiver2;
            if (imageReceiver2 == null) {
                imageReceiver3 = new ImageReceiver(aVar.f6667a);
                ImageManager.this.f6646j.put(aVar.f6667a, imageReceiver3);
            }
            imageReceiver3.m5735a(this.f6651a);
            if (!(this.f6651a instanceof zac)) {
                ImageManager.this.f6645i.put(this.f6651a, imageReceiver3);
            }
            synchronized (ImageManager.f6637a) {
                if (!ImageManager.f6638b.contains(aVar.f6667a)) {
                    ImageManager.f6638b.add(aVar.f6667a);
                    imageReceiver3.m5737a();
                }
            }
        }
    }

    /* renamed from: com.google.android.gms.common.images.ImageManager$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$c.class */
    private final class RunnableC1653c implements Runnable {

        /* renamed from: a */
        private final Uri f6653a;

        /* renamed from: b */
        private final ParcelFileDescriptor f6654b;

        public RunnableC1653c(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.f6653a = uri;
            this.f6654b = parcelFileDescriptor;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkNotMainThread("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            ParcelFileDescriptor parcelFileDescriptor = this.f6654b;
            boolean z = false;
            z = false;
            Bitmap bitmap = null;
            bitmap = null;
            if (parcelFileDescriptor != null) {
                try {
                    bitmap = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
                } catch (OutOfMemoryError e) {
                    String valueOf = String.valueOf(this.f6653a);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("OOM while loading bitmap for uri: ");
                    sb.append(valueOf);
                    Log.e("ImageManager", sb.toString(), e);
                    z = true;
                }
                try {
                    this.f6654b.close();
                } catch (IOException e2) {
                    Log.e("ImageManager", "closed failed", e2);
                }
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            ImageManager.this.f6641e.post(new RunnableC1654d(this.f6653a, bitmap, z, countDownLatch));
            try {
                countDownLatch.await();
            } catch (InterruptedException e3) {
                String valueOf2 = String.valueOf(this.f6653a);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
                sb2.append("Latch interrupted while posting ");
                sb2.append(valueOf2);
                Log.w("ImageManager", sb2.toString());
            }
        }
    }

    /* renamed from: com.google.android.gms.common.images.ImageManager$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$d.class */
    private final class RunnableC1654d implements Runnable {

        /* renamed from: a */
        private final Uri f6656a;

        /* renamed from: b */
        private final Bitmap f6657b;

        /* renamed from: c */
        private final CountDownLatch f6658c;

        /* renamed from: d */
        private boolean f6659d;

        public RunnableC1654d(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.f6656a = uri;
            this.f6657b = bitmap;
            this.f6659d = z;
            this.f6658c = countDownLatch;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Asserts.checkMainThread("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.f6657b != null;
            if (ImageManager.this.f6643g != null) {
                if (this.f6659d) {
                    ImageManager.this.f6643g.evictAll();
                    System.gc();
                    this.f6659d = false;
                    ImageManager.this.f6641e.post(this);
                    return;
                } else if (z) {
                    ImageManager.this.f6643g.put(new C1655a(this.f6656a), this.f6657b);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.f6646j.remove(this.f6656a);
            if (imageReceiver != null) {
                ArrayList arrayList = imageReceiver.f6649b;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    zab zabVar = (zab) arrayList.get(i);
                    ImageManager imageManager = ImageManager.this;
                    if (z) {
                        zabVar.m5729a(imageManager.f6640d, this.f6657b, false);
                    } else {
                        imageManager.f6647k.put(this.f6656a, Long.valueOf(SystemClock.elapsedRealtime()));
                        Context context = ImageManager.this.f6640d;
                        zaj unused = ImageManager.this.f6644h;
                        zabVar.m5728a(context, false);
                    }
                    if (!(zabVar instanceof zac)) {
                        ImageManager.this.f6645i.remove(zabVar);
                    }
                }
            }
            this.f6658c.countDown();
            synchronized (ImageManager.f6637a) {
                ImageManager.f6638b.remove(this.f6656a);
            }
        }
    }

    private ImageManager(Context context) {
        this.f6640d = context.getApplicationContext();
    }

    /* renamed from: a */
    static /* synthetic */ Bitmap m5747a(ImageManager imageManager, C1655a aVar) {
        C1651a aVar2 = imageManager.f6643g;
        if (aVar2 == null) {
            return null;
        }
        return aVar2.get(aVar);
    }

    /* renamed from: a */
    private final void m5746a(zab zabVar) {
        Asserts.checkMainThread("ImageManager.loadImage() must be called in the main thread");
        new RunnableC1652b(zabVar).run();
    }

    public static ImageManager create(Context context) {
        if (f6639c == null) {
            f6639c = new ImageManager(context);
        }
        return f6639c;
    }

    public final void loadImage(ImageView imageView, int i) {
        m5746a(new zad(imageView, i));
    }

    public final void loadImage(ImageView imageView, Uri uri) {
        m5746a(new zad(imageView, uri));
    }

    public final void loadImage(ImageView imageView, Uri uri, int i) {
        zad zadVar = new zad(imageView, uri);
        zadVar.f6669b = i;
        m5746a(zadVar);
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        m5746a(new zac(onImageLoadedListener, uri));
    }

    public final void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        zac zacVar = new zac(onImageLoadedListener, uri);
        zacVar.f6669b = i;
        m5746a(zacVar);
    }
}
