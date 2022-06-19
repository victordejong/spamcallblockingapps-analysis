.class public final Lcom/hiya/client/callerid/ui/d0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lg/g/a/e/e/n;Lcom/hiya/client/callerid/ui/b0/e;)V
    .locals 3

    const-string v0, "$this$trackTime"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdWithSource"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->b()Z

    move-result v0

    const-string v1, "SHOWED_CALLER_ID"

    if-eqz v0, :cond_0

    const-string p1, "SHOWED_CALLER_ID_NO_LOOKUP"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/b/c/f;->w()Lg/g/b/c/r;

    move-result-object v0

    sget-object v2, Lg/g/b/c/r;->EVENT_PROFILE:Lg/g/b/c/r;

    if-ne v0, v2, :cond_1

    const-string p1, "SHOWED_CALLER_ID_API_LOOKUP"

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object p1

    invoke-virtual {p1}, Lg/g/b/c/f;->w()Lg/g/b/c/r;

    move-result-object p1

    sget-object v0, Lg/g/b/c/r;->PROFILE_CACHE:Lg/g/b/c/r;

    if-ne p1, v0, :cond_2

    const-string p1, "SHOWED_CALLER_ID_CACHE_LOOKUP"

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 4
    :goto_0
    invoke-interface {p0, p1}, Lg/g/a/e/e/n;->c(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0, v1}, Lg/g/a/e/e/n;->c(Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Lg/g/a/e/e/n;->a()V

    return-void
.end method
