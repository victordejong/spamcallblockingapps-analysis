package p193e.p194a.p849h4;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p849h4.p850q.C14925a;
import s1.z.c.l;
/* renamed from: e.a.h4.f */
/* loaded from: classes11-dex2jar.jar:e/a/h4/f.class */
public final class C14912f implements AbstractC14911e {

    /* renamed from: a */
    public final Map<C14925a, Provider<String>> f42624a;

    @Inject
    public C14912f(Map<C14925a, Provider<String>> map) {
        l.e(map, "ids");
        this.f42624a = map;
    }

    @Override // p193e.p194a.p849h4.AbstractC14911e
    /* renamed from: a */
    public String mo19453a(String str) {
        Provider provider;
        String str2;
        l.e(str, "channelKey");
        Map<C14925a, Provider<String>> map = this.f42624a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<C14925a, Provider<String>> entry : map.entrySet()) {
            if (l.a(entry.getKey().f42648c, str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.values().iterator();
        if (!it.hasNext()) {
            it = null;
        }
        if (it == null || (provider = (Provider) it.next()) == null || (str2 = (String) provider.get()) == null) {
            throw new IllegalArgumentException(C22128a.m8725C2("Channel id for ", str, " key doesn't set!"));
        }
        return str2;
    }

    @Override // p193e.p194a.p849h4.AbstractC14911e
    /* renamed from: b */
    public String mo19452b(String str) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        Map<C14925a, Provider<String>> map = this.f42624a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<C14925a, Provider<String>> entry : map.entrySet()) {
            if (l.a((String) entry.getValue().get(), str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.keySet().iterator();
        if (!it.hasNext()) {
            it = null;
        }
        String str2 = null;
        if (it != null) {
            C14925a c14925a = (C14925a) it.next();
            str2 = null;
            if (c14925a != null) {
                str2 = c14925a.f42648c;
            }
        }
        return str2;
    }

    @Override // p193e.p194a.p849h4.AbstractC14911e
    /* renamed from: c */
    public List<String> mo19451c() {
        Collection<Provider<String>> values = this.f42624a.values();
        ArrayList arrayList = new ArrayList(C25225a.m4004J(values, 10));
        Iterator<T> it = values.iterator();
        while (it.hasNext()) {
            arrayList.add((String) ((Provider) it.next()).get());
        }
        return arrayList;
    }
}
