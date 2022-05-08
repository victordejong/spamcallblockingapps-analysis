package androidx.media.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.core.app.NotificationCompat;
import androidx.media.C0428R;
/* loaded from: classes-dex2jar.jar:androidx/media/app/NotificationCompat.class */
public class NotificationCompat {

    /* loaded from: classes-dex2jar.jar:androidx/media/app/NotificationCompat$DecoratedMediaCustomViewStyle.class */
    public static class DecoratedMediaCustomViewStyle extends MediaStyle {
        /* renamed from: w */
        private void m17972w(RemoteViews remoteViews) {
            remoteViews.setInt(C0428R.C0431id.status_bar_latest_event_content, "setBackgroundColor", this.f2902a.getColor() != 0 ? this.f2902a.getColor() : this.f2902a.mContext.getResources().getColor(C0428R.C0429color.notification_material_background_media_default_color));
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: b */
        public void mo17971b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                Notification.Builder a = notificationBuilderWithBuilderAccessor.mo19747a();
                Notification.DecoratedMediaCustomViewStyle decoratedMediaCustomViewStyle = new Notification.DecoratedMediaCustomViewStyle();
                m17968q(decoratedMediaCustomViewStyle);
                a.setStyle(decoratedMediaCustomViewStyle);
                return;
            }
            super.mo17971b(notificationBuilderWithBuilderAccessor);
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: m */
        public RemoteViews mo17970m(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews bigContentView = this.f2902a.getBigContentView() != null ? this.f2902a.getBigContentView() : this.f2902a.getContentView();
            if (bigContentView == null) {
                return null;
            }
            RemoteViews r = m17967r();
            m19758d(r, bigContentView);
            if (Build.VERSION.SDK_INT >= 21) {
                m17972w(r);
            }
            return r;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle, androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: n */
        public RemoteViews mo17969n(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            boolean z = this.f2902a.getContentView() != null;
            if (Build.VERSION.SDK_INT >= 21) {
                boolean z2 = true;
                if (!z) {
                    z2 = this.f2902a.getBigContentView() != null;
                }
                if (!z2) {
                    return null;
                }
                RemoteViews s = m17966s();
                if (z) {
                    m19758d(s, this.f2902a.getContentView());
                }
                m17972w(s);
                return s;
            }
            RemoteViews s2 = m17966s();
            if (!z) {
                return null;
            }
            m19758d(s2, this.f2902a.getContentView());
            return s2;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: o */
        public RemoteViews mo17973o(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews headsUpContentView = this.f2902a.getHeadsUpContentView() != null ? this.f2902a.getHeadsUpContentView() : this.f2902a.getContentView();
            if (headsUpContentView == null) {
                return null;
            }
            RemoteViews r = m17967r();
            m19758d(r, headsUpContentView);
            if (Build.VERSION.SDK_INT >= 21) {
                m17972w(r);
            }
            return r;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle
        /* renamed from: u */
        int mo17964u(int i) {
            return i <= 3 ? C0428R.layout.notification_template_big_media_narrow_custom : C0428R.layout.notification_template_big_media_custom;
        }

        @Override // androidx.media.app.NotificationCompat.MediaStyle
        /* renamed from: v */
        int mo17963v() {
            return this.f2902a.getContentView() != null ? C0428R.layout.notification_template_media_custom : super.mo17963v();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/app/NotificationCompat$MediaStyle.class */
    public static class MediaStyle extends NotificationCompat.Style {

        /* renamed from: e */
        int[] f4310e = null;

        /* renamed from: f */
        MediaSessionCompat.Token f4311f;

        /* renamed from: g */
        boolean f4312g;

        /* renamed from: h */
        PendingIntent f4313h;

        /* renamed from: t */
        private RemoteViews m17965t(NotificationCompat.Action action) {
            boolean z = action.m19803a() == null;
            RemoteViews remoteViews = new RemoteViews(this.f2902a.mContext.getPackageName(), C0428R.layout.notification_media_action);
            remoteViews.setImageViewResource(C0428R.C0431id.action0, action.m19799e());
            if (!z) {
                remoteViews.setOnClickPendingIntent(C0428R.C0431id.action0, action.m19803a());
            }
            if (Build.VERSION.SDK_INT >= 15) {
                remoteViews.setContentDescription(C0428R.C0431id.action0, action.m19794j());
            }
            return remoteViews;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: b */
        public void mo17971b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 21) {
                Notification.Builder a = notificationBuilderWithBuilderAccessor.mo19747a();
                Notification.MediaStyle mediaStyle = new Notification.MediaStyle();
                m17968q(mediaStyle);
                a.setStyle(mediaStyle);
            } else if (this.f4312g) {
                notificationBuilderWithBuilderAccessor.mo19747a().setOngoing(true);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: m */
        public RemoteViews mo17970m(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 21) {
                return null;
            }
            return m17967r();
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: n */
        public RemoteViews mo17969n(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 21) {
                return null;
            }
            return m17966s();
        }

        @RequiresApi
        /* renamed from: q */
        Notification.MediaStyle m17968q(Notification.MediaStyle mediaStyle) {
            int[] iArr = this.f4310e;
            if (iArr != null) {
                mediaStyle.setShowActionsInCompactView(iArr);
            }
            MediaSessionCompat.Token token = this.f4311f;
            if (token != null) {
                mediaStyle.setMediaSession((MediaSession.Token) token.getToken());
            }
            return mediaStyle;
        }

        /* renamed from: r */
        RemoteViews m17967r() {
            int min = Math.min(this.f2902a.mActions.size(), 5);
            RemoteViews c = m19759c(false, mo17964u(min), false);
            c.removeAllViews(C0428R.C0431id.media_actions);
            if (min > 0) {
                for (int i = 0; i < min; i++) {
                    c.addView(C0428R.C0431id.media_actions, m17965t(this.f2902a.mActions.get(i)));
                }
            }
            if (this.f4312g) {
                c.setViewVisibility(C0428R.C0431id.cancel_action, 0);
                c.setInt(C0428R.C0431id.cancel_action, "setAlpha", this.f2902a.mContext.getResources().getInteger(C0428R.integer.cancel_button_image_alpha));
                c.setOnClickPendingIntent(C0428R.C0431id.cancel_action, this.f4313h);
            } else {
                c.setViewVisibility(C0428R.C0431id.cancel_action, 8);
            }
            return c;
        }

        /* renamed from: s */
        RemoteViews m17966s() {
            RemoteViews c = m19759c(false, mo17963v(), true);
            int size = this.f2902a.mActions.size();
            int[] iArr = this.f4310e;
            int min = iArr == null ? 0 : Math.min(iArr.length, 3);
            c.removeAllViews(C0428R.C0431id.media_actions);
            if (min > 0) {
                for (int i = 0; i < min; i++) {
                    if (i < size) {
                        c.addView(C0428R.C0431id.media_actions, m17965t(this.f2902a.mActions.get(this.f4310e[i])));
                    } else {
                        throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i), Integer.valueOf(size - 1)));
                    }
                }
            }
            if (this.f4312g) {
                c.setViewVisibility(C0428R.C0431id.end_padder, 8);
                c.setViewVisibility(C0428R.C0431id.cancel_action, 0);
                c.setOnClickPendingIntent(C0428R.C0431id.cancel_action, this.f4313h);
                c.setInt(C0428R.C0431id.cancel_action, "setAlpha", this.f2902a.mContext.getResources().getInteger(C0428R.integer.cancel_button_image_alpha));
            } else {
                c.setViewVisibility(C0428R.C0431id.end_padder, 0);
                c.setViewVisibility(C0428R.C0431id.cancel_action, 8);
            }
            return c;
        }

        /* renamed from: u */
        int mo17964u(int i) {
            return i <= 3 ? C0428R.layout.notification_template_big_media_narrow : C0428R.layout.notification_template_big_media;
        }

        /* renamed from: v */
        int mo17963v() {
            return C0428R.layout.notification_template_media;
        }
    }

    private NotificationCompat() {
    }
}
