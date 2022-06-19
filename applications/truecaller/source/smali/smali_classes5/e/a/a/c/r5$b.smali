.class public final Le/a/a/c/r5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/r5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/a/c/r5;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/c/r5;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 3
    iput p2, p0, Le/a/a/c/r5$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 61
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/c/r5$b;->b:I

    const-string v2, "conversation"

    const-string v3, "Cannot return null from a non-@Nullable @Provides method"

    const-string v4, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    move-object/from16 v1, p0

    iget v2, v1, Le/a/a/c/r5$b;->b:I

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 4
    new-instance v2, Le/a/a/c/e6;

    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/a/c/n5;

    iget-object v3, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/s4;

    iget-object v3, v1, Le/a/a/c/r5;->A:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/h3;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v9

    .line 5
    invoke-static {v9, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v3, v1, Le/a/a/c/r5;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/c/l5;

    invoke-virtual {v1}, Le/a/a/c/r5;->b()Le/a/a/c/u3;

    move-result-object v11

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Le/a/a/c/e6;-><init>(Le/a/a/c/n5;Le/a/a/c/s4;Le/a/a/c/h3;Le/a/a/k/t;Le/a/a/c/l5;Le/a/a/c/t3;)V

    return-object v2

    .line 7
    :pswitch_1
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 8
    new-instance v2, Le/a/a/c/t6;

    invoke-virtual {v1}, Le/a/a/c/r5;->d()Le/a/r2/j;

    move-result-object v6

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->U6()Le/a/r2/f;

    move-result-object v7

    .line 9
    invoke-static {v7, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v8

    .line 11
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/c/n5;

    iget-object v3, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/c/s4;

    iget-object v3, v1, Le/a/a/c/r5;->A:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/h3;

    invoke-virtual {v1}, Le/a/a/c/r5;->b()Le/a/a/c/u3;

    move-result-object v12

    iget-object v3, v1, Le/a/a/c/r5;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v14

    .line 13
    invoke-static {v14, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v15

    .line 15
    invoke-static {v15, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v2

    .line 16
    invoke-direct/range {v5 .. v15}, Le/a/a/c/t6;-><init>(Le/a/r2/j;Le/a/r2/f;Le/a/a/i0;Le/a/a/c/n5;Le/a/a/c/s4;Le/a/a/c/h3;Le/a/a/c/t3;Le/a/a/c/l5;Le/a/o5/b0;Le/a/u3/g;)V

    return-object v2

    .line 17
    :pswitch_2
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 18
    new-instance v2, Le/a/a/c/o8/e;

    iget-object v3, v1, Le/a/a/c/r5;->p:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/c/o8/b;

    iget-object v5, v1, Le/a/a/c/r5;->p:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/c/o8/a;

    iget-object v6, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v6

    .line 19
    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v1

    .line 21
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    invoke-direct {v2, v3, v5, v6, v1}, Le/a/a/c/o8/e;-><init>(Le/a/a/c/o8/b;Le/a/a/c/o8/a;Le/a/o5/f0;Le/a/a/k/a/a/q;)V

    return-object v2

    .line 23
    :pswitch_3
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 24
    iget-object v1, v1, Le/a/a/c/r5;->c:Le/a/t/a/d;

    .line 25
    invoke-interface {v1}, Le/a/t/a/d;->c3()Le/a/t/a/b;

    move-result-object v1

    .line 26
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 27
    :pswitch_4
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 28
    new-instance v2, Le/a/a/c/b8;

    iget-object v1, v1, Le/a/a/c/r5;->v:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/f4;

    invoke-direct {v2, v1}, Le/a/a/c/b8;-><init>(Le/a/a/c/f4;)V

    return-object v2

    .line 29
    :pswitch_5
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 30
    new-instance v2, Le/a/a/c/a3;

    iget-object v3, v1, Le/a/a/c/r5;->v:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/c/f4;

    invoke-virtual {v1}, Le/a/a/c/r5;->c()Le/a/a/i1/c;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/a/c/a3;-><init>(Le/a/a/c/f4;Le/a/a/i1/b;)V

    return-object v2

    .line 31
    :pswitch_6
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 32
    iget-object v1, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    invoke-static {v1}, Le/a/c/p/a;->l2(Le/a/a/c/a5;)Le/a/p5/h0;

    move-result-object v1

    .line 33
    new-instance v2, Le/a/b0/a/b/a;

    invoke-direct {v2, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    return-object v2

    .line 34
    :pswitch_7
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 35
    new-instance v2, Le/a/t/a/a/i;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i3()Le/a/t/a/a/t;

    move-result-object v3

    .line 36
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v1

    .line 38
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    invoke-direct {v2, v3, v1}, Le/a/t/a/a/i;-><init>(Le/a/t/a/a/t;Le/a/p5/u;)V

    return-object v2

    .line 40
    :pswitch_8
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 41
    new-instance v2, Le/a/a/c/x5;

    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 42
    iget-boolean v6, v3, Le/a/a/c/a5;->j:Z

    .line 43
    iget-object v3, v1, Le/a/a/c/r5;->v:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/f4;

    invoke-virtual {v1}, Le/a/a/c/r5;->a()Le/a/a/c/s3;

    move-result-object v8

    iget-object v3, v1, Le/a/a/c/r5;->n:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/c/u5;

    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v10

    .line 44
    invoke-static {v10, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v2

    .line 45
    invoke-direct/range {v5 .. v10}, Le/a/a/c/x5;-><init>(ZLe/a/a/c/f4;Le/a/a/c/r3;Le/a/a/c/u5;Le/a/a/i0;)V

    return-object v2

    .line 46
    :pswitch_9
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 47
    new-instance v2, Le/a/a/c/k/a/o;

    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/r5;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v9

    .line 48
    invoke-static {v9, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iget-object v3, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/c/k/a/j$b;

    iget-object v3, v1, Le/a/a/c/r5;->A:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/k/a/j$a;

    iget-object v3, v1, Le/a/a/c/r5;->U:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Le/a/a/c/t7;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v13

    .line 50
    invoke-static {v13, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v14

    .line 52
    invoke-static {v14, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v15

    .line 54
    invoke-static {v15, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v2

    .line 55
    invoke-direct/range {v5 .. v15}, Le/a/a/c/k/a/o;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/a/c/t7;Le/a/o5/b0;Le/a/u3/g;Le/a/o5/f0;)V

    return-object v2

    .line 56
    :pswitch_a
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 57
    new-instance v2, Le/a/a/c/k/a/g;

    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/r5;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v9

    .line 58
    invoke-static {v9, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    iget-object v3, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/c/k/a/j$b;

    iget-object v3, v1, Le/a/a/c/r5;->A:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/k/a/j$a;

    iget-object v3, v1, Le/a/a/c/r5;->U:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Le/a/a/c/t7;

    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v13

    .line 60
    invoke-static {v13, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v2

    .line 61
    invoke-direct/range {v5 .. v13}, Le/a/a/c/k/a/g;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/a/c/t7;Le/a/u3/g;)V

    return-object v2

    .line 62
    :pswitch_b
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 63
    iget-object v2, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    invoke-static {v2}, Le/a/c/p/a;->l2(Le/a/a/c/a5;)Le/a/p5/h0;

    move-result-object v2

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v3

    .line 64
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->u3()Le/a/e4/b0;

    move-result-object v1

    .line 66
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    new-instance v4, Le/a/a/c/k6;

    invoke-interface {v3}, Le/a/e4/p;->h()Z

    move-result v3

    invoke-direct {v4, v2, v3, v1}, Le/a/a/c/k6;-><init>(Le/a/p5/h0;ZLe/a/e4/b0;)V

    return-object v4

    .line 68
    :pswitch_c
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 69
    new-instance v2, Le/a/a/c/k/a/c;

    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/r5;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v9

    .line 70
    invoke-static {v9, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iget-object v3, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/c/k/a/j$b;

    iget-object v3, v1, Le/a/a/c/r5;->A:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/k/a/j$a;

    iget-object v3, v1, Le/a/a/c/r5;->U:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Le/a/a/c/t7;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v13

    .line 72
    invoke-static {v13, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v14

    .line 74
    invoke-static {v14, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iget-object v1, v1, Le/a/a/c/r5;->n0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Le/a/a/c/j6;

    move-object v5, v2

    invoke-direct/range {v5 .. v15}, Le/a/a/c/k/a/c;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/a/c/t7;Le/a/o5/b0;Le/a/u3/g;Le/a/a/c/j6;)V

    return-object v2

    .line 76
    :pswitch_d
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 77
    iget-object v2, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/c/s4;

    iget-object v1, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/w3;

    .line 78
    new-instance v3, Le/a/a/c/k/d/b;

    invoke-direct {v3, v2, v1}, Le/a/a/c/k/d/b;-><init>(Le/a/a/c/m6;Le/a/a/c/w3;)V

    return-object v3

    .line 79
    :pswitch_e
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 80
    iget-object v2, v1, Le/a/a/c/r5;->k:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/c/c5;

    iget-object v1, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/w3;

    .line 81
    new-instance v3, Le/a/a/c/k/c/d;

    invoke-direct {v3, v2, v1}, Le/a/a/c/k/c/d;-><init>(Le/a/a/c/c5;Le/a/a/c/w3;)V

    return-object v3

    .line 82
    :pswitch_f
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 83
    new-instance v2, Le/a/a/c/k/a/q;

    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/r5;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v8

    .line 84
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v3, v1, Le/a/a/c/r5;->U:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/c/t7;

    iget-object v3, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/k/a/j$b;

    iget-object v3, v1, Le/a/a/c/r5;->A:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Le/a/a/c/k/a/j$a;

    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v13

    .line 86
    invoke-static {v13, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v2

    .line 87
    invoke-direct/range {v5 .. v13}, Le/a/a/c/k/a/q;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/k/t;Le/a/a/c/t7;Le/a/a/c/w3;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/u3/g;)V

    return-object v2

    .line 88
    :pswitch_10
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 89
    new-instance v2, Le/a/a/c/k/a/m;

    move-object v5, v2

    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/r5;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v3

    move-object v9, v3

    .line 90
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v3, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/c/k/a/j$b;

    iget-object v3, v1, Le/a/a/c/r5;->A:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/k/a/j$a;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b7()Le/a/o5/m;

    move-result-object v3

    move-object v12, v3

    .line 92
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v3

    move-object v13, v3

    .line 94
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v1}, Le/a/a/c/r5;->c()Le/a/a/i1/c;

    move-result-object v14

    iget-object v3, v1, Le/a/a/c/r5;->U:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Le/a/a/c/t7;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n0()Le/a/a/k/a/i1;

    move-result-object v3

    move-object/from16 v16, v3

    .line 96
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object/from16 v17, v3

    .line 98
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b4()Le/a/a/c/a/n;

    move-result-object v3

    move-object/from16 v18, v3

    .line 100
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S5()Le/a/a/c/a/g;

    move-result-object v3

    move-object/from16 v19, v3

    .line 102
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j1()Le/a/a/c/a/o;

    move-result-object v3

    move-object/from16 v20, v3

    .line 104
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v3

    move-object/from16 v21, v3

    .line 106
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    iget-object v3, v1, Le/a/a/c/r5;->b0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Le/a/a/c/k/a/h;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    move-object/from16 v23, v3

    .line 108
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    iget-object v3, v1, Le/a/a/c/r5;->c0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Le/a/c/a/c/h/j;

    iget-object v1, v1, Le/a/a/c/r5;->e0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Le/a/a/i1/f;

    invoke-direct/range {v5 .. v25}, Le/a/a/c/k/a/m;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/o5/m;Le/a/o5/b0;Le/a/a/i1/b;Le/a/a/c/t7;Le/a/a/k/a/i1;Le/a/u3/g;Le/a/a/c/a/n;Le/a/a/c/a/g;Le/a/a/c/a/o;Le/a/c/b/j;Le/a/a/c/k/a/h;Le/a/o5/f0;Le/a/c/a/c/h/j;Le/a/a/i1/f;)V

    return-object v2

    .line 110
    :pswitch_11
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 111
    new-instance v3, Le/a/a/i1/g;

    .line 112
    iget-object v5, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v8

    .line 113
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    iget-object v5, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v9

    .line 115
    invoke-static {v9, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-object v5, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v10

    .line 117
    invoke-static {v10, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    iget-object v5, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v11

    .line 119
    invoke-static {v11, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v5, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v12

    .line 121
    invoke-static {v12, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v5, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v13

    .line 123
    invoke-static {v13, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v5, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v14

    .line 125
    invoke-static {v14, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iget-object v5, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->q3()Le/m/f/a/j;

    move-result-object v15

    .line 127
    invoke-static {v15, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    new-instance v5, Le/a/f4/g/g;

    const-string v7, "conversation"

    move-object v6, v5

    invoke-direct/range {v6 .. v15}, Le/a/f4/g/g;-><init>(Ljava/lang/String;Landroid/content/Context;Le/a/r2/f;Le/a/h0/j;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;Le/a/g5/p;Le/m/f/a/j;)V

    .line 129
    iget-object v6, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v6

    .line 130
    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    new-instance v7, Lcom/truecaller/network/search/BulkSearcherImpl;

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-direct {v7, v6, v8, v2, v9}, Lcom/truecaller/network/search/BulkSearcherImpl;-><init>(Landroid/content/Context;ILjava/lang/String;Le/a/f4/g/j$a;)V

    .line 132
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->A6()Le/a/w4/d;

    move-result-object v1

    .line 133
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    invoke-direct {v3, v5, v7, v1}, Le/a/a/i1/g;-><init>(Le/a/f4/g/f;Le/a/f4/g/j;Le/a/w4/d;)V

    return-object v3

    .line 135
    :pswitch_12
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 136
    iget-object v1, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 137
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v1, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;

    invoke-direct {v1}, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;-><init>()V

    return-object v1

    .line 139
    :pswitch_13
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 140
    new-instance v2, Le/a/a/c/k/a/i;

    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v1

    .line 141
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    invoke-direct {v2, v1}, Le/a/a/c/k/a/i;-><init>(Le/a/o5/b0;)V

    return-object v2

    .line 143
    :pswitch_14
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 144
    new-instance v2, Le/a/a/c/k/a/e;

    move-object v5, v2

    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/r5;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v3

    move-object v9, v3

    .line 145
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    iget-object v3, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/c/k/a/j$b;

    iget-object v3, v1, Le/a/a/c/r5;->A:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/k/a/j$a;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b7()Le/a/o5/m;

    move-result-object v3

    move-object v12, v3

    .line 147
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v3

    move-object v13, v3

    .line 149
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v1}, Le/a/a/c/r5;->c()Le/a/a/i1/c;

    move-result-object v14

    iget-object v3, v1, Le/a/a/c/r5;->U:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Le/a/a/c/t7;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n0()Le/a/a/k/a/i1;

    move-result-object v3

    move-object/from16 v16, v3

    .line 151
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object/from16 v17, v3

    .line 153
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b4()Le/a/a/c/a/n;

    move-result-object v3

    move-object/from16 v18, v3

    .line 155
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S5()Le/a/a/c/a/g;

    move-result-object v3

    move-object/from16 v19, v3

    .line 157
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j1()Le/a/a/c/a/o;

    move-result-object v3

    move-object/from16 v20, v3

    .line 159
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v3

    move-object/from16 v21, v3

    .line 161
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iget-object v3, v1, Le/a/a/c/r5;->b0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Le/a/a/c/k/a/h;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    move-object/from16 v23, v3

    .line 163
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    iget-object v3, v1, Le/a/a/c/r5;->c0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Le/a/c/a/c/h/j;

    iget-object v3, v1, Le/a/a/c/r5;->e0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Le/a/a/i1/f;

    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->n()Le/a/c/e/c;

    move-result-object v1

    move-object/from16 v26, v1

    .line 165
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    invoke-direct/range {v5 .. v26}, Le/a/a/c/k/a/e;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/o5/m;Le/a/o5/b0;Le/a/a/i1/b;Le/a/a/c/t7;Le/a/a/k/a/i1;Le/a/u3/g;Le/a/a/c/a/n;Le/a/a/c/a/g;Le/a/a/c/a/o;Le/a/c/b/j;Le/a/a/c/k/a/h;Le/a/o5/f0;Le/a/c/a/c/h/j;Le/a/a/i1/f;Le/a/c/e/c;)V

    return-object v2

    .line 167
    :pswitch_15
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 168
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v1

    .line 169
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    new-instance v2, Le/a/a/c/l8/j;

    invoke-direct {v2, v1}, Le/a/a/c/l8/j;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 171
    :pswitch_16
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 172
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v1

    .line 173
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "gallery_thread"

    .line 174
    invoke-interface {v1, v2}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v1

    .line 175
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 176
    :pswitch_17
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 177
    iget-object v2, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    iget-object v4, v1, Le/a/a/c/r5;->X:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/r2/j;

    iget-object v1, v1, Le/a/a/c/r5;->Y:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/l8/i;

    .line 178
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-class v2, Le/a/a/c/l8/i;

    invoke-interface {v4, v2, v1}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 180
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 181
    :pswitch_18
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 182
    new-instance v2, Le/a/a/c/m7;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v3

    .line 183
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->t6()Le/a/k3/h;

    move-result-object v1

    .line 185
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    invoke-direct {v2, v3, v1}, Le/a/a/c/m7;-><init>(Le/a/p5/c0;Le/a/k3/h;)V

    return-object v2

    .line 187
    :pswitch_19
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 188
    iget-object v1, v1, Le/a/a/c/r5;->T:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/r8/b;

    .line 189
    new-instance v2, Le/a/a/c/u7;

    invoke-direct {v2, v1}, Le/a/a/c/u7;-><init>(Le/a/a/c/r8/b;)V

    return-object v2

    .line 190
    :pswitch_1a
    new-instance v1, Le/a/a/c/r8/b;

    invoke-direct {v1}, Le/a/a/c/r8/b;-><init>()V

    return-object v1

    .line 191
    :pswitch_1b
    new-instance v1, Le/a/a/c/y7;

    invoke-direct {v1}, Le/a/a/c/y7;-><init>()V

    return-object v1

    .line 192
    :pswitch_1c
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 193
    new-instance v2, Le/a/a/c/i8;

    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 194
    iget-boolean v6, v3, Le/a/a/c/a5;->k:Z

    .line 195
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v7

    .line 196
    invoke-static {v7, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v8

    .line 198
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    iget-object v3, v1, Le/a/a/c/r5;->P:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/c/x7;

    iget-object v1, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Le/a/a/c/w3;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Le/a/a/c/i8;-><init>(ZLs1/w/f;Ls1/w/f;Le/a/a/c/x7;Le/a/a/c/w3;)V

    return-object v2

    .line 200
    :pswitch_1d
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 201
    iget-object v1, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 202
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 204
    new-instance v2, Lq3/a/g1;

    invoke-direct {v2, v1}, Lq3/a/g1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v2

    .line 205
    :pswitch_1e
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 206
    new-instance v2, Le/a/a/c/m4;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->y0()Le/a/a/v0/a;

    move-result-object v6

    .line 207
    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v7

    .line 209
    invoke-static {v7, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    iget-object v3, v1, Le/a/a/c/r5;->n:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/u5;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v9

    .line 211
    invoke-static {v9, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 212
    iget-object v3, v1, Le/a/a/c/r5;->L:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v11

    .line 213
    invoke-static {v11, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v2

    .line 214
    invoke-direct/range {v5 .. v11}, Le/a/a/c/m4;-><init>(Le/a/a/v0/a;Le/a/u3/g;Le/a/a/c/u5;Ls1/w/f;Lo3/a;Le/a/q2/a;)V

    return-object v2

    .line 215
    :pswitch_1f
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 216
    new-instance v2, Le/a/a/c/c4;

    move-object v5, v2

    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/r5;->v:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/f4;

    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 217
    iget-boolean v8, v3, Le/a/a/c/a5;->i:Z

    .line 218
    iget-boolean v9, v3, Le/a/a/c/a5;->j:Z

    .line 219
    iget-boolean v10, v3, Le/a/a/c/a5;->k:Z

    .line 220
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object v11, v3

    .line 221
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    iget-object v3, v1, Le/a/a/c/r5;->k:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->t5()Le/a/a/k/a/p0;

    move-result-object v3

    move-object v13, v3

    .line 223
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    invoke-static {v3}, Le/a/c/p/a;->l2(Le/a/a/c/a5;)Le/a/p5/h0;

    move-result-object v14

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v3

    move-object v15, v3

    .line 225
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->P3()Le/a/l4/c;

    move-result-object v3

    move-object/from16 v16, v3

    .line 227
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 228
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v17, v3

    .line 229
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    invoke-virtual {v1}, Le/a/a/c/r5;->d()Le/a/r2/j;

    move-result-object v18

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J3()Le/a/z2/a;

    move-result-object v3

    move-object/from16 v19, v3

    .line 231
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v3

    move-object/from16 v20, v3

    .line 233
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    move-object/from16 v21, v3

    .line 235
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    move-object/from16 v22, v3

    .line 237
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v1

    move-object/from16 v23, v1

    .line 239
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    invoke-direct/range {v5 .. v23}, Le/a/a/c/c4;-><init>(Le/a/a/c/m5;Le/a/a/c/f4;ZZZLe/a/u3/g;Lo3/a;Le/a/a/k/a/p0;Le/a/p5/h0;Le/a/h0/m;Le/a/l4/c;Le/a/r2/f;Le/a/r2/j;Le/a/z2/a;Le/a/a/k/a/a/q;Le/a/o5/f0;Ls1/w/f;Le/a/p5/c;)V

    return-object v2

    .line 241
    :pswitch_20
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 242
    new-instance v2, Le/a/a/z0/a;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v3

    .line 243
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object v1

    .line 245
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    invoke-direct {v2, v3, v1}, Le/a/a/z0/a;-><init>(Landroid/content/Context;Le/a/h4/n;)V

    return-object v2

    .line 247
    :pswitch_21
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 248
    iget-object v2, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v2

    .line 249
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->D2()Ls1/w/f;

    move-result-object v1

    .line 251
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    new-instance v3, Le/a/b0/a/a0/a;

    const v4, 0x7f070363

    invoke-direct {v3, v2, v1, v4}, Le/a/b0/a/a0/a;-><init>(Landroid/content/Context;Ls1/w/f;I)V

    return-object v3

    .line 253
    :pswitch_22
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 254
    new-instance v2, Le/a/a/k/a/v0;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v6

    .line 255
    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    iget-object v3, v1, Le/a/a/c/r5;->f:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v8

    .line 257
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->E()Le/a/b0/q/l0;

    move-result-object v9

    .line 259
    invoke-static {v9, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v10

    .line 261
    invoke-static {v10, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->O1()Le/a/i4/e;

    move-result-object v11

    .line 263
    invoke-static {v11, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 264
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->P2()Le/a/i4/q;

    move-result-object v12

    .line 265
    invoke-static {v12, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v13

    .line 267
    invoke-static {v13, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v14

    .line 269
    invoke-static {v14, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v15

    .line 271
    invoke-static {v15, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    iget-object v1, v1, Le/a/a/c/r5;->B:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v16

    move-object v5, v2

    invoke-direct/range {v5 .. v16}, Le/a/a/k/a/v0;-><init>(Le/a/u3/g;Lo3/a;Le/a/o5/b0;Le/a/b0/q/l0;Landroid/content/Context;Le/a/i4/e;Le/a/i4/q;Le/a/o5/f0;Le/a/a/i0;Le/a/q2/a;Lo3/a;)V

    return-object v2

    .line 273
    :pswitch_23
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 274
    new-instance v2, Le/a/a/c/i3;

    move-object v5, v2

    invoke-virtual {v1}, Le/a/a/c/r5;->d()Le/a/r2/j;

    move-result-object v6

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    move-object v7, v3

    .line 275
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v3

    move-object v8, v3

    .line 277
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 279
    iget v9, v3, Le/a/a/c/a5;->e:I

    .line 280
    iget-object v3, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/n5;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object v12, v3

    .line 281
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    move-object v13, v3

    .line 283
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v3

    move-object v14, v3

    .line 285
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    invoke-static {v3}, Le/a/c/p/a;->l2(Le/a/a/c/a5;)Le/a/p5/h0;

    move-result-object v15

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k4()Le/a/b0/q/b;

    move-result-object v3

    move-object/from16 v16, v3

    .line 287
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->K()Le/a/h5/y;

    move-result-object v3

    move-object/from16 v17, v3

    .line 289
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 290
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v3

    move-object/from16 v18, v3

    .line 291
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 292
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->F0()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v19, v3

    .line 293
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    iget-object v3, v1, Le/a/a/c/r5;->e:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v20

    invoke-virtual {v1}, Le/a/a/c/r5;->a()Le/a/a/c/s3;

    move-result-object v21

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S1()Le/a/o5/u0;

    move-result-object v3

    move-object/from16 v22, v3

    .line 295
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v3

    move-object/from16 v23, v3

    .line 297
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    iget-object v3, v1, Le/a/a/c/r5;->l:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Le/a/a/x0/a;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v3

    move-object/from16 v25, v3

    .line 299
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    iget-object v3, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v3

    move-object/from16 v27, v3

    .line 301
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->T6()Le/a/a/w0/a;

    move-result-object v3

    move-object/from16 v28, v3

    .line 303
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    iget-object v3, v1, Le/a/a/c/r5;->u:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v29

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->a2()Le/a/a/c/h7;

    move-result-object v3

    move-object/from16 v30, v3

    .line 305
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->B6()Le/a/a/g1/b;

    move-result-object v3

    move-object/from16 v31, v3

    .line 307
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 308
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v3

    move-object/from16 v32, v3

    .line 309
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v3

    move-object/from16 v33, v3

    .line 311
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->p0()Le/a/c/i/m/a;

    move-result-object v3

    move-object/from16 v34, v3

    .line 313
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    iget-object v1, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 315
    iget-boolean v1, v1, Le/a/a/c/a5;->l:Z

    move/from16 v35, v1

    .line 316
    invoke-direct/range {v5 .. v35}, Le/a/a/c/i3;-><init>(Le/a/r2/j;Ls1/w/f;Ls1/w/f;ILo3/a;Le/a/a/c/n5;Le/a/u3/g;Le/a/o5/f0;Le/a/a/k/t;Le/a/p5/h0;Le/a/b0/q/b;Le/a/h5/y;Le/a/h5/w;Le/a/r2/f;Lo3/a;Le/a/a/c/r3;Le/a/o5/u0;Le/a/p5/g;Le/a/a/x0/a;Le/a/c/b/j;Le/a/a/c/w3;Le/a/o5/b0;Le/a/a/w0/a;Lo3/a;Le/a/a/c/h7;Le/a/a/g1/b;Le/a/a/i0;Le/a/p5/u;Le/a/c/i/m/a;Z)V

    return-object v2

    .line 317
    :pswitch_24
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 318
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    .line 319
    invoke-interface {v1}, Le/a/j2;->W2()Le/a/a/k/a/a/d;

    move-result-object v1

    .line 320
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 321
    :pswitch_25
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 322
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v1

    .line 323
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    new-instance v2, Le/a/a/c/s8/h;

    invoke-direct {v2, v1}, Le/a/a/c/s8/h;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 325
    :pswitch_26
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 326
    new-instance v2, Le/a/a/c/t4;

    move-object v5, v2

    invoke-virtual {v1}, Le/a/a/c/r5;->d()Le/a/r2/j;

    move-result-object v6

    iget-object v7, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v8

    move-object v7, v8

    .line 327
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    iget-object v10, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 329
    iget v8, v10, Le/a/a/c/a5;->e:I

    .line 330
    iget-object v9, v10, Le/a/a/c/a5;->d:Ljava/lang/Long;

    .line 331
    iget-boolean v11, v10, Le/a/a/c/a5;->i:Z

    .line 332
    iget-boolean v12, v10, Le/a/a/c/a5;->k:Z

    .line 333
    iget-boolean v13, v10, Le/a/a/c/a5;->j:Z

    .line 334
    iget-object v10, v10, Le/a/a/c/a5;->g:Ljava/lang/String;

    move-object v14, v10

    .line 335
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    iget-object v3, v1, Le/a/a/c/r5;->k:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v15

    iget-object v3, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Le/a/a/c/n5;

    iget-object v3, v1, Le/a/a/c/r5;->f:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v18

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->K()Le/a/h5/y;

    move-result-object v3

    move-object/from16 v19, v3

    .line 337
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 338
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v3

    move-object/from16 v20, v3

    .line 339
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    new-instance v3, Le/a/a/g/k0/b;

    move-object/from16 v21, v3

    iget-object v10, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v10}, Le/a/j2;->k4()Le/a/b0/q/b;

    move-result-object v10

    .line 341
    invoke-static {v10, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    invoke-direct {v3, v10}, Le/a/a/g/k0/b;-><init>(Le/a/b0/q/b;)V

    .line 343
    new-instance v3, Le/a/a/c/q5;

    move-object/from16 v22, v3

    iget-object v10, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v10}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v10

    .line 344
    invoke-static {v10, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v0

    .line 346
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    invoke-direct {v3, v10, v0}, Le/a/a/c/q5;-><init>(Landroid/content/Context;Ls1/w/f;)V

    .line 348
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v0

    move-object/from16 v23, v0

    .line 349
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->d3()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v24, v0

    .line 351
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 352
    iget-object v0, v1, Le/a/a/c/r5;->w:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Le/a/a/c/s8/j;

    invoke-virtual {v1}, Le/a/a/c/r5;->a()Le/a/a/c/s3;

    move-result-object v26

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->U6()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v27, v0

    .line 353
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 354
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    move-object/from16 v28, v0

    .line 355
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    move-object/from16 v29, v0

    .line 357
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b4()Le/a/a/c/a/n;

    move-result-object v0

    move-object/from16 v30, v0

    .line 359
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S5()Le/a/a/c/a/g;

    move-result-object v0

    move-object/from16 v31, v0

    .line 361
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->j1()Le/a/a/c/a/o;

    move-result-object v0

    move-object/from16 v32, v0

    .line 363
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    iget-object v0, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    invoke-static {v0}, Le/a/c/p/a;->l2(Le/a/a/c/a5;)Le/a/p5/h0;

    move-result-object v33

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v0

    move-object/from16 v34, v0

    .line 365
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v0

    move-object/from16 v35, v0

    .line 367
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    iget-object v0, v1, Le/a/a/c/r5;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Le/a/a/c/m8/a;

    iget-object v0, v1, Le/a/a/c/r5;->e:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v37

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v38, v0

    .line 369
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    iget-object v0, v1, Le/a/a/c/r5;->x:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v39

    iget-object v0, v1, Le/a/a/c/r5;->A:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v40, v0

    check-cast v40, Le/a/a/c/h3;

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object v0

    move-object/from16 v41, v0

    .line 371
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object v0

    move-object/from16 v42, v0

    .line 373
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 374
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->D4()Le/a/d4/a;

    move-result-object v0

    move-object/from16 v43, v0

    .line 375
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    iget-object v0, v1, Le/a/a/c/r5;->u:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v44

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->a2()Le/a/a/c/h7;

    move-result-object v0

    move-object/from16 v45, v0

    .line 377
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 378
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v0

    move-object/from16 v46, v0

    .line 379
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 380
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v0

    move-object/from16 v47, v0

    .line 381
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k4()Le/a/b0/q/b;

    move-result-object v0

    move-object/from16 v48, v0

    .line 383
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    iget-object v0, v1, Le/a/a/c/r5;->D:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v49, v0

    check-cast v49, Le/a/a/k/a/r0;

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->R6()Le/a/k3/j/b;

    move-result-object v0

    move-object/from16 v50, v0

    .line 385
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 386
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->n()Le/a/c/e/c;

    move-result-object v0

    move-object/from16 v51, v0

    .line 387
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 388
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->O4()Le/a/c/c0/o;

    move-result-object v0

    move-object/from16 v52, v0

    .line 389
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    iget-object v0, v1, Le/a/a/c/r5;->E:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v53

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->p7()Le/a/c/j/b;

    move-result-object v0

    move-object/from16 v54, v0

    .line 391
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 392
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->W4()Le/a/a/e/m;

    move-result-object v0

    move-object/from16 v55, v0

    .line 393
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v10, 0x64

    .line 394
    invoke-direct/range {v5 .. v55}, Le/a/a/c/t4;-><init>(Le/a/r2/j;Ls1/w/f;ILjava/lang/Long;IZZZLjava/lang/String;Lo3/a;Le/a/a/c/w3;Le/a/a/c/n5;Lo3/a;Le/a/h5/y;Le/a/h5/w;Le/a/a/g/k0/b;Le/a/a/c/p5;Le/a/a/k/t;Le/a/r2/f;Le/a/a/c/s8/j;Le/a/a/c/r3;Le/a/r2/f;Le/a/a/i0;Le/a/u3/g;Le/a/a/c/a/n;Le/a/a/c/a/g;Le/a/a/c/a/o;Le/a/p5/h0;Le/a/o5/f0;Le/a/p5/c;Le/a/a/c/m8/a;Lo3/a;Le/a/r2/f;Lo3/a;Le/a/a/c/h3;Le/a/d/c0/s1;Le/a/y/c/b;Le/a/d4/a;Lo3/a;Le/a/a/c/h7;Ls1/w/f;Le/a/c/b/j;Le/a/b0/q/b;Le/a/a/k/a/r0;Le/a/k3/j/b;Le/a/c/e/c;Le/a/c/c0/o;Lo3/a;Le/a/c/j/b;Le/a/a/e/m;)V

    return-object v2

    .line 395
    :pswitch_27
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 396
    new-instance v2, Le/a/a/c/p4;

    move-object v5, v2

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    move-object v6, v3

    .line 397
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 398
    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/s4;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object v3

    move-object v9, v3

    .line 399
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 400
    iget-object v3, v1, Le/a/a/c/r5;->k:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    invoke-virtual {v1}, Le/a/a/c/r5;->a()Le/a/a/c/s3;

    move-result-object v11

    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    invoke-static {v3}, Le/a/c/p/a;->l2(Le/a/a/c/a5;)Le/a/p5/h0;

    move-result-object v12

    iget-object v3, v1, Le/a/a/c/r5;->f:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    invoke-virtual {v1}, Le/a/a/c/r5;->d()Le/a/r2/j;

    move-result-object v14

    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 401
    iget-boolean v15, v3, Le/a/a/c/a5;->i:Z

    .line 402
    iget-boolean v0, v3, Le/a/a/c/a5;->j:Z

    move/from16 v16, v0

    .line 403
    iget-boolean v0, v3, Le/a/a/c/a5;->k:Z

    move/from16 v17, v0

    .line 404
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    move-object/from16 v18, v0

    .line 405
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v19, v0

    .line 407
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 408
    iget-object v0, v1, Le/a/a/c/r5;->H:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Le/a/a/c/b4;

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v0

    move-object/from16 v21, v0

    .line 409
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->N()Le/a/c/i/e/c;

    move-result-object v0

    move-object/from16 v22, v0

    .line 411
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 412
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b4()Le/a/a/c/a/n;

    move-result-object v0

    move-object/from16 v23, v0

    .line 413
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 414
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S5()Le/a/a/c/a/g;

    move-result-object v0

    move-object/from16 v24, v0

    .line 415
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 416
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->Y()Le/a/b0/e/r/a;

    move-result-object v0

    move-object/from16 v25, v0

    .line 417
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 418
    iget-object v0, v1, Le/a/a/c/r5;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Le/a/a/c/f4;

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    move-object/from16 v27, v0

    .line 419
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 420
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    move-object/from16 v28, v0

    .line 421
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 422
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o5()Z

    move-result v29

    invoke-virtual {v1}, Le/a/a/c/r5;->c()Le/a/a/i1/c;

    move-result-object v30

    invoke-direct/range {v5 .. v30}, Le/a/a/c/p4;-><init>(Ls1/w/f;Le/a/a/c/m5;Le/a/a/c/s4;Le/a/d/c0/s1;Lo3/a;Le/a/a/c/r3;Le/a/p5/h0;Lo3/a;Le/a/r2/j;ZZZLe/a/u3/g;Le/a/r2/f;Le/a/a/c/b4;Le/a/c/b/j;Le/a/c/i/e/c;Le/a/a/c/a/n;Le/a/a/c/a/g;Le/a/b0/e/r/a;Le/a/a/c/f4;Le/a/q2/a;Le/a/a/i0;ZLe/a/a/i1/b;)V

    return-object v2

    .line 423
    :pswitch_28
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 424
    new-instance v2, Le/a/a/c/s7;

    iget-object v3, v1, Le/a/a/c/r5;->v:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/a/c/f4;

    iget-object v3, v1, Le/a/a/c/r5;->k:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/c5;

    iget-object v3, v1, Le/a/a/c/r5;->J:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/n4;

    invoke-virtual {v1}, Le/a/a/c/r5;->a()Le/a/a/c/s3;

    move-result-object v9

    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 425
    iget-boolean v10, v3, Le/a/a/c/a5;->i:Z

    .line 426
    iget v11, v3, Le/a/a/c/a5;->e:I

    .line 427
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v12

    .line 428
    invoke-static {v12, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    iget-object v3, v1, Le/a/a/c/r5;->H:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Le/a/a/c/b4;

    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Le/a/a/c/n5;

    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->q6()Le/a/w/c/a;

    move-result-object v15

    .line 430
    invoke-static {v15, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v2

    .line 431
    invoke-direct/range {v5 .. v15}, Le/a/a/c/s7;-><init>(Le/a/a/c/f4;Le/a/a/c/c5;Le/a/a/c/n4;Le/a/a/c/r3;ZILe/a/u3/g;Le/a/a/c/b4;Le/a/a/c/n5;Le/a/w/c/a;)V

    return-object v2

    .line 432
    :pswitch_29
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 433
    invoke-virtual {v1}, Le/a/a/c/r5;->b()Le/a/a/c/u3;

    move-result-object v1

    return-object v1

    .line 434
    :pswitch_2a
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 435
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v1

    .line 436
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 437
    invoke-static {v1}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    return-object v1

    .line 438
    :pswitch_2b
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 439
    new-instance v2, Le/a/a/c/m8/b;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v3

    .line 440
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 441
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v1

    .line 442
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    new-instance v4, Le/m/e/k;

    invoke-direct {v4}, Le/m/e/k;-><init>()V

    .line 444
    invoke-direct {v2, v3, v1, v4}, Le/a/a/c/m8/b;-><init>(Landroid/content/Context;Le/a/u3/g;Le/m/e/k;)V

    return-object v2

    .line 445
    :pswitch_2c
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 446
    iget-object v2, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    invoke-static {v2}, Le/a/c/p/a;->l2(Le/a/a/c/a5;)Le/a/p5/h0;

    move-result-object v6

    iget-object v2, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v11

    .line 447
    invoke-static {v11, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    iget-object v2, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v2

    .line 449
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 450
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->u3()Le/a/e4/b0;

    move-result-object v8

    .line 451
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v7

    .line 453
    invoke-static {v7, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 454
    invoke-virtual {v1}, Le/a/a/c/r5;->c()Le/a/a/i1/c;

    move-result-object v10

    .line 455
    new-instance v1, Le/a/a/c/j;

    .line 456
    invoke-interface {v2}, Le/a/e4/p;->h()Z

    move-result v9

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Le/a/a/c/j;-><init>(Le/a/p5/h0;Le/a/o5/b0;Le/a/e4/b0;ZLe/a/a/i1/b;Landroid/content/Context;)V

    return-object v1

    .line 457
    :pswitch_2d
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 458
    new-instance v2, Le/a/a/c/o8/i;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v6

    .line 459
    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 460
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v7

    .line 461
    invoke-static {v7, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 462
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v8

    .line 463
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 464
    iget-object v3, v1, Le/a/a/c/r5;->k:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v10

    .line 465
    invoke-static {v10, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v2

    .line 466
    invoke-direct/range {v5 .. v10}, Le/a/a/c/o8/i;-><init>(Ls1/w/f;Le/a/r2/l;Le/a/r2/f;Lo3/a;Le/a/a/k/a/a/q;)V

    return-object v2

    .line 467
    :pswitch_2e
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 468
    new-instance v2, Le/a/a/c/v5;

    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 469
    iget-boolean v6, v3, Le/a/a/c/a5;->j:Z

    .line 470
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S1()Le/a/o5/u0;

    move-result-object v7

    .line 471
    invoke-static {v7, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 472
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v8

    .line 473
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 474
    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    iget-object v5, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v5

    .line 475
    invoke-static {v5, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 476
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance v9, Le/a/o5/v1;

    invoke-direct {v9, v5}, Le/a/o5/v1;-><init>(Landroid/content/ContentResolver;)V

    .line 478
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v10

    .line 479
    invoke-static {v10, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k4()Le/a/b0/q/b;

    move-result-object v11

    .line 481
    invoke-static {v11, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v2

    .line 482
    invoke-direct/range {v5 .. v11}, Le/a/a/c/v5;-><init>(ZLe/a/o5/u0;Le/a/q2/a;Le/a/o5/u1;Le/a/p5/a0;Le/a/b0/q/b;)V

    return-object v2

    .line 483
    :pswitch_2f
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 484
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v3

    .line 485
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 486
    iget-object v5, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v5

    .line 487
    invoke-static {v5, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 488
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 489
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 490
    new-instance v4, Le/a/a/x0/a;

    invoke-direct {v4, v5, v3, v1, v2}, Le/a/a/x0/a;-><init>(Le/a/e4/p;Le/a/p5/c0;Le/a/q2/a;Ljava/lang/String;)V

    return-object v4

    .line 491
    :pswitch_30
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 492
    new-instance v2, Le/a/a/c/g4;

    move-object v5, v2

    iget-object v3, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 493
    iget-boolean v6, v3, Le/a/a/c/a5;->i:Z

    .line 494
    iget-boolean v7, v3, Le/a/a/c/a5;->j:Z

    .line 495
    iget-boolean v8, v3, Le/a/a/c/a5;->k:Z

    .line 496
    iget-boolean v9, v3, Le/a/a/c/a5;->m:Z

    .line 497
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    move-object v10, v3

    .line 498
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 499
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v3

    move-object v11, v3

    .line 500
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 501
    iget-object v3, v1, Le/a/a/c/r5;->k:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v3

    move-object v13, v3

    .line 502
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 503
    iget-object v3, v1, Le/a/a/c/r5;->l:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Le/a/a/x0/a;

    iget-object v3, v1, Le/a/a/c/r5;->n:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Le/a/a/c/u5;

    iget-object v3, v1, Le/a/a/c/r5;->p:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Le/a/a/c/o8/g;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v3

    move-object/from16 v17, v3

    .line 504
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 505
    iget-object v3, v1, Le/a/a/c/r5;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v3

    move-object/from16 v19, v3

    .line 506
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 507
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v3

    move-object/from16 v20, v3

    .line 508
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 509
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v3

    move-object/from16 v21, v3

    .line 510
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 511
    invoke-virtual {v1}, Le/a/a/c/r5;->c()Le/a/a/i1/c;

    move-result-object v22

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->t1()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v23, v3

    .line 512
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v3

    move-object/from16 v24, v3

    .line 514
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 515
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S1()Le/a/o5/u0;

    move-result-object v3

    move-object/from16 v25, v3

    .line 516
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 517
    iget-object v3, v1, Le/a/a/c/r5;->c:Le/a/t/a/d;

    invoke-interface {v3}, Le/a/t/a/d;->V3()Le/a/t/a/p;

    move-result-object v3

    move-object/from16 v26, v3

    .line 518
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 519
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object/from16 v27, v3

    .line 520
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 521
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->A3()Le/a/y/c/b;

    move-result-object v3

    move-object/from16 v28, v3

    .line 522
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    iget-object v3, v1, Le/a/a/c/r5;->e:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v29

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z5()Le/a/a/c1/d;

    move-result-object v3

    move-object/from16 v30, v3

    .line 524
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    iget-object v3, v1, Le/a/a/c/r5;->s:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Le/a/a/c/m8/a;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->L1()Le/a/q2/d1/d;

    move-result-object v3

    move-object/from16 v32, v3

    .line 526
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 527
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object v3

    move-object/from16 v33, v3

    .line 528
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 529
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->F0()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v34, v3

    .line 530
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 531
    iget-object v3, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Le/a/a/c/n5;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    move-object/from16 v36, v3

    .line 532
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 533
    iget-object v3, v1, Le/a/a/c/r5;->t:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v37, v3

    check-cast v37, Landroid/media/AudioManager;

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->U6()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v38, v3

    .line 534
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    invoke-virtual {v1}, Le/a/a/c/r5;->a()Le/a/a/c/s3;

    move-result-object v39

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->t5()Le/a/a/k/a/p0;

    move-result-object v3

    move-object/from16 v40, v3

    .line 536
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 537
    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->y2()Le/a/d4/c;

    move-result-object v3

    move-object/from16 v41, v3

    .line 538
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 539
    iget-object v3, v1, Le/a/a/c/r5;->u:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v42

    iget-object v3, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n0()Le/a/a/k/a/i1;

    move-result-object v3

    move-object/from16 v43, v3

    .line 540
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 541
    iget-object v3, v1, Le/a/a/c/r5;->K:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v44

    iget-object v3, v1, Le/a/a/c/r5;->N:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v45, v3

    check-cast v45, Le/a/a/c/l4;

    iget-object v3, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v46, v3

    check-cast v46, Le/a/a/c/s4;

    iget-object v1, v1, Le/a/a/c/r5;->R:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v47, v1

    check-cast v47, Le/a/a/c/h8;

    invoke-direct/range {v5 .. v47}, Le/a/a/c/g4;-><init>(ZZZZLs1/w/f;Le/a/r2/l;Lo3/a;Le/a/a/k/t;Le/a/a/x0/a;Le/a/a/c/u5;Le/a/a/c/o8/g;Le/a/a/i0;Le/a/a/c/l5;Le/a/b0/e/l;Le/a/p5/a0;Le/a/p5/g;Le/a/a/i1/b;Le/a/r2/f;Le/a/e4/p;Le/a/o5/u0;Le/a/t/a/p;Le/a/u3/g;Le/a/y/c/b;Lo3/a;Le/a/a/c1/d;Le/a/a/c/m8/a;Le/a/q2/d1/d;Le/a/d/c0/s1;Le/a/r2/f;Le/a/a/c/n5;Le/a/o5/f0;Landroid/media/AudioManager;Le/a/r2/f;Le/a/a/c/r3;Le/a/a/k/a/p0;Le/a/d4/c;Lo3/a;Le/a/a/k/a/i1;Lo3/a;Le/a/a/c/l4;Le/a/a/c/s4;Le/a/a/c/h8;)V

    return-object v2

    .line 542
    :pswitch_31
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 543
    iget-object v1, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 544
    iget-object v1, v1, Le/a/a/c/a5;->h:Lcom/truecaller/messaging/conversation/ConversationMode;

    .line 545
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 546
    :pswitch_32
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 547
    iget-object v2, v1, Le/a/a/c/r5;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/conversation/ConversationMode;

    iget-object v1, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 548
    iget-object v3, v1, Le/a/a/c/a5;->c:Ljava/lang/Long;

    .line 549
    iget-object v1, v1, Le/a/a/c/a5;->d:Ljava/lang/Long;

    .line 550
    new-instance v4, Le/a/a/c/o5;

    invoke-direct {v4, v2, v3, v1}, Le/a/a/c/o5;-><init>(Lcom/truecaller/messaging/conversation/ConversationMode;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v4

    .line 551
    :pswitch_33
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 552
    new-instance v2, Le/a/a/c/x3;

    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v1

    .line 553
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 554
    invoke-direct {v2, v1}, Le/a/a/c/x3;-><init>(Landroid/content/ContentResolver;)V

    return-object v2

    .line 555
    :pswitch_34
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 556
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    .line 557
    invoke-interface {v1}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v1

    .line 558
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 559
    :pswitch_35
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 560
    iget-object v1, v1, Le/a/a/c/r5;->b:Le/a/j2;

    .line 561
    invoke-interface {v1}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v1

    .line 562
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 563
    :pswitch_36
    iget-object v1, v0, Le/a/a/c/r5$b;->a:Le/a/a/c/r5;

    .line 564
    new-instance v2, Le/a/a/c/e5;

    move-object v5, v2

    invoke-virtual {v1}, Le/a/a/c/r5;->d()Le/a/r2/j;

    move-result-object v6

    iget-object v7, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v8

    move-object v7, v8

    .line 565
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 566
    iget-object v8, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v9

    move-object v8, v9

    .line 567
    invoke-static {v9, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 568
    iget-object v15, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    .line 569
    iget-object v9, v15, Le/a/a/c/a5;->a:Lcom/truecaller/messaging/data/types/Conversation;

    .line 570
    iget-object v10, v15, Le/a/a/c/a5;->b:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 571
    iget-object v11, v15, Le/a/a/c/a5;->c:Ljava/lang/Long;

    .line 572
    iget v12, v15, Le/a/a/c/a5;->e:I

    .line 573
    iget-boolean v13, v15, Le/a/a/c/a5;->i:Z

    .line 574
    iget-boolean v14, v15, Le/a/a/c/a5;->j:Z

    .line 575
    iget-boolean v0, v15, Le/a/a/c/a5;->k:Z

    move-object/from16 v60, v2

    move-object v2, v15

    move v15, v0

    .line 576
    iget-object v0, v2, Le/a/a/c/a5;->g:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 577
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 578
    iget-object v0, v1, Le/a/a/c/r5;->e:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v17

    iget-object v0, v1, Le/a/a/c/r5;->f:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v18

    iget-object v0, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    invoke-static {v0}, Le/a/c/p/a;->l2(Le/a/a/c/a5;)Le/a/p5/h0;

    move-result-object v19

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v0

    move-object/from16 v20, v0

    .line 579
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 580
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->d3()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v21, v0

    .line 581
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 582
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v0

    move-object/from16 v22, v0

    .line 583
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 584
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    move-object/from16 v23, v0

    .line 585
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 586
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->t1()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v24, v0

    .line 587
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->I5()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v25, v0

    .line 589
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 590
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->F0()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v26, v0

    .line 591
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 592
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->q5()Le/a/l/t2/d;

    move-result-object v0

    move-object/from16 v27, v0

    .line 593
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 594
    iget-object v0, v1, Le/a/a/c/r5;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Le/a/a/c/w3;

    iget-object v0, v1, Le/a/a/c/r5;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Le/a/a/c/n5;

    iget-object v0, v1, Le/a/a/c/r5;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Le/a/a/c/f4;

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->X0()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v31, v0

    .line 595
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 596
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v32, v0

    .line 597
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 598
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->u6()Le/a/h5/w;

    move-result-object v0

    move-object/from16 v33, v0

    .line 599
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 600
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v0

    move-object/from16 v34, v0

    .line 601
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 602
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->n0()Le/a/a/k/a/i1;

    move-result-object v0

    move-object/from16 v35, v0

    .line 603
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 604
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v0

    move-object/from16 v36, v0

    .line 605
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 606
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->w5()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v37, v0

    .line 607
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 608
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->U6()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v38, v0

    .line 609
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 610
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->A4()Le/a/a/k0;

    move-result-object v0

    move-object/from16 v39, v0

    .line 611
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object v0

    move-object/from16 v40, v0

    .line 613
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 614
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->A6()Le/a/w4/d;

    move-result-object v0

    move-object/from16 v41, v0

    .line 615
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 616
    iget-object v0, v1, Le/a/a/c/r5;->w:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v42, v0

    check-cast v42, Le/a/a/c/s8/j;

    invoke-virtual {v1}, Le/a/a/c/r5;->c()Le/a/a/i1/c;

    move-result-object v43

    invoke-virtual {v1}, Le/a/a/c/r5;->a()Le/a/a/c/s3;

    move-result-object v44

    iget-object v0, v1, Le/a/a/c/r5;->y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v45, v0

    check-cast v45, Le/a/a/c/s4;

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->D4()Le/a/d4/a;

    move-result-object v0

    move-object/from16 v46, v0

    .line 617
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 618
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->h2()Le/a/a/o0/a;

    move-result-object v0

    move-object/from16 v47, v0

    .line 619
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 620
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->W3()Le/a/a/b1/b;

    move-result-object v0

    move-object/from16 v48, v0

    .line 621
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 622
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->Q0()Le/a/a/k/a/b1;

    move-result-object v0

    move-object/from16 v49, v0

    .line 623
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 624
    iget-object v0, v1, Le/a/a/c/r5;->a:Le/a/a/c/a5;

    iget-object v2, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v2

    .line 625
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 626
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    new-instance v0, Le/a/o5/v1;

    move-object/from16 v50, v0

    invoke-direct {v0, v2}, Le/a/o5/v1;-><init>(Landroid/content/ContentResolver;)V

    .line 628
    iget-object v0, v1, Le/a/a/c/r5;->H:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v51, v0

    check-cast v51, Le/a/a/c/b4;

    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->W4()Le/a/a/e/m;

    move-result-object v0

    move-object/from16 v52, v0

    .line 629
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 630
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->T1()Le/a/a/y0/g0;

    move-result-object v0

    move-object/from16 v53, v0

    .line 631
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 632
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->G5()Ln3/k/a/x;

    move-result-object v0

    move-object/from16 v54, v0

    .line 633
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 634
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->U4()Le/a/c/i/l/f/a;

    move-result-object v0

    move-object/from16 v55, v0

    .line 635
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 636
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v0

    move-object/from16 v56, v0

    .line 637
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 638
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->n()Le/a/c/e/c;

    move-result-object v0

    move-object/from16 v57, v0

    .line 639
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 640
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->L6()Le/a/a/d0;

    move-result-object v0

    move-object/from16 v58, v0

    .line 641
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 642
    iget-object v0, v1, Le/a/a/c/r5;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->R6()Le/a/k3/j/b;

    move-result-object v0

    move-object/from16 v59, v0

    .line 643
    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 644
    invoke-direct/range {v5 .. v59}, Le/a/a/c/e5;-><init>(Le/a/r2/j;Ls1/w/f;Ls1/w/f;Lcom/truecaller/messaging/data/types/Conversation;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/Long;IZZZLjava/lang/String;Lo3/a;Lo3/a;Le/a/p5/h0;Le/a/o5/f0;Le/a/r2/f;Le/a/a/k/t;Le/a/a/i0;Le/a/r2/f;Le/a/r2/f;Le/a/r2/f;Le/a/l/t2/d;Le/a/a/c/w3;Le/a/a/c/n5;Le/a/a/c/f4;Le/a/r2/f;Le/a/r2/f;Le/a/h5/w;Le/a/p5/a0;Le/a/a/k/a/i1;Le/a/b0/e/l;Le/a/r2/f;Le/a/r2/f;Le/a/a/k0;Le/a/d/c0/s1;Le/a/w4/d;Le/a/a/c/s8/j;Le/a/a/i1/b;Le/a/a/c/r3;Le/a/a/c/s4;Le/a/d4/a;Le/a/a/o0/a;Le/a/a/b1/b;Le/a/a/k/a/b1;Le/a/o5/u1;Le/a/a/c/b4;Le/a/a/e/m;Le/a/a/y0/g0;Ln3/k/a/x;Le/a/c/i/l/f/a;Le/a/q2/i0;Le/a/c/e/c;Le/a/a/d0;Le/a/k3/j/b;)V

    return-object v60

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
