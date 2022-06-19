.class public final Le/a/c/i/b/g$m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/b/g;->B(Ls1/w/d;)Ljava/lang/Object;
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
        "Ls1/k<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$8"
    f = "MalanaSeed.kt"
    l = {
        0xc2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/i/b/g;

.field public final synthetic g:Ls1/w/d;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/c/i/b/g;Ls1/w/d;)V
    .locals 0

    iput-object p2, p0, Le/a/c/i/b/g$m;->f:Le/a/c/i/b/g;

    iput-object p3, p0, Le/a/c/i/b/g$m;->g:Ls1/w/d;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/c/i/b/g$m;

    iget-object v0, p0, Le/a/c/i/b/g$m;->f:Le/a/c/i/b/g;

    iget-object v1, p0, Le/a/c/i/b/g$m;->g:Ls1/w/d;

    invoke-direct {p1, p2, v0, v1}, Le/a/c/i/b/g$m;-><init>(Ls1/w/d;Le/a/c/i/b/g;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/i/b/g$m;

    iget-object v0, p0, Le/a/c/i/b/g$m;->f:Le/a/c/i/b/g;

    iget-object v1, p0, Le/a/c/i/b/g$m;->g:Ls1/w/d;

    invoke-direct {p1, p2, v0, v1}, Le/a/c/i/b/g$m;-><init>(Ls1/w/d;Le/a/c/i/b/g;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/i/b/g$m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/i/b/g$m;->e:I

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

    iget-object p1, p0, Le/a/c/i/b/g$m;->f:Le/a/c/i/b/g;

    iput v2, p0, Le/a/c/i/b/g$m;->e:I

    .line 2
    iget-object v1, p1, Le/a/c/i/b/g;->v:Ls1/w/f;

    new-instance v2, Le/a/c/i/b/g$p;

    const/4 v3, 0x0

    const-string v4, "malanaSeed/semantic.json"

    invoke-direct {v2, p1, v4, v3}, Le/a/c/i/b/g$p;-><init>(Le/a/c/i/b/g;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
