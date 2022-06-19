.class Lzendesk/core/ZendeskNetworkModule;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideAcceptLanguageHeaderInterceptor(Landroid/content/Context;)Lzendesk/core/AcceptLanguageHeaderInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/AcceptLanguageHeaderInterceptor;

    invoke-direct {v0, p0}, Lzendesk/core/AcceptLanguageHeaderInterceptor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static provideAccessInterceptor(Lzendesk/core/IdentityManager;Lzendesk/core/AccessProvider;Lzendesk/core/Storage;Lzendesk/core/CoreSettingsStorage;)Lzendesk/core/ZendeskAccessInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskAccessInterceptor;

    invoke-direct {v0, p0, p1, p2, p3}, Lzendesk/core/ZendeskAccessInterceptor;-><init>(Lzendesk/core/IdentityManager;Lzendesk/core/AccessProvider;Lzendesk/core/Storage;Lzendesk/core/CoreSettingsStorage;)V

    return-object v0
.end method

.method static provideAuthHeaderInterceptor(Lzendesk/core/IdentityManager;)Lzendesk/core/ZendeskAuthHeaderInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskAuthHeaderInterceptor;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskAuthHeaderInterceptor;-><init>(Lzendesk/core/IdentityManager;)V

    return-object v0
.end method

.method static provideCachingInterceptor(Lzendesk/core/BaseStorage;)Lzendesk/core/CachingInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/CachingInterceptor;

    invoke-direct {v0, p0}, Lzendesk/core/CachingInterceptor;-><init>(Lzendesk/core/BaseStorage;)V

    return-object v0
.end method

