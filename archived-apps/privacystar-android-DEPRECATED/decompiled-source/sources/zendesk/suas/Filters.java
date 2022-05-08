package zendesk.suas;

import android.support.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/suas/Filters.class */
public class Filters {
    public static final Filter DEFAULT = new DefaultFilter();
    public static final Filter EQUALS = new EqualsFilter();

    /* loaded from: classes3-dex2jar.jar:zendesk/suas/Filters$DefaultFilter.class */
    private static class DefaultFilter implements Filter {
        private DefaultFilter() {
        }

        @Override // zendesk.suas.Filter
        public boolean filter(@NonNull Object obj, @NonNull Object obj2) {
            return true;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/suas/Filters$EqualsFilter.class */
    private static class EqualsFilter implements Filter {
        private EqualsFilter() {
        }

        @Override // zendesk.suas.Filter
        public boolean filter(@NonNull Object obj, @NonNull Object obj2) {
            return !obj.equals(obj2);
        }
    }

    private Filters() {
    }
}
