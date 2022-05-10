package p012b.p042i.p043h;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p012b.p042i.p043h.C0857h;
/* renamed from: b.i.h.i */
/* loaded from: classes-dex2jar.jar:b/i/h/i.class */
public class C0863i implements AbstractC0856g {

    /* renamed from: a */
    public final Notification.Builder f4045a;

    /* renamed from: b */
    public final C0857h.C0861d f4046b;

    /* renamed from: c */
    public RemoteViews f4047c;

    /* renamed from: d */
    public RemoteViews f4048d;

    /* renamed from: e */
    public final List<Bundle> f4049e = new ArrayList();

    /* renamed from: f */
    public final Bundle f4050f = new Bundle();

    /* renamed from: g */
    public int f4051g;

    /* renamed from: h */
    public RemoteViews f4052h;

    public C0863i(C0857h.C0861d dVar) {
        ArrayList<String> arrayList;
        this.f4046b = dVar;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4045a = new Notification.Builder(dVar.f4015a, dVar.f4005J);
        } else {
            this.f4045a = new Notification.Builder(dVar.f4015a);
        }
        Notification notification = dVar.f4012Q;
        this.f4045a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, dVar.f4022h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(dVar.f4018d).setContentText(dVar.f4019e).setContentInfo(dVar.f4024j).setContentIntent(dVar.f4020f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(dVar.f4021g, (notification.flags & 128) != 0).setLargeIcon(dVar.f4023i).setNumber(dVar.f4025k).setProgress(dVar.f4033s, dVar.f4034t, dVar.f4035u);
        if (Build.VERSION.SDK_INT < 21) {
            this.f4045a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f4045a.setSubText(dVar.f4031q).setUsesChronometer(dVar.f4028n).setPriority(dVar.f4026l);
            Iterator<C0857h.C0858a> it = dVar.f4016b.iterator();
            while (it.hasNext()) {
                m35716a(it.next());
            }
            Bundle bundle = dVar.f3998C;
            if (bundle != null) {
                this.f4050f.putAll(bundle);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (dVar.f4039y) {
                    this.f4050f.putBoolean("android.support.localOnly", true);
                }
                String str = dVar.f4036v;
                if (str != null) {
                    this.f4050f.putString("android.support.groupKey", str);
                    if (dVar.f4037w) {
                        this.f4050f.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f4050f.putBoolean("android.support.useSideChannel", true);
                    }
                }
                String str2 = dVar.f4038x;
                if (str2 != null) {
                    this.f4050f.putString("android.support.sortKey", str2);
                }
            }
            this.f4047c = dVar.f4002G;
            this.f4048d = dVar.f4003H;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f4045a.setShowWhen(dVar.f4027m);
            if (Build.VERSION.SDK_INT < 21 && (arrayList = dVar.f4014S) != null && !arrayList.isEmpty()) {
                Bundle bundle2 = this.f4050f;
                ArrayList<String> arrayList2 = dVar.f4014S;
                bundle2.putStringArray("android.people", (String[]) arrayList2.toArray(new String[arrayList2.size()]));
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f4045a.setLocalOnly(dVar.f4039y).setGroup(dVar.f4036v).setGroupSummary(dVar.f4037w).setSortKey(dVar.f4038x);
            this.f4051g = dVar.f4009N;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f4045a.setCategory(dVar.f3997B).setColor(dVar.f3999D).setVisibility(dVar.f4000E).setPublicVersion(dVar.f4001F).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = dVar.f4014S.iterator();
            while (it2.hasNext()) {
                this.f4045a.addPerson(it2.next());
            }
            this.f4052h = dVar.f4004I;
            if (dVar.f4017c.size() > 0) {
                Bundle bundle3 = dVar.m35735c().getBundle("android.car.EXTENSIONS");
                Bundle bundle4 = bundle3 == null ? new Bundle() : bundle3;
                Bundle bundle5 = new Bundle();
                for (int i = 0; i < dVar.f4017c.size(); i++) {
                    bundle5.putBundle(Integer.toString(i), C0864j.m35711a(dVar.f4017c.get(i)));
                }
                bundle4.putBundle("invisible_actions", bundle5);
                dVar.m35735c().putBundle("android.car.EXTENSIONS", bundle4);
                this.f4050f.putBundle("android.car.EXTENSIONS", bundle4);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f4045a.setExtras(dVar.f3998C).setRemoteInputHistory(dVar.f4032r);
            RemoteViews remoteViews = dVar.f4002G;
            if (remoteViews != null) {
                this.f4045a.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = dVar.f4003H;
            if (remoteViews2 != null) {
                this.f4045a.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = dVar.f4004I;
            if (remoteViews3 != null) {
                this.f4045a.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4045a.setBadgeIconType(dVar.f4006K).setShortcutId(dVar.f4007L).setTimeoutAfter(dVar.f4008M).setGroupAlertBehavior(dVar.f4009N);
            if (dVar.f3996A) {
                this.f4045a.setColorized(dVar.f4040z);
            }
            if (!TextUtils.isEmpty(dVar.f4005J)) {
                this.f4045a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f4045a.setAllowSystemGeneratedContextualActions(dVar.f4010O);
            this.f4045a.setBubbleMetadata(C0857h.C0860c.m35754a(dVar.f4011P));
        }
        if (dVar.f4013R) {
            if (this.f4046b.f4037w) {
                this.f4051g = 2;
            } else {
                this.f4051g = 1;
            }
            this.f4045a.setVibrate(null);
            this.f4045a.setSound(null);
            int i2 = notification.defaults & (-2);
            notification.defaults = i2;
            int i3 = i2 & (-3);
            notification.defaults = i3;
            this.f4045a.setDefaults(i3);
            if (Build.VERSION.SDK_INT >= 26) {
                if (TextUtils.isEmpty(this.f4046b.f4036v)) {
                    this.f4045a.setGroup("silent");
                }
                this.f4045a.setGroupAlertBehavior(this.f4051g);
            }
        }
    }

    @Override // p012b.p042i.p043h.AbstractC0856g
    /* renamed from: a */
    public Notification.Builder mo35718a() {
        return this.f4045a;
    }

    /* renamed from: a */
    public final void m35717a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        int i = notification.defaults & (-2);
        notification.defaults = i;
        notification.defaults = i & (-3);
    }

    /* renamed from: a */
    public final void m35716a(C0857h.C0858a aVar) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 20) {
            IconCompat f = aVar.m35762f();
            Notification.Action.Builder builder = Build.VERSION.SDK_INT >= 23 ? new Notification.Action.Builder(f != null ? f.m38556k() : null, aVar.m35758j(), aVar.m35767a()) : new Notification.Action.Builder(f != null ? f.m38560g() : 0, aVar.m35758j(), aVar.m35767a());
            if (aVar.m35761g() != null) {
                for (RemoteInput remoteInput : C0865k.m35705a(aVar.m35761g())) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            Bundle bundle = aVar.m35764d() != null ? new Bundle(aVar.m35764d()) : new Bundle();
            bundle.putBoolean("android.support.allowGeneratedReplies", aVar.m35766b());
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(aVar.m35766b());
            }
            bundle.putInt("android.support.action.semanticAction", aVar.m35760h());
            if (Build.VERSION.SDK_INT >= 28) {
                builder.setSemanticAction(aVar.m35760h());
            }
            if (Build.VERSION.SDK_INT >= 29) {
                builder.setContextual(aVar.m35757k());
            }
            bundle.putBoolean("android.support.action.showsUserInterface", aVar.m35759i());
            builder.addExtras(bundle);
            this.f4045a.addAction(builder.build());
        } else if (i >= 16) {
            this.f4049e.add(C0864j.m35713a(this.f4045a, aVar));
        }
    }

    /* renamed from: b */
    public Notification m35715b() {
        Bundle a;
        RemoteViews d;
        RemoteViews b;
        C0857h.AbstractC0862e eVar = this.f4046b.f4030p;
        if (eVar != null) {
            eVar.mo34569a(this);
        }
        RemoteViews c = eVar != null ? eVar.mo34563c(this) : null;
        Notification c2 = m35714c();
        if (c != null) {
            c2.contentView = c;
        } else {
            RemoteViews remoteViews = this.f4046b.f4002G;
            if (remoteViews != null) {
                c2.contentView = remoteViews;
            }
        }
        if (!(Build.VERSION.SDK_INT < 16 || eVar == null || (b = eVar.mo34565b(this)) == null)) {
            c2.bigContentView = b;
        }
        if (!(Build.VERSION.SDK_INT < 21 || eVar == null || (d = this.f4046b.f4030p.m35719d(this)) == null)) {
            c2.headsUpContentView = d;
        }
        if (!(Build.VERSION.SDK_INT < 16 || eVar == null || (a = C0857h.m35768a(c2)) == null)) {
            eVar.m35723a(a);
        }
        return c2;
    }

    /* renamed from: c */
    public Notification m35714c() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            return this.f4045a.build();
        }
        if (i >= 24) {
            Notification build = this.f4045a.build();
            if (this.f4051g != 0) {
                if (!(build.getGroup() == null || (build.flags & RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN) == 0 || this.f4051g != 2)) {
                    m35717a(build);
                }
                if (build.getGroup() != null && (build.flags & RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN) == 0 && this.f4051g == 1) {
                    m35717a(build);
                }
            }
            return build;
        } else if (i >= 21) {
            this.f4045a.setExtras(this.f4050f);
            Notification build2 = this.f4045a.build();
            RemoteViews remoteViews = this.f4047c;
            if (remoteViews != null) {
                build2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f4048d;
            if (remoteViews2 != null) {
                build2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f4052h;
            if (remoteViews3 != null) {
                build2.headsUpContentView = remoteViews3;
            }
            if (this.f4051g != 0) {
                if (!(build2.getGroup() == null || (build2.flags & RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN) == 0 || this.f4051g != 2)) {
                    m35717a(build2);
                }
                if (build2.getGroup() != null && (build2.flags & RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN) == 0 && this.f4051g == 1) {
                    m35717a(build2);
                }
            }
            return build2;
        } else if (i >= 20) {
            this.f4045a.setExtras(this.f4050f);
            Notification build3 = this.f4045a.build();
            RemoteViews remoteViews4 = this.f4047c;
            if (remoteViews4 != null) {
                build3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f4048d;
            if (remoteViews5 != null) {
                build3.bigContentView = remoteViews5;
            }
            if (this.f4051g != 0) {
                if (!(build3.getGroup() == null || (build3.flags & RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN) == 0 || this.f4051g != 2)) {
                    m35717a(build3);
                }
                if (build3.getGroup() != null && (build3.flags & RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN) == 0 && this.f4051g == 1) {
                    m35717a(build3);
                }
            }
            return build3;
        } else if (i >= 19) {
            SparseArray<Bundle> a = C0864j.m35709a(this.f4049e);
            if (a != null) {
                this.f4050f.putSparseParcelableArray("android.support.actionExtras", a);
            }
            this.f4045a.setExtras(this.f4050f);
            Notification build4 = this.f4045a.build();
            RemoteViews remoteViews6 = this.f4047c;
            if (remoteViews6 != null) {
                build4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f4048d;
            if (remoteViews7 != null) {
                build4.bigContentView = remoteViews7;
            }
            return build4;
        } else if (i < 16) {
            return this.f4045a.getNotification();
        } else {
            Notification build5 = this.f4045a.build();
            Bundle a2 = C0857h.m35768a(build5);
            Bundle bundle = new Bundle(this.f4050f);
            for (String str : this.f4050f.keySet()) {
                if (a2.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a2.putAll(bundle);
            SparseArray<Bundle> a3 = C0864j.m35709a(this.f4049e);
            if (a3 != null) {
                C0857h.m35768a(build5).putSparseParcelableArray("android.support.actionExtras", a3);
            }
            RemoteViews remoteViews8 = this.f4047c;
            if (remoteViews8 != null) {
                build5.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.f4048d;
            if (remoteViews9 != null) {
                build5.bigContentView = remoteViews9;
            }
            return build5;
        }
    }
}
