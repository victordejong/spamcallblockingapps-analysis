.class public final Lg/g/a/a/k/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/a/k/c;


# instance fields
.field private final a:Lg/g/a/a/h/a;


# direct methods
.method public constructor <init>(Lg/g/a/a/h/a;)V
    .locals 1

    const-string v0, "authDao"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/k/k/a;->a:Lg/g/a/a/h/a;

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
    :try_start_0
    iget-object v1, p0, Lg/g/a/a/k/k/a;->a:Lg/g/a/a/h/a;

    invoke-interface {v1}, Lg/g/a/a/h/a;->c()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lm/e0;->i()Lm/e0$a;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 6
    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing Access Token"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
