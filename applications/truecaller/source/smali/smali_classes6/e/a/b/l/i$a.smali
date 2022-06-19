.class public final Le/a/b/l/i$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/l/i;->d(Ls1/w/d;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.data.BusinessProfileRepositoryImpl$deleteLogo$2"
    f = "BusinessProfileRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/b/l/i;


# direct methods
.method public constructor <init>(Le/a/b/l/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/l/i$a;->e:Le/a/b/l/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/b/l/i$a;

    iget-object v0, p0, Le/a/b/l/i$a;->e:Le/a/b/l/i;

    invoke-direct {p1, v0, p2}, Le/a/b/l/i$a;-><init>(Le/a/b/l/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/b/l/i$a;->e:Le/a/b/l/i;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/b/l/i;->a:Le/a/b/l/f;

    .line 5
    invoke-interface {p2}, Le/a/b/l/f;->c()Lx3/b;

    move-result-object p2

    invoke-interface {p2}, Lx3/b;->execute()Lx3/a0;

    move-result-object p2

    const-string v0, "response"

    .line 6
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Le/a/b/b/c/r$a;

    .line 8
    iget-object p2, p2, Lx3/a0;->a:Lu3/k0;

    .line 9
    iget p2, p2, Lu3/k0;->e:I

    .line 10
    invoke-direct {p1, p2}, Le/a/b/b/c/r$a;-><init>(I)V

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/b/l/i$a;->e:Le/a/b/l/i;

    .line 3
    iget-object p1, p1, Le/a/b/l/i;->a:Le/a/b/l/f;

    .line 4
    invoke-interface {p1}, Le/a/b/l/f;->c()Lx3/b;

    move-result-object p1

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string v0, "response"

    .line 5
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 6
    :cond_0
    new-instance v0, Le/a/b/b/c/r$a;

    .line 7
    iget-object p1, p1, Lx3/a0;->a:Lu3/k0;

    .line 8
    iget p1, p1, Lu3/k0;->e:I

    .line 9
    invoke-direct {v0, p1}, Le/a/b/b/c/r$a;-><init>(I)V

    throw v0
.end method
