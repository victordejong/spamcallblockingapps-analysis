package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;
/* renamed from: com.criteo.publisher.model.o */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/o.class */
public class C2041o {

    /* renamed from: c */
    public static final String f2249c = "o";
    @NonNull

    /* renamed from: a */
    public final List<C2052w> f2250a;

    /* renamed from: b */
    public final int f2251b;

    public C2041o(@NonNull List<C2052w> list, int i) {
        this.f2250a = list;
        this.f2251b = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    @androidx.annotation.NonNull
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.criteo.publisher.model.C2041o m35844a(@androidx.annotation.NonNull org.json.JSONObject r5) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.model.C2041o.m35844a(org.json.JSONObject):com.criteo.publisher.model.o");
    }

    @Nullable
    /* renamed from: a */
    public C2052w m35845a(@NonNull String str) {
        for (C2052w wVar : this.f2250a) {
            if (str.equals(wVar.m35794e())) {
                return wVar;
            }
        }
        return null;
    }

    @NonNull
    /* renamed from: a */
    public List<C2052w> m35846a() {
        return this.f2250a;
    }

    /* renamed from: b */
    public int m35843b() {
        return this.f2251b;
    }

    @NonNull
    public String toString() {
        return "CdbResponse{slots=" + this.f2250a + ", timeToNextCall=" + this.f2251b + '}';
    }
}
