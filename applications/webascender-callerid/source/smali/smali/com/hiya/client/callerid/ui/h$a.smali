.class public final Lcom/hiya/client/callerid/ui/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/api/zipkin/interceptor/HeadersInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/h;->c()Lcom/hiya/api/zipkin/interceptor/HeadersInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/h;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/h$a;->a:Lcom/hiya/client/callerid/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientInfoProvider()Lg/g/a/b/j1/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/h$a;->a:Lcom/hiya/client/callerid/ui/h;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/h;->f(Lcom/hiya/client/callerid/ui/h;)Lg/g/a/b/j1/c;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCarrierId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/h$a;->a:Lcom/hiya/client/callerid/ui/h;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/h;->g(Lcom/hiya/client/callerid/ui/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/g/a/e/d;->c(Landroid/content/Context;)Lcom/google/common/base/j;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/common/base/j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSimCarrierId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/h$a;->a:Lcom/hiya/client/callerid/ui/h;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/h;->g(Lcom/hiya/client/callerid/ui/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/g/a/e/d;->d(Landroid/content/Context;)Lcom/google/common/base/j;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/common/base/j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
