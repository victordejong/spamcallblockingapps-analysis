.class public final Lg/g/a/a/k/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/a/k/c;


# instance fields
.field private final a:Lg/g/a/d/a;

.field private final b:Lg/g/a/b/j1/k;


# direct methods
.method public constructor <init>(Lg/g/a/d/a;Lg/g/a/b/j1/k;)V
    .locals 1

    const-string v0, "encryptedSharedPreferences"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenProvider"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/k/i;->a:Lg/g/a/d/a;

    iput-object p2, p0, Lg/g/a/a/k/i;->b:Lg/g/a/b/j1/k;

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 4

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lg/g/a/a/k/i;->a:Lg/g/a/d/a;

    invoke-virtual {v1}, Lg/g/a/d/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/r;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Strings.nullToEmpty(encr\u2026nces.authenticationToken)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    .line 3
    invoke-static {v1, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v1, p0, Lg/g/a/a/k/i;->b:Lg/g/a/b/j1/k;

    invoke-interface {v1}, Lg/g/a/b/j1/k;->b()Li/c/b0/b/v;

    move-result-object v1

    sget-object v2, Lg/g/a/a/k/i$a;->f:Lg/g/a/a/k/i$a;

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object v1

    const-string v2, "tokenProvider.accessToken.filter { it != \"\" }"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v1

    const-string v2, "Observable.just(accessToken)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Li/c/b0/b/v;->blockingFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 8
    :goto_1
    invoke-virtual {v0}, Lm/e0;->i()Lm/e0$a;

    move-result-object v0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    .line 10
    invoke-virtual {v0, v2, v1}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 11
    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1
.end method
