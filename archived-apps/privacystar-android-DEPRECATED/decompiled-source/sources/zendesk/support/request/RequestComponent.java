package zendesk.support.request;

import android.support.annotation.RestrictTo;
import dagger.Subcomponent;
import zendesk.support.ActivityScope;
@Subcomponent(modules = {RequestModule.class})
@ActivityScope
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestComponent.class */
public interface RequestComponent {
    void inject(RequestActivity requestActivity);

    void inject(RequestViewConversationsDisabled requestViewConversationsDisabled);

    void inject(RequestViewConversationsEnabled requestViewConversationsEnabled);
}
