.class public final Le/a/l/v2/h/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/v2/h/a;
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
.field public final a:Le/a/l/v2/h/a;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/l/v2/h/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/l/v2/h/a$b;->a:Le/a/l/v2/h/a;

    .line 3
    iput p2, p0, Le/a/l/v2/h/a$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/l/v2/h/a$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    move-object/from16 v1, p0

    iget v2, v1, Le/a/l/v2/h/a$b;->b:I

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/l/v2/h/a$b;->a:Le/a/l/v2/h/a;

    .line 4
    new-instance v3, Le/a/l/v2/i/a/f;

    iget-object v4, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v4

    .line 5
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Le/a/c/p/a;->i2()Le/a/l/a/e0;

    move-result-object v5

    iget-object v1, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v1

    .line 7
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-direct {v3, v4, v5, v1}, Le/a/l/v2/i/a/f;-><init>(Le/a/p5/c0;Le/a/l/a/e0;Le/a/u3/g;)V

    return-object v3

    .line 9
    :pswitch_1
    iget-object v1, v0, Le/a/l/v2/h/a$b;->a:Le/a/l/v2/h/a;

    .line 10
    new-instance v3, Le/a/l/v2/i/a/c;

    iget-object v4, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->y6()Le/a/l/s2/a;

    move-result-object v4

    .line 11
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v1, v1, Le/a/l/v2/h/a;->j:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/p5/h0;

    invoke-static {}, Le/a/c/p/a;->i2()Le/a/l/a/e0;

    move-result-object v2

    invoke-direct {v3, v4, v1, v2}, Le/a/l/v2/i/a/c;-><init>(Le/a/l/s2/a;Le/a/p5/h0;Le/a/l/a/e0;)V

    return-object v3

    .line 13
    :pswitch_2
    iget-object v1, v0, Le/a/l/v2/h/a$b;->a:Le/a/l/v2/h/a;

    .line 14
    new-instance v3, Le/a/l/o2/e;

    iget-object v4, v1, Le/a/l/v2/h/a;->j:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/p5/h0;

    iget-object v5, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v5

    .line 15
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->F()Le/a/l/c2;

    move-result-object v6

    .line 17
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v1, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->U()Le/a/l/u2/a;

    move-result-object v1

    .line 19
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    invoke-direct {v3, v4, v5, v6, v1}, Le/a/l/o2/e;-><init>(Le/a/p5/h0;Le/a/l/p2/v0;Le/a/l/c2;Le/a/l/u2/a;)V

    return-object v3

    .line 21
    :pswitch_3
    iget-object v1, v0, Le/a/l/v2/h/a$b;->a:Le/a/l/v2/h/a;

    .line 22
    iget-object v1, v1, Le/a/l/v2/h/a;->b:Le/a/l/v2/h/b;

    .line 23
    new-instance v2, Le/a/p5/i0;

    iget-object v1, v1, Le/a/l/v2/h/b;->a:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 24
    :pswitch_4
    iget-object v1, v0, Le/a/l/v2/h/a$b;->a:Le/a/l/v2/h/a;

    .line 25
    iget-object v1, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    .line 26
    invoke-interface {v1}, Le/a/j2;->N2()Le/a/l/p2/q1;

    move-result-object v1

    .line 27
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 28
    :pswitch_5
    iget-object v1, v0, Le/a/l/v2/h/a$b;->a:Le/a/l/v2/h/a;

    .line 29
    new-instance v13, Le/a/l/p2/q0;

    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->U()Le/a/l/u2/a;

    move-result-object v4

    .line 30
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->o2()Le/a/l/n2/g;

    move-result-object v5

    .line 32
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->C6()Le/a/l/n2/e;

    move-result-object v6

    .line 34
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->o3()Le/a/l/p2/a;

    move-result-object v7

    .line 36
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iget-object v3, v1, Le/a/l/v2/h/a;->h:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    .line 38
    iget-object v3, v1, Le/a/l/v2/h/a;->b:Le/a/l/v2/h/b;

    .line 39
    iget-object v3, v3, Le/a/l/v2/h/b;->a:Landroid/app/Activity;

    const-string v9, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {v3, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    sget v9, Le/a/l/r;->a:I

    const-string v9, "activity"

    .line 42
    invoke-static {v3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v9, Le/a/l/q;

    invoke-direct {v9, v3}, Le/a/l/q;-><init>(Landroid/app/Activity;)V

    .line 44
    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f6()Le/a/l/p2/s;

    move-result-object v10

    .line 45
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    new-instance v11, Le/a/l/g/t;

    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v15

    .line 47
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v3

    .line 49
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v12, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v12}, Le/a/j2;->F()Le/a/l/c2;

    move-result-object v12

    .line 51
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iget-object v14, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v14

    .line 53
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v16, v14

    .line 54
    iget-object v14, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->U()Le/a/l/u2/a;

    move-result-object v14

    .line 55
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v18, v16

    move-object v14, v11

    move-object/from16 v16, v3

    move-object/from16 v17, v12

    .line 56
    invoke-direct/range {v14 .. v19}, Le/a/l/g/t;-><init>(Le/a/u3/g;Le/a/l/p2/v0;Le/a/l/c2;Le/a/b0/q/z;Le/a/l/u2/a;)V

    .line 57
    iget-object v1, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v12

    .line 58
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v13

    .line 59
    invoke-direct/range {v3 .. v12}, Le/a/l/p2/q0;-><init>(Le/a/l/u2/a;Le/a/l/n2/g;Le/a/l/n2/e;Le/a/l/p2/a;Lo3/a;Le/a/l/p2/q0$a;Le/a/l/p2/s;Le/a/l/g/t;Ls1/w/f;)V

    return-object v13

    .line 60
    :pswitch_6
    iget-object v1, v0, Le/a/l/v2/h/a$b;->a:Le/a/l/v2/h/a;

    .line 61
    new-instance v3, Le/a/l/p2/g1;

    iget-object v4, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->U()Le/a/l/u2/a;

    move-result-object v4

    .line 62
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    iget-object v5, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->C6()Le/a/l/n2/e;

    move-result-object v5

    .line 64
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iget-object v1, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->o2()Le/a/l/n2/g;

    move-result-object v1

    .line 66
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    invoke-direct {v3, v4, v5, v1}, Le/a/l/p2/g1;-><init>(Le/a/l/u2/a;Le/a/l/n2/e;Le/a/l/n2/g;)V

    return-object v3

    .line 68
    :pswitch_7
    iget-object v1, v0, Le/a/l/v2/h/a$b;->a:Le/a/l/v2/h/a;

    .line 69
    new-instance v16, Le/a/l/p2/e1;

    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->C1()Le/a/l/p2/r0;

    move-result-object v4

    .line 70
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->X1()Le/a/l/p2/k0;

    move-result-object v5

    .line 72
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    new-instance v17, Le/a/l/p2/i1;

    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v7

    .line 74
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->H4()Le/a/l/p2/o0;

    move-result-object v8

    .line 76
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    new-instance v3, Le/a/l/f;

    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->P1()Le/a/r5/i0;

    move-result-object v10

    .line 78
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->v2()Le/a/o5/c2/k;

    move-result-object v11

    .line 80
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    new-instance v12, Le/a/l/p2/b0;

    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v6

    .line 82
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    invoke-direct {v12, v6}, Le/a/l/p2/b0;-><init>(Le/a/u3/g;)V

    .line 84
    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->o6()Le/a/x/l;

    move-result-object v13

    .line 85
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->t7()Le/a/s2/c;

    move-result-object v14

    .line 87
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->z4()Le/a/q5/d;

    move-result-object v15

    .line 89
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v9, v3

    .line 90
    invoke-direct/range {v9 .. v15}, Le/a/l/f;-><init>(Le/a/r5/i0;Le/a/o5/c2/k;Le/a/l/p2/b0;Le/a/x/l;Le/a/s2/c;Le/a/q5/d;)V

    .line 91
    invoke-virtual {v1}, Le/a/l/v2/h/a;->a()Le/a/l/a/g;

    move-result-object v10

    .line 92
    new-instance v11, Le/a/l/p2/e0;

    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v6

    .line 93
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    new-instance v9, Le/a/l/p2/f0;

    iget-object v12, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v12}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v12

    .line 95
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    iget-object v13, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v13}, Le/a/j2;->t3()Le/a/l/p2/a1;

    move-result-object v13

    .line 97
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    invoke-direct {v9, v12, v13}, Le/a/l/p2/f0;-><init>(Le/a/l/p2/v0;Le/a/l/p2/a1;)V

    .line 99
    iget-object v12, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v12}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v12

    .line 100
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iget-object v13, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v13}, Le/a/j2;->t3()Le/a/l/p2/a1;

    move-result-object v13

    .line 102
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-direct {v11, v6, v9, v12, v13}, Le/a/l/p2/e0;-><init>(Landroid/content/Context;Le/a/l/p2/f0;Le/a/l/p2/v0;Le/a/l/p2/a1;)V

    .line 104
    new-instance v12, Le/a/l/p2/o;

    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v6

    .line 105
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    iget-object v9, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->Y()Le/a/b0/e/r/a;

    move-result-object v9

    .line 107
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v13, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v13}, Le/a/j2;->q0()Le/a/k3/l/f;

    move-result-object v13

    .line 109
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iget-object v14, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v14

    .line 111
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v15, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v15}, Le/a/j2;->V()Le/a/b0/e/f;

    move-result-object v15

    .line 113
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v19, v6

    move-object/from16 v20, v9

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    .line 114
    invoke-direct/range {v18 .. v23}, Le/a/l/p2/o;-><init>(Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/k3/l/f;Le/a/o5/f0;Le/a/b0/e/f;)V

    .line 115
    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->F()Le/a/l/c2;

    move-result-object v13

    .line 116
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    new-instance v14, Le/a/l/a/l0;

    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v6

    .line 118
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v9, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->K0()Le/a/s4/a;

    move-result-object v9

    .line 120
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    invoke-direct {v14, v6, v9}, Le/a/l/a/l0;-><init>(Le/a/b0/o/a;Le/a/s4/a;)V

    .line 122
    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v15

    .line 123
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v6, v17

    move-object v9, v3

    .line 124
    invoke-direct/range {v6 .. v15}, Le/a/l/p2/i1;-><init>(Landroid/content/Context;Le/a/l/p2/o0;Le/a/l/f;Le/a/l/a/g;Le/a/l/p2/e0;Le/a/l/p2/o;Le/a/l/c2;Le/a/l/a/l0;Ls1/w/f;)V

    .line 125
    iget-object v3, v1, Le/a/l/v2/h/a;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/l/p2/f1;

    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->U()Le/a/l/u2/a;

    move-result-object v8

    .line 126
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    new-instance v9, Le/a/l/p2/t1;

    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v3

    .line 128
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->F()Le/a/l/c2;

    move-result-object v6

    .line 130
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    iget-object v10, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v10}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v10

    .line 132
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    iget-object v11, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->Q7()Le/a/l/n0;

    move-result-object v11

    .line 134
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    invoke-direct {v9, v3, v6, v10, v11}, Le/a/l/p2/t1;-><init>(Le/a/l/p2/v0;Le/a/l/c2;Le/a/u3/g;Le/a/l/n0;)V

    .line 136
    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->C6()Le/a/l/n2/e;

    move-result-object v10

    .line 137
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->o3()Le/a/l/p2/a;

    move-result-object v11

    .line 139
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->T5()Le/a/l/p2/b1;

    move-result-object v12

    .line 141
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v1}, Le/a/l/v2/h/a;->a()Le/a/l/a/g;

    move-result-object v13

    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v14

    .line 143
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v1, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v15

    .line 145
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    .line 146
    invoke-direct/range {v3 .. v15}, Le/a/l/p2/e1;-><init>(Le/a/l/p2/r0;Le/a/l/p2/k0;Le/a/l/p2/i1;Le/a/l/p2/f1;Le/a/l/u2/a;Le/a/l/p2/t1;Le/a/l/n2/e;Le/a/l/p2/a;Le/a/l/p2/b1;Le/a/l/a/g;Ls1/w/f;Ls1/w/f;)V

    return-object v16

    .line 147
    :pswitch_8
    iget-object v1, v0, Le/a/l/v2/h/a$b;->a:Le/a/l/v2/h/a;

    .line 148
    new-instance v24, Le/a/l/v2/h/g;

    move-object/from16 v3, v24

    iget-object v4, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->m4()Le/a/l/a/y;

    move-result-object v5

    move-object v4, v5

    .line 149
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    iget-object v5, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v6

    move-object v5, v6

    .line 151
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    iget-object v6, v1, Le/a/l/v2/h/a;->g:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/l/p2/d1;

    iget-object v7, v1, Le/a/l/v2/h/a;->i:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/l/p2/q0;

    iget-object v8, v1, Le/a/l/v2/h/a;->j:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/p5/h0;

    iget-object v9, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->Q7()Le/a/l/n0;

    move-result-object v10

    move-object v9, v10

    .line 153
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    iget-object v10, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v10}, Le/a/j2;->F()Le/a/l/c2;

    move-result-object v11

    move-object v10, v11

    .line 155
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    iget-object v11, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v12

    move-object v11, v12

    .line 157
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    iget-object v12, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v12}, Le/a/j2;->x4()Le/a/z4/d;

    move-result-object v13

    move-object v12, v13

    .line 159
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    iget-object v13, v1, Le/a/l/v2/h/a;->k:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/l/o2/e;

    iget-object v14, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->y6()Le/a/l/s2/a;

    move-result-object v15

    move-object v14, v15

    .line 161
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    iget-object v15, v1, Le/a/l/v2/h/a;->l:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/l/v2/i/a/c;

    iget-object v0, v1, Le/a/l/v2/h/a;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Le/a/l/v2/i/a/f;

    .line 163
    new-instance v0, Le/a/l/p2/k;

    move-object/from16 v17, v0

    move-object/from16 v25, v3

    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->B7()Le/a/k3/j/g;

    move-result-object v3

    .line 164
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v26, v4

    .line 165
    iget-object v4, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->F()Le/a/l/c2;

    move-result-object v4

    .line 166
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v27, v5

    .line 167
    iget-object v5, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v5

    .line 168
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    invoke-direct {v0, v3, v4, v5}, Le/a/l/p2/k;-><init>(Le/a/k3/j/g;Le/a/l/c2;Ls1/w/f;)V

    .line 170
    iget-object v0, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->Z4()Le/a/l/a/c;

    move-result-object v0

    move-object/from16 v18, v0

    .line 171
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    new-instance v0, Le/a/l/a/s;

    move-object/from16 v19, v0

    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v3

    .line 173
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    iget-object v4, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v4

    .line 175
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    invoke-direct {v0, v3, v4}, Le/a/l/a/s;-><init>(Le/a/b0/q/z;Le/a/p5/c0;)V

    .line 177
    iget-object v0, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k3()Le/a/c0/h;

    move-result-object v0

    move-object/from16 v20, v0

    .line 178
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    iget-object v0, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    move-object/from16 v21, v0

    .line 180
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    new-instance v0, Le/a/r5/n0;

    move-object/from16 v22, v0

    iget-object v3, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k3()Le/a/c0/h;

    move-result-object v3

    .line 182
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    iget-object v4, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->P1()Le/a/r5/i0;

    move-result-object v4

    .line 184
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    iget-object v5, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v5

    .line 186
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v28, v6

    .line 187
    iget-object v6, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v6

    .line 188
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    invoke-direct {v0, v3, v4, v5, v6}, Le/a/r5/n0;-><init>(Le/a/c0/h;Le/a/r5/i0;Le/a/l/p2/v0;Ls1/w/f;)V

    .line 190
    iget-object v0, v1, Le/a/l/v2/h/a;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v0

    move-object/from16 v23, v0

    .line 191
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    .line 192
    invoke-direct/range {v3 .. v23}, Le/a/l/v2/h/g;-><init>(Le/a/l/a/y;Le/a/l/p2/v0;Le/a/l/p2/d1;Le/a/l/p2/q0;Le/a/p5/h0;Le/a/l/n0;Le/a/l/c2;Le/a/b0/o/a;Le/a/z4/d;Le/a/l/o2/e;Le/a/l/s2/a;Le/a/l/v2/i/a/c;Le/a/l/v2/i/a/f;Le/a/l/p2/k;Le/a/l/a/c;Le/a/l/a/s;Le/a/c0/h;Le/a/u3/g;Le/a/r5/n0;Ls1/w/f;)V

    return-object v24

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
