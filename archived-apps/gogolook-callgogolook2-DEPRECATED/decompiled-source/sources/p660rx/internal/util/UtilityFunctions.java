package p660rx.internal.util;

import p660rx.functions.Func1;
/* renamed from: rx.internal.util.UtilityFunctions */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/UtilityFunctions.class */
public final class UtilityFunctions {

    /* renamed from: rx.internal.util.UtilityFunctions$AlwaysTrue */
    /* loaded from: classes3-dex2jar.jar:rx/internal/util/UtilityFunctions$AlwaysTrue.class */
    public enum AlwaysTrue implements Func1<Object, Boolean> {
        INSTANCE;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p660rx.functions.Func1
        public Boolean call(Object obj) {
            return true;
        }
    }

    /* renamed from: rx.internal.util.UtilityFunctions$Identity */
    /* loaded from: classes3-dex2jar.jar:rx/internal/util/UtilityFunctions$Identity.class */
    public enum Identity implements Func1<Object, Object> {
        INSTANCE;

        @Override // p660rx.functions.Func1
        public Object call(Object obj) {
            return obj;
        }
    }

    public static <T> Func1<? super T, Boolean> alwaysTrue() {
        return AlwaysTrue.INSTANCE;
    }

    public static <T> Func1<T, T> identity() {
        return Identity.INSTANCE;
    }
}
