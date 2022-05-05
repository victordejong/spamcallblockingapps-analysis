package com.vladlee.easyblacklist;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
/* renamed from: com.vladlee.easyblacklist.bq */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bq.class */
public class C3305bq implements Serializable {

    /* renamed from: a */
    public long f19376a = 0;

    /* renamed from: b */
    public ArrayList<String> f19377b = new ArrayList<>();

    /* renamed from: c */
    private HashSet<String> f19378c = new HashSet<>();

    /* renamed from: a */
    public final void m249a(String str) {
        if (!this.f19378c.contains(str)) {
            this.f19377b.add(str);
            this.f19378c.add(str);
        }
    }

    /* renamed from: a */
    public final void m248a(ArrayList<String> arrayList) {
        this.f19377b = arrayList;
        this.f19378c.clear();
        this.f19378c.addAll(arrayList);
    }

    public boolean equals(Object obj) {
        return obj != null && obj.getClass() == C3305bq.class && ((C3305bq) obj).f19376a == this.f19376a;
    }
}
