.class public final Le/a/o/b/d0;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.utils.MessagesFetcherWorkActionUtilImpl$scheduleNow$1"
    f = "ContextCallMessagesFetcherWorkAction.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/o/b/e0;


# direct methods
.method public constructor <init>(Le/a/o/b/e0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/d0;->e:Le/a/o/b/e0;

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

    new-instance p1, Le/a/o/b/d0;

    iget-object v0, p0, Le/a/o/b/d0;->e:Le/a/o/b/e0;

    invoke-direct {p1, v0, p2}, Le/a/o/b/d0;-><init>(Le/a/o/b/e0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/o/b/d0;->e:Le/a/o/b/e0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/o/b/e0;->a:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ln3/m0/y;

    const-string p2, "workManager"

    .line 5
    invoke-static {v1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, v0, Le/a/o/b/e0;->c:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const-string v2, "ContextCallMessagesFetcherWorkAction"

    .line 7
    invoke-static/range {v1 .. v6}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/o/b/d0;->e:Le/a/o/b/e0;

    .line 3
    iget-object p1, p1, Le/a/o/b/e0;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ln3/m0/y;

    const-string p1, "workManager"

    .line 4
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/o/b/d0;->e:Le/a/o/b/e0;

    .line 6
    iget-object v2, p1, Le/a/o/b/e0;->c:Landroid/content/Context;

    const-string v1, "ContextCallMessagesFetcherWorkAction"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    .line 7
    invoke-static/range {v0 .. v5}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
