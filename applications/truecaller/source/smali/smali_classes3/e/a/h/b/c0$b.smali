.class public final Le/a/h/b/c0$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/c0;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/q<",
        "Lq3/a/x2/g<",
        "-",
        "Ls1/k<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Le/a/h/b/y0/a/d;",
        ">;>;",
        "Ljava/lang/String;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.DialerPresenter$listenToSearchTokenChanges$1$invokeSuspend$$inlined$flatMapLatest$1"
    f = "DialerPresenter.kt"
    l = {
        0xdb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Le/a/h/b/c0;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/h/b/c0;)V
    .locals 0

    iput-object p2, p0, Le/a/h/b/c0$b;->h:Le/a/h/b/c0;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lq3/a/x2/g;

    check-cast p3, Ls1/w/d;

    .line 1
    new-instance v0, Le/a/h/b/c0$b;

    iget-object v1, p0, Le/a/h/b/c0$b;->h:Le/a/h/b/c0;

    invoke-direct {v0, p3, v1}, Le/a/h/b/c0$b;-><init>(Ls1/w/d;Le/a/h/b/c0;)V

    iput-object p1, v0, Le/a/h/b/c0$b;->f:Ljava/lang/Object;

    iput-object p2, v0, Le/a/h/b/c0$b;->g:Ljava/lang/Object;

    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/h/b/c0$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/b/c0$b;->e:I

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

    iget-object p1, p0, Le/a/h/b/c0$b;->f:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v1, p0, Le/a/h/b/c0$b;->g:Ljava/lang/Object;

    .line 4
    check-cast v1, Ljava/lang/String;

    .line 5
    new-instance v3, Le/a/h/b/c0$b$a;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, p0}, Le/a/h/b/c0$b$a;-><init>(Ljava/lang/String;Ls1/w/d;Le/a/h/b/c0$b;)V

    .line 6
    new-instance v1, Lq3/a/x2/d1;

    invoke-direct {v1, v3}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 7
    iput v2, p0, Le/a/h/b/c0$b;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->H0(Lq3/a/x2/g;Lq3/a/x2/f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
