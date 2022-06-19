.class public final Lcom/hiya/client/callerid/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hiya/client/callerid/ui/i$a;)Lg/g/a/a/j/c/c;
    .locals 2

    const-string v0, "$this$apiInfo"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/a/a/j/c/c;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$a;->b()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-direct {v0, v1, p0}, Lg/g/a/a/j/c/c;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b(Lcom/hiya/client/callerid/ui/i$b;)Lg/g/a/a/j/c/a;
    .locals 4

    const-string v0, "$this$idInfo"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$b;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$b;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v1, v3

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$b;->d()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v3, Lg/g/a/a/j/c/a;

    invoke-direct {v3, v0, v2, v1, p0}, Lg/g/a/a/j/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static final c(Lcom/hiya/client/callerid/ui/i$c;)Lg/g/a/a/j/c/b;
    .locals 3

    const-string v0, "$this$prodcutInfo"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/a/a/j/c/b;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$c;->d()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$c;->b()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$c;->a()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, v1, v2, p0}, Lg/g/a/a/j/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final d(Lcom/hiya/client/callerid/ui/i$d;)Lg/g/a/a/j/c/f;
    .locals 2

    const-string v0, "$this$userInfo"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$d;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/i$d;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 3
    :goto_0
    new-instance v1, Lg/g/a/a/j/c/f;

    invoke-direct {v1, v0, p0}, Lg/g/a/a/j/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
