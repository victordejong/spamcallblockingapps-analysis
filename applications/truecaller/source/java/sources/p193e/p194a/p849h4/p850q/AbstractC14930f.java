package p193e.p194a.p849h4.p850q;

import android.app.NotificationChannel;
import android.content.Context;
import android.media.AudioAttributes;
import android.net.Uri;
import com.truecaller.notificationchannels.C4309R;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p849h4.AbstractC14913g;
import s1.z.c.f;
/* renamed from: e.a.h4.q.f */
/* loaded from: classes11-dex2jar.jar:e/a/h4/q/f.class */
public abstract class AbstractC14930f {

    /* renamed from: a */
    public static final C14931a f42654a = new C14931a(null);

    /* renamed from: e.a.h4.q.f$a */
    /* loaded from: classes11-dex2jar.jar:e/a/h4/q/f$a.class */
    public static final class C14931a {
        public C14931a(f fVar) {
        }

        /* renamed from: a */
        public static NotificationChannel m19404a(C14931a c14931a, Context context, AbstractC14913g abstractC14913g, String str, int i, int i2, int i3, boolean z, boolean z2, long[] jArr, String str2, Uri uri, int i4) {
            if ((i4 & 32) != 0) {
                i3 = 2;
            }
            if ((i4 & 64) != 0) {
                z = true;
            }
            if ((i4 & 128) != 0) {
                z2 = abstractC14913g.mo19448c();
            }
            if ((i4 & 256) != 0) {
                jArr = null;
            }
            if ((i4 & 512) != 0) {
                str2 = null;
            }
            if ((i4 & 1024) != 0) {
                uri = abstractC14913g.mo19444g();
            }
            NotificationChannel notificationChannel = new NotificationChannel(str, context.getString(i), i3);
            notificationChannel.setDescription(context.getString(i2));
            notificationChannel.enableLights(z);
            notificationChannel.enableVibration(z2);
            int i5 = C4309R.color.notification_channels_notification_light_default;
            Object obj = C26467a.f74235a;
            notificationChannel.setLightColor(C26467a.C26471d.m1787a(context, i5));
            if (str2 != null) {
                notificationChannel.setGroup(str2);
            }
            notificationChannel.setSound(uri, new AudioAttributes.Builder().setContentType(4).setUsage(5).build());
            if (jArr != null) {
                notificationChannel.setVibrationPattern(jArr);
            }
            return notificationChannel;
        }
    }
}
