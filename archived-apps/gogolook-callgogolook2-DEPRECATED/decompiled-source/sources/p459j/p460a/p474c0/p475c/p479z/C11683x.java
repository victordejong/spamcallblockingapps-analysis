package p459j.p460a.p474c0.p475c.p479z;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.c.z.x */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/x.class */
public class C11683x extends C11670p<AbstractC11669o> {

    /* renamed from: b */
    public final C11684a f26214b;

    /* renamed from: j.a.c0.c.z.x$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/x$a.class */
    public class C11684a {

        /* renamed from: a */
        public volatile int f26215a = 0;

        /* renamed from: b */
        public volatile int f26216b = 0;

        /* renamed from: c */
        public final SparseArray<LinkedList<AbstractC11669o>> f26217c = new SparseArray<>();

        public C11684a() {
        }

        /* renamed from: a */
        public Bitmap m8631a(int i, int i2) {
            return m8630a(i, i2, 0);
        }

        /* renamed from: a */
        public Bitmap m8630a(int i, int i2, int i3) {
            Bitmap bitmap = null;
            try {
                bitmap = m8623c(i, i2);
                if (bitmap == null) {
                    bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                }
                bitmap = bitmap;
                bitmap.eraseColor(i3);
            } catch (OutOfMemoryError e) {
                C12153d0.m6981e("MessagingAppImage", "PoolableImageCache:try to createOrReuseBitmap");
                AbstractC11516a.m9413n().mo9396m();
            }
            return bitmap;
        }

        /* renamed from: a */
        public Bitmap m8627a(@NonNull InputStream inputStream, @NonNull BitmapFactory.Options options, int i, int i2) throws IOException {
            Bitmap bitmap;
            if (i <= 0 || i2 <= 0) {
                C12153d0.m6981e("MessagingAppImage", "PoolableImageCache: Decoding bitmap with invalid size");
                throw new IOException("Invalid size / corrupted image");
            }
            C12151d.m7000b(inputStream);
            m8629a(options, i, i2);
            try {
                bitmap = BitmapFactory.decodeStream(inputStream, null, options);
            } catch (IllegalArgumentException e) {
                bitmap = null;
            } catch (OutOfMemoryError e2) {
                bitmap = null;
            }
            try {
                this.f26216b++;
            } catch (IllegalArgumentException e3) {
                Bitmap bitmap2 = options.inBitmap;
                if (bitmap2 != null) {
                    bitmap2.recycle();
                    options.inBitmap = null;
                    bitmap = BitmapFactory.decodeStream(inputStream, null, options);
                    m8632a();
                }
                return bitmap;
            } catch (OutOfMemoryError e4) {
                C12153d0.m6981e("MessagingAppImage", "Oom decoding inputStream");
                AbstractC11516a.m9413n().mo9396m();
                return bitmap;
            }
            return bitmap;
        }

        /* renamed from: a */
        public Bitmap m8626a(@NonNull byte[] bArr, @NonNull BitmapFactory.Options options, int i, int i2) throws OutOfMemoryError, IOException {
            Bitmap bitmap;
            if (i <= 0 || i2 <= 0) {
                C12153d0.m6981e("MessagingAppImage", "PoolableImageCache: Decoding bitmap with invalid size");
                throw new IOException("Invalid size / corrupted image");
            }
            C12151d.m7000b(bArr);
            C12151d.m7000b(options);
            m8629a(options, i, i2);
            try {
                bitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                try {
                    this.f26216b++;
                } catch (IllegalArgumentException e) {
                    Bitmap bitmap2 = options.inBitmap;
                    if (bitmap2 != null) {
                        bitmap2.recycle();
                        options.inBitmap = null;
                        bitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                        m8632a();
                    }
                    return bitmap;
                } catch (OutOfMemoryError e2) {
                    C12153d0.m6981e("MessagingAppImage", "Oom decoding inputStream");
                    AbstractC11516a.m9413n().mo9396m();
                    return bitmap;
                }
            } catch (IllegalArgumentException e3) {
                bitmap = null;
            } catch (OutOfMemoryError e4) {
                bitmap = null;
            }
            return bitmap;
        }

        /* renamed from: a */
        public final void m8632a() {
            this.f26215a++;
            if (this.f26215a % 100 == 0) {
                C12153d0.m6981e("MessagingAppImage", "Pooled bitmap consistently not being reused. Failure count = " + this.f26215a + ", success count = " + this.f26216b);
            }
        }

        /* renamed from: a */
        public final void m8629a(BitmapFactory.Options options, int i, int i2) {
            if (!options.inJustDecodeBounds) {
                options.inBitmap = m8623c(i, i2);
            }
        }

