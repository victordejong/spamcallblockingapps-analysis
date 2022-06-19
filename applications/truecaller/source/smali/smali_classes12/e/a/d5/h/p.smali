.class public final Le/a/d5/h/p;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.startup_dialogs.resolvers.ReferralDialogResolver$tryLoadReferralData$2"
    f = "ReferralDialogResolver.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d5/h/o;


# direct methods
.method public constructor <init>(Le/a/d5/h/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d5/h/p;->g:Le/a/d5/h/o;

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

    new-instance p1, Le/a/d5/h/p;

    iget-object v0, p0, Le/a/d5/h/p;->g:Le/a/d5/h/o;

    invoke-direct {p1, v0, p2}, Le/a/d5/h/p;-><init>(Le/a/d5/h/o;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d5/h/p;

    iget-object v0, p0, Le/a/d5/h/p;->g:Le/a/d5/h/o;

    invoke-direct {p1, v0, p2}, Le/a/d5/h/p;-><init>(Le/a/d5/h/o;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d5/h/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d5/h/p;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/d5/h/p;->e:Ljava/lang/Object;

    check-cast v0, Le/a/d5/h/p;

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
    iput-object p0, p0, Le/a/d5/h/p;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/d5/h/p;->f:I

    .line 5
    new-instance p1, Lq3/a/o;

    invoke-static {p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    invoke-direct {p1, v1, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 6
    invoke-virtual {p1}, Lq3/a/o;->z()V

    .line 7
    new-instance v1, Le/a/w/b/a;

    .line 8
    iget-object v2, p0, Le/a/d5/h/p;->g:Le/a/d5/h/o;

    .line 9
    iget-object v2, v2, Le/a/d5/h/o;->r:Le/a/w/b/b;

    .line 10
    sget-object v3, Le/a/w/b/d/a;->a:Le/a/w/b/d/a;

    .line 11
    new-instance v4, Le/a/d5/h/p$a;

    invoke-direct {v4, p1}, Le/a/d5/h/p$a;-><init>(Lq3/a/n;)V

    .line 12
    invoke-direct {v1, v2, v3, v4}, Le/a/w/b/a;-><init>(Le/a/w/b/b;Le/a/w/b/d/a;Le/a/w/b/a$a;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 13
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    const-string v1, "frame"

    .line 15
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method
