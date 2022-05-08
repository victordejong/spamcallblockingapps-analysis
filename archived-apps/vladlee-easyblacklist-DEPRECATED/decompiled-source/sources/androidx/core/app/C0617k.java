package androidx.core.app;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.app.C0612j;
import com.google.android.gms.ads.AdRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.app.k */
/* loaded from: classes-dex2jar.jar:androidx/core/app/k.class */
public final class C0617k implements AbstractC0611i {

    /* renamed from: a */
    private final Notification.Builder f2860a;

    /* renamed from: b */
    private final C0612j.C0615c f2861b;

    /* renamed from: c */
    private RemoteViews f2862c;

    /* renamed from: d */
    private RemoteViews f2863d;

    /* renamed from: e */
    private final List<Bundle> f2864e = new ArrayList();

    /* renamed from: f */
    private final Bundle f2865f = new Bundle();

    /* renamed from: g */
    private int f2866g;

    /* renamed from: h */
    private RemoteViews f2867h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0617k(C0612j.C0615c cVar) {
        String str;
        Bundle bundle;
        this.f2861b = cVar;
        this.f2860a = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(cVar.f2830a, cVar.f2823I) : new Notification.Builder(cVar.f2830a);
        Notification notification = cVar.f2828N;
        this.f2860a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, cVar.f2837h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(cVar.f2833d).setContentText(cVar.f2834e).setContentInfo(cVar.f2839j).setContentIntent(cVar.f2835f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(cVar.f2836g, (notification.flags & 128) != 0).setLargeIcon(cVar.f2838i).setNumber(cVar.f2840k).setProgress(cVar.f2847r, cVar.f2848s, cVar.f2849t);
        if (Build.VERSION.SDK_INT < 21) {
            this.f2860a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2860a.setSubText(cVar.f2845p).setUsesChronometer(cVar.f2843n).setPriority(cVar.f2841l);
            Iterator<C0612j.C0613a> it = cVar.f2831b.iterator();
            while (it.hasNext()) {
                m8711a(it.next());
            }
            if (cVar.f2816B != null) {
                this.f2865f.putAll(cVar.f2816B);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (cVar.f2853x) {
                    this.f2865f.putBoolean("android.support.localOnly", true);
                }
                if (cVar.f2850u != null) {
                    this.f2865f.putString("android.support.groupKey", cVar.f2850u);
                    if (cVar.f2851v) {
                        bundle = this.f2865f;
                        str = "android.support.isGroupSummary";
                    } else {
                        bundle = this.f2865f;
                        str = "android.support.useSideChannel";
                    }
                    bundle.putBoolean(str, true);
                }
                if (cVar.f2852w != null) {
                    this.f2865f.putString("android.support.sortKey", cVar.f2852w);
                }
            }
            this.f2862c = cVar.f2820F;
            this.f2863d = cVar.f2821G;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2860a.setShowWhen(cVar.f2842m);
            if (Build.VERSION.SDK_INT < 21 && cVar.f2829O != null && !cVar.f2829O.isEmpty()) {
                this.f2865f.putStringArray("android.people", (String[]) cVar.f2829O.toArray(new String[cVar.f2829O.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f2860a.setLocalOnly(cVar.f2853x).setGroup(cVar.f2850u).setGroupSummary(cVar.f2851v).setSortKey(cVar.f2852w);
            this.f2866g = cVar.f2827M;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2860a.setCategory(cVar.f2815A).setColor(cVar.f2817C).setVisibility(cVar.f2818D).setPublicVersion(cVar.f2819E).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = cVar.f2829O.iterator();
            while (it2.hasNext()) {
                this.f2860a.addPerson(it2.next());
            }
            this.f2867h = cVar.f2822H;
            if (cVar.f2832c.size() > 0) {
                Bundle bundle2 = cVar.m8718d().getBundle("android.car.EXTENSIONS");
                Bundle bundle3 = bundle2 == null ? new Bundle() : bundle2;
                Bundle bundle4 = new Bundle();
                for (int i = 0; i < cVar.f2832c.size(); i++) {
                    bundle4.putBundle(Integer.toString(i), C0618l.m8707a(cVar.f2832c.get(i)));
                }
                bundle3.putBundle("invisible_actions", bundle4);
                cVar.m8718d().putBundle("android.car.EXTENSIONS", bundle3);
                this.f2865f.putBundle("android.car.EXTENSIONS", bundle3);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f2860a.setExtras(cVar.f2816B).setRemoteInputHistory(cVar.f2846q);
            if (cVar.f2820F != null) {
                this.f2860a.setCustomContentView(cVar.f2820F);
            }
            if (cVar.f2821G != null) {
                this.f2860a.setCustomBigContentView(cVar.f2821G);
            }
            if (cVar.f2822H != null) {
                this.f2860a.setCustomHeadsUpContentView(cVar.f2822H);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2860a.setBadgeIconType(cVar.f2824J).setShortcutId(cVar.f2825K).setTimeoutAfter(cVar.f2826L).setGroupAlertBehavior(cVar.f2827M);
            if (cVar.f2855z) {
                this.f2860a.setColorized(cVar.f2854y);
            }
            if (!TextUtils.isEmpty(cVar.f2823I)) {
                this.f2860a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
    }

    /* renamed from: a */
    private static void m8712a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }

    /* renamed from: a */
    private void m8711a(C0612j.C0613a aVar) {
        if (Build.VERSION.SDK_INT >= 20) {
            Notification.Action.Builder builder = new Notification.Action.Builder(aVar.f2807c, aVar.f2808d, aVar.f2809e);
            if (aVar.m8735b() != null) {
                for (RemoteInput remoteInput : C0619m.m8703a(aVar.m8735b())) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            Bundle bundle = aVar.f2805a != null ? new Bundle(aVar.f2805a) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", aVar.m8736a());
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(aVar.m8736a());
            }
            bundle.putInt("android.support.action.semanticAction", aVar.m8734c());
            if (Build.VERSION.SDK_INT >= 28) {
                builder.setSemanticAction(aVar.m8734c());
            }
            bundle.putBoolean("android.support.action.showsUserInterface", aVar.f2806b);
            builder.addExtras(bundle);
            this.f2860a.addAction(builder.build());
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.f2864e.add(C0618l.m8709a(this.f2860a, aVar));
        }
    }

    @Override // androidx.core.app.AbstractC0611i
    /* renamed from: a */
    public final Notification.Builder mo8713a() {
        return this.f2860a;
    }

    /* renamed from: b */
    public final Notification m8710b() {
        Notification notification;
        RemoteViews remoteViews;
        C0612j.AbstractC0616d dVar = this.f2861b.f2844o;
        if (dVar != null) {
            dVar.mo8715a(this);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            notification = this.f2860a.build();
        } else if (Build.VERSION.SDK_INT >= 24) {
            Notification build = this.f2860a.build();
            notification = build;
            if (this.f2866g != 0) {
                if (!(build.getGroup() == null || (build.flags & AdRequest.MAX_CONTENT_URL_LENGTH) == 0 || this.f2866g != 2)) {
                    m8712a(build);
                }
                notification = build;
                if (build.getGroup() != null) {
                    notification = build;
                    if ((build.flags & AdRequest.MAX_CONTENT_URL_LENGTH) == 0) {
                        notification = build;
                        if (this.f2866g == 1) {
                            notification = build;
                            m8712a(notification);
                        }
                    }
                }
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f2860a.setExtras(this.f2865f);
            Notification build2 = this.f2860a.build();
            RemoteViews remoteViews2 = this.f2862c;
            if (remoteViews2 != null) {
                build2.contentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f2863d;
            if (remoteViews3 != null) {
                build2.bigContentView = remoteViews3;
            }
            RemoteViews remoteViews4 = this.f2867h;
            if (remoteViews4 != null) {
                build2.headsUpContentView = remoteViews4;
            }
            notification = build2;
            if (this.f2866g != 0) {
                if (!(build2.getGroup() == null || (build2.flags & AdRequest.MAX_CONTENT_URL_LENGTH) == 0 || this.f2866g != 2)) {
                    m8712a(build2);
                }
                notification = build2;
                if (build2.getGroup() != null) {
                    notification = build2;
                    if ((build2.flags & AdRequest.MAX_CONTENT_URL_LENGTH) == 0) {
                        notification = build2;
                        if (this.f2866g == 1) {
                            notification = build2;
                            m8712a(notification);
                        }
                    }
                }
            }
        } else if (Build.VERSION.SDK_INT >= 20) {
            this.f2860a.setExtras(this.f2865f);
            Notification build3 = this.f2860a.build();
            RemoteViews remoteViews5 = this.f2862c;
            if (remoteViews5 != null) {
                build3.contentView = remoteViews5;
            }
            RemoteViews remoteViews6 = this.f2863d;
            if (remoteViews6 != null) {
                build3.bigContentView = remoteViews6;
            }
            notification = build3;
            if (this.f2866g != 0) {
                if (!(build3.getGroup() == null || (build3.flags & AdRequest.MAX_CONTENT_URL_LENGTH) == 0 || this.f2866g != 2)) {
                    m8712a(build3);
                }
                notification = build3;
                if (build3.getGroup() != null) {
                    notification = build3;
                    if ((build3.flags & AdRequest.MAX_CONTENT_URL_LENGTH) == 0) {
                        notification = build3;
                        if (this.f2866g == 1) {
                            notification = build3;
                            m8712a(notification);
                        }
                    }
                }
            }
        } else if (Build.VERSION.SDK_INT >= 19) {
            SparseArray<Bundle> a = C0618l.m8706a(this.f2864e);
            if (a != null) {
                this.f2865f.putSparseParcelableArray("android.support.actionExtras", a);
            }
            this.f2860a.setExtras(this.f2865f);
            Notification build4 = this.f2860a.build();
            RemoteViews remoteViews7 = this.f2862c;
            if (remoteViews7 != null) {
                build4.contentView = remoteViews7;
            }
            remoteViews = this.f2863d;
            notification = build4;
            if (remoteViews != null) {
                notification = build4;
                notification.bigContentView = remoteViews;
            }
        } else if (Build.VERSION.SDK_INT >= 16) {
            Notification build5 = this.f2860a.build();
            Bundle a2 = C0612j.m8737a(build5);
            Bundle bundle = new Bundle(this.f2865f);
            for (String str : this.f2865f.keySet()) {
                if (a2.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a2.putAll(bundle);
            SparseArray<Bundle> a3 = C0618l.m8706a(this.f2864e);
            if (a3 != null) {
                C0612j.m8737a(build5).putSparseParcelableArray("android.support.actionExtras", a3);
            }
            RemoteViews remoteViews8 = this.f2862c;
            if (remoteViews8 != null) {
                build5.contentView = remoteViews8;
            }
            remoteViews = this.f2863d;
            notification = build5;
            if (remoteViews != null) {
                notification = build5;
                notification.bigContentView = remoteViews;
            }
        } else {
            notification = this.f2860a.getNotification();
        }
        if (this.f2861b.f2820F != null) {
            notification.contentView = this.f2861b.f2820F;
        }
        int i = Build.VERSION.SDK_INT;
        int i2 = Build.VERSION.SDK_INT;
        if (Build.VERSION.SDK_INT >= 16 && dVar != null) {
            C0612j.m8737a(notification);
        }
        return notification;
    }
}
