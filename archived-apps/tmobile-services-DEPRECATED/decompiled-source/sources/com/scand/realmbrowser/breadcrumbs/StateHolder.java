package com.scand.realmbrowser.breadcrumbs;

import io.realm.RealmObject;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/breadcrumbs/StateHolder.class */
public class StateHolder {

    /* renamed from: a */
    private String f12543a;

    /* renamed from: b */
    private RealmObject f12544b;

    /* renamed from: c */
    private Field f12545c;

    public StateHolder(String str, RealmObject realmObject, Field field) {
        this.f12543a = str;
        this.f12544b = realmObject;
        this.f12545c = field;
    }

    /* renamed from: a */
    public String m7691a() {
        return this.f12543a;
    }

    /* renamed from: b */
    public Field m7690b() {
        return this.f12545c;
    }

    /* renamed from: c */
    public RealmObject m7689c() {
        return this.f12544b;
    }
}
