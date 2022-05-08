package zendesk.support.requestlist;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import zendesk.commonui.UiConfig;
import zendesk.commonui.UiConfigUtil;
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListUiConfig.class */
public class RequestListUiConfig implements UiConfig {
    private final List<UiConfig> uiConfigs;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListUiConfig$Builder.class */
    public static class Builder {
        private List<UiConfig> uiConfigs = new ArrayList();

        private void setUiConfigs(@NonNull List<UiConfig> list) {
            this.uiConfigs = list;
        }

        @NonNull
        public UiConfig config() {
            return new RequestListUiConfig(this);
        }

        @SuppressLint({"RestrictedApi"})
        public Intent intent(@NonNull Context context, List<UiConfig> list) {
            setUiConfigs(list);
            UiConfig config = config();
            Intent intent = new Intent(context, RequestListActivity.class);
            UiConfigUtil.addToIntent(intent, config);
            return intent;
        }

        public Intent intent(@NonNull Context context, UiConfig... uiConfigArr) {
            return intent(context, Arrays.asList(uiConfigArr));
        }

        public void show(@NonNull Context context, List<UiConfig> list) {
            context.startActivity(intent(context, list));
        }

        public void show(@NonNull Context context, UiConfig... uiConfigArr) {
            context.startActivity(intent(context, uiConfigArr));
        }
    }

    private RequestListUiConfig(Builder builder) {
        this.uiConfigs = builder.uiConfigs;
    }

    @Override // zendesk.commonui.UiConfig
    @SuppressLint({"RestrictedApi"})
    public List<UiConfig> getUiConfigs() {
        return UiConfigUtil.addSelfIfNotInList(this.uiConfigs, this);
    }
}
