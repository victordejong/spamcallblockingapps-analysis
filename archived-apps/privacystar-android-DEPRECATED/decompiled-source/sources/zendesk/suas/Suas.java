package zendesk.suas;

import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:zendesk/suas/Suas.class */
public class Suas {
    private static boolean isAndroid = false;

    /* loaded from: classes3-dex2jar.jar:zendesk/suas/Suas$Builder.class */
    public static class Builder {
        private Executor executor;
        private Collection<Middleware> middleware = new ArrayList();
        private Filter<Object> notifier = Filters.DEFAULT;
        private final Collection<Reducer> reducers;
        private State state;

        Builder(@NonNull Collection<Reducer> collection) {
            this.reducers = collection;
        }

        private void assertArgumentsNotNull(Object obj, String str) {
            if (obj == null) {
                throw new IllegalArgumentException(str);
            }
        }

        private Executor getExecutor() {
            return this.executor != null ? this.executor : Suas.isAndroid ? Executors.getAndroidExecutor() : Executors.getDefaultExecutor();
        }

        public Store build() {
            CombinedReducer combinedReducer = new CombinedReducer(this.reducers);
            CombinedMiddleware combinedMiddleware = new CombinedMiddleware(this.middleware);
            return new SuasStore(State.mergeStates(combinedReducer.getEmptyState(), this.state), combinedReducer, combinedMiddleware, this.notifier, getExecutor());
        }

        public Builder withDefaultFilter(Filter<Object> filter) {
            assertArgumentsNotNull(filter, "Notifier must not be null");
            this.notifier = filter;
            return this;
        }

        public Builder withExecutor(Executor executor) {
            this.executor = executor;
            return this;
        }

        public Builder withInitialState(@NonNull State state) {
            assertArgumentsNotNull(state, "Initial state must not be null");
            this.state = state;
            return this;
        }

        public Builder withMiddleware(@NonNull Collection<Middleware> collection) {
            assertArgumentsNotNull(collection, "Middleware must not be null");
            this.middleware = collection;
            return this;
        }

        public Builder withMiddleware(@NonNull Middleware... middlewareArr) {
            assertArgumentsNotNull(middlewareArr, "Middleware must not be null");
            this.middleware = Arrays.asList(middlewareArr);
            return this;
        }
    }

    static {
        try {
            Class.forName("android.os.Build");
            isAndroid = true;
        } catch (Exception e) {
        }
    }

    private Suas() {
    }

    public static Builder createStore(@NonNull Collection<Reducer> collection) {
        if (collection != null && !collection.isEmpty()) {
            return new Builder(collection);
        }
        throw new IllegalArgumentException("Reducer must not be null or empty");
    }

    public static Builder createStore(@NonNull Reducer... reducerArr) {
        if (reducerArr != null && reducerArr.length != 0) {
            return new Builder(Arrays.asList(reducerArr));
        }
        throw new IllegalArgumentException("Reducer must not be null or empty");
    }
}
