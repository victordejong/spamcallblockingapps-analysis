.class public final Le/a/k/a/k/f$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/k/f;->release()Lq3/a/p1;
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
    c = "com.truecaller.videocallerid.ui.videoplayer.ExoPlayerProviderImpl$release$1"
    f = "ExoPlayerProvider.kt"
    l = {
        0x47
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/k/a/k/f;


# direct methods
.method public constructor <init>(Le/a/k/a/k/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/f$c;->g:Le/a/k/a/k/f;

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

    new-instance p1, Le/a/k/a/k/f$c;

    iget-object v0, p0, Le/a/k/a/k/f$c;->g:Le/a/k/a/k/f;

    invoke-direct {p1, v0, p2}, Le/a/k/a/k/f$c;-><init>(Le/a/k/a/k/f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/a/k/f$c;

    iget-object v0, p0, Le/a/k/a/k/f$c;->g:Le/a/k/a/k/f;

    invoke-direct {p1, v0, p2}, Le/a/k/a/k/f$c;-><init>(Le/a/k/a/k/f;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/a/k/f$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/a/k/f$c;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/k/a/k/f$c;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/b3/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/a/k/f$c;->g:Le/a/k/a/k/f;

    .line 5
    iget-object p1, p1, Le/a/k/a/k/f;->b:Lq3/a/b3/c;

    .line 6
    iput-object p1, p0, Le/a/k/a/k/f$c;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/k/a/k/f$c;->f:I

    invoke-interface {p1, v3, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 7
    :goto_0
    :try_start_0
    iget-object p1, p0, Le/a/k/a/k/f$c;->g:Le/a/k/a/k/f;

    .line 8
    iget-object p1, p1, Le/a/k/a/k/f;->a:Le/m/a/c/c0;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Le/m/a/c/q0;->release()V

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/k/a/k/f$c;->g:Le/a/k/a/k/f;

    .line 11
    iput-object v3, p1, Le/a/k/a/k/f;->a:Le/m/a/c/c0;

    .line 12
    sget-object p1, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-interface {v0, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
