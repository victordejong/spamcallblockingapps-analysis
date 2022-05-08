package com.google.android.gms.common.stats;

import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.internal.bg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static bg<Integer> f4080a = bg.a("gms:common:stats:max_num_of_events", (Integer) 100);

    /* renamed from: b  reason: collision with root package name */
    public static bg<Integer> f4081b = bg.a("gms:common:stats:max_chunk_size", (Integer) 100);

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static bg<Integer> f4082a = bg.a("gms:common:stats:connections:level", Integer.valueOf(d.f4085b));

        /* renamed from: b  reason: collision with root package name */
        public static bg<String> f4083b = bg.a("gms:common:stats:connections:ignored_calling_processes", BuildConfig.FLAVOR);
        public static bg<String> c = bg.a("gms:common:stats:connections:ignored_calling_services", BuildConfig.FLAVOR);
        public static bg<String> d = bg.a("gms:common:stats:connections:ignored_target_processes", BuildConfig.FLAVOR);
        public static bg<String> e = bg.a("gms:common:stats:connections:ignored_target_services", "com.google.android.gms.auth.GetToken");
        public static bg<Long> f = bg.a("gms:common:stats:connections:time_out_duration", (Long) 600000L);
    }
}
