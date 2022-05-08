package com.scand.realmbrowser;

import io.realm.RealmObject;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/RealmObjectHolder.class */
public class RealmObjectHolder {

    /* renamed from: c */
    private static RealmObjectHolder f12530c = new RealmObjectHolder();

    /* renamed from: a */
    private RealmObject f12531a;

    /* renamed from: b */
    private Field f12532b;

    private RealmObjectHolder() {
    }

    /* renamed from: b */
    public static RealmObjectHolder m7722b() {
        return f12530c;
    }

    /* renamed from: a */
    public Field m7723a() {
        return this.f12532b;
    }

    /* renamed from: c */
    public RealmObject m7721c() {
        return this.f12531a;
    }

    /* renamed from: d */
    public void m7720d(Field field) {
        this.f12532b = field;
    }

    /* renamed from: e */
    public void m7719e(RealmObject realmObject) {
        this.f12531a = realmObject;
    }
}
