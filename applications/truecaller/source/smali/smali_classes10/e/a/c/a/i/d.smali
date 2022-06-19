.class public final Le/a/c/a/i/d;
.super Le/a/c/a/i/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/k<",
        "Lw3/b/a/b;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/c/c0/o;

.field public final c:Le/a/c/q/d;

.field public final d:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/c/c0/o;Le/a/c/q/d;Le/a/c/b/j;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsUiManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/c/a/i/k;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/c/a/i/d;->b:Le/a/c/c0/o;

    iput-object p3, p0, Le/a/c/a/i/d;->c:Le/a/c/q/d;

    iput-object p4, p0, Le/a/c/a/i/d;->d:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lw3/b/a/b;

    invoke-virtual {p0, p1, p2}, Le/a/c/a/i/d;->d(Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/b;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/a/i/d$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a/i/d$a;

    iget v1, v0, Le/a/c/a/i/d$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a/i/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a/i/d$a;

    invoke-direct {v0, p0, p2}, Le/a/c/a/i/d$a;-><init>(Le/a/c/a/i/d;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a/i/d$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a/i/d$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Le/a/c/a/i/d$a;->i:I

    iget-object v0, v0, Le/a/c/a/i/d$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/i/d;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/a/i/d$a;->h:Ljava/lang/Object;

    check-cast p1, Lw3/b/a/b;

    iget-object v2, v0, Le/a/c/a/i/d$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/i/d;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/c/a/i/d;->d:Le/a/c/b/j;

    invoke-interface {p2}, Le/a/c/b/j;->t()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p1, 0x0

    .line 5
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    .line 6
    :cond_4
    iget-object p2, p0, Le/a/c/a/i/d;->b:Le/a/c/c0/o;

    invoke-interface {p2}, Le/a/c/c0/o;->m0()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object p2

    goto :goto_1

    :cond_5
    move-object p2, v5

    :goto_1
    if-eqz p2, :cond_7

    .line 7
    iget-object p2, p0, Le/a/c/a/i/d;->b:Le/a/c/c0/o;

    invoke-interface {p2}, Le/a/c/c0/o;->m0()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-static {p2}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object p2

    goto :goto_2

    :cond_6
    move-object p2, v5

    :goto_2
    invoke-virtual {p1, p2}, Lw3/b/a/e0/c;->a(Lw3/b/a/z;)I

    move-result p2

    if-lez p2, :cond_7

    .line 8
    iget-object p2, p0, Le/a/c/a/i/d;->b:Le/a/c/c0/o;

    invoke-interface {p2}, Le/a/c/c0/o;->s0()V

    .line 9
    :cond_7
    iget-object p2, p0, Le/a/c/a/i/d;->b:Le/a/c/c0/o;

    invoke-interface {p2}, Le/a/c/c0/o;->m0()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 10
    invoke-static {p2}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object p1

    .line 11
    :cond_8
    iget-object p2, p0, Le/a/c/a/i/d;->c:Le/a/c/q/d;

    iput-object p0, v0, Le/a/c/a/i/d$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a/i/d$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/c/a/i/d$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/c/q/d;->B(Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    move-object v2, p0

    :goto_3
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 12
    iget-object v4, v2, Le/a/c/a/i/d;->c:Le/a/c/q/d;

    iput-object v2, v0, Le/a/c/a/i/d$a;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/c/a/i/d$a;->h:Ljava/lang/Object;

    iput p2, v0, Le/a/c/a/i/d$a;->i:I

    iput v3, v0, Le/a/c/a/i/d$a;->e:I

    invoke-interface {v4, p1, v0}, Le/a/c/q/d;->x(Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    move-object v0, v2

    move v6, p2

    move-object p2, p1

    move p1, v6

    :goto_4
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr p2, p1

    .line 13
    iget-object p1, v0, Le/a/c/a/i/d;->b:Le/a/c/c0/o;

    invoke-interface {p1}, Le/a/c/c0/o;->y()I

    move-result p1

    add-int/2addr p1, p2

    .line 14
    iget-object p2, v0, Le/a/c/a/i/d;->b:Le/a/c/c0/o;

    invoke-interface {p2, p1}, Le/a/c/c0/o;->U(I)V

    .line 15
    iget-object p2, v0, Le/a/c/a/i/d;->b:Le/a/c/c0/o;

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-interface {p2, v0}, Le/a/c/c0/o;->P(Ljava/util/Date;)V

    .line 16
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method
