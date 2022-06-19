.class public final Le/a/t/a/a/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/a/u;->b(Ljava/lang/String;IZLe/a/t/a/a/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx3/d<",
        "Lcom/tenor/android/core/response/impl/GifsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/a/u;

.field public final synthetic b:Le/a/t/a/a/s;


# direct methods
.method public constructor <init>(Le/a/t/a/a/u;Le/a/t/a/a/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/t/a/a/s;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t/a/a/u$c;->a:Le/a/t/a/a/u;

    iput-object p2, p0, Le/a/t/a/a/u$c;->b:Le/a/t/a/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lx3/b;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/GifsResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lx3/b;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/t/a/a/u$c;->b:Le/a/t/a/a/s;

    invoke-interface {p1, p2}, Le/a/t/a/a/s;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lx3/b;Lx3/a0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/GifsResponse;",
            ">;",
            "Lx3/a0<",
            "Lcom/tenor/android/core/response/impl/GifsResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p2, Lx3/a0;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Lcom/tenor/android/core/response/impl/GifsResponse;

    .line 3
    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/tenor/android/core/response/impl/GifsResponse;->getResults()Ljava/util/List;

    move-result-object p1

    const-string p2, "gifsResponse.results"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/t/a/a/u$c;->a:Le/a/t/a/a/u;

    invoke-virtual {v0}, Lcom/tenor/android/core/response/impl/GifsResponse;->getNext()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gifsResponse.next"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object v1, p1, Le/a/t/a/a/u;->b:Ljava/lang/String;

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/t/a/a/u$c;->b:Le/a/t/a/a/s;

    invoke-static {v0, p2}, Le/m/d/y/n;->b(Lcom/tenor/android/core/response/impl/GifsResponse;I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/t/a/a/s;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_2
    :goto_0
    invoke-interface {p1}, Lx3/b;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Le/a/t/a/a/u$c;->b:Le/a/t/a/a/s;

    const/4 p2, 0x0

    .line 8
    invoke-interface {p1, p2}, Le/a/t/a/a/s;->a(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
