.class Lzendesk/core/ZendeskApplicationModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private applicationConfiguration:Lzendesk/core/ApplicationConfiguration;

.field private context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lzendesk/core/ApplicationConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/ZendeskApplicationModule;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskApplicationModule;->applicationConfiguration:Lzendesk/core/ApplicationConfiguration;

    return-void
.end method

.method static provideDeviceInfo(Landroid/content/Context;)Lzendesk/core/DeviceInfo;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/DeviceInfo;

    invoke-direct {v0, p0}, Lzendesk/core/DeviceInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static provideExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    new-instance v0, Lzendesk/core/ZendeskApplicationModule$1;

    invoke-direct {v0}, Lzendesk/core/ZendeskApplicationModule$1;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method static provideExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    return-object p0
.end method

.method static provideGson()Lcom/google/gson/f;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    sget-object v1, Lcom/google/gson/d;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/d;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->h(Lcom/google/gson/d;)Lcom/google/gson/g;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->c([I)Lcom/google/gson/g;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/zendesk/service/g;

    invoke-direct {v2}, Lcom/zendesk/service/g;-><init>()V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/g;->d(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/g;

    .line 5
    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x80
        0x8
    .end array-data
.end method

.method static provideHttpLoggingInterceptor()Lm/l0/a;
    .locals 2

    .line 1
    new-instance v0, Lm/l0/a;

    invoke-direct {v0}, Lm/l0/a;-><init>()V

    .line 2
    invoke-static {}, Lg/k/b/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lm/l0/a$a;->BASIC:Lm/l0/a$a;

    goto :goto_0

    :cond_0
    sget-object v1, Lm/l0/a$a;->NONE:Lm/l0/a$a;

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Lm/l0/a;->c(Lm/l0/a$a;)Lm/l0/a;

    return-object v0
.end method

.method static provideZendesk(Lzendesk/core/Storage;Lzendesk/core/LegacyIdentityMigrator;Lzendesk/core/IdentityManager;Lzendesk/core/BlipsCoreProvider;Lzendesk/core/PushRegistrationProvider;Lzendesk/core/CoreModule;Lzendesk/core/ProviderStore;)Lzendesk/core/ZendeskShadow;
    .locals 9

    .line 1
    new-instance v8, Lzendesk/core/ZendeskShadow;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lzendesk/core/ZendeskShadow;-><init>(Lzendesk/core/Storage;Lzendesk/core/LegacyIdentityMigrator;Lzendesk/core/IdentityManager;Lzendesk/core/BlipsCoreProvider;Lzendesk/core/PushRegistrationProvider;Lzendesk/core/CoreModule;Lzendesk/core/ProviderStore;)V

    return-object v8
.end method


# virtual methods
.method provideApplicationConfiguration()Lzendesk/core/ApplicationConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule;->applicationConfiguration:Lzendesk/core/ApplicationConfiguration;

    return-object v0
.end method

.method provideApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskApplicationModule;->context:Landroid/content/Context;

    return-object v0
.end method

.method provideBase64Serializer(Lzendesk/core/Serializer;)Lzendesk/core/Serializer;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskBase64Serializer;

    invoke-direct {v0, p1}, Lzendesk/core/ZendeskBase64Serializer;-><init>(Lzendesk/core/Serializer;)V

    return-object v0
.end method

.method provideZendeskLocaleConverter()Lzendesk/core/ZendeskLocaleConverter;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/core/ZendeskLocaleConverter;

    invoke-direct {v0}, Lzendesk/core/ZendeskLocaleConverter;-><init>()V

    return-object v0
.end method
