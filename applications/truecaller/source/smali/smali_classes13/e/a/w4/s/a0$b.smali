.class public final Le/a/w4/s/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/w4/s/a0;
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
.field public final a:Le/a/w4/s/a0;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/w4/s/a0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 3
    iput p2, p0, Le/a/w4/s/a0$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/w4/s/a0$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    move-object/from16 v1, p0

    iget v2, v1, Le/a/w4/s/a0$b;->b:I

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 4
    new-instance v11, Le/a/a/i1/c;

    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v4

    .line 5
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v5

    .line 7
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v6

    .line 9
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v7

    .line 11
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v8

    .line 13
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v9

    .line 15
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v1, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v10

    .line 17
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v11

    .line 18
    invoke-direct/range {v3 .. v10}, Le/a/a/i1/c;-><init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V

    return-object v11

    .line 19
    :pswitch_1
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 20
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    .line 21
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v4, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->P()Ls1/w/f;

    move-result-object v4

    .line 23
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v1, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v1

    .line 25
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    new-instance v2, Le/a/a/c/y6;

    invoke-direct {v2, v3, v4, v1}, Le/a/a/c/y6;-><init>(Landroid/content/ContentResolver;Ls1/w/f;Le/a/a/g/w;)V

    return-object v2

    .line 27
    :pswitch_2
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 28
    iget-object v3, v1, Le/a/w4/s/a0;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/p5/h0;

    iget-object v4, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v4

    .line 29
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v1, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->u3()Le/a/e4/b0;

    move-result-object v1

    .line 31
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    new-instance v2, Le/a/a/c/k6;

    invoke-interface {v4}, Le/a/e4/p;->h()Z

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Le/a/a/c/k6;-><init>(Le/a/p5/h0;ZLe/a/e4/b0;)V

    return-object v2

    .line 33
    :pswitch_3
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 34
    iget-object v3, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    iget-object v4, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object v4

    .line 35
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v5, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->c4()Le/a/i/f0/j/c;

    move-result-object v5

    .line 37
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v1, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v1

    .line 39
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v2, Le/a/w4/r/b;

    invoke-direct {v2, v4, v5, v1}, Le/a/w4/r/b;-><init>(Le/a/i/f0/d;Le/a/i/f0/j/c;Le/a/u3/g;)V

    return-object v2

    .line 42
    :pswitch_4
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 43
    iget-object v3, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    iget-object v4, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v6

    .line 44
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    iget-object v4, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->R6()Le/a/k3/j/b;

    move-result-object v7

    .line 46
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iget-object v4, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v8

    .line 48
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iget-object v4, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->P()Ls1/w/f;

    move-result-object v9

    .line 50
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iget-object v1, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->m7()Le/a/k3/d;

    move-result-object v10

    .line 52
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Le/a/w4/s/p0;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Le/a/w4/s/p0;-><init>(Le/a/h0/j;Le/a/k3/j/b;Ls1/w/f;Ls1/w/f;Le/a/k3/d;)V

    return-object v1

    .line 55
    :pswitch_5
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 56
    iget-object v1, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    .line 57
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Le/a/w4/s/v;

    invoke-direct {v1}, Le/a/w4/s/v;-><init>()V

    return-object v1

    .line 59
    :pswitch_6
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 60
    iget-object v3, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    iget-object v4, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v4

    .line 61
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v1, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->c4()Le/a/i/f0/j/c;

    move-result-object v1

    .line 63
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v2, Le/a/w4/s/t;

    invoke-direct {v2, v4, v1}, Le/a/w4/s/t;-><init>(Le/a/p5/c0;Le/a/i/f0/j/c;)V

    return-object v2

    .line 66
    :pswitch_7
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 67
    iget-object v3, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    iget-object v1, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v1

    .line 68
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v2, Le/a/w4/s/q;

    invoke-direct {v2, v1}, Le/a/w4/s/q;-><init>(Le/a/p5/c0;)V

    return-object v2

    .line 71
    :pswitch_8
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 72
    iget-object v3, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    iget-object v1, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v1

    .line 73
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    new-instance v2, Le/a/w4/s/t0;

    iget v3, v3, Le/a/w4/s/d0;->a:I

    invoke-direct {v2, v1, v3}, Le/a/w4/s/t0;-><init>(Le/a/p5/c0;I)V

    return-object v2

    .line 75
    :pswitch_9
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 76
    iget-object v3, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    iget-object v1, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v1

    .line 77
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    new-instance v2, Le/a/w4/s/o0;

    iget v3, v3, Le/a/w4/s/d0;->a:I

    invoke-direct {v2, v1, v3}, Le/a/w4/s/o0;-><init>(Le/a/p5/c0;I)V

    return-object v2

    .line 79
    :pswitch_a
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 80
    iget-object v3, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    iget-object v1, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v1

    .line 81
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    new-instance v2, Le/a/w4/s/m0;

    iget v3, v3, Le/a/w4/s/d0;->a:I

    invoke-direct {v2, v1, v3}, Le/a/w4/s/m0;-><init>(Le/a/p5/c0;I)V

    return-object v2

    .line 83
    :pswitch_b
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 84
    iget-object v3, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    iget-object v1, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v1

    .line 85
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    new-instance v2, Le/a/w4/s/z;

    iget v3, v3, Le/a/w4/s/d0;->a:I

    invoke-direct {v2, v1, v3}, Le/a/w4/s/z;-><init>(Le/a/p5/c0;I)V

    return-object v2

    .line 87
    :pswitch_c
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 88
    iget-object v3, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    iget-object v4, v1, Le/a/w4/s/a0;->f:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Le/a/w4/s/a0;->g:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Le/a/w4/s/a0;->h:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Le/a/w4/s/a0;->i:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v1, Le/a/w4/s/a0;->j:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v9

    .line 89
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    iget-object v10, v1, Le/a/w4/s/a0;->k:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->v2()Le/a/o5/c2/k;

    move-result-object v15

    .line 91
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v1, v1, Le/a/w4/s/a0;->l:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    .line 93
    move-object v11, v4

    check-cast v11, Le/a/w4/s/z;

    move-object v12, v5

    check-cast v12, Le/a/w4/s/m0;

    move-object v13, v6

    check-cast v13, Le/a/w4/s/o0;

    move-object v14, v7

    check-cast v14, Le/a/w4/s/t0;

    move-object v2, v8

    check-cast v2, Le/a/w4/s/q;

    move-object/from16 v16, v10

    check-cast v16, Le/a/w4/s/t;

    move-object/from16 v17, v1

    check-cast v17, Le/a/w4/s/v;

    .line 94
    new-instance v1, Le/a/w4/s/x;

    iget-object v3, v3, Le/a/w4/s/d0;->b:Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    move-object v10, v1

    move-object v4, v15

    move-object v15, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v9

    move-object/from16 v20, v4

    invoke-direct/range {v10 .. v20}, Le/a/w4/s/x;-><init>(Le/a/w4/s/z;Le/a/w4/s/m0;Le/a/w4/s/o0;Le/a/w4/s/t0;Le/a/w4/s/q;Le/a/w4/s/t;Le/a/w4/s/v;Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;Le/a/o5/f0;Le/a/o5/c2/k;)V

    return-object v1

    .line 95
    :pswitch_d
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 96
    iget-object v1, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    .line 97
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Le/a/w4/t/a/e;

    invoke-direct {v1}, Le/a/w4/t/a/e;-><init>()V

    return-object v1

    .line 99
    :pswitch_e
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 100
    iget-object v1, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    .line 101
    new-instance v2, Le/a/p5/i0;

    iget-object v1, v1, Le/a/w4/s/d0;->d:Landroid/content/Context;

    invoke-direct {v2, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 102
    :pswitch_f
    iget-object v1, v0, Le/a/w4/s/a0$b;->a:Le/a/w4/s/a0;

    .line 103
    new-instance v38, Le/a/w4/s/g0;

    move-object/from16 v3, v38

    iget-object v4, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v5

    move-object v4, v5

    .line 104
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    iget-object v5, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v6

    move-object v5, v6

    .line 106
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    iget-object v6, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v7

    move-object v6, v7

    .line 108
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    iget-object v7, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->P0()Le/a/f4/g/r;

    move-result-object v8

    move-object v7, v8

    .line 110
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iget-object v8, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->B7()Le/a/k3/j/g;

    move-result-object v9

    move-object v8, v9

    .line 112
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    iget-object v9, v1, Le/a/w4/s/a0;->d:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/p5/h0;

    iget-object v10, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    .line 114
    iget v10, v10, Le/a/w4/s/d0;->a:I

    .line 115
    iget-object v11, v1, Le/a/w4/s/a0;->e:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/w4/t/a/e;

    iget-object v12, v1, Le/a/w4/s/a0;->m:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/truecaller/search/global/CompositeAdapterDelegate;

    iget-object v13, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v13}, Le/a/j2;->H2()Le/a/l4/c;

    move-result-object v14

    move-object v13, v14

    .line 116
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    iget-object v14, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    .line 118
    iget-object v15, v14, Le/a/w4/s/d0;->c:Landroid/os/Handler;

    move-object v14, v15

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 119
    invoke-static {v15, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v15, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v15}, Le/a/j2;->G6()Le/a/o5/z;

    move-result-object v15

    move-object/from16 v16, v15

    move-object/from16 v39, v3

    move-object/from16 v3, v16

    .line 121
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v3

    move-object/from16 v16, v3

    .line 123
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v3

    move-object/from16 v17, v3

    .line 125
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iget-object v3, v1, Le/a/w4/s/a0;->n:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Le/a/w4/s/p0;

    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v3

    move-object/from16 v19, v3

    .line 127
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iget-object v3, v1, Le/a/w4/s/a0;->o:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Le/a/w4/r/a;

    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->v2()Le/a/o5/c2/k;

    move-result-object v3

    move-object/from16 v21, v3

    .line 129
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->x4()Le/a/z4/d;

    move-result-object v3

    move-object/from16 v22, v3

    .line 131
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v3, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    .line 133
    iget-boolean v3, v3, Le/a/w4/s/d0;->e:Z

    move/from16 v23, v3

    .line 134
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v3

    move-object/from16 v24, v3

    .line 135
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v3

    move-object/from16 v25, v3

    .line 137
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object v3

    move-object/from16 v26, v3

    .line 139
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    iget-object v3, v1, Le/a/w4/s/a0;->p:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Le/a/a/c/j6;

    iget-object v3, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v3

    move-object/from16 v28, v3

    .line 141
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    iget-object v3, v1, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    move-object/from16 v40, v4

    iget-object v4, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->c4()Le/a/i/f0/j/c;

    move-result-object v4

    .line 143
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "numberOrNameSearchAdUnitId"

    .line 145
    invoke-interface {v4, v3}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    .line 146
    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    iget-object v0, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->J3()Le/a/z2/a;

    move-result-object v0

    move-object/from16 v30, v0

    .line 148
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iget-object v0, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->l5()Le/a/a0/n;

    move-result-object v0

    move-object/from16 v31, v0

    .line 150
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    iget-object v0, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->J1()Le/a/a0/p;

    move-result-object v0

    move-object/from16 v32, v0

    .line 152
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    iget-object v0, v1, Le/a/w4/s/a0;->q:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Le/a/a/c/y6;

    iget-object v0, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v0

    move-object/from16 v34, v0

    .line 154
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    iget-object v0, v1, Le/a/w4/s/a0;->s:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, Le/a/a/i1/b;

    iget-object v0, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o5()Z

    move-result v36

    iget-object v0, v1, Le/a/w4/s/a0;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->j4()Le/a/a0/v;

    move-result-object v0

    move-object/from16 v37, v0

    .line 156
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, v39

    move-object/from16 v4, v40

    .line 157
    invoke-direct/range {v3 .. v37}, Le/a/w4/s/g0;-><init>(Ls1/w/f;Le/a/p5/g;Le/a/o5/f0;Le/a/f4/g/r;Le/a/k3/j/g;Le/a/p5/h0;ILe/a/w4/t/a/e;Lcom/truecaller/search/global/CompositeAdapterDelegate;Le/a/l4/c;Landroid/os/Handler;Le/a/o5/z;Le/a/q2/a;Le/a/a/i0;Le/a/w4/s/p0;Le/a/h0/m;Le/a/w4/r/a;Le/a/o5/c2/k;Le/a/z4/d;ZLe/a/r2/f;Le/a/o5/b0;Le/a/k3/l/f;Le/a/a/c/j6;Le/a/g5/p;Ljava/lang/String;Le/a/z2/a;Le/a/a0/n;Le/a/a0/p;Le/a/a/c/y6;Le/a/b0/q/z;Le/a/a/i1/b;ZLe/a/a0/v;)V

    return-object v38

    :pswitch_data_0
    .packed-switch 0x0
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
