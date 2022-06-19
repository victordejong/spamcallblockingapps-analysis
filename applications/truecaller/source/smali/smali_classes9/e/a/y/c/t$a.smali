.class public final Le/a/y/c/t$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/c/t;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.flashsdk.core.KidFlashService$showMissed$1$bitmap$1"
    f = "KidFlashService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/y/c/t;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/y/c/t;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/c/t$a;->e:Le/a/y/c/t;

    iput-object p2, p0, Le/a/y/c/t$a;->f:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/c/t$a;

    iget-object v0, p0, Le/a/y/c/t$a;->e:Le/a/y/c/t;

    iget-object v1, p0, Le/a/y/c/t$a;->f:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/y/c/t$a;-><init>(Le/a/y/c/t;Ljava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/y/c/t$a;->e:Le/a/y/c/t;

    iget-object v0, p0, Le/a/y/c/t$a;->f:Ljava/util/List;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 6
    iget-object p2, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->e:Le/a/y/b/g0;

    if-eqz p2, :cond_0

    .line 7
    sget v1, Lcom/truecaller/flashsdk/R$string;->map_url:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    const/4 v5, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.map_u\u2026s[1], parts[0], parts[1])"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p2, p1, v3}, Le/a/y/b/g0;->f(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "resourceProvider"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/y/c/t$a;->e:Le/a/y/c/t;

    iget-object p1, p1, Le/a/y/c/t;->i:Lcom/truecaller/flashsdk/core/KidFlashService;

    .line 3
    iget-object v0, p1, Lcom/truecaller/flashsdk/core/KidFlashService;->e:Le/a/y/b/g0;

    if-eqz v0, :cond_0

    .line 4
    sget v1, Lcom/truecaller/flashsdk/R$string;->map_url:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Le/a/y/c/t$a;->f:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Le/a/y/c/t$a;->f:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v6, p0, Le/a/y/c/t$a;->f:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    iget-object v6, p0, Le/a/y/c/t$a;->f:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(R.string.map_u\u2026s[1], parts[0], parts[1])"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, p1, v4}, Le/a/y/b/g0;->f(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "resourceProvider"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
