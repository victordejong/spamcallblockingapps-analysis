.class final Lcom/hiya/client/callerid/ui/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/api/zipkin/interceptor/TracingEnableState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/h;->d()Lcom/hiya/api/zipkin/interceptor/TracingEnableState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/h;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/h$b;->a:Lcom/hiya/client/callerid/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/h$b;->a:Lcom/hiya/client/callerid/ui/h;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/h;->f(Lcom/hiya/client/callerid/ui/h;)Lg/g/a/b/j1/c;

    move-result-object v0

    invoke-interface {v0}, Lg/g/a/b/j1/c;->c()Lg/g/a/b/j1/a;

    move-result-object v0

    invoke-interface {v0}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lg/g/a/b/j1/n/b;->TRACING:Lg/g/a/b/j1/n/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
