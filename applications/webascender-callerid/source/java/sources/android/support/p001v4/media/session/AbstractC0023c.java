package android.support.p001v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.support.p001v4.media.MediaMetadataCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.List;
/* renamed from: android.support.v4.media.session.c */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c.class */
public abstract class AbstractC0023c implements IBinder.DeathRecipient {

    /* renamed from: a */
    final Object f57a;

    /* renamed from: b */
    HandlerC0024a f58b;

    /* renamed from: c */
    AbstractC0021a f59c;

    /* renamed from: android.support.v4.media.session.c$a */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/session/c$a.class */
    public class HandlerC0024a extends Handler {
    }

    public AbstractC0023c() {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f57a = C0026e.m7019a(new b(this));
        } else {
            this.f59c = new c(this);
        }
    }

    /* renamed from: a */
    public void m7028a(C0025d c0025d) {
    }

    /* renamed from: b */
    public void m7027b(Bundle bundle) {
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        m7020i(8, null, null);
    }

    /* renamed from: c */
    public void m7026c(MediaMetadataCompat mediaMetadataCompat) {
    }

    /* renamed from: d */
    public void m7025d(PlaybackStateCompat playbackStateCompat) {
    }

    /* renamed from: e */
    public void m7024e(List<MediaSessionCompat.QueueItem> list) {
    }

    /* renamed from: f */
    public void m7023f(CharSequence charSequence) {
    }

    /* renamed from: g */
    public void m7022g() {
    }

    /* renamed from: h */
    public void m7021h(String str, Bundle bundle) {
    }

    /* renamed from: i */
    public void m7020i(int i, Object obj, Bundle bundle) {
        HandlerC0024a handlerC0024a = this.f58b;
        if (handlerC0024a != null) {
            Message obtainMessage = handlerC0024a.obtainMessage(i, obj);
            obtainMessage.setData(bundle);
            obtainMessage.sendToTarget();
        }
    }
}
