.class final Lcom/hiya/client/callerid/dao/a0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/a0;->e(Lg/g/b/c/f;)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/h0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/dao/a0;

.field final synthetic b:Lg/g/b/c/f;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/a0;Lg/g/b/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/a0$c;->a:Lcom/hiya/client/callerid/dao/a0;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/a0$c;->b:Lg/g/b/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f0;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/f0<",
            "Lg/g/b/c/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a0$c;->a:Lcom/hiya/client/callerid/dao/a0;

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/a0$c;->b:Lg/g/b/c/f;

    invoke-virtual {v1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/hiya/client/callerid/dao/a0;->g(Lcom/hiya/client/callerid/dao/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a0$c;->a:Lcom/hiya/client/callerid/dao/a0;

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/a0$c;->b:Lg/g/b/c/f;

    invoke-virtual {v1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/hiya/client/callerid/dao/a0;->g(Lcom/hiya/client/callerid/dao/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a0$c;->a:Lcom/hiya/client/callerid/dao/a0;

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/a0$c;->b:Lg/g/b/c/f;

    invoke-virtual {v1}, Lg/g/b/c/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/hiya/client/callerid/dao/a0;->g(Lcom/hiya/client/callerid/dao/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a0$c;->a:Lcom/hiya/client/callerid/dao/a0;

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/a0$c;->b:Lg/g/b/c/f;

    invoke-virtual {v1}, Lg/g/b/c/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/hiya/client/callerid/dao/a0;->g(Lcom/hiya/client/callerid/dao/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 5
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a0$c;->a:Lcom/hiya/client/callerid/dao/a0;

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/a0$c;->b:Lg/g/b/c/f;

    invoke-virtual {v1}, Lg/g/b/c/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/hiya/client/callerid/dao/a0;->g(Lcom/hiya/client/callerid/dao/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 6
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a0$c;->a:Lcom/hiya/client/callerid/dao/a0;

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/a0$c;->b:Lg/g/b/c/f;

    invoke-virtual {v1}, Lg/g/b/c/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/hiya/client/callerid/dao/a0;->g(Lcom/hiya/client/callerid/dao/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 7
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a0$c;->a:Lcom/hiya/client/callerid/dao/a0;

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/a0$c;->b:Lg/g/b/c/f;

    invoke-virtual {v1}, Lg/g/b/c/f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v3}, Lcom/hiya/client/callerid/dao/a0;->g(Lcom/hiya/client/callerid/dao/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 8
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a0$c;->a:Lcom/hiya/client/callerid/dao/a0;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/a0;->a(Lcom/hiya/client/callerid/dao/a0;)Lg/g/b/a/g/a/i/a;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/hiya/client/callerid/dao/a0$c;->b:Lg/g/b/c/f;

    .line 10
    invoke-virtual/range {v4 .. v12}, Lg/g/b/a/g/a/i/a;->f(Lg/g/b/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/b/c/f;

    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Li/c/b0/b/f0;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-interface {p1, v0}, Li/c/b0/b/f0;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
