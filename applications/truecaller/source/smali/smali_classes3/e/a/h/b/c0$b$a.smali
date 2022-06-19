.class public final Le/a/h/b/c0$b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/c0$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-",
        "Ls1/k<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Le/a/h/b/y0/a/d;",
        ">;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.DialerPresenter$listenToSearchTokenChanges$1$1$1"
    f = "DialerPresenter.kt"
    l = {
        0x475,
        0x47d,
        0x49c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Le/a/h/b/c0$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/w/d;Le/a/h/b/c0$b;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/c0$b$a;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/h/b/c0$b$a;->h:Le/a/h/b/c0$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/h/b/c0$b$a;

    iget-object v1, p0, Le/a/h/b/c0$b$a;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/h/b/c0$b$a;->h:Le/a/h/b/c0$b;

    invoke-direct {v0, v1, p2, v2}, Le/a/h/b/c0$b$a;-><init>(Ljava/lang/String;Ls1/w/d;Le/a/h/b/c0$b;)V

    iput-object p1, v0, Le/a/h/b/c0$b$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/h/b/c0$b$a;

    iget-object v1, p0, Le/a/h/b/c0$b$a;->g:Ljava/lang/String;

    iget-object v2, p0, Le/a/h/b/c0$b$a;->h:Le/a/h/b/c0$b;

    invoke-direct {v0, v1, p2, v2}, Le/a/h/b/c0$b$a;-><init>(Ljava/lang/String;Ls1/w/d;Le/a/h/b/c0$b;)V

    iput-object p1, v0, Le/a/h/b/c0$b$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/h/b/c0$b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/h/b/c0$b$a;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/h/b/c0$b$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/h/b/c0$b$a;->e:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lq3/a/x2/g;

    .line 4
    iget-object p1, p0, Le/a/h/b/c0$b$a;->h:Le/a/h/b/c0$b;

    iget-object p1, p1, Le/a/h/b/c0$b;->h:Le/a/h/b/c0;

    iget-object p1, p1, Le/a/h/b/c0;->g:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    .line 5
    iget-object p1, p0, Le/a/h/b/c0$b$a;->h:Le/a/h/b/c0$b;

    iget-object p1, p1, Le/a/h/b/c0$b;->h:Le/a/h/b/c0;

    iget-object p1, p1, Le/a/h/b/c0;->g:Ls1/z/c/c0;

    new-instance v7, Landroid/os/CancellationSignal;

    invoke-direct {v7}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v7, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Le/a/h/b/c0$b$a;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    move p1, v6

    goto :goto_0

    :cond_4
    move p1, v3

    :goto_0
    if-eqz p1, :cond_6

    .line 7
    iget-object p1, p0, Le/a/h/b/c0$b$a;->g:Ljava/lang/String;

    new-instance v3, Le/a/h/b/y0/a/d$a;

    sget-object v4, Ls1/u/s;->a:Ls1/u/s;

    invoke-direct {v3, v4}, Le/a/h/b/y0/a/d$a;-><init>(Ljava/util/List;)V

    .line 8
    new-instance v4, Ls1/k;

    invoke-direct {v4, p1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iput v6, p0, Le/a/h/b/c0$b$a;->f:I

    invoke-interface {v2, v4, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    return-object v0

    .line 10
    :cond_6
    iget-object p1, p0, Le/a/h/b/c0$b$a;->g:Ljava/lang/String;

    iget-object v7, p0, Le/a/h/b/c0$b$a;->h:Le/a/h/b/c0$b;

    iget-object v7, v7, Le/a/h/b/c0$b;->h:Le/a/h/b/c0;

    iget-object v7, v7, Le/a/h/b/c0;->f:Le/a/h/b/y;

    .line 11
    iget-object v7, v7, Le/a/h/b/y;->x:Ls1/k;

    .line 12
    iget-object v7, v7, Ls1/k;->b:Ljava/lang/Object;

    .line 13
    new-instance v8, Ls1/k;

    invoke-direct {v8, p1, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    iput-object v2, p0, Le/a/h/b/c0$b$a;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/h/b/c0$b$a;->f:I

    invoke-interface {v2, v8, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 15
    :cond_7
    :goto_2
    new-instance p1, Ls1/z/c/y;

    invoke-direct {p1}, Ls1/z/c/y;-><init>()V

    iput-boolean v6, p1, Ls1/z/c/y;->a:Z

    .line 16
    new-instance v7, Le/a/h/b/c0$b$a$a;

    const/4 v8, 0x0

    invoke-direct {v7, p0, p1, v8}, Le/a/h/b/c0$b$a$a;-><init>(Le/a/h/b/c0$b$a;Ls1/z/c/y;Ls1/w/d;)V

    .line 17
    new-instance v9, Lq3/a/x2/d1;

    invoke-direct {v9, v7}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 18
    new-instance v7, Le/a/h/b/c0$b$a$b;

    invoke-direct {v7, p0, p1, v8}, Le/a/h/b/c0$b$a$b;-><init>(Le/a/h/b/c0$b$a;Ls1/z/c/y;Ls1/w/d;)V

    .line 19
    new-instance p1, Lq3/a/x2/d1;

    invoke-direct {p1, v7}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    new-array v5, v5, [Lq3/a/x2/f;

    aput-object p1, v5, v3

    aput-object v9, v5, v6

    .line 20
    invoke-static {v5}, Ls1/a/a/a/v0/f/d;->F2([Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object p1

    iput-object v8, p0, Le/a/h/b/c0$b$a;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/h/b/c0$b$a;->f:I

    invoke-static {v2, p1, p0}, Ls1/a/a/a/v0/f/d;->H0(Lq3/a/x2/g;Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    return-object v0
.end method