.method static provideCoreRetrofit(Lzendesk/core/ApplicationConfiguration;Lcom/google/gson/f;Lm/c0;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lzendesk/core/ApplicationConfiguration;->getZendeskUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 3
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method static providePushInterceptor(Lzendesk/core/PushRegistrationProviderInternal;Lzendesk/core/PushDeviceIdStorage;)Lzendesk/core/ZendeskPushInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskPushInterceptor;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskPushInterceptor;-><init>(Lzendesk/core/PushRegistrationProviderInternal;Lzendesk/core/PushDeviceIdStorage;)V

    return-object v0
.end method

.method static providePushProviderRetrofit(Lzendesk/core/ApplicationConfiguration;Lcom/google/gson/f;Lm/c0;Lzendesk/core/ZendeskAuthHeaderInterceptor;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lzendesk/core/ApplicationConfiguration;->getZendeskUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 3
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p2}, Lm/c0;->z()Lm/c0$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p3}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 6
    invoke-virtual {p1}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method static provideRetrofit(Lzendesk/core/ApplicationConfiguration;Lcom/google/gson/f;Lm/c0;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lzendesk/core/ApplicationConfiguration;->getZendeskUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 3
    invoke-static {p1}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/f;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method static provideSettingsInterceptor(Lzendesk/core/SdkSettingsProviderInternal;Lzendesk/core/SettingsStorage;)Lzendesk/core/ZendeskSettingsInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskSettingsInterceptor;

    invoke-direct {v0, p0, p1}, Lzendesk/core/ZendeskSettingsInterceptor;-><init>(Lzendesk/core/SdkSettingsProviderInternal;Lzendesk/core/SettingsStorage;)V

    return-object v0
.end method

.method static provideZendeskUnauthorizedInterceptor(Lzendesk/core/SessionStorage;)Lzendesk/core/ZendeskUnauthorizedInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskUnauthorizedInterceptor;

    invoke-direct {v0, p0}, Lzendesk/core/ZendeskUnauthorizedInterceptor;-><init>(Lzendesk/core/SessionStorage;)V

    return-object v0
.end method

.method static providesAcceptHeaderInterceptor()Lzendesk/core/AcceptHeaderInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/AcceptHeaderInterceptor;

    invoke-direct {v0}, Lzendesk/core/AcceptHeaderInterceptor;-><init>()V

    return-object v0
.end method


# virtual methods
.method provideBaseOkHttpClient(Lm/l0/a;Lzendesk/core/ZendeskOauthIdHeaderInterceptor;Lzendesk/core/UserAgentAndClientHeadersInterceptor;Ljava/util/concurrent/ExecutorService;)Lm/c0;
    .locals 1

    .line 1
    new-instance v0, Lm/c0$a;

    invoke-direct {v0}, Lm/c0$a;-><init>()V

    invoke-static {v0}, Lzendesk/core/Tls12SocketFactory;->enableTls12OnPreLollipop(Lm/c0$a;)Lm/c0$a;

    .line 2
    invoke-virtual {v0, p2}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 3
    invoke-virtual {v0, p1}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 4
    invoke-virtual {v0, p3}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1e

    .line 5
    invoke-virtual {v0, p2, p3, p1}, Lm/c0$a;->f(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 6
    invoke-virtual {v0, p2, p3, p1}, Lm/c0$a;->P(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    .line 7
    invoke-virtual {v0, p2, p3, p1}, Lm/c0$a;->R(JLjava/util/concurrent/TimeUnit;)Lm/c0$a;

    new-instance p1, Lm/r;

    invoke-direct {p1, p4}, Lm/r;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 8
    invoke-virtual {v0, p1}, Lm/c0$a;->h(Lm/r;)Lm/c0$a;

    .line 9
    invoke-virtual {v0}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    return-object p1
.end method

.method provideCoreOkHttpClient(Lm/c0;Lzendesk/core/AcceptLanguageHeaderInterceptor;Lzendesk/core/AcceptHeaderInterceptor;)Lm/c0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lm/c0;->z()Lm/c0$a;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 3
    invoke-virtual {p1, p3}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 4
    invoke-virtual {p1}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    return-object p1
.end method

.method provideMediaOkHttpClient(Lm/c0;Lzendesk/core/ZendeskAccessInterceptor;Lzendesk/core/ZendeskAuthHeaderInterceptor;Lzendesk/core/ZendeskSettingsInterceptor;Lzendesk/core/CachingInterceptor;Lzendesk/core/ZendeskUnauthorizedInterceptor;)Lm/c0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lm/c0;->z()Lm/c0$a;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p4}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 3
    invoke-virtual {p1, p5}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 4
    invoke-virtual {p1, p2}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 5
    invoke-virtual {p1, p3}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 6
    invoke-virtual {p1, p6}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 7
    invoke-virtual {p1}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    return-object p1
.end method

.method provideOkHttpClient(Lm/c0;Lzendesk/core/ZendeskAccessInterceptor;Lzendesk/core/ZendeskUnauthorizedInterceptor;Lzendesk/core/ZendeskAuthHeaderInterceptor;Lzendesk/core/ZendeskSettingsInterceptor;Lzendesk/core/AcceptHeaderInterceptor;Lzendesk/core/ZendeskPushInterceptor;Lm/d;)Lm/c0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lm/c0;->z()Lm/c0$a;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p5}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 3
    invoke-virtual {p1, p2}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 4
    invoke-virtual {p1, p4}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 5
    invoke-virtual {p1, p3}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 6
    invoke-virtual {p1, p6}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 7
    invoke-virtual {p1, p7}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 8
    invoke-virtual {p1, p8}, Lm/c0$a;->d(Lm/d;)Lm/c0$a;

    .line 9
    invoke-virtual {p1}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    return-object p1
.end method

.method provideRestServiceProvider(Lretrofit2/Retrofit;Lm/c0;Lm/c0;Lm/c0;)Lzendesk/core/RestServiceProvider;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskRestServiceProvider;

    invoke-direct {v0, p1, p2, p3, p4}, Lzendesk/core/ZendeskRestServiceProvider;-><init>(Lretrofit2/Retrofit;Lm/c0;Lm/c0;Lm/c0;)V

    return-object v0
.end method

.method provideZendeskBasicHeadersInterceptor(Lzendesk/core/ApplicationConfiguration;)Lzendesk/core/ZendeskOauthIdHeaderInterceptor;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskOauthIdHeaderInterceptor;

    invoke-virtual {p1}, Lzendesk/core/ApplicationConfiguration;->getOauthClientId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lzendesk/core/ZendeskOauthIdHeaderInterceptor;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method providesUserAgentHeaderInterceptor()Lzendesk/core/UserAgentAndClientHeadersInterceptor;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/core/UserAgentAndClientHeadersInterceptor;

    const-string v1, "3.0.3"

    const-string v2, "Core"

    invoke-direct {v0, v1, v2}, Lzendesk/core/UserAgentAndClientHeadersInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
