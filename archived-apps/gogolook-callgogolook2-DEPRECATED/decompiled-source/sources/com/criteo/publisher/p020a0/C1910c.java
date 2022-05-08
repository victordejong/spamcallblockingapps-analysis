package com.criteo.publisher.p020a0;

import android.content.Context;
import androidx.annotation.NonNull;
/* renamed from: com.criteo.publisher.a0.c */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/c.class */
public class C1910c {

    /* renamed from: a */
    public final Context f2018a;

    public C1910c(@NonNull Context context) {
        this.f2018a = context;
    }

    /* renamed from: a */
    public int m36043a() {
        return this.f2018a.getResources().getConfiguration().orientation;
    }

    /* renamed from: a */
    public int m36042a(int i) {
        return (int) Math.ceil(i * this.f2018a.getResources().getDisplayMetrics().density);
    }
}