        /* renamed from: a */
        public final void m8628a(AbstractC11669o oVar) {
            synchronized (C11683x.this) {
                int b = m8624b(oVar);
                C12151d.m6999b(b != 0);
                LinkedList<AbstractC11669o> linkedList = this.f26217c.get(b);
                LinkedList<AbstractC11669o> linkedList2 = linkedList;
                if (linkedList == null) {
                    linkedList2 = new LinkedList<>();
                    this.f26217c.put(b, linkedList2);
                }
                linkedList2.addLast(oVar);
            }
        }

        /* renamed from: b */
        public final int m8625b(int i, int i2) {
            if (i > 65535 || i2 > 65535) {
                return 0;
            }
            return (i << 16) | i2;
        }

        /* renamed from: b */
        public final int m8624b(AbstractC11669o oVar) {
            Bitmap n;
            if (!oVar.mo8672r() || (n = oVar.mo8676n()) == null || !n.isMutable()) {
                return 0;
            }
            int width = n.getWidth();
            int height = n.getHeight();
            if (width <= 0 || height <= 0) {
                return 0;
            }
            return m8625b(width, height);
        }

        /* renamed from: c */
        public final Bitmap m8623c(int i, int i2) {
            LinkedList<AbstractC11669o> linkedList;
            AbstractC11669o oVar;
            synchronized (C11683x.this) {
                int b = m8625b(i, i2);
                if (b == 0 || (linkedList = this.f26217c.get(b)) == null || linkedList.size() <= 0) {
                    return null;
                }
                boolean z = false;
                int i3 = 0;
                while (true) {
                    if (i3 >= linkedList.size()) {
                        oVar = null;
                        break;
                    }
                    AbstractC11669o oVar2 = linkedList.get(i3);
                    if (oVar2.m8609i() == 1) {
                        oVar2.m8619a();
                        if (oVar2.m8609i() == 1) {
                            oVar = linkedList.remove(i3);
                            break;
                        }
                        C12153d0.m6981e("MessagingAppImage", "Image refCount changed from 1 in getReusableBitmapFromPool()");
                        oVar2.m8605m();
                    }
                    i3++;
                }
                if (oVar == null) {
                    return null;
                }
                oVar.m8615c();
                long elapsedRealtime = SystemClock.elapsedRealtime() - oVar.m8611g();
                if (elapsedRealtime < 5000) {
                    if (C12153d0.m6992a("MessagingAppImage", 2)) {
                        C12153d0.m6983d("MessagingAppImage", "Not reusing reusing first available bitmap from the pool because it has not been in the pool long enough. timeSinceLastRef=" + elapsedRealtime);
                    }
                    linkedList.addLast(oVar);
                    oVar.m8605m();
                    return null;
                }
                oVar.m8617b();
                if (((AbstractC11669o) C11683x.this.remove(oVar.m8612f())) == oVar) {
                    z = true;
                }
                C12151d.m6999b(z);
                Bitmap q = oVar.mo8673q();
                oVar.m8606l();
                oVar.m8605m();
                return q;
            }
        }

        /* renamed from: c */
        public void m8622c(AbstractC11669o oVar) {
            if (m8624b(oVar) != 0) {
                m8628a(oVar);
            }
        }

        /* renamed from: d */
        public void m8621d(AbstractC11669o oVar) {
            if (m8624b(oVar) != 0) {
                m8620e(oVar);
            }
        }

        /* renamed from: e */
        public final void m8620e(AbstractC11669o oVar) {
            synchronized (C11683x.this) {
                int b = m8624b(oVar);
                C12151d.m6999b(b != 0);
                LinkedList<AbstractC11669o> linkedList = this.f26217c.get(b);
                if (linkedList != null) {
                    linkedList.remove(oVar);
                }
            }
        }
    }

    public C11683x(int i, int i2, String str) {
        super(i, i2, str);
        this.f26214b = new C11684a();
    }

    public C11683x(int i, String str) {
        this(NotificationCompat.Builder.MAX_CHARSEQUENCE_LENGTH, i, str);
    }

    /* renamed from: a */
    public static BitmapFactory.Options m8636a(boolean z, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = z;
        options.inDensity = i;
        options.inTargetDensity = i2;
        options.inSampleSize = 1;
        options.inJustDecodeBounds = false;
        options.inMutable = true;
        return options;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public AbstractC11669o mo8637a(String str, AbstractC11669o oVar) {
        AbstractC11669o oVar2;
        synchronized (this) {
            this.f26214b.m8622c(oVar);
            oVar2 = (AbstractC11669o) super.mo8637a(str, (String) oVar);
        }
        return oVar2;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void entryRemoved(boolean z, String str, AbstractC11669o oVar, AbstractC11669o oVar2) {
        synchronized (this) {
            this.f26214b.m8621d(oVar);
            super.entryRemoved(z, str, oVar, oVar2);
        }
    }

    /* renamed from: c */
    public C11684a m8633c() {
        return this.f26214b;
    }
}
