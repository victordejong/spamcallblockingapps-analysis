.class public final Le/a/t/a/a/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/a/u;->c(ILe/a/t/a/a/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx3/d<",
        "Lcom/tenor/android/core/response/impl/TrendingGifResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/a/s;


# direct methods
.method public constructor <init>(Le/a/t/a/a/s;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/a/u$b;->a:Le/a/t/a/a/s;

    .line 1
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
            "Lcom/tenor/android/core/response/impl/TrendingGifResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/t/a/a/u$b;->a:Le/a/t/a/a/s;

    invoke-interface {p1, p2}, Le/a/t/a/a/s;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lx3/b;Lx3/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/TrendingGifResponse;",
            ">;",
            "Lx3/a0<",
            "Lcom/tenor/android/core/response/impl/TrendingGifResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p2, Lx3/a0;->b:Ljava/lang/Object;

    .line 2
    check-cast p1, Lcom/tenor/android/core/response/impl/TrendingGifResponse;

    .line 3
    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Le/a/t/a/a/u$b;->a:Le/a/t/a/a/s;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Le/m/d/y/n;->b(Lcom/tenor/android/core/response/impl/GifsResponse;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Le/a/t/a/a/s;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/t/a/a/u$b;->a:Le/a/t/a/a/s;

    const/4 p2, 0x0

    .line 6
    invoke-interface {p1, p2}, Le/a/t/a/a/s;->a(Ljava/lang/Throwable;)V

    return-void
.end method
