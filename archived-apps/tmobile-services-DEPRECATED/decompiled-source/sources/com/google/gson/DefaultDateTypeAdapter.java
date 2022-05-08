package com.google.gson;

import com.google.gson.internal.JavaVersion;
import com.google.gson.internal.PreJava9DateFormatProvider;
import com.google.gson.internal.bind.util.ISO8601Utils;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/gson/DefaultDateTypeAdapter.class */
public final class DefaultDateTypeAdapter extends TypeAdapter<Date> {

    /* renamed from: a */
    private final Class<? extends Date> f11922a;

    /* renamed from: b */
    private final List<DateFormat> f11923b = new ArrayList();

    public DefaultDateTypeAdapter(Class<? extends Date> cls, int i, int i2) {
        m8438g(cls);
        this.f11922a = cls;
        this.f11923b.add(DateFormat.getDateTimeInstance(i, i2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f11923b.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (JavaVersion.m8324e()) {
            this.f11923b.add(PreJava9DateFormatProvider.m8281c(i, i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultDateTypeAdapter(Class<? extends Date> cls, String str) {
        m8438g(cls);
        this.f11922a = cls;
        this.f11923b.add(new SimpleDateFormat(str, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f11923b.add(new SimpleDateFormat(str));
        }
    }

    /* renamed from: e */
    private Date m8440e(String str) {
        synchronized (this.f11923b) {
            for (DateFormat dateFormat : this.f11923b) {
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e) {
                }
            }
            try {
                return ISO8601Utils.m8169c(str, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new JsonSyntaxException(str, e2);
            }
        }
    }

    /* renamed from: g */
    private static Class<? extends Date> m8438g(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    /* renamed from: f */
    public Date mo8175b(JsonReader jsonReader) throws IOException {
        if (jsonReader.mo8147Z() == JsonToken.NULL) {
            jsonReader.mo8151V();
            return null;
        }
        Date e = m8440e(jsonReader.mo8149X());
        Class<? extends Date> cls = this.f11922a;
        if (cls == Date.class) {
            return e;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(e.getTime());
        }
        if (cls == java.sql.Date.class) {
            return new java.sql.Date(e.getTime());
        }
        throw new AssertionError();
    }

    /* renamed from: h */
    public void mo8174d(JsonWriter jsonWriter, Date date) throws IOException {
        if (date == null) {
            jsonWriter.mo8094t();
            return;
        }
        synchronized (this.f11923b) {
            jsonWriter.mo8106d0(this.f11923b.get(0).format(date));
        }
    }

    public String toString() {
        DateFormat dateFormat = this.f11923b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }
}
