package zendesk.core;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10862d;
import zendesk.core.DaggerZendeskApplicationComponent;
/* loaded from: classes3-dex2jar.jar:zendesk/core/Zendesk.class */
public enum Zendesk {
    INSTANCE;
    
    public ActionHandlerRegistry actionHandlerRegistry = new ZendeskActionHandlerRegistry();
    public ZendeskShadow zendeskShadow;

    Zendesk() {
    }

    @VisibleForTesting
    public static boolean checkConfig(Context context, String str, String str2, String str3) {
        if (context != null && C10862d.m10391a(str, str2, str3)) {
            return true;
        }
        C10845a.m10419b("Zendesk", String.format("Invalid zendesk configuration provided | Context: %b | Url: %b | Application Id: %b | OauthClientId: %b", context, Boolean.valueOf(C10862d.m10390b(str)), Boolean.valueOf(C10862d.m10390b(str2)), Boolean.valueOf(C10862d.m10390b(str3))), new Object[0]);
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ActionHandlerRegistry actionHandlerRegistry() {
        return this.actionHandlerRegistry;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public CoreModule coreModule() {
        return this.zendeskShadow.coreModule();
    }

    public void init(@NonNull Context context, @NonNull String str, @NonNull String str2, String str3) {
        checkConfig(context, str, str2, str3);
        ApplicationConfiguration applicationConfiguration = new ApplicationConfiguration(str2, str, str3);
        DaggerZendeskApplicationComponent.Builder builder = DaggerZendeskApplicationComponent.builder();
        builder.zendeskApplicationModule(new ZendeskApplicationModule(context, applicationConfiguration));
        init(builder.build(), applicationConfiguration);
    }

    @VisibleForTesting
    public void init(ZendeskApplicationComponent zendeskApplicationComponent, ApplicationConfiguration applicationConfiguration) {
        boolean z = this.zendeskShadow != null;
        if (z) {
            this.zendeskShadow.cleanupIfNewConfig(applicationConfiguration);
        }
        ZendeskShadow zendeskShadow = zendeskApplicationComponent.zendeskShadow();
        zendeskShadow.init(applicationConfiguration, z);
        this.zendeskShadow = zendeskShadow;
    }

    public boolean isInitialized() {
        return this.zendeskShadow != null;
    }

    public void setIdentity(@NonNull Identity identity) {
        if (!isInitialized()) {
            C10845a.m10419b("Zendesk", "Cannot get set identity before SDK has been initialized. init() must be called before setIdentity(...).", new Object[0]);
        } else {
            this.zendeskShadow.setIdentity(identity);
        }
    }
}
