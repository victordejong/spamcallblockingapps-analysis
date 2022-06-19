package androidx.work.impl.utils;

import androidx.work.AbstractC0543p;
import androidx.work.EnumC0550v;
import androidx.work.impl.AbstractC0486e;
import androidx.work.impl.C0487f;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.c;
import androidx.work.impl.j;
import androidx.work.impl.p015n.AbstractC0504b;
import androidx.work.impl.p015n.AbstractC0515q;
import java.util.LinkedList;
import java.util.UUID;
/* renamed from: androidx.work.impl.utils.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/a.class */
public abstract class AbstractRunnableC0520a implements Runnable {

    /* renamed from: f */
    private final c f2624f = new c();

    /* renamed from: b */
    public static AbstractRunnableC0520a m4360b(UUID uuid, j jVar) {
        return new a(jVar, uuid);
    }

    /* renamed from: c */
    public static AbstractRunnableC0520a m4359c(String str, j jVar, boolean z) {
        return new c(jVar, str, z);
    }

    /* renamed from: d */
    public static AbstractRunnableC0520a m4358d(String str, j jVar) {
        return new b(jVar, str);
    }

    /* renamed from: f */
    private void m4356f(WorkDatabase workDatabase, String str) {
        AbstractC0515q B = workDatabase.B();
        AbstractC0504b t = workDatabase.t();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            EnumC0550v m4389m = B.m4389m(str2);
            if (m4389m != EnumC0550v.SUCCEEDED && m4389m != EnumC0550v.FAILED) {
                B.m4400b(EnumC0550v.CANCELLED, str2);
            }
            linkedList.addAll(t.m4420b(str2));
        }
    }

    /* renamed from: a */
    void m4361a(j jVar, String str) {
        m4356f(jVar.v(), str);
        jVar.s().k(str);
        for (AbstractC0486e abstractC0486e : jVar.u()) {
            abstractC0486e.m4475e(str);
        }
    }

    /* renamed from: e */
    public AbstractC0543p m4357e() {
        return this.f2624f;
    }

    /* renamed from: g */
    void m4355g(j jVar) {
        C0487f.m4473b(jVar.o(), jVar.v(), jVar.u());
    }

    /* renamed from: h */
    abstract void m4354h();

    @Override // java.lang.Runnable
    public void run() {
        try {
            m4354h();
            this.f2624f.a(AbstractC0543p.f2678a);
        } catch (Throwable th) {
            this.f2624f.a(new AbstractC0543p.AbstractC0545b.a(th));
        }
    }
}
