.class public final Le/a/a/k/a/w;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Lu3/a0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.transport.im.ImManagerImpl$getLocationPreviewUrl$previewUrl$2$1"
    f = "ImManagerImpl.kt"
    l = {
        0x141
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:D

.field public final synthetic g:D

.field public final synthetic h:Le/a/a/k/a/u;


# direct methods
.method public constructor <init>(DDLs1/w/d;Le/a/a/k/a/u;)V
    .locals 0

    iput-wide p1, p0, Le/a/a/k/a/w;->f:D

    iput-wide p3, p0, Le/a/a/k/a/w;->g:D

    iput-object p6, p0, Le/a/a/k/a/w;->h:Le/a/a/k/a/u;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/a/k/a/w;

    iget-wide v1, p0, Le/a/a/k/a/w;->f:D

    iget-wide v3, p0, Le/a/a/k/a/w;->g:D

    iget-object v6, p0, Le/a/a/k/a/w;->h:Le/a/a/k/a/u;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Le/a/a/k/a/w;-><init>(DDLs1/w/d;Le/a/a/k/a/u;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/k/a/w;

    iget-wide v1, p0, Le/a/a/k/a/w;->f:D

    iget-wide v3, p0, Le/a/a/k/a/w;->g:D

    iget-object v6, p0, Le/a/a/k/a/w;->h:Le/a/a/k/a/u;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Le/a/a/k/a/w;-><init>(DDLs1/w/d;Le/a/a/k/a/u;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/k/a/w;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/k/a/w;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a/k/a/w;->h:Le/a/a/k/a/u;

    .line 2
    iget-object p1, p1, Le/a/a/k/a/u;->l:Lo3/a;

    .line 3
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Le/a/a/k/a/g2/a;

    iget-wide v4, p0, Le/a/a/k/a/w;->f:D

    iget-wide v6, p0, Le/a/a/k/a/w;->g:D

    iput v2, p0, Le/a/a/k/a/w;->e:I

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Le/a/a/k/a/g2/a;->a(DDLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "$this$toHttpUrlOrNull"

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "$this$toHttpUrl"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lu3/a0$a;

    invoke-direct {v1}, Lu3/a0$a;-><init>()V

    invoke-virtual {v1, v0, p1}, Lu3/a0$a;->f(Lu3/a0;Ljava/lang/String;)Lu3/a0$a;

    invoke-virtual {v1}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_3
    return-object v0
.end method
