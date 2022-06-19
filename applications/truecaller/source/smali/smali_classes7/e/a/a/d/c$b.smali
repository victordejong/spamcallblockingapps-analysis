.class public final Le/a/a/d/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/d/c;
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
.field public final a:Le/a/a/d/c;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/d/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/d/c$b;->a:Le/a/a/d/c;

    .line 3
    iput p2, p0, Le/a/a/d/c$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/d/c$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    move-object/from16 v1, p0

    iget v2, v1, Le/a/a/d/c$b;->b:I

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/a/d/c$b;->a:Le/a/a/d/c;

    .line 4
    iget-object v1, v1, Le/a/a/d/c;->a:Le/a/j2;

    .line 5
    invoke-interface {v1}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v1

    .line 6
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 7
    :pswitch_1
    iget-object v1, v0, Le/a/a/d/c$b;->a:Le/a/a/d/c;

    .line 8
    new-instance v11, Le/a/a/i1/c;

    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v4

    .line 9
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v5

    .line 11
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v6

    .line 13
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v7

    .line 15
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v8

    .line 17
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v9

    .line 19
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v1, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v10

    .line 21
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v11

    .line 22
    invoke-direct/range {v3 .. v10}, Le/a/a/i1/c;-><init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V

    return-object v11

    .line 23
    :pswitch_2
    iget-object v1, v0, Le/a/a/d/c$b;->a:Le/a/a/d/c;

    .line 24
    new-instance v9, Le/a/a/d/j;

    iget-object v3, v1, Le/a/a/d/c;->b:Le/a/a/d/m;

    invoke-static {v3}, Le/a/c/p/a;->h2(Le/a/a/d/m;)Le/a/a/d/s;

    move-result-object v4

    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v5

    .line 25
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v6

    .line 27
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v7

    .line 29
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v1, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v8

    .line 31
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v9

    .line 32
    invoke-direct/range {v3 .. v8}, Le/a/a/d/j;-><init>(Le/a/a/d/s;Le/a/o5/f0;Le/a/u3/g;Le/a/a/i0;Le/a/q2/i0;)V

    return-object v9

    .line 33
    :pswitch_3
    iget-object v1, v0, Le/a/a/d/c$b;->a:Le/a/a/d/c;

    .line 34
    new-instance v10, Le/a/a/d/e;

    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v4

    .line 35
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object v5

    .line 37
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v3, v1, Le/a/a/d/c;->b:Le/a/a/d/m;

    invoke-static {v3}, Le/a/c/p/a;->h2(Le/a/a/d/m;)Le/a/a/d/s;

    move-result-object v6

    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v7

    .line 39
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v8

    .line 41
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iget-object v1, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->E()Le/a/b0/q/l0;

    move-result-object v9

    .line 43
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v10

    .line 44
    invoke-direct/range {v3 .. v9}, Le/a/a/d/e;-><init>(Le/a/o5/f0;Le/a/k3/l/f;Le/a/a/d/s;Le/a/p5/c0;Le/a/a/i0;Le/a/b0/q/l0;)V

    return-object v10

    .line 45
    :pswitch_4
    iget-object v1, v0, Le/a/a/d/c$b;->a:Le/a/a/d/c;

    .line 46
    new-instance v10, Le/a/a/d/g;

    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->A()Le/a/b0/e/l;

    move-result-object v4

    .line 47
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->P0()Le/a/f4/g/r;

    move-result-object v5

    .line 49
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v6

    .line 51
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iget-object v3, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->X6()Le/a/a/g/g;

    move-result-object v7

    .line 53
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v3, v1, Le/a/a/d/c;->b:Le/a/a/d/m;

    invoke-static {v3}, Le/a/c/p/a;->h2(Le/a/a/d/m;)Le/a/a/d/s;

    move-result-object v8

    iget-object v1, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v9

    .line 55
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v10

    .line 56
    invoke-direct/range {v3 .. v9}, Le/a/a/d/g;-><init>(Le/a/b0/e/l;Le/a/f4/g/r;Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/d/s;Le/a/u3/g;)V

    return-object v10

    .line 57
    :pswitch_5
    iget-object v1, v0, Le/a/a/d/c$b;->a:Le/a/a/d/c;

    .line 58
    iget-object v1, v1, Le/a/a/d/c;->a:Le/a/j2;

    .line 59
    invoke-interface {v1}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v1

    .line 60
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 61
    :pswitch_6
    iget-object v1, v0, Le/a/a/d/c$b;->a:Le/a/a/d/c;

    .line 62
    new-instance v33, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;

    move-object/from16 v3, v33

    iget-object v4, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v5

    move-object v4, v5

    .line 63
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v5, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->P()Ls1/w/f;

    move-result-object v6

    move-object v5, v6

    .line 65
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v6, v1, Le/a/a/d/c;->b:Le/a/a/d/m;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Le/a/a/d/c;->b:Le/a/a/d/m;

    .line 67
    iget-boolean v8, v6, Le/a/a/d/m;->c:Z

    .line 68
    iget-object v6, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v6

    move-object v9, v6

    .line 69
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v6, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v6

    move-object v10, v6

    .line 71
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v6, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v6

    move-object v11, v6

    .line 73
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v6, v1, Le/a/a/d/c;->d:Ljavax/inject/Provider;

    invoke-static {v6}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v6, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->z5()Le/a/a/c1/d;

    move-result-object v6

    move-object v13, v6

    .line 75
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v6, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v6

    move-object v14, v6

    .line 77
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v6, v1, Le/a/a/d/c;->f:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Le/a/a/d/f;

    .line 79
    iget-object v6, v1, Le/a/a/d/c;->b:Le/a/a/d/m;

    .line 80
    new-instance v7, Le/a/p5/i0;

    iget-object v0, v6, Le/a/a/d/m;->a:Landroid/content/Context;

    invoke-direct {v7, v0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    const-string v0, "themedResourceProvider"

    .line 81
    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Le/a/a/h0;

    move-object/from16 v16, v0

    iget-object v6, v6, Le/a/a/d/m;->a:Landroid/content/Context;

    invoke-direct {v0, v7, v6}, Le/a/a/h0;-><init>(Le/a/p5/h0;Landroid/content/Context;)V

    .line 83
    iget-object v0, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->F0()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v17, v0

    .line 84
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v0, v1, Le/a/a/d/c;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Le/a/a/d/n;

    iget-object v0, v1, Le/a/a/d/c;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Le/a/a/d/p;

    iget-object v0, v1, Le/a/a/d/c;->b:Le/a/a/d/m;

    invoke-static {v0}, Le/a/c/p/a;->h2(Le/a/a/d/m;)Le/a/a/d/s;

    move-result-object v20

    iget-object v0, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    move-object/from16 v21, v0

    .line 86
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    iget-object v0, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v22, v0

    .line 88
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iget-object v0, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v0

    move-object/from16 v23, v0

    .line 90
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v0, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v0

    move-object/from16 v24, v0

    .line 92
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iget-object v0, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->Y()Le/a/b0/e/r/a;

    move-result-object v0

    move-object/from16 v25, v0

    .line 94
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-object v0, v1, Le/a/a/d/c;->b:Le/a/a/d/m;

    iget-object v6, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v6

    .line 96
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "contentResolver"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Le/a/o5/v1;

    move-object/from16 v26, v0

    invoke-direct {v0, v6}, Le/a/o5/v1;-><init>(Landroid/content/ContentResolver;)V

    .line 99
    iget-object v0, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v27, v0

    .line 100
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iget-object v0, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v0

    move-object/from16 v28, v0

    .line 102
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    iget-object v0, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->g1()Le/a/a/k/a/z0;

    move-result-object v0

    move-object/from16 v29, v0

    .line 104
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    iget-object v0, v1, Le/a/a/d/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b7()Le/a/o5/m;

    move-result-object v0

    move-object/from16 v30, v0

    .line 106
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    iget-object v0, v1, Le/a/a/d/c;->l:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Le/a/a/i1/b;

    iget-object v0, v1, Le/a/a/d/c;->m:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v32

    const-wide/16 v6, 0x12c

    invoke-direct/range {v3 .. v32}, Lcom/truecaller/messaging/newconversation/NewConversationPresenter;-><init>(Ls1/w/f;Ls1/w/f;JZLe/a/b0/q/z;Le/a/o5/f0;Le/a/q2/i0;Lo3/a;Le/a/a/c1/d;Le/a/e4/p;Le/a/a/d/f;Le/a/a/g0;Le/a/r2/f;Le/a/a/d/n;Le/a/a/d/p;Le/a/a/d/s;Le/a/u3/g;Le/a/r2/f;Le/a/a/i0;Le/a/r2/f;Le/a/b0/e/r/a;Le/a/o5/u1;Landroid/content/Context;Le/a/r2/l;Le/a/a/k/a/z0;Le/a/o5/m;Le/a/a/i1/b;Lo3/a;)V

    return-object v33

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
