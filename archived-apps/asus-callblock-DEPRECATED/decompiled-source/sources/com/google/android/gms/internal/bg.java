package com.google.android.gms.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/bg.class */
public abstract class bg<T> {
    private static final Object c = new Object();
    private static a d = null;
    private static int e = 0;
    private static String f = "com.google.android.providers.gsf.permission.READ_GSERVICES";

    /* renamed from: a  reason: collision with root package name */
    protected final String f4156a;

    /* renamed from: b  reason: collision with root package name */
    protected final T f4157b;
    private T g = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/bg$a.class */
    private interface a {
        Boolean a();

        Long b();

        Integer c();

        Float d();

        String e();
    }

    protected bg(String str, T t) {
        this.f4156a = str;
        this.f4157b = t;
    }

    public static bg<Float> a(String str, Float f2) {
        return new bg<Float>(str, f2) { // from class: com.google.android.gms.internal.bg.4
            @Override // com.google.android.gms.internal.bg
            protected final /* synthetic */ Float a() {
                throw new NullPointerException();
            }
        };
    }

    public static bg<Integer> a(String str, Integer num) {
        return new bg<Integer>(str, num) { // from class: com.google.android.gms.internal.bg.3
            @Override // com.google.android.gms.internal.bg
            protected final /* synthetic */ Integer a() {
                throw new NullPointerException();
            }
        };
    }

    public static bg<Long> a(String str, Long l) {
        return new bg<Long>(str, l) { // from class: com.google.android.gms.internal.bg.2
            @Override // com.google.android.gms.internal.bg
            protected final /* synthetic */ Long a() {
                throw new NullPointerException();
            }
        };
    }

    public static bg<String> a(String str, String str2) {
        return new bg<String>(str, str2) { // from class: com.google.android.gms.internal.bg.5
            @Override // com.google.android.gms.internal.bg
            protected final /* synthetic */ String a() {
                throw new NullPointerException();
            }
        };
    }

    public static bg<Boolean> a(String str, boolean z) {
        return new bg<Boolean>(str, Boolean.valueOf(z)) { // from class: com.google.android.gms.internal.bg.1
            @Override // com.google.android.gms.internal.bg
            protected final /* synthetic */ Boolean a() {
                throw new NullPointerException();
            }
        };
    }

    protected abstract T a();

    public final T b() {
        return a();
    }
}
