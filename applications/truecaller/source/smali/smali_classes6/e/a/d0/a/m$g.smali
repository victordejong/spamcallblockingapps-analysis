.class public final Le/a/d0/a/m$g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/m;->Oj(Le/a/d0/v;)Lq3/a/p1;
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
    c = "com.truecaller.callerid.window.CallerIdWindowPresenter$maybeShowTrueContext$1"
    f = "CallerIdWindowPresenter.kt"
    l = {
        0x1f5,
        0x203
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d0/a/m;

.field public final synthetic g:Le/a/d0/v;


# direct methods
.method public constructor <init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    iput-object p2, p0, Le/a/d0/a/m$g;->g:Le/a/d0/v;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance p1, Le/a/d0/a/m$g;

    iget-object v0, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    iget-object v1, p0, Le/a/d0/a/m$g;->g:Le/a/d0/v;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/a/m$g;-><init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d0/a/m$g;

    iget-object v0, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    iget-object v1, p0, Le/a/d0/a/m$g;->g:Le/a/d0/v;

    invoke-direct {p1, v0, v1, p2}, Le/a/d0/a/m$g;-><init>(Le/a/d0/a/m;Le/a/d0/v;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d0/a/m$g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d0/a/m$g;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    .line 5
    iget-object p1, p1, Le/a/d0/a/m;->M:Le/a/u3/g;

    .line 6
    invoke-virtual {p1}, Le/a/u3/g;->E()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 7
    iget-object p1, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    .line 8
    iget-object p1, p1, Le/a/d0/a/m;->J:Le/a/d0/a/f;

    .line 9
    iget-object v1, p0, Le/a/d0/a/m$g;->g:Le/a/d0/v;

    iput v3, p0, Le/a/d0/a/m$g;->e:I

    check-cast p1, Le/a/d0/a/g;

    invoke-virtual {p1, v1, p0}, Le/a/d0/a/g;->a(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Le/a/m5/c;

    if-nez p1, :cond_5

    .line 10
    iget-object p1, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d0/a/l;

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p1}, Le/a/d0/a/l;->n()V

    .line 13
    :cond_4
    iget-object p1, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    .line 14
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d0/a/l;

    if-eqz p1, :cond_a

    .line 15
    invoke-interface {p1}, Le/a/d0/a/l;->a4()V

    goto :goto_2

    .line 16
    :cond_5
    instance-of v0, p1, Le/a/b/j/b;

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    .line 18
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/l;

    if-eqz v0, :cond_a

    .line 19
    invoke-interface {v0, p1}, Le/a/d0/a/l;->W5(Le/a/m5/c;)V

    goto :goto_2

    .line 20
    :cond_6
    iget-object v0, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    .line 21
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/l;

    if-eqz v0, :cond_a

    .line 22
    invoke-interface {v0, p1}, Le/a/d0/a/l;->P(Le/a/m5/c;)V

    .line 23
    invoke-interface {v0}, Le/a/d0/a/l;->C0()V

    goto :goto_2

    .line 24
    :cond_7
    iget-object p1, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    .line 25
    iget-object p1, p1, Le/a/d0/a/m;->J:Le/a/d0/a/f;

    .line 26
    iget-object v1, p0, Le/a/d0/a/m$g;->g:Le/a/d0/v;

    iput v2, p0, Le/a/d0/a/m$g;->e:I

    check-cast p1, Le/a/d0/a/g;

    invoke-virtual {p1, v1, p0}, Le/a/d0/a/g;->a(Le/a/d0/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_1
    check-cast p1, Le/a/m5/c;

    if-nez p1, :cond_9

    .line 27
    iget-object p1, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    .line 28
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d0/a/l;

    if-eqz p1, :cond_a

    .line 29
    invoke-interface {p1}, Le/a/d0/a/l;->n()V

    goto :goto_2

    .line 30
    :cond_9
    iget-object v0, p0, Le/a/d0/a/m$g;->f:Le/a/d0/a/m;

    .line 31
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/l;

    if-eqz v0, :cond_a

    .line 32
    invoke-interface {v0, p1}, Le/a/d0/a/l;->P(Le/a/m5/c;)V

    .line 33
    invoke-interface {v0}, Le/a/d0/a/l;->C0()V

    .line 34
    :cond_a
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
