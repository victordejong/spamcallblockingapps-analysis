package com.inmobi.commons.core.p513e;

import android.content.ContentValues;
import java.util.UUID;
/* renamed from: com.inmobi.commons.core.e.f */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/e/f.class */
public class C8376f {

    /* renamed from: g */
    public static final String f32563g = "f";

    /* renamed from: a */
    public int f32564a;

    /* renamed from: b */
    public String f32565b;

    /* renamed from: c */
    public String f32566c;

    /* renamed from: d */
    public String f32567d;

    /* renamed from: e */
    public long f32568e;

    /* renamed from: f */
    public String f32569f;

    public C8376f(String str, String str2) {
        this.f32565b = UUID.randomUUID().toString();
        this.f32567d = str;
        this.f32566c = str2;
        this.f32569f = null;
        this.f32568e = System.currentTimeMillis();
    }

    public C8376f(String str, String str2, String str3, String str4) {
        this.f32565b = str;
        this.f32567d = str2;
        this.f32566c = str3;
        this.f32569f = str4;
        this.f32568e = System.currentTimeMillis();
    }

    /* renamed from: a */
    public static C8376f m5767a(ContentValues contentValues) {
        String asString = contentValues.getAsString("eventId");
        String asString2 = contentValues.getAsString("eventType");
        String asString3 = contentValues.getAsString("componentType");
        String asString4 = contentValues.getAsString("payload");
        long longValue = Long.valueOf(contentValues.getAsString("ts")).longValue();
        C8376f fVar = new C8376f(asString, asString3, asString2, asString4);
        fVar.f32568e = longValue;
        fVar.f32564a = contentValues.getAsInteger("id").intValue();
        return fVar;
    }

    /* renamed from: a */
    public final String m5768a() {
        String str = this.f32569f;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public String toString() {
        return this.f32566c + "@" + this.f32567d + " ";
    }
}
