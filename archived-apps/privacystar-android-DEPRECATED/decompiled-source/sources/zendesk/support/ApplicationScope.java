package zendesk.support;

import android.support.annotation.NonNull;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/ApplicationScope.class */
public class ApplicationScope {
    private final Locale locale;
    private final ZendeskTracker zendeskTracker;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/ApplicationScope$Builder.class */
    public static class Builder {
        private Locale locale;
        private ZendeskTracker zendeskTracker;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder() {
            this.locale = Locale.getDefault();
            this.zendeskTracker = new AnswersTracker();
        }

        Builder(ApplicationScope applicationScope) {
            this.locale = applicationScope.getLocale();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public ApplicationScope build() {
            return new ApplicationScope(this);
        }

        @NonNull
        Builder locale(@NonNull Locale locale) {
            this.locale = locale;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public Builder zendeskTracker(ZendeskTracker zendeskTracker) {
            this.zendeskTracker = zendeskTracker;
            return this;
        }
    }

    private ApplicationScope(Builder builder) {
        this.locale = builder.locale;
        this.zendeskTracker = builder.zendeskTracker;
    }

    @NonNull
    public Locale getLocale() {
        return this.locale;
    }

    public ZendeskTracker getZendeskTracker() {
        return this.zendeskTracker;
    }

    @NonNull
    public Builder newBuilder() {
        return new Builder(this);
    }
}
