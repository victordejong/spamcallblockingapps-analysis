package android.support.p014v4.media.session;

import android.media.session.MediaSession;
/* renamed from: android.support.v4.media.session.g */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/session/g.class */
final class C0215g {
    /* renamed from: a */
    public static Object m9985a(Object obj) {
        if (obj instanceof MediaSession.Token) {
            return obj;
        }
        throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
    }
}
