package androidx.media2.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.support.p009v4.media.session.MediaSessionCompat;
import androidx.media2.common.SessionPlayer;
import java.util.HashMap;
import java.util.Iterator;
import p012b.p042i.p053o.C0943c;
import p012b.p074r.C1141c;
import p012b.p076s.p116d.AbstractC1783c;
import p012b.p130z.AbstractC1978c;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession.class */
public class MediaSession implements AutoCloseable {

    /* renamed from: b */
    public static final Object f2200b = new Object();

    /* renamed from: c */
    public static final HashMap<String, MediaSession> f2201c = new HashMap<>();

    /* renamed from: a */
    public final AbstractC0425c f2202a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$CommandButton.class */
    public static final class CommandButton implements AbstractC1978c {

        /* renamed from: a */
        public SessionCommand f2203a;

        /* renamed from: b */
        public int f2204b;

        /* renamed from: c */
        public CharSequence f2205c;

        /* renamed from: d */
        public Bundle f2206d;

        /* renamed from: e */
        public boolean f2207e;
    }

    /* renamed from: androidx.media2.session.MediaSession$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$a.class */
    public static abstract class AbstractC0423a {
    }

    /* renamed from: androidx.media2.session.MediaSession$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$b.class */
    public static final class C0424b {

        /* renamed from: a */
        public final C1141c.C1143b f2208a;

        /* renamed from: b */
        public final AbstractC0423a f2209b;

        /* renamed from: c */
        public final Bundle f2210c;

        public C0424b(C1141c.C1143b bVar, boolean z, AbstractC0423a aVar, Bundle bundle) {
            this.f2208a = bVar;
            this.f2209b = aVar;
            this.f2210c = bundle;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0424b)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            C0424b bVar = (C0424b) obj;
            return (this.f2209b == null && bVar.f2209b == null) ? this.f2208a.equals(bVar.f2208a) : C0943c.m35448a(this.f2209b, bVar.f2209b);
        }

        public int hashCode() {
            return C0943c.m35447a(this.f2209b, this.f2208a);
        }

        public String toString() {
            return "ControllerInfo {pkg=" + this.f2208a.m34584a() + ", uid=" + this.f2208a.m34583b() + "})";
        }
    }

    /* renamed from: androidx.media2.session.MediaSession$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$c.class */
    public interface AbstractC0425c extends AutoCloseable {
        /* renamed from: B1 */
        IBinder m37744B1();

        /* renamed from: C1 */
        MediaSessionCompat m37743C1();

        /* renamed from: a */
        void m37742a(AbstractC1783c cVar, String str, int i, int i2, Bundle bundle);

        /* renamed from: g1 */
        AbstractC0426d m37741g1();

        String getId();

        boolean isClosed();

        /* renamed from: o */
        Uri m37740o();

        /* renamed from: u1 */
        PendingIntent m37739u1();

        /* renamed from: z0 */
        SessionPlayer m37738z0();
    }

    /* renamed from: androidx.media2.session.MediaSession$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$d.class */
    public static abstract class AbstractC0426d {

        /* renamed from: androidx.media2.session.MediaSession$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaSession$d$a.class */
        public static abstract class AbstractC0427a {
        }

        /* renamed from: a */
        public abstract void m37737a(AbstractC0427a aVar);
    }

    /* renamed from: a */
    public static MediaSession m37750a(Uri uri) {
        MediaSession next;
        synchronized (f2200b) {
            try {
                Iterator<MediaSession> it = f2201c.values().iterator();
                do {
                    if (!it.hasNext()) {
                        return null;
                    }
                    next = it.next();
                } while (!C0943c.m35448a(next.m37746o(), uri));
                return next;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: C1 */
    public MediaSessionCompat m37752C1() {
        return this.f2202a.m37743C1();
    }

    /* renamed from: a */
    public AbstractC0425c m37751a() {
        return this.f2202a;
    }

    /* renamed from: b */
    public IBinder m37749b() {
        return this.f2202a.m37744B1();
    }

    /* renamed from: b */
    public void m37748b(AbstractC1783c cVar, String str, int i, int i2, Bundle bundle) {
        this.f2202a.m37742a(cVar, str, i, i2, bundle);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        try {
            synchronized (f2200b) {
                f2201c.remove(this.f2202a.getId());
            }
            this.f2202a.close();
        } catch (Exception e) {
        }
    }

    /* renamed from: g1 */
    public AbstractC0426d m37747g1() {
        return this.f2202a.m37741g1();
    }

    public String getId() {
        return this.f2202a.getId();
    }

    public boolean isClosed() {
        return this.f2202a.isClosed();
    }

    /* renamed from: o */
    public final Uri m37746o() {
        return this.f2202a.m37740o();
    }

    /* renamed from: z0 */
    public SessionPlayer m37745z0() {
        return this.f2202a.m37738z0();
    }
}
