.class public final Lg/g/d/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lg/g/d/e;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)V
    .locals 3

    const-string v0, "$this$setIdentificationInfo"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headersInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/hiya/api/zipkin/interceptor/HeadersInfo;->getClientInfoProvider()Lg/g/a/b/j1/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/g/a/b/j1/c;->g()Lg/g/a/b/j1/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "headersInfo.getClientInfoProvider()?.idProvider"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lg/g/a/b/j1/g;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcom/hiya/api/zipkin/interceptor/HeadersInfo;->getClientInfoProvider()Lg/g/a/b/j1/c;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lg/g/a/b/j1/c;->b()Lg/g/a/b/j1/i;

    move-result-object v1

    :cond_1
    const-string p1, "headersInfo.getClientInf\u2026)?.productionInfoProvider"

    invoke-static {v1, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lg/g/a/b/j1/i;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "headersInfo.getClientInf\u2026foProvider.productVersion"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "installationId"

    .line 4
    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lg/g/d/e;->o(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0, p1}, Lg/g/d/e;->h(Ljava/lang/String;)V

    .line 6
    invoke-interface {p0, v1}, Lg/g/d/e;->d(Ljava/lang/String;)V

    return-void
.end method
