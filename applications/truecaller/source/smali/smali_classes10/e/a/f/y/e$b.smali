.class public final Le/a/f/y/e$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/y/e;->C()V
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
    c = "com.truecaller.incallui.service.CallManagerImpl$onCallRemoved$1"
    f = "CallManager.kt"
    l = {
        0xcd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f/y/e;


# direct methods
.method public constructor <init>(Le/a/f/y/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/e$b;->f:Le/a/f/y/e;

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

    new-instance p1, Le/a/f/y/e$b;

    iget-object v0, p0, Le/a/f/y/e$b;->f:Le/a/f/y/e;

    invoke-direct {p1, v0, p2}, Le/a/f/y/e$b;-><init>(Le/a/f/y/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/y/e$b;

    iget-object v0, p0, Le/a/f/y/e$b;->f:Le/a/f/y/e;

    invoke-direct {p1, v0, p2}, Le/a/f/y/e$b;-><init>(Le/a/f/y/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/y/e$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/f/y/e$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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

    const-wide/16 v4, 0x64

    .line 4
    iput v3, p0, Le/a/f/y/e$b;->e:I

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/f/y/e$b;->f:Le/a/f/y/e;

    .line 6
    iget-object p1, p1, Le/a/f/y/e;->d:Ljava/util/List;

    .line 7
    new-instance v1, Le/a/f/y/e$b$a;

    invoke-direct {v1, p0}, Le/a/f/y/e$b$a;-><init>(Le/a/f/y/e$b;)V

    invoke-static {p1, v1}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 8
    iget-object p1, p0, Le/a/f/y/e$b;->f:Le/a/f/y/e;

    .line 9
    iget-object v1, p1, Le/a/f/y/e;->e:Lq3/a/w2/h;

    .line 10
    iget-object p1, p1, Le/a/f/y/e;->d:Ljava/util/List;

    .line 11
    invoke-interface {v1, p1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Le/a/f/y/e$b;->f:Le/a/f/y/e;

    .line 13
    iget-object p1, p1, Le/a/f/y/e;->d:Ljava/util/List;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Le/a/f/y/e$b;->f:Le/a/f/y/e;

    .line 15
    iget-boolean v1, p1, Le/a/f/y/e;->a:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1}, Le/a/f/y/e;->T(Le/a/f/y/x;)V

    return-object v0

    .line 17
    :cond_4
    :goto_1
    iget-object p1, p0, Le/a/f/y/e$b;->f:Le/a/f/y/e;

    .line 18
    invoke-virtual {p1}, Le/a/f/y/e;->V()V

    .line 19
    iget-object p1, p0, Le/a/f/y/e$b;->f:Le/a/f/y/e;

    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p1, Le/a/f/y/e;->a:Z

    return-object v0
.end method
