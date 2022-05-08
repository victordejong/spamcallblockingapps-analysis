package zendesk.support.request;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p004v7.app.AppCompatActivity;
import android.support.transition.Fade;
import android.support.transition.TransitionManager;
import android.view.View;
import android.view.ViewGroup;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.StringUtils;
import java.util.concurrent.atomic.AtomicReference;
import zendesk.suas.Listener;
import zendesk.suas.State;
import zendesk.suas.StateSelector;
import zendesk.support.request.StateError;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentRequestRouter.class */
public class ComponentRequestRouter implements Listener<RequestScreen> {
    private final AppCompatActivity activity;
    private final RequestComponent component;
    private RequestView currentScreen;
    private final RequestViewConversationsDisabled disabledView;
    private final RequestViewConversationsEnabled enabledView;
    private final boolean isCleanStart;
    private final RequestViewLoading loadingView;
    private final ViewGroup root;
    private final AtomicReference<RequestScreen> screen = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: zendesk.support.request.ComponentRequestRouter$1 */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentRequestRouter$1.class */
    public static /* synthetic */ class C28381 {

        /* renamed from: $SwitchMap$zendesk$support$request$ComponentRequestRouter$RequestScreen */
        static final /* synthetic */ int[] f1874xa0706e24 = new int[RequestScreen.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f1874xa0706e24[RequestScreen.Loading.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1874xa0706e24[RequestScreen.EmailForm.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1874xa0706e24[RequestScreen.Conversation.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1874xa0706e24[RequestScreen.Fin.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentRequestRouter$RequestRouterSelector.class */
    public static class RequestRouterSelector implements StateSelector<RequestScreen> {
        RequestRouterSelector() {
        }

        @Override // zendesk.suas.StateSelector
        @Nullable
        public RequestScreen selectData(@NonNull State state) {
            StateConfig fromState = StateConfig.fromState(state);
            StateConversation fromState2 = StateConversation.fromState(state);
            StateSettings settings = fromState.getSettings();
            StateError fromState3 = StateError.fromState(state);
            boolean hasSettings = settings.hasSettings();
            boolean hasLength = StringUtils.hasLength(fromState2.getRemoteId());
            boolean isConversationsEnabled = settings.isConversationsEnabled();
            boolean hasIdentityEmailAddress = settings.hasIdentityEmailAddress();
            boolean isNeverRequestEmailOn = settings.isNeverRequestEmailOn();
            if (fromState3.getState() == StateError.ErrorType.NoAccess) {
                Logger.m295e("RequestActivity", "Network returned 'No Access'. Ticket is not longer valid. Error: '%s'", fromState3.getMessage());
                return RequestScreen.Fin;
            } else if (!hasSettings) {
                return RequestScreen.Loading;
            } else {
                if (isConversationsEnabled) {
                    return RequestScreen.Conversation;
                }
                if (hasLength) {
                    Logger.m289w("RequestActivity", "Conversations are disabled. Exiting RequestActivity", new Object[0]);
                    return RequestScreen.Fin;
                } else if (hasIdentityEmailAddress || !isNeverRequestEmailOn) {
                    return RequestScreen.EmailForm;
                } else {
                    Logger.m289w("RequestActivity", "Conversations are disabled, never request email is enabled, with this configuration tickets would go into a black hole. Exiting RequestActivity.", new Object[0]);
                    return RequestScreen.Fin;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentRequestRouter$RequestScreen.class */
    public enum RequestScreen {
        Loading,
        EmailForm,
        Conversation,
        Fin
    }

    ComponentRequestRouter(AppCompatActivity appCompatActivity, ViewGroup viewGroup, RequestViewConversationsDisabled requestViewConversationsDisabled, RequestViewConversationsEnabled requestViewConversationsEnabled, RequestViewLoading requestViewLoading, RequestComponent requestComponent, boolean z) {
        this.activity = appCompatActivity;
        this.root = viewGroup;
        this.disabledView = requestViewConversationsDisabled;
        this.enabledView = requestViewConversationsEnabled;
        this.loadingView = requestViewLoading;
        this.component = requestComponent;
        this.isCleanStart = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ComponentRequestRouter create(AppCompatActivity appCompatActivity, boolean z, RequestComponent requestComponent) {
        return new ComponentRequestRouter(appCompatActivity, (ViewGroup) appCompatActivity.findViewById(C1790R.C1793id.activity_request_root), (RequestViewConversationsDisabled) appCompatActivity.findViewById(C1790R.C1793id.activity_request_conversation_disabled), (RequestViewConversationsEnabled) appCompatActivity.findViewById(C1790R.C1793id.activity_request_conversation), (RequestViewLoading) appCompatActivity.findViewById(C1790R.C1793id.activity_request_loading), requestComponent, z);
    }

    private void displayView(View view, View... viewArr) {
        TransitionManager.beginDelayedTransition(this.root, new Fade());
        view.setVisibility(0);
        for (View view2 : viewArr) {
            view2.setVisibility(8);
        }
        this.activity.invalidateOptionsMenu();
        TransitionManager.endTransitions(this.root);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestView getCurrentScreen() {
        return this.currentScreen;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateSelector<RequestScreen> getSelector() {
        return new RequestRouterSelector();
    }

    public void update(@NonNull RequestScreen requestScreen) {
        if (this.screen.getAndSet(requestScreen) != requestScreen) {
            switch (C28381.f1874xa0706e24[requestScreen.ordinal()]) {
                case 1:
                    Logger.m298d("RequestActivity", "Installing screen: 'Loading Screen'", new Object[0]);
                    this.currentScreen = this.loadingView;
                    displayView(this.loadingView, this.disabledView, this.enabledView);
                    return;
                case 2:
                    Logger.m298d("RequestActivity", "Installing screen: 'Conversations Disabled Screen'", new Object[0]);
                    this.currentScreen = this.disabledView;
                    displayView(this.disabledView, this.enabledView, this.loadingView);
                    this.disabledView.init(this.component);
                    return;
                case 3:
                    Logger.m298d("RequestActivity", "Installing screen: 'Conversations Enabled Screen'", new Object[0]);
                    this.currentScreen = this.enabledView;
                    displayView(this.enabledView, this.disabledView, this.loadingView);
                    this.enabledView.init(this.component, this.isCleanStart);
                    return;
                case 4:
                    Logger.m298d("RequestActivity", "Installing screen: 'Finish'", new Object[0]);
                    this.activity.finish();
                    return;
                default:
                    return;
            }
        }
    }
}
