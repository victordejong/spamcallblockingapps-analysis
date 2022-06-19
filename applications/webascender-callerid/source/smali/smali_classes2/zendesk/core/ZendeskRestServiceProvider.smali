.class Lzendesk/core/ZendeskRestServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/RestServiceProvider;


# instance fields
.field private final mediaHttpClient:Lm/c0;

.field final retrofit:Lretrofit2/Retrofit;

.field final standardOkHttpClient:Lm/c0;


# direct methods
.method constructor <init>(Lretrofit2/Retrofit;Lm/c0;Lm/c0;Lm/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskRestServiceProvider;->retrofit:Lretrofit2/Retrofit;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskRestServiceProvider;->mediaHttpClient:Lm/c0;

    .line 4
    iput-object p3, p0, Lzendesk/core/ZendeskRestServiceProvider;->standardOkHttpClient:Lm/c0;

    return-void
.end method


# virtual methods
.method public createRestService(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskRestServiceProvider;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {v0}, Lretrofit2/Retrofit;->newBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    iget-object v1, p0, Lzendesk/core/ZendeskRestServiceProvider;->standardOkHttpClient:Lm/c0;

    .line 2
    invoke-virtual {v1}, Lm/c0;->z()Lm/c0$a;

    move-result-object v1

    new-instance v2, Lzendesk/core/UserAgentAndClientHeadersInterceptor;

    invoke-direct {v2, p2, p3}, Lzendesk/core/UserAgentAndClientHeadersInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v2}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 4
    invoke-virtual {v1}, Lm/c0$a;->c()Lm/c0;

    move-result-object p2

    .line 5
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createRestService(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lzendesk/core/CustomNetworkConfig;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lzendesk/core/CustomNetworkConfig;",
            ")TE;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lzendesk/core/ZendeskRestServiceProvider;->standardOkHttpClient:Lm/c0;

    invoke-virtual {v0}, Lm/c0;->z()Lm/c0$a;

    move-result-object v0

    .line 9
    invoke-virtual {p4, v0}, Lzendesk/core/CustomNetworkConfig;->configureOkHttpClient(Lm/c0$a;)V

    .line 10
    new-instance v1, Lzendesk/core/UserAgentAndClientHeadersInterceptor;

    invoke-direct {v1, p2, p3}, Lzendesk/core/UserAgentAndClientHeadersInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 11
    iget-object p2, p0, Lzendesk/core/ZendeskRestServiceProvider;->retrofit:Lretrofit2/Retrofit;

    invoke-virtual {p2}, Lretrofit2/Retrofit;->newBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 12
    invoke-virtual {p4, p2}, Lzendesk/core/CustomNetworkConfig;->configureRetrofit(Lretrofit2/Retrofit$Builder;)V

    .line 13
    invoke-virtual {v0}, Lm/c0$a;->c()Lm/c0;

    move-result-object p3

    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->client(Lm/c0;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMediaOkHttpClient()Lm/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskRestServiceProvider;->mediaHttpClient:Lm/c0;

    return-object v0
.end method
