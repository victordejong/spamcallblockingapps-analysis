.class public final Le/a/b/l/n;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ln3/v/g0<",
        "Le/a/b/l/q<",
        "TT;>;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.data.NetworkBoundResourceKt$fetch$1"
    f = "NetworkBoundResource.kt"
    l = {
        0x11,
        0x14,
        0x16,
        0x19,
        0x1b,
        0x1d,
        0x20,
        0x22
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Ls1/z/b/a;

.field public final synthetic i:Ls1/z/b/l;

.field public final synthetic j:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Ls1/z/b/a;Ls1/z/b/l;Ls1/z/b/p;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/l/n;->h:Ls1/z/b/a;

    iput-object p2, p0, Le/a/b/l/n;->i:Ls1/z/b/l;

    iput-object p3, p0, Le/a/b/l/n;->j:Ls1/z/b/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    new-instance v0, Le/a/b/l/n;

    iget-object v1, p0, Le/a/b/l/n;->h:Ls1/z/b/a;

    iget-object v2, p0, Le/a/b/l/n;->i:Ls1/z/b/l;

    iget-object v3, p0, Le/a/b/l/n;->j:Ls1/z/b/p;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/b/l/n;-><init>(Ls1/z/b/a;Ls1/z/b/l;Ls1/z/b/p;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/l/n;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/l/n;

    iget-object v1, p0, Le/a/b/l/n;->h:Ls1/z/b/a;

    iget-object v2, p0, Le/a/b/l/n;->i:Ls1/z/b/l;

    iget-object v3, p0, Le/a/b/l/n;->j:Ls1/z/b/p;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/b/l/n;-><init>(Ls1/z/b/a;Ls1/z/b/l;Ls1/z/b/p;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/l/n;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/b/l/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/l/n;->g:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object v1, p0, Le/a/b/l/n;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LiveData;

    iget-object v2, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    check-cast v2, Ln3/v/g0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v1, p0, Le/a/b/l/n;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LiveData;

    iget-object v3, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    check-cast v3, Ln3/v/g0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v1, p0, Le/a/b/l/n;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LiveData;

    iget-object v5, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    check-cast v5, Ln3/v/g0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Le/a/b/l/n;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LiveData;

    iget-object v5, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    check-cast v5, Ln3/v/g0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    check-cast v1, Ln3/v/g0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v5, v1

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    check-cast p1, Ln3/v/g0;

    .line 4
    new-instance v1, Le/a/b/l/q$b;

    invoke-direct {v1}, Le/a/b/l/q$b;-><init>()V

    iput-object p1, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/b/l/n;->g:I

    invoke-interface {p1, v1, p0}, Ln3/v/g0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-object v0

    :cond_0
    move-object v5, p1

    .line 5
    :goto_0
    iget-object p1, p0, Le/a/b/l/n;->h:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 6
    new-instance v1, Le/a/b/l/n$a;

    invoke-direct {v1}, Le/a/b/l/n$a;-><init>()V

    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->Q0(Landroidx/lifecycle/LiveData;Ln3/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    const-string p1, "Transformations.map(this) { transform(it) }"

    invoke-static {v1, p1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v5, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/b/l/n;->f:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Le/a/b/l/n;->g:I

    invoke-interface {v5, v1, p0}, Ln3/v/g0;->b(Landroidx/lifecycle/LiveData;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 8
    :cond_1
    :goto_1
    iget-object p1, p0, Le/a/b/l/n;->i:Ls1/z/b/l;

    iput-object v5, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/b/l/n;->f:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, p0, Le/a/b/l/n;->g:I

    invoke-interface {p1, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_2
    check-cast p1, Le/a/b/a/a/b/d/a;

    .line 10
    instance-of v6, p1, Le/a/b/a/a/b/d/a$c;

    if-eqz v6, :cond_3

    iget-object v1, p0, Le/a/b/l/n;->j:Ls1/z/b/p;

    check-cast p1, Le/a/b/a/a/b/d/a$c;

    .line 11
    iget-object p1, p1, Le/a/b/a/a/b/d/a$c;->a:Ljava/lang/Object;

    .line 12
    iput-object v4, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/b/l/n;->f:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, p0, Le/a/b/l/n;->g:I

    invoke-interface {v1, p1, p0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 13
    :cond_3
    instance-of v6, p1, Le/a/b/a/a/b/d/a$b;

    if-eqz v6, :cond_5

    .line 14
    new-instance v6, Le/a/b/l/q$a;

    check-cast p1, Le/a/b/a/a/b/d/a$b;

    invoke-static {p1}, Le/a/n/g0;->H(Le/a/b/a/a/b/d/a$b;)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v4, v7, p1, v3}, Le/a/b/l/q$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Le/a/b/a/a/b/d/a$b;I)V

    iput-object v5, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/b/l/n;->f:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Le/a/b/l/n;->g:I

    invoke-interface {v5, v6, p0}, Ln3/v/g0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v3, v5

    .line 15
    :goto_3
    iput-object v4, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/b/l/n;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/b/l/n;->g:I

    invoke-interface {v3, v1, p0}, Ln3/v/g0;->b(Landroidx/lifecycle/LiveData;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 16
    :cond_5
    new-instance p1, Le/a/b/l/q$a;

    const-string v3, "Unknown server response"

    invoke-direct {p1, v3, v4, v4, v2}, Le/a/b/l/q$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Le/a/b/a/a/b/d/a$b;I)V

    iput-object v5, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/b/l/n;->f:Ljava/lang/Object;

    const/4 v2, 0x7

    iput v2, p0, Le/a/b/l/n;->g:I

    invoke-interface {v5, p1, p0}, Ln3/v/g0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v2, v5

    .line 17
    :goto_4
    iput-object v4, p0, Le/a/b/l/n;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/b/l/n;->f:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Le/a/b/l/n;->g:I

    invoke-interface {v2, v1, p0}, Ln3/v/g0;->b(Landroidx/lifecycle/LiveData;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 18
    :cond_7
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
