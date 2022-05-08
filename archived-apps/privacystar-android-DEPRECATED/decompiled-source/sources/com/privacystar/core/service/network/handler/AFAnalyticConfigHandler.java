package com.privacystar.core.service.network.handler;

import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import com.privacystar.core.data.model.AFAnalyticConfiguration;
import com.privacystar.core.service.analytics.anchor.AnchorAnalyticService;
import com.privacystar.core.service.googleplay.util.Base64;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.endpoint.AFAnalyticConfig;
import com.privacystar.core.service.network.model.component.EmptyObject;
import com.privacystar.core.service.network.model.response.AFAnalyticConfigResponse;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmList;
import java.nio.charset.Charset;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0014J\b\u0010\n\u001a\u00020\u0006H\u0014J\u0006\u0010\u000b\u001a\u00020\fJ\b\u0010\r\u001a\u00020\u000eH\u0016J\u001e\u0010\u000f\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00022\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011H\u0014J\u0018\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014J\b\u0010\u0013\u001a\u00020\u0006H\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��¨\u0006\u0014"}, m254d2 = {"Lcom/privacystar/core/service/network/handler/AFAnalyticConfigHandler;", "Lcom/privacystar/core/service/network/handler/PSServiceHandler;", "Lcom/privacystar/core/service/network/model/component/EmptyObject;", "Lcom/privacystar/core/service/network/model/response/AFAnalyticConfigResponse;", "()V", "SHOULD_PERSIST", "", "backendRequest", "Lretrofit2/Call;", MessageCenterInteraction.KEY_PROFILE_REQUEST, "eulaBlockedData", "getConfig", "", "getEndpointInterface", "Lcom/privacystar/core/service/network/PSBackendEndpoint$PSEndpointInterface;", "handleUnsuccessful", "response", "Lretrofit2/Response;", "processResponse", "shouldPersist", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/AFAnalyticConfigHandler.class */
public final class AFAnalyticConfigHandler extends PSServiceHandler<EmptyObject, AFAnalyticConfigResponse> {
    public static final AFAnalyticConfigHandler INSTANCE = new AFAnalyticConfigHandler();
    public static final boolean SHOULD_PERSIST = false;

    private AFAnalyticConfigHandler() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public Call<AFAnalyticConfigResponse> backendRequest(@NotNull EmptyObject request) {
        Intrinsics.checkParameterIsNotNull(request, "request");
        AFAnalyticConfig aFAnalyticConfigApiInstance = PSBackendEndpoint.getAFAnalyticConfigApiInstance();
        Intrinsics.checkExpressionValueIsNotNull(aFAnalyticConfigApiInstance, "PSBackendEndpoint.getAFAnalyticConfigApiInstance()");
        Call<AFAnalyticConfigResponse> config = aFAnalyticConfigApiInstance.getConfig();
        Intrinsics.checkExpressionValueIsNotNull(config, "PSBackendEndpoint.getAFA…onfigApiInstance().config");
        return config;
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean eulaBlockedData() {
        return false;
    }

    public final void getConfig() {
        enqueueRequest(this, new EmptyObject());
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    @NotNull
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.AF_ANALYTIC_CONFIG;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(@NotNull EmptyObject request, @NotNull Response<AFAnalyticConfigResponse> response) throws Throwable {
        Intrinsics.checkParameterIsNotNull(request, "request");
        Intrinsics.checkParameterIsNotNull(response, "response");
        AnchorAnalyticService.INSTANCE.register();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Finally extract failed */
    public void processResponse(@NotNull AFAnalyticConfigResponse response, @NotNull EmptyObject request) {
        Intrinsics.checkParameterIsNotNull(response, "response");
        Intrinsics.checkParameterIsNotNull(request, "request");
        Realm defaultInstance = Realm.getDefaultInstance();
        Throwable th = null;
        try {
            Realm realm = defaultInstance;
            RealmList realmList = new RealmList();
            RealmList realmList2 = new RealmList();
            AFAnalyticConfigResponse.Domains domains = response.getDomains();
            Intrinsics.checkExpressionValueIsNotNull(domains, "response.domains");
            ArrayList<String> primaryUrls = domains.getPrimaryUrls();
            Intrinsics.checkExpressionValueIsNotNull(primaryUrls, "response.domains.primaryUrls");
            for (String str : primaryUrls) {
                if (str != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("https://");
                    sb.append(str);
                    String sb2 = sb.toString();
                    Charset forName = Charset.forName("UTF-8");
                    Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(\"UTF-8\")");
                    if (sb2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    byte[] bytes = sb2.getBytes(forName);
                    Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
                    realmList.add(Base64.encode(bytes));
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("primary url: ");
                    sb3.append(sb2);
                    Timber.m37d(sb3.toString(), new Object[0]);
                }
            }
            AFAnalyticConfigResponse.Domains domains2 = response.getDomains();
            Intrinsics.checkExpressionValueIsNotNull(domains2, "response.domains");
            ArrayList<String> backupUrls = domains2.getBackupUrls();
            Intrinsics.checkExpressionValueIsNotNull(backupUrls, "response.domains.backupUrls");
            for (String str2 : backupUrls) {
                if (str2 != null) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("https://");
                    sb4.append(str2);
                    String sb5 = sb4.toString();
                    Charset forName2 = Charset.forName("UTF-8");
                    Intrinsics.checkExpressionValueIsNotNull(forName2, "Charset.forName(\"UTF-8\")");
                    if (sb5 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    byte[] bytes2 = sb5.getBytes(forName2);
                    Intrinsics.checkExpressionValueIsNotNull(bytes2, "(this as java.lang.String).getBytes(charset)");
                    realmList2.add(Base64.encode(bytes2));
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("backup url: ");
                    sb6.append(sb5);
                    Timber.m37d(sb6.toString(), new Object[0]);
                }
            }
            String reportName = response.getReportName();
            Intrinsics.checkExpressionValueIsNotNull(reportName, "response.reportName");
            String configVersion = response.getConfigVersion();
            Intrinsics.checkExpressionValueIsNotNull(configVersion, "response.configVersion");
            final AFAnalyticConfiguration aFAnalyticConfiguration = new AFAnalyticConfiguration(0, realmList, realmList2, reportName, configVersion, 1, null);
            realm.executeTransaction(new Realm.Transaction() { // from class: com.privacystar.core.service.network.handler.AFAnalyticConfigHandler$processResponse$1$3
                @Override // io.realm.Realm.Transaction
                public final void execute(Realm realm2) {
                    realm2.copyToRealmOrUpdate((Realm) AFAnalyticConfiguration.this, new ImportFlag[0]);
                }
            });
            StringBuilder sb7 = new StringBuilder();
            sb7.append("Received response - config count=");
            sb7.append(realm.where(AFAnalyticConfiguration.class).count());
            Timber.m31i(sb7.toString(), new Object[0]);
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(defaultInstance, th);
            AnchorAnalyticService.INSTANCE.register();
        } finally {
            try {
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return false;
    }
}
