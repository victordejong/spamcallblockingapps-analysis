package com.google.a.b;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/a/b/b.class */
public abstract class b<T> extends ae<T> {

    /* renamed from: a  reason: collision with root package name */
    int f3685a = a.f3689b;

    /* renamed from: b  reason: collision with root package name */
    private T f3686b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.a.b.b$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/b$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3687a = new int[a.a().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0022 -> B:9:0x0013). Please submit an issue!!! */
        static {
            try {
                f3687a[a.c - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3687a[a.f3688a - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/b$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f3688a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f3689b = 2;
        public static final int c = 3;
        public static final int d = 4;
        private static final /* synthetic */ int[] e = {f3688a, f3689b, c, d};

        public static int[] a() {
            return (int[]) e.clone();
        }
    }

    protected abstract T a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!(this.f3685a != a.d)) {
            throw new IllegalStateException();
        }
        boolean z = false;
        switch (AnonymousClass1.f3687a[this.f3685a - 1]) {
            case 1:
                break;
            case 2:
                z = true;
                break;
            default:
                this.f3685a = a.d;
                this.f3686b = a();
                z = false;
                if (this.f3685a != a.c) {
                    this.f3685a = a.f3688a;
                    z = true;
                    break;
                }
                break;
        }
        return z;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f3685a = a.f3689b;
        return this.f3686b;
    }
}
