.class public final Le/a/o5/o1;
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
    c = "com.truecaller.util.RingtoneUtils$copyRingtoneAsync$1"
    f = "RingtoneUtils.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Le/a/o5/n1$a;

.field public final synthetic h:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/o5/n1$a;Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o5/o1;->f:Landroid/content/Context;

    iput-object p2, p0, Le/a/o5/o1;->g:Le/a/o5/n1$a;

    iput-object p3, p0, Le/a/o5/o1;->h:Ls1/z/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/o5/o1;

    iget-object v0, p0, Le/a/o5/o1;->f:Landroid/content/Context;

    iget-object v1, p0, Le/a/o5/o1;->g:Le/a/o5/n1$a;

    iget-object v2, p0, Le/a/o5/o1;->h:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/o5/o1;-><init>(Landroid/content/Context;Le/a/o5/n1$a;Ls1/z/b/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o5/o1;

    iget-object v0, p0, Le/a/o5/o1;->f:Landroid/content/Context;

    iget-object v1, p0, Le/a/o5/o1;->g:Le/a/o5/n1$a;

    iget-object v2, p0, Le/a/o5/o1;->h:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/o5/o1;-><init>(Landroid/content/Context;Le/a/o5/n1$a;Ls1/z/b/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o5/o1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o5/o1;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    sget-object p1, Le/a/o5/n1;->a:Le/a/o5/n1;

    iget-object v1, p0, Le/a/o5/o1;->f:Landroid/content/Context;

    iget-object v3, p0, Le/a/o5/o1;->g:Le/a/o5/n1$a;

    iput v2, p0, Le/a/o5/o1;->e:I

    invoke-virtual {p1, v1, v3, p0}, Le/a/o5/n1;->a(Landroid/content/Context;Le/a/o5/n1$a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_3

    iget-object v0, p0, Le/a/o5/o1;->h:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
