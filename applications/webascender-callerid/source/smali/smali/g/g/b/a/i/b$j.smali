.class final Lg/g/b/a/i/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/i/b;->c()Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Lretrofit2/Response<",
        "Lg/g/a/a/i/i;",
        ">;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/i/b;


# direct methods
.method constructor <init>(Lg/g/b/a/i/b;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/i/b$j;->f:Lg/g/b/a/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lretrofit2/Response;)Li/c/b0/b/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lg/g/a/a/i/i;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lm/x;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lg/g/b/a/i/b$j;->f:Lg/g/b/a/i/b;

    invoke-static {v0}, Lg/g/b/a/i/b;->i(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/dao/v;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lm/x;

    move-result-object v3

    const-string v4, "it.headers()"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/hiya/client/callerid/dao/v;->a(Lm/x;)V

    .line 3
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lm/x;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/g/b/a/k/i;->b(Lm/x;)J

    move-result-wide v3

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    add-long/2addr v5, v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long v5, v3, v1

    .line 6
    :goto_1
    iget-object v0, p0, Lg/g/b/a/i/b$j;->f:Lg/g/b/a/i/b;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "it.body()!!"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lg/g/a/a/i/i;

    invoke-virtual {v0, p1}, Lg/g/b/a/i/b;->m(Lg/g/a/a/i/i;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Li/c/b0/b/e;

    .line 7
    iget-object v1, p0, Lg/g/b/a/i/b$j;->f:Lg/g/b/a/i/b;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/g/b/a/i/b$a;

    invoke-static {v1, v3, v5, v6}, Lg/g/b/a/i/b;->l(Lg/g/b/a/i/b;Lg/g/b/a/i/b$a;J)Li/c/b0/b/e;

    move-result-object v1

    aput-object v1, v0, v2

    .line 8
    iget-object v1, p0, Lg/g/b/a/i/b$j;->f:Lg/g/b/a/i/b;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/b/a/i/b$a;

    invoke-static {v1, p1, v5, v6}, Lg/g/b/a/i/b;->l(Lg/g/b/a/i/b;Lg/g/b/a/i/b$a;J)Li/c/b0/b/e;

    move-result-object p1

    aput-object p1, v0, v2

    .line 9
    invoke-static {v0}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-static {p1}, Li/c/b0/b/e;->w(Ljava/lang/Iterable;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lg/g/b/a/i/b$j;->a(Lretrofit2/Response;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
