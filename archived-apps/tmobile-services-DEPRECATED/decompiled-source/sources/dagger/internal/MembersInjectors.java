package dagger.internal;

import dagger.MembersInjector;
/* loaded from: classes-dex2jar.jar:dagger/internal/MembersInjectors.class */
public final class MembersInjectors {

    /* loaded from: classes-dex2jar.jar:dagger/internal/MembersInjectors$NoOpMembersInjector.class */
    private enum NoOpMembersInjector implements MembersInjector<Object> {
        INSTANCE;

        public void injectMembers(Object obj) {
            Preconditions.m4632c(obj, "Cannot inject members into a null reference");
        }
    }

    private MembersInjectors() {
    }
}
