.class public final Le/a/q4/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q4/b0;
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
.field public final a:Le/a/q4/b0;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/q4/b0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q4/b0$b;->a:Le/a/q4/b0;

    .line 3
    iput p2, p0, Le/a/q4/b0$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/q4/b0$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    const-string v3, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/q4/b0$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/q4/b0$b;->a:Le/a/q4/b0;

    .line 4
    iget-object v1, v1, Le/a/q4/b0;->b:Le/a/j2;

    .line 5
    invoke-interface {v1}, Le/a/j2;->P1()Le/a/r5/i0;

    move-result-object v1

    .line 6
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 7
    :pswitch_1
    iget-object v1, v0, Le/a/q4/b0$b;->a:Le/a/q4/b0;

    .line 8
    iget-object v4, v1, Le/a/q4/b0;->a:Le/a/q4/n0;

    iget-object v1, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v1

    .line 9
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "referral"

    .line 11
    invoke-interface {v1, v3}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v1

    .line 12
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 13
    :pswitch_2
    iget-object v1, v0, Le/a/q4/b0$b;->a:Le/a/q4/b0;

    .line 14
    iget-object v4, v1, Le/a/q4/b0;->a:Le/a/q4/n0;

    iget-object v2, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->q6()Le/a/w/c/a;

    move-result-object v5

    .line 15
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v2, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->n5()Le/a/h/b/w0/d;

    move-result-object v6

    .line 17
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v2, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->R6()Le/a/k3/j/b;

    move-result-object v7

    .line 19
    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v2, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->Z1()Le/a/w/b/b;

    move-result-object v8

    .line 21
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v2, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v9

    .line 23
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v2, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v10

    .line 25
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v2, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v11

    .line 27
    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v1, v1, Le/a/q4/b0;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Le/a/w/b/d/a;

    invoke-static/range {v4 .. v12}, Le/a/l4/k;->e0(Le/a/q4/n0;Le/a/w/c/a;Le/a/h/b/w0/d;Le/a/k3/j/b;Le/a/w/b/b;Le/a/b0/q/z;Le/a/h0/j;Le/a/h0/m;Le/a/w/b/d/a;)Le/a/q4/u;

    move-result-object v1

    return-object v1

    .line 29
    :pswitch_3
    iget-object v1, v0, Le/a/q4/b0$b;->a:Le/a/q4/b0;

    .line 30
    iget-object v2, v1, Le/a/q4/b0;->a:Le/a/q4/n0;

    iget-object v4, v1, Le/a/q4/b0;->g:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v1, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v1

    .line 31
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    check-cast v4, Le/a/q4/u;

    .line 33
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v2, Le/a/q4/i0;

    invoke-direct {v2, v4, v1}, Le/a/q4/i0;-><init>(Le/a/q4/u;Landroid/content/Context;)V

    return-object v2

    .line 35
    :pswitch_4
    iget-object v1, v0, Le/a/q4/b0$b;->a:Le/a/q4/b0;

    .line 36
    iget-object v3, v1, Le/a/q4/b0;->a:Le/a/q4/n0;

    iget-object v4, v1, Le/a/q4/b0;->h:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q4/h0;

    iget-object v1, v1, Le/a/q4/b0;->i:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/j;

    .line 37
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-class v3, Le/a/q4/h0;

    invoke-interface {v1, v3, v4}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 39
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 40
    :pswitch_5
    iget-object v1, v0, Le/a/q4/b0$b;->a:Le/a/q4/b0;

    .line 41
    iget-object v1, v1, Le/a/q4/b0;->b:Le/a/j2;

    .line 42
    invoke-interface {v1}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v1

    .line 43
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 44
    :pswitch_6
    iget-object v1, v0, Le/a/q4/b0$b;->a:Le/a/q4/b0;

    .line 45
    iget-object v1, v1, Le/a/q4/b0;->a:Le/a/q4/n0;

    .line 46
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Le/a/w/b/d/a;->a:Le/a/w/b/d/a;

    return-object v1

    .line 47
    :pswitch_7
    iget-object v1, v0, Le/a/q4/b0$b;->a:Le/a/q4/b0;

    .line 48
    iget-object v2, v1, Le/a/q4/b0;->a:Le/a/q4/n0;

    iget-object v4, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->Z1()Le/a/w/b/b;

    move-result-object v4

    .line 49
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v1, v1, Le/a/q4/b0;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/w/b/d/a;

    .line 51
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v2, Le/a/q4/p0;

    invoke-direct {v2, v4, v1}, Le/a/q4/p0;-><init>(Le/a/w/b/b;Le/a/w/b/d/a;)V

    return-object v2

    .line 53
    :pswitch_8
    iget-object v1, v0, Le/a/q4/b0$b;->a:Le/a/q4/b0;

    .line 54
    iget-object v2, v1, Le/a/q4/b0;->a:Le/a/q4/n0;

    iget-object v4, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->Z1()Le/a/w/b/b;

    move-result-object v6

    .line 55
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iget-object v4, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v7

    .line 57
    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v4, v1, Le/a/q4/b0;->e:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v9

    .line 59
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v5, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->q6()Le/a/w/c/a;

    move-result-object v10

    .line 61
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v5, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v11

    .line 63
    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v5, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v12

    .line 65
    invoke-static {v12, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v5, v1, Le/a/q4/b0;->f:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    iget-object v5, v1, Le/a/q4/b0;->j:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v14

    iget-object v5, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->n1()Le/a/n4/a;

    move-result-object v15

    .line 67
    invoke-static {v15, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v5, v1, Le/a/q4/b0;->k:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v16

    iget-object v5, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->K0()Le/a/s4/a;

    move-result-object v8

    .line 69
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v5, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v5

    .line 71
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v1, v1, Le/a/q4/b0;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->p4()Le/a/q4/j0;

    move-result-object v1

    .line 73
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-object v3, v4

    check-cast v3, Le/a/q4/p0;

    .line 75
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v2, Le/a/q4/o0;

    .line 77
    invoke-interface {v5}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v18

    move-object v5, v2

    move-object v4, v8

    move-object v8, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v1

    invoke-direct/range {v5 .. v19}, Le/a/q4/o0;-><init>(Le/a/w/b/b;Le/a/b0/o/a;Le/a/q4/p0;Le/a/p5/c0;Le/a/w/c/a;Le/a/o5/f0;Le/a/u3/g;Lo3/a;Lo3/a;Le/a/n4/a;Lo3/a;Le/a/s4/a;Le/a/r2/j;Le/a/q4/j0;)V

    return-object v2

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
