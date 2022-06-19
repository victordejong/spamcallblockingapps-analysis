package androidx.activity.result.p003g;

import android.content.Context;
import android.content.Intent;
/* renamed from: androidx.activity.result.g.a */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/g/a.class */
public abstract class AbstractC0049a<I, O> {

    /* renamed from: androidx.activity.result.g.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/g/a$a.class */
    public static final class C0050a<T> {

        /* renamed from: a */
        private final T f97a;

        public C0050a(T t) {
            this.f97a = t;
        }

        /* renamed from: a */
        public T m6945a() {
            return this.f97a;
        }
    }

    /* renamed from: a */
    public abstract Intent m6948a(Context context, I i);

    /* renamed from: b */
    public C0050a<O> m6947b(Context context, I i) {
        return null;
    }

    /* renamed from: c */
    public abstract O m6946c(int i, Intent intent);
}
