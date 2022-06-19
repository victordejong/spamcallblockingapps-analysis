.class public final Lcom/hiya/client/callerid/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/d/k/i;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lg/g/a/b/j1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/g/a/b/j1/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientInfoProvider"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/h;->b:Lg/g/a/b/j1/c;

    return-void
.end method

.method public static final synthetic f(Lcom/hiya/client/callerid/ui/h;)Lg/g/a/b/j1/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/h;->b:Lg/g/a/b/j1/c;

    return-object p0
.end method

.method public static final synthetic g(Lcom/hiya/client/callerid/ui/h;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/h;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Lg/g/d/k/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/h;->h()Lg/g/d/m/a/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/h;->b:Lg/g/a/b/j1/c;

    invoke-interface {v0}, Lg/g/a/b/j1/c;->b()Lg/g/a/b/j1/i;

    move-result-object v0

    const-string v1, "clientInfoProvider.productionInfoProvider"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lg/g/a/b/j1/i;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientInfoProvider.produ\u2026nInfoProvider.productName"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Lcom/hiya/api/zipkin/interceptor/HeadersInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/h$a;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/h$a;-><init>(Lcom/hiya/client/callerid/ui/h;)V

    return-object v0
.end method

.method public d()Lcom/hiya/api/zipkin/interceptor/TracingEnableState;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/h$b;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/h$b;-><init>(Lcom/hiya/client/callerid/ui/h;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/h;->b:Lg/g/a/b/j1/c;

    invoke-interface {v0}, Lg/g/a/b/j1/c;->c()Lg/g/a/b/j1/a;

    move-result-object v0

    invoke-interface {v0}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lg/g/a/b/j1/n/b;->TRACING:Lg/g/a/b/j1/n/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/b/j1/n/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/g/a/b/j1/n/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public h()Lg/g/d/m/a/a;
    .locals 3

    .line 1
    new-instance v0, Lg/g/d/m/a/a;

    const-wide/32 v1, 0x1d4c0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/g/d/m/a/a;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method
