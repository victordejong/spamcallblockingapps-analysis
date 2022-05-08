package p081h.p415j.p416a.p417a.p418a.p419b;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import androidx.media2.exoplayer.external.util.MimeTypes;
/* renamed from: h.j.a.a.a.b.d */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/b/d.class */
public final class C10615d extends ContentObserver {

    /* renamed from: a */
    public final Context f24162a;

    /* renamed from: b */
    public final AudioManager f24163b;

    /* renamed from: c */
    public final C10612a f24164c;

    /* renamed from: d */
    public final AbstractC10614c f24165d;

    /* renamed from: e */
    public float f24166e;

    public C10615d(Handler handler, Context context, C10612a aVar, AbstractC10614c cVar) {
        super(handler);
        this.f24162a = context;
        this.f24163b = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.f24164c = aVar;
        this.f24165d = cVar;
    }

    /* renamed from: a */
    public void m11202a() {
        this.f24166e = m11199c();
        m11198d();
        this.f24162a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    /* renamed from: a */
    public final boolean m11201a(float f) {
        return f != this.f24166e;
    }

    /* renamed from: b */
    public void m11200b() {
        this.f24162a.getContentResolver().unregisterContentObserver(this);
    }

    /* renamed from: c */
    public final float m11199c() {
        return this.f24164c.m11204a(this.f24163b.getStreamVolume(3), this.f24163b.getStreamMaxVolume(3));
    }

    /* renamed from: d */
    public final void m11198d() {
        this.f24165d.mo11119a(this.f24166e);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float c = m11199c();
        if (m11201a(c)) {
            this.f24166e = c;
            m11198d();
        }
    }
}
