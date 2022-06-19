.class public final Le/a/g0/e$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g0/e;->e()Lq3/a/x2/f;
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
        "Le/a/g0/c;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.suspension.SuspensionMangerImpl$unsuspendAccount$1"
    f = "SuspensionManager.kt"
    l = {
        0x9b,
        0x9c,
        0x9e,
        0xa4,
        0xa5,
        0xa7,
        0xaa
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/g0/e;


# direct methods
.method public constructor <init>(Le/a/g0/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/e$f;->h:Le/a/g0/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/g0/e$f;

    iget-object v1, p0, Le/a/g0/e$f;->h:Le/a/g0/e;

    invoke-direct {v0, v1, p2}, Le/a/g0/e$f;-><init>(Le/a/g0/e;Ls1/w/d;)V

    iput-object p1, v0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/g0/e$f;

    iget-object v1, p0, Le/a/g0/e$f;->h:Le/a/g0/e;

    invoke-direct {v0, v1, p2}, Le/a/g0/e$f;-><init>(Le/a/g0/e;Ls1/w/d;)V

    iput-object p1, v0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/g0/e$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Le/a/g0/c$a;->a:Le/a/g0/c$a;

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, p0, Le/a/g0/e$f;->g:I

    packed-switch v3, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/g0/e$f;->f:Ljava/lang/Object;

    check-cast v0, Ls1/s;

    iget-object v3, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Le/a/g0/e$f;->f:Ljava/lang/Object;

    check-cast v0, Le/a/g0/k/e;

    iget-object v3, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    check-cast v0, Ls1/s;

    :pswitch_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object v0, p0, Le/a/g0/e$f;->f:Ljava/lang/Object;

    check-cast v0, Ls1/s;

    iget-object v3, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Le/a/g0/e$f;->f:Ljava/lang/Object;

    check-cast v0, Le/a/g0/k/e;

    iget-object v3, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    .line 4
    iget-object v3, p0, Le/a/g0/e$f;->h:Le/a/g0/e;

    .line 5
    iget-object v4, v3, Le/a/g0/e;->d:Le/a/g0/k/b;

    new-instance v5, Le/a/g0/g;

    iget-object v6, v3, Le/a/g0/e;->k:Le/a/g0/j/j;

    invoke-direct {v5, v6}, Le/a/g0/g;-><init>(Le/a/g0/j/j;)V

    check-cast v4, Le/a/g0/k/c;

    .line 6
    invoke-virtual {v4}, Le/a/g0/k/c;->a()Le/a/d4/e;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Le/a/g0/g;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {v4}, Le/a/g0/k/c;->b()Le/a/g0/k/d;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v4}, Le/a/g0/k/d;->b()Le/a/g0/k/e;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 8
    instance-of v5, v4, Le/a/g0/k/e$a;

    if-eqz v5, :cond_1

    move-object v6, v4

    check-cast v6, Le/a/g0/k/e$a;

    .line 9
    iget-object v6, v6, Le/a/g0/k/e$a;->b:Le/a/g0/k/a;

    .line 10
    iget-object v6, v6, Le/a/g0/k/a;->a:Le/a/g0/k/f;

    .line 11
    instance-of v7, v6, Le/a/g0/k/f$a;

    if-nez v7, :cond_1

    .line 12
    invoke-virtual {v3, v6}, Le/a/g0/e;->q(Le/a/g0/k/f;)V

    :cond_1
    if-eqz v5, :cond_2

    .line 13
    iget-object v3, v3, Le/a/g0/e;->k:Le/a/g0/j/j;

    .line 14
    iget-object v6, v4, Le/a/g0/k/e;->a:Le/a/d4/e;

    .line 15
    new-instance v7, Le/a/g0/j/j$a$c;

    move-object v8, v4

    check-cast v8, Le/a/g0/k/e$a;

    .line 16
    iget-object v8, v8, Le/a/g0/k/e$a;->b:Le/a/g0/k/a;

    .line 17
    iget-object v8, v8, Le/a/g0/k/a;->a:Le/a/g0/k/f;

    .line 18
    iget-object v8, v8, Le/a/g0/k/f;->a:Ljava/lang/String;

    .line 19
    invoke-direct {v7, v8}, Le/a/g0/j/j$a$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, v7}, Le/a/g0/j/j;->g(Le/a/d4/e;Le/a/g0/j/j$a;)V

    .line 20
    :cond_2
    instance-of v3, v4, Le/a/g0/k/e$b;

    if-eqz v3, :cond_6

    .line 21
    iput-object p1, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/g0/e$f;->f:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p0, Le/a/g0/e$f;->g:I

    invoke-interface {p1, v0, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    return-object v2

    :cond_3
    move-object v3, p1

    move-object v0, v4

    .line 22
    :goto_0
    iget-object p1, p0, Le/a/g0/e$f;->h:Le/a/g0/e;

    move-object v4, v0

    check-cast v4, Le/a/g0/k/e$b;

    .line 23
    iget-object v4, v4, Le/a/g0/k/e$b;->b:Ljava/lang/String;

    .line 24
    iget-object v0, v0, Le/a/g0/k/e;->a:Le/a/d4/e;

    .line 25
    iput-object v3, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/g0/e$f;->f:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p0, Le/a/g0/e$f;->g:I

    invoke-virtual {p1, v4, v0, p0}, Le/a/g0/e;->m(Ljava/lang/String;Le/a/d4/e;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v0, v1

    :goto_1
    move-object v4, p1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 26
    iget-object v5, p0, Le/a/g0/e$f;->h:Le/a/g0/e;

    .line 27
    invoke-virtual {v5}, Le/a/g0/e;->l()V

    .line 28
    iget-object v5, v5, Le/a/g0/e;->j:Le/a/g0/b;

    invoke-interface {v5}, Le/a/g0/b;->d()V

    .line 29
    :cond_5
    new-instance v5, Le/a/g0/c$b;

    invoke-direct {v5, v4}, Le/a/g0/c$b;-><init>(Z)V

    iput-object v0, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/g0/e$f;->f:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Le/a/g0/e$f;->g:I

    invoke-interface {v3, v5, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_b

    return-object v2

    :cond_6
    if-eqz v5, :cond_b

    .line 30
    move-object v3, v4

    check-cast v3, Le/a/g0/k/e$a;

    .line 31
    iget-object v3, v3, Le/a/g0/k/e$a;->b:Le/a/g0/k/a;

    .line 32
    iget-object v3, v3, Le/a/g0/k/a;->a:Le/a/g0/k/f;

    .line 33
    instance-of v3, v3, Le/a/g0/k/f$a;

    if-eqz v3, :cond_a

    iput-object p1, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/g0/e$f;->f:Ljava/lang/Object;

    const/4 v3, 0x4

    iput v3, p0, Le/a/g0/e$f;->g:I

    invoke-interface {p1, v0, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_7

    return-object v2

    :cond_7
    move-object v3, p1

    move-object v0, v4

    .line 34
    :goto_2
    iget-object p1, p0, Le/a/g0/e$f;->h:Le/a/g0/e;

    move-object v4, v0

    check-cast v4, Le/a/g0/k/e$a;

    .line 35
    iget-object v4, v4, Le/a/g0/k/e$a;->b:Le/a/g0/k/a;

    .line 36
    iget-object v4, v4, Le/a/g0/k/a;->a:Le/a/g0/k/f;

    .line 37
    invoke-static {v4}, Le/a/l4/k;->G(Le/a/g0/k/f;)Ljava/lang/String;

    move-result-object v4

    .line 38
    iget-object v0, v0, Le/a/g0/k/e;->a:Le/a/d4/e;

    .line 39
    iput-object v3, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/g0/e$f;->f:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, p0, Le/a/g0/e$f;->g:I

    invoke-virtual {p1, v4, v0, p0}, Le/a/g0/e;->m(Ljava/lang/String;Le/a/d4/e;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_8

    return-object v2

    :cond_8
    move-object v0, v1

    :goto_3
    move-object v4, p1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 40
    iget-object v5, p0, Le/a/g0/e$f;->h:Le/a/g0/e;

    .line 41
    invoke-virtual {v5}, Le/a/g0/e;->l()V

    .line 42
    iget-object v5, v5, Le/a/g0/e;->j:Le/a/g0/b;

    invoke-interface {v5}, Le/a/g0/b;->d()V

    .line 43
    :cond_9
    new-instance v5, Le/a/g0/c$b;

    invoke-direct {v5, v4}, Le/a/g0/c$b;-><init>(Z)V

    iput-object v0, p0, Le/a/g0/e$f;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/g0/e$f;->f:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Le/a/g0/e$f;->g:I

    invoke-interface {v3, v5, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_b

    return-object v2

    .line 44
    :cond_a
    new-instance v0, Le/a/g0/c$b;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Le/a/g0/c$b;-><init>(Z)V

    const/4 v3, 0x7

    iput v3, p0, Le/a/g0/e$f;->g:I

    invoke-interface {p1, v0, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_b

    return-object v2

    :cond_b
    :goto_4
    return-object v1

    .line 45
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No provider available"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
