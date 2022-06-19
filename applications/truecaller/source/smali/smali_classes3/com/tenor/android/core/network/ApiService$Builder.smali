.class public Lcom/tenor/android/core/network/ApiService$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/network/ApiService$IBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenor/android/core/network/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tenor/android/core/network/ApiService$IBuilder<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final API_ENDPOINT_FORMATTER:Ljava/lang/String; = "%1$s://%2$s.tenor.com/v1/"

.field public static final SERVER_NAME:Ljava/lang/String; = "api"

.field private static final serialVersionUID:J = -0x31b3ca2be2248cb0L


# instance fields
.field private apiKey:Ljava/lang/String;

.field private final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private endpoint:Ljava/lang/String;

.field private gson:Le/m/e/k;

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/b0;",
            ">;"
        }
    .end annotation
.end field

.field private protocol:Ljava/lang/String;
    .annotation build Lcom/tenor/android/core/network/constant/Protocol;
    .end annotation
.end field

.field private serverName:Ljava/lang/String;

.field private timeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https"

    .line 2
    iput-object v0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->protocol:Ljava/lang/String;

    const-string v1, "api"

    .line 3
    iput-object v1, p0, Lcom/tenor/android/core/network/ApiService$Builder;->serverName:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%1$s://%2$s.tenor.com/v1/"

    .line 4
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->endpoint:Ljava/lang/String;

    const/16 v0, 0xf

    .line 5
    iput v0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->timeout:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->interceptors:Ljava/util/List;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->apiKey:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/tenor/android/core/util/AbstractGsonUtils;->getInstance()Le/m/e/k;

    move-result-object v0

    iput-object v0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->gson:Le/m/e/k;

    .line 9
    iput-object p1, p0, Lcom/tenor/android/core/network/ApiService$Builder;->context:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/tenor/android/core/network/ApiService$Builder;->cls:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic access$000(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->endpoint:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tenor/android/core/network/ApiService$Builder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tenor/android/core/network/ApiService$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->timeout:I

    return p0
.end method

.method public static synthetic access$400(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/tenor/android/core/network/ApiService$Builder;)Le/m/e/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->gson:Le/m/e/k;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/tenor/android/core/network/ApiService$Builder;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->cls:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public apiKey(Ljava/lang/String;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/tenor/android/core/network/ApiService$Builder;->apiKey:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "API key cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/tenor/android/core/network/IApiService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tenor/android/core/network/IApiService<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tenor/android/core/network/ApiService;

    invoke-direct {v0, p0}, Lcom/tenor/android/core/network/ApiService;-><init>(Lcom/tenor/android/core/network/ApiService$Builder;)V

    return-object v0
.end method

.method public endpoint(Ljava/lang/String;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/tenor/android/core/network/ApiService$Builder;->endpoint:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public gson(Le/m/e/k;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/k;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tenor/android/core/network/ApiService$Builder;->gson:Le/m/e/k;

    return-object p0
.end method

.method public interceptor(Lu3/b0;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/b0;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public interceptors(Ljava/util/List;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu3/b0;",
            ">;)",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/tenor/android/core/util/AbstractListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public protocol(Ljava/lang/String;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/tenor/android/core/network/constant/Protocol;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/tenor/android/core/network/constant/Protocols;->getOrHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenor/android/core/network/ApiService$Builder;->protocol:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    iget-object p1, p0, Lcom/tenor/android/core/network/ApiService$Builder;->serverName:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%1$s://%2$s.tenor.com/v1/"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenor/android/core/network/ApiService$Builder;->endpoint:Ljava/lang/String;

    return-object p0
.end method

.method public server(Ljava/lang/String;)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "api"

    :goto_0
    iput-object p1, p0, Lcom/tenor/android/core/network/ApiService$Builder;->serverName:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/tenor/android/core/network/ApiService$Builder;->protocol:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%1$s://%2$s.tenor.com/v1/"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tenor/android/core/network/ApiService$Builder;->endpoint:Ljava/lang/String;

    return-object p0
.end method

.method public timeout(I)Lcom/tenor/android/core/network/ApiService$IBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tenor/android/core/network/ApiService$IBuilder<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_0

    .line 1
    iget v0, p0, Lcom/tenor/android/core/network/ApiService$Builder;->timeout:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/tenor/android/core/network/ApiService$Builder;->timeout:I

    :cond_0
    return-object p0
.end method
