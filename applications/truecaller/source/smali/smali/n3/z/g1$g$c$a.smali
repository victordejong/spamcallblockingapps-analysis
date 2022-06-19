.class public final Ln3/z/g1$g$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g1$g$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/g1$g$c;

.field public final synthetic b:Lq3/a/i0;


# direct methods
.method public constructor <init>(Ln3/z/g1$g$c;Lq3/a/i0;)V
    .locals 0

    iput-object p1, p0, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iput-object p2, p0, Ln3/z/g1$g$c$a;->b:Lq3/a/i0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ln3/z/t0;->a:Ln3/z/t0;

    instance-of v1, p2, Ln3/z/g1$g$c$a$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ln3/z/g1$g$c$a$a;

    iget v2, v1, Ln3/z/g1$g$c$a$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Ln3/z/g1$g$c$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Ln3/z/g1$g$c$a$a;

    invoke-direct {v1, p0, p2}, Ln3/z/g1$g$c$a$a;-><init>(Ln3/z/g1$g$c$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Ln3/z/g1$g$c$a$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Ln3/z/g1$g$c$a$a;->e:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v2, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v2, Ln3/z/k1$a;

    iget-object v1, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v1, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_1
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast p1, Ln3/z/t0;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v3, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_2
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->l:Ljava/lang/Object;

    check-cast p1, Ln3/z/g1;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    check-cast v3, Ln3/z/t0;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    check-cast v5, Lq3/a/b3/c;

    iget-object v6, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast v6, Ln3/z/k1$a;

    iget-object v7, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v7, Ln3/z/t0;

    iget-object v8, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v8, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_13

    :pswitch_3
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v3, Ln3/z/t0;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v5, Ln3/z/g1$g$c$a;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v8, v5

    goto/16 :goto_12

    :pswitch_4
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast v3, Ln3/z/k1$a;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v5, Ln3/z/t0;

    iget-object v6, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_5
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    check-cast p1, Ln3/z/s0;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v5, Ln3/z/k1$a;

    iget-object v6, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_6
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast p1, Ln3/z/s0;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v3, Ln3/z/t0;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v5, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v6, v5

    goto/16 :goto_e

    :pswitch_7
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->m:Ljava/lang/Object;

    check-cast p1, Ln3/z/g1;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->l:Ljava/lang/Object;

    check-cast v3, Ln3/z/t0;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    check-cast v5, Ln3/z/s0;

    iget-object v6, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    iget-object v7, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast v7, Ln3/z/k1$a;

    iget-object v8, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v8, Ln3/z/t0;

    iget-object v9, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v9, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_8
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    check-cast p1, Ln3/z/s0;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v5, Ln3/z/t0;

    iget-object v6, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/g1$g$c$a;

    :try_start_1
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object v9, v6

    goto/16 :goto_b

    :pswitch_9
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    check-cast p1, Ln3/z/s0;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast v5, Ln3/z/k1$a;

    iget-object v6, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v6, Ln3/z/t0;

    iget-object v7, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v7, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_a
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    check-cast p1, Ln3/z/s0;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v5, Ln3/z/k1$a;

    iget-object v6, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_b
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast p1, Ln3/z/s0;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v3, Ln3/z/t0;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v5, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v6, v5

    goto/16 :goto_6

    :pswitch_c
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->m:Ljava/lang/Object;

    check-cast p1, Ln3/z/g1;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->l:Ljava/lang/Object;

    check-cast v3, Ln3/z/t0;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    check-cast v5, Ln3/z/s0;

    iget-object v6, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    check-cast v6, Lq3/a/b3/c;

    iget-object v7, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast v7, Ln3/z/k1$a;

    iget-object v8, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v8, Ln3/z/t0;

    iget-object v9, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v9, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_d
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    check-cast p1, Ln3/z/s0;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v5, Ln3/z/t0;

    iget-object v6, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v6, Ln3/z/g1$g$c$a;

    :try_start_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :pswitch_e
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    check-cast p1, Ln3/z/s0;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast v5, Ln3/z/k1$a;

    iget-object v6, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v6, Ln3/z/t0;

    iget-object v7, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v7, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_3
    iget-object p2, v5, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 5
    iget-object v5, v7, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object v5, v5, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object v5, v5, Ln3/z/g1$g;->j:Ln3/z/g1;

    iput-object v7, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v6, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-virtual {v5, p2, v6, v1}, Ln3/z/g1;->i(Ln3/z/k1;Ln3/z/t0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v2, :cond_1

    return-object v2

    :cond_1
    move-object v5, v6

    move-object v6, v7

    .line 6
    :goto_1
    invoke-interface {v3, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    move-object v3, v5

    move-object v9, v6

    move-object v5, p1

    goto :goto_3

    :catchall_0
    move-exception p1

    invoke-interface {v3, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    .line 7
    :pswitch_f
    iget-object p1, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v3, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    check-cast v3, Ln3/z/k1$a;

    iget-object v5, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    check-cast v5, Ln3/z/g1$g$c$a;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_10
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 8
    check-cast p1, Ls1/s;

    .line 9
    iget-object p1, p0, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p1, p1, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p1, p1, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 10
    iget-object v3, p1, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 11
    iget-object p1, v3, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 12
    iput-object p0, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-interface {p1, v4, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_2

    return-object v2

    :cond_2
    move-object v5, p0

    .line 13
    :goto_2
    :try_start_4
    iget-object p2, v3, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 14
    iget-object v3, p2, Ln3/z/k1;->k:Ln3/z/s0;

    .line 15
    iget-object v6, v5, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object v6, v6, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object v6, v6, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 16
    iget-object v6, v6, Ln3/z/g1;->b:Ln3/z/i3$a;

    .line 17
    invoke-virtual {p2, v6}, Ln3/z/k1;->a(Ln3/z/i3$a;)Ln3/z/l2;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 18
    invoke-interface {p1, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 19
    iget-object p1, v5, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p1, p1, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p1, p1, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 20
    iget-object p1, p1, Ln3/z/g1;->m:Ln3/z/r2;

    if-eqz p1, :cond_3

    .line 21
    invoke-interface {p1, p2}, Ln3/z/r2;->b(Ln3/z/l2;)V

    .line 22
    :cond_3
    iget-object p1, v3, Ln3/z/s0;->a:Ln3/z/r0;

    .line 23
    instance-of p1, p1, Ln3/z/r0$a;

    if-nez p1, :cond_4

    move-object p1, v3

    move-object v7, v5

    goto/16 :goto_9

    :cond_4
    move-object v9, v5

    move-object v5, v3

    move-object v3, v0

    .line 24
    :goto_3
    iget-object p1, v9, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p1, p1, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p1, p1, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_6

    .line 26
    iget-object p2, v9, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p2, p2, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p2, p2, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 27
    iget-object v7, p2, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 28
    iget-object v6, v7, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 29
    iput-object v9, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object v7, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object v6, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->l:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->m:Ljava/lang/Object;

    const/4 p2, 0x4

    iput p2, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-interface {v6, v4, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_5

    return-object v2

    :cond_5
    move-object v8, v3

    .line 30
    :goto_4
    :try_start_5
    iget-object p2, v7, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 31
    iget-object p2, p2, Ln3/z/k1;->j:Ljava/util/Map;

    .line 32
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/z/i3;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 33
    invoke-interface {v6, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v3

    move-object v3, v8

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-interface {v6, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    :cond_6
    move-object p2, v4

    move-object v6, v5

    move-object v5, v3

    .line 34
    :goto_5
    iput-object v9, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object v6, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->l:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->m:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, v1, Ln3/z/g1$g$c$a$a;->e:I

    .line 35
    invoke-virtual {p1, v5, p2, v1}, Ln3/z/g1;->h(Ln3/z/t0;Ln3/z/i3;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    return-object v2

    :cond_7
    move-object p1, v6

    move-object v6, v9

    :goto_6
    if-ne v3, v0, :cond_9

    .line 36
    iget-object p2, v6, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p2, p2, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p2, p2, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 37
    iget-object v5, p2, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 38
    iget-object v3, v5, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 39
    iput-object v6, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    const/4 p2, 0x6

    iput p2, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-interface {v3, v4, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_8

    return-object v2

    .line 40
    :cond_8
    :goto_7
    :try_start_6
    iget-object p2, v5, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 41
    iget-object p2, p2, Ln3/z/k1;->k:Ln3/z/s0;

    .line 42
    invoke-virtual {p2, v0}, Ln3/z/s0;->b(Ln3/z/t0;)Ln3/z/r0;

    move-result-object p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 43
    invoke-interface {v3, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 44
    instance-of p2, p2, Ln3/z/r0$a;

    if-nez p2, :cond_9

    .line 45
    iget-object p2, v6, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p2, p2, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p2, p2, Ln3/z/g1$g;->j:Ln3/z/g1;

    iget-object v3, v6, Ln3/z/g1$g$c$a;->b:Lq3/a/i0;

    invoke-static {p2, v3}, Ln3/z/g1;->a(Ln3/z/g1;Lq3/a/i0;)V

    goto :goto_8

    :catchall_2
    move-exception p1

    .line 46
    invoke-interface {v3, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    :cond_9
    :goto_8
    move-object v7, v6

    .line 47
    :goto_9
    sget-object v6, Ln3/z/t0;->b:Ln3/z/t0;

    .line 48
    iget-object p2, p1, Ln3/z/s0;->b:Ln3/z/r0;

    .line 49
    instance-of p2, p2, Ln3/z/r0$a;

    if-nez p2, :cond_a

    move-object v6, v7

    goto/16 :goto_10

    .line 50
    :cond_a
    iget-object p2, v7, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p2, p2, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p2, p2, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 51
    iget-object v5, p2, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 52
    iget-object p2, v5, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 53
    iput-object v7, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v6, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object p2, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    const/4 v3, 0x7

    iput v3, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-interface {p2, v4, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_b

    return-object v2

    :cond_b
    move-object v3, p2

    .line 54
    :goto_a
    :try_start_7
    iget-object p2, v5, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 55
    iget-object v5, v7, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object v5, v5, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object v5, v5, Ln3/z/g1$g;->j:Ln3/z/g1;

    iput-object v7, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v6, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    const/16 v8, 0x8

    iput v8, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-virtual {v5, p2, v6, v1}, Ln3/z/g1;->i(Ln3/z/k1;Ln3/z/t0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-ne p2, v2, :cond_c

    return-object v2

    :cond_c
    move-object v5, v6

    move-object v9, v7

    .line 56
    :goto_b
    invoke-interface {v3, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 57
    iget-object p2, v9, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p2, p2, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p2, p2, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 58
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_e

    .line 59
    iget-object v3, v9, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object v3, v3, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object v3, v3, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 60
    iget-object v7, v3, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 61
    iget-object v6, v7, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 62
    iput-object v9, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object v7, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object v6, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/g1$g$c$a$a;->l:Ljava/lang/Object;

    iput-object p2, v1, Ln3/z/g1$g$c$a$a;->m:Ljava/lang/Object;

    const/16 v3, 0x9

    iput v3, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-interface {v6, v4, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_d

    return-object v2

    :cond_d
    move-object v3, v5

    move-object v8, v3

    move-object v5, p1

    move-object p1, p2

    .line 63
    :goto_c
    :try_start_8
    iget-object p2, v7, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 64
    iget-object p2, p2, Ln3/z/k1;->j:Ljava/util/Map;

    .line 65
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/z/i3;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 66
    invoke-interface {v6, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    move-object v6, v3

    move-object v3, p2

    move-object p2, p1

    move-object p1, v5

    move-object v5, v8

    goto :goto_d

    :catchall_3
    move-exception p1

    invoke-interface {v6, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    :cond_e
    move-object v3, v4

    move-object v6, v5

    .line 67
    :goto_d
    iput-object v9, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->l:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->m:Ljava/lang/Object;

    const/16 v7, 0xa

    iput v7, v1, Ln3/z/g1$g$c$a$a;->e:I

    .line 68
    invoke-virtual {p2, v6, v3, v1}, Ln3/z/g1;->h(Ln3/z/t0;Ln3/z/i3;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_f

    return-object v2

    :cond_f
    move-object v3, v5

    move-object v6, v9

    :goto_e
    if-ne v3, v0, :cond_11

    .line 69
    iget-object p2, v6, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p2, p2, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p2, p2, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 70
    iget-object v5, p2, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 71
    iget-object v3, v5, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 72
    iput-object v6, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    const/16 p2, 0xb

    iput p2, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-interface {v3, v4, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_10

    return-object v2

    .line 73
    :cond_10
    :goto_f
    :try_start_9
    iget-object p2, v5, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 74
    iget-object p2, p2, Ln3/z/k1;->k:Ln3/z/s0;

    .line 75
    invoke-virtual {p2, v0}, Ln3/z/s0;->b(Ln3/z/t0;)Ln3/z/r0;

    move-result-object p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 76
    invoke-interface {v3, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 77
    instance-of p2, p2, Ln3/z/r0$a;

    if-nez p2, :cond_11

    .line 78
    iget-object p2, v6, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p2, p2, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p2, p2, Ln3/z/g1$g;->j:Ln3/z/g1;

    iget-object v3, v6, Ln3/z/g1$g$c$a;->b:Lq3/a/i0;

    invoke-static {p2, v3}, Ln3/z/g1;->a(Ln3/z/g1;Lq3/a/i0;)V

    goto :goto_10

    :catchall_4
    move-exception p1

    .line 79
    invoke-interface {v3, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    .line 80
    :cond_11
    :goto_10
    sget-object v5, Ln3/z/t0;->c:Ln3/z/t0;

    .line 81
    iget-object p1, p1, Ln3/z/s0;->c:Ln3/z/r0;

    .line 82
    instance-of p1, p1, Ln3/z/r0$a;

    if-nez p1, :cond_12

    goto/16 :goto_17

    .line 83
    :cond_12
    iget-object p1, v6, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p1, p1, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p1, p1, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 84
    iget-object v3, p1, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 85
    iget-object p1, v3, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 86
    iput-object v6, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    const/16 p2, 0xc

    iput p2, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-interface {p1, v4, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_13

    return-object v2

    .line 87
    :cond_13
    :goto_11
    :try_start_a
    iget-object p2, v3, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 88
    iget-object v3, v6, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object v3, v3, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object v3, v3, Ln3/z/g1$g;->j:Ln3/z/g1;

    iput-object v6, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    const/16 v7, 0xd

    iput v7, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-virtual {v3, p2, v5, v1}, Ln3/z/g1;->i(Ln3/z/k1;Ln3/z/t0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-ne p2, v2, :cond_14

    return-object v2

    :cond_14
    move-object v3, v5

    move-object v8, v6

    .line 89
    :goto_12
    invoke-interface {p1, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 90
    iget-object p1, v8, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p1, p1, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p1, p1, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 91
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_16

    .line 92
    iget-object p2, v8, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p2, p2, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p2, p2, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 93
    iget-object v6, p2, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 94
    iget-object v5, v6, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 95
    iput-object v8, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object v6, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object v5, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->l:Ljava/lang/Object;

    const/16 p2, 0xe

    iput p2, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-interface {v5, v4, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_15

    return-object v2

    :cond_15
    move-object v7, v3

    .line 96
    :goto_13
    :try_start_b
    iget-object p2, v6, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 97
    iget-object p2, p2, Ln3/z/k1;->j:Ljava/util/Map;

    .line 98
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/z/i3;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 99
    invoke-interface {v5, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v3, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_14

    :catchall_5
    move-exception p1

    invoke-interface {v5, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    :cond_16
    move-object p2, p1

    move-object p1, v3

    move-object v5, p1

    move-object v3, v4

    .line 100
    :goto_14
    iput-object v8, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->j:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->k:Ljava/lang/Object;

    iput-object v4, v1, Ln3/z/g1$g$c$a$a;->l:Ljava/lang/Object;

    const/16 v6, 0xf

    iput v6, v1, Ln3/z/g1$g$c$a$a;->e:I

    .line 101
    invoke-virtual {p2, v5, v3, v1}, Ln3/z/g1;->h(Ln3/z/t0;Ln3/z/i3;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_17

    return-object v2

    :cond_17
    move-object v3, v8

    :goto_15
    if-ne p1, v0, :cond_19

    .line 102
    iget-object p1, v3, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p1, p1, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p1, p1, Ln3/z/g1$g;->j:Ln3/z/g1;

    .line 103
    iget-object p1, p1, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 104
    iget-object p2, p1, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 105
    iput-object v3, v1, Ln3/z/g1$g$c$a$a;->g:Ljava/lang/Object;

    iput-object p1, v1, Ln3/z/g1$g$c$a$a;->h:Ljava/lang/Object;

    iput-object p2, v1, Ln3/z/g1$g$c$a$a;->i:Ljava/lang/Object;

    const/16 v5, 0x10

    iput v5, v1, Ln3/z/g1$g$c$a$a;->e:I

    invoke-interface {p2, v4, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_18

    return-object v2

    :cond_18
    move-object v2, p1

    move-object p1, p2

    move-object v1, v3

    .line 106
    :goto_16
    :try_start_c
    iget-object p2, v2, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 107
    iget-object p2, p2, Ln3/z/k1;->k:Ln3/z/s0;

    .line 108
    invoke-virtual {p2, v0}, Ln3/z/s0;->b(Ln3/z/t0;)Ln3/z/r0;

    move-result-object p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 109
    invoke-interface {p1, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 110
    instance-of p1, p2, Ln3/z/r0$a;

    if-nez p1, :cond_19

    .line 111
    iget-object p1, v1, Ln3/z/g1$g$c$a;->a:Ln3/z/g1$g$c;

    iget-object p1, p1, Ln3/z/g1$g$c;->g:Ln3/z/g1$g;

    iget-object p1, p1, Ln3/z/g1$g;->j:Ln3/z/g1;

    iget-object p2, v1, Ln3/z/g1$g$c$a;->b:Lq3/a/i0;

    invoke-static {p1, p2}, Ln3/z/g1;->a(Ln3/z/g1;Lq3/a/i0;)V

    goto :goto_17

    :catchall_6
    move-exception p2

    .line 112
    invoke-interface {p1, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p2

    .line 113
    :cond_19
    :goto_17
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_7
    move-exception p2

    .line 114
    invoke-interface {p1, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p2

    :catchall_8
    move-exception p1

    .line 115
    invoke-interface {v3, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1

    :catchall_9
    move-exception p2

    .line 116
    invoke-interface {p1, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
