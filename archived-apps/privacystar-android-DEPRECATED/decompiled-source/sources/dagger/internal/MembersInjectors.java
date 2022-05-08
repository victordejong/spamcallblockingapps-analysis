package dagger.internal;

import dagger.MembersInjector;
/* loaded from: classes2-dex2jar.jar:dagger/internal/MembersInjectors.class */
public final class MembersInjectors {

    /* loaded from: classes2-dex2jar.jar:dagger/internal/MembersInjectors$NoOpMembersInjector.class */
    private enum NoOpMembersInjector implements MembersInjector<Object> {
        INSTANCE;

        @Override // dagger.MembersInjector
        public void injectMembers(Object obj) {
            MembersInjectors.checkInstanceNotNull(obj);
        }
    }

    private MembersInjectors() {
    }

    public static void checkInstanceNotNull(Object obj) {
        Preconditions.checkNotNull(obj, "Cannot inject members into a null reference");
    }

    public static <T> T injectMembers(MembersInjector<T> membersInjector, T t) {
        membersInjector.injectMembers(t);
        return t;
    }

    public static <T> MembersInjector<T> noOp() {
        return NoOpMembersInjector.INSTANCE;
    }
}
