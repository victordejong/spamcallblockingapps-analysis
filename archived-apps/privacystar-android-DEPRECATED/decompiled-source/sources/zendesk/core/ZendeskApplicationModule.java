package zendesk.core;

import android.content.Context;
import android.support.annotation.NonNull;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.zendesk.logger.Logger;
import com.zendesk.service.ZendeskDateTypeAdapter;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Named;
import javax.inject.Singleton;
import okhttp3.logging.HttpLoggingInterceptor;
/* JADX INFO: Access modifiers changed from: package-private */
@Module
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule.class */
public class ZendeskApplicationModule {
    static final String APPLICATION_CONTEXT = "application_context";
    static final String BASE_64_SERIALIZER = "base_64_serializer";
    private ApplicationConfiguration applicationConfiguration;
    private Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskApplicationModule(@NonNull Context context, @NonNull ApplicationConfiguration applicationConfiguration) {
        this.context = context.getApplicationContext();
        this.applicationConfiguration = applicationConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static DeviceInfo provideDeviceInfo(@Named("application_context") Context context) {
        return new DeviceInfo(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static ExecutorService provideExecutor() {
        return Executors.newCachedThreadPool(new ThreadFactory() { // from class: zendesk.core.ZendeskApplicationModule.1
            final AtomicInteger atomicInteger = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(@NonNull Runnable runnable) {
                Thread thread = new Thread(runnable, String.format(Locale.ENGLISH, "ZendeskThread-%d", Integer.valueOf(this.atomicInteger.getAndIncrement())));
                thread.setPriority(10);
                return thread;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static Gson provideGson() {
        return new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES).excludeFieldsWithModifiers(128, 8).registerTypeAdapter(Date.class, new ZendeskDateTypeAdapter()).create();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static HttpLoggingInterceptor provideHttpLoggingInterceptor() {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        httpLoggingInterceptor.setLevel(Logger.isLoggable() ? HttpLoggingInterceptor.Level.BASIC : HttpLoggingInterceptor.Level.NONE);
        return httpLoggingInterceptor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static ZendeskShadow provideZendesk(Storage storage, LegacyIdentityMigrator legacyIdentityMigrator, IdentityManager identityManager, BlipsCoreProvider blipsCoreProvider, PushRegistrationProvider pushRegistrationProvider, CoreModule coreModule, ProviderStore providerStore) {
        return new ZendeskShadow(storage, legacyIdentityMigrator, identityManager, blipsCoreProvider, pushRegistrationProvider, coreModule, providerStore);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public ApplicationConfiguration provideApplicationConfiguration() {
        return this.applicationConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(APPLICATION_CONTEXT)
    public Context provideApplicationContext() {
        return this.context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    @Named(BASE_64_SERIALIZER)
    public Serializer provideBase64Serializer(@Named("gson_serializer") Serializer serializer) {
        return new ZendeskBase64Serializer(serializer);
    }
}
