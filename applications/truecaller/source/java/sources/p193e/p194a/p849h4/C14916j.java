package p193e.p194a.p849h4;

import android.app.NotificationChannel;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p849h4.C14921o;
import p193e.p194a.p849h4.p850q.C14927c;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.h4.j */
/* loaded from: classes11-dex2jar.jar:e/a/h4/j.class */
public final class C14916j implements AbstractC14915i {

    /* renamed from: a */
    public final Map<C14927c, Provider<NotificationChannel>> f42628a;

    /* renamed from: b */
    public final a<AbstractC14911e> f42629b;

    /* renamed from: c */
    public final AbstractC14917k f42630c;

    @Inject
    public C14916j(Map<C14927c, Provider<NotificationChannel>> map, a<AbstractC14911e> aVar, AbstractC14917k abstractC14917k) {
        l.e(map, "channels");
        l.e(aVar, "dynamicChannelIdProvider");
        l.e(abstractC14917k, "settings");
        this.f42628a = map;
        this.f42629b = aVar;
        this.f42630c = abstractC14917k;
    }

    @Override // p193e.p194a.p849h4.AbstractC14915i
    /* renamed from: a */
    public boolean mo19433a(String str) {
        Map.Entry entry;
        l.e(str, "channelKey");
        Map<C14927c, Provider<NotificationChannel>> map = this.f42628a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<C14927c, Provider<NotificationChannel>> entry2 : map.entrySet()) {
            if (l.a(entry2.getKey().f42650c, str)) {
                linkedHashMap.put(entry2.getKey(), entry2.getValue());
            }
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        if (!it.hasNext()) {
            it = null;
        }
        if (it == null || (entry = (Map.Entry) it.next()) == null) {
            throw new IllegalArgumentException(C22128a.m8725C2("Could not find channel spec for ", str, " key! maybe forgot to add proper provider in a dagger module!"));
        }
        return mo19431c((C14927c) entry.getKey());
    }

    @Override // p193e.p194a.p849h4.AbstractC14915i
    /* renamed from: b */
    public void mo19432b(String str, int i) {
        l.e(str, "channelKey");
        this.f42630c.mo19428e2(str, i);
    }

    @Override // p193e.p194a.p849h4.AbstractC14915i
    /* renamed from: c */
    public boolean mo19431c(C14927c c14927c) {
        l.e(c14927c, "channelSpec");
        return this.f42630c.mo19427s2(c14927c.f42650c) < c14927c.f42653f;
    }

    @Override // p193e.p194a.p849h4.AbstractC14915i
    /* renamed from: d */
    public void mo19430d(C14927c c14927c, s1.z.b.l<? super String, s> lVar) {
        l.e(c14927c, "channelSpec");
        l.e(lVar, "onCleanup");
        if (!c14927c.f42651d) {
            return;
        }
        String mo19429a = this.f42630c.mo19429a(c14927c.f42650c);
        String mo19453a = ((AbstractC14911e) this.f42629b.get()).mo19453a(c14927c.f42650c);
        if (mo19429a != null && (!l.a(mo19429a, mo19453a))) {
            ((C14921o.C14923b) lVar).m19407d(mo19429a);
        }
        this.f42630c.mo19426w1(c14927c.f42650c, mo19453a);
    }
}
