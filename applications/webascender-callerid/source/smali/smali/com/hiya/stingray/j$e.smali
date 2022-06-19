.class Lcom/hiya/stingray/j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/j;->c()Lg/g/a/b/j1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/j$e;->a:Lcom/hiya/stingray/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lg/g/a/b/j1/n/b;",
            "Lg/g/a/b/j1/n/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lg/g/a/b/j1/n/b;->AUTH:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://auth.edge.hiyaapi.com"

    const-string v4, "v2"

    invoke-direct {v2, v3, v4}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lg/g/a/b/j1/n/b;->REPORTS:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://reports.edge.hiyaapi.com"

    const-string v5, "v1"

    invoke-direct {v2, v3, v5}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lg/g/a/b/j1/n/b;->ACCOUNTS:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://accounts.edge.hiyaapi.com"

    invoke-direct {v2, v3, v5}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lg/g/a/b/j1/n/b;->CALLER_PROFILE:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://callerprofile.edge.hiyaapi.com"

    const-string v6, "v3"

    invoke-direct {v2, v3, v6}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lg/g/a/b/j1/n/b;->DIRECTORY:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://directory.edge.hiyaapi.com"

    invoke-direct {v2, v3, v6}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lg/g/a/b/j1/n/b;->INGESTION:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://ingestion.edge.hiyaapi.com"

    invoke-direct {v2, v3, v4}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lg/g/a/b/j1/n/b;->PHONES:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://phones.edge.hiyaapi.com"

    invoke-direct {v2, v3, v5}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lg/g/a/b/j1/n/b;->NOTIFICATIONS:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://notifications.edge.hiyaapi.com"

    invoke-direct {v2, v3, v5}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/hiya/stingray/j$e;->a:Lcom/hiya/stingray/j;

    iget-object v1, v1, Lcom/hiya/stingray/j;->g:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_0

    const-string v2, "client_tracing"

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/x3;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    sget-object v1, Lg/g/a/b/j1/n/b;->TRACING:Lg/g/a/b/j1/n/b;

    new-instance v2, Lg/g/a/b/j1/n/c;

    const-string v3, "https://ingestion.edge.hiyaapi.com:443/v1/telemetry/trace/zipkin"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lg/g/a/b/j1/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
