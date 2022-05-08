package com.google.gson.a.a;

import com.google.gson.b.a;
import com.google.gson.c.b;
import com.google.gson.c.c;
import com.google.gson.f;
import com.google.gson.u;
import com.google.gson.x;
import com.google.gson.y;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/j.class */
public final class j extends x<Time> {

    /* renamed from: a  reason: collision with root package name */
    public static final y f4464a = new y() { // from class: com.google.gson.a.a.j.1
        @Override // com.google.gson.y
        public final <T> x<T> a(f fVar, a<T> aVar) {
            return aVar.f4531a == Time.class ? new j() : null;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final DateFormat f4465b = new SimpleDateFormat("hh:mm:ss a");

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c cVar, Time time) {
        synchronized (this) {
            cVar.b(time == null ? null : this.f4465b.format((Date) time));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public Time a(com.google.gson.c.a aVar) {
        Time time;
        synchronized (this) {
            if (aVar.f() == b.NULL) {
                aVar.k();
                time = null;
            } else {
                try {
                    time = new Time(this.f4465b.parse(aVar.i()).getTime());
                } catch (ParseException e) {
                    throw new u(e);
                }
            }
        }
        return time;
    }
}
