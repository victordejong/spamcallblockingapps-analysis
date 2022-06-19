.class public final Le/a/a/e/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
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
.field public final a:Le/a/a/e/k;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/e/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/e/k$c;->a:Le/a/a/e/k;

    .line 3
    iput p2, p0, Le/a/a/e/k$c;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/e/k$c;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 2
    iget-object v1, v0, Le/a/a/e/k$c;->a:Le/a/a/e/k;

    .line 3
    new-instance v11, Le/a/a/i1/c;

    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v4

    .line 4
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v5

    .line 6
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v6

    .line 8
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v7

    .line 10
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v8

    .line 12
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v9

    .line 14
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-object v1, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v10

    .line 16
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v11

    .line 17
    invoke-direct/range {v3 .. v10}, Le/a/a/i1/c;-><init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V

    return-object v11

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/a/e/k$c;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 19
    :cond_1
    iget-object v1, v0, Le/a/a/e/k$c;->a:Le/a/a/e/k;

    .line 20
    new-instance v3, Le/a/a/e/z;

    iget-object v4, v1, Le/a/a/e/k;->j:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/e/d0;

    iget-object v5, v1, Le/a/a/e/k;->l:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/i1/b;

    .line 21
    new-instance v6, Le/a/x2/c;

    iget-object v1, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v1

    .line 22
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    invoke-direct {v6, v1}, Le/a/x2/c;-><init>(Le/a/o5/f0;)V

    .line 24
    invoke-direct {v3, v4, v5, v6}, Le/a/a/e/z;-><init>(Le/a/a/e/d0;Le/a/a/i1/b;Le/a/x2/c;)V

    return-object v3

    .line 25
    :cond_2
    iget-object v1, v0, Le/a/a/e/k$c;->a:Le/a/a/e/k;

    .line 26
    new-instance v3, Le/a/a/e/g0;

    iget-object v4, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 27
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v5, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v5

    .line 29
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v6, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v6

    .line 31
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v1, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->W4()Le/a/a/e/m;

    move-result-object v1

    .line 33
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    invoke-direct {v3, v4, v5, v6, v1}, Le/a/a/e/g0;-><init>(Ls1/w/f;Le/a/a/i0;Le/a/p5/c0;Le/a/a/e/m;)V

    return-object v3

    .line 35
    :cond_3
    iget-object v1, v0, Le/a/a/e/k$c;->a:Le/a/a/e/k;

    .line 36
    new-instance v9, Le/a/a/e/i;

    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 37
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v5

    .line 39
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v6

    .line 41
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v7

    .line 43
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iget-object v1, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->v7()Le/a/a/s0/d;

    move-result-object v8

    .line 45
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v9

    .line 46
    invoke-direct/range {v3 .. v8}, Le/a/a/e/i;-><init>(Ls1/w/f;Le/a/a/i0;Le/a/q2/a;Le/a/u3/g;Le/a/a/s0/d;)V

    return-object v9

    .line 47
    :cond_4
    iget-object v1, v0, Le/a/a/e/k$c;->a:Le/a/a/e/k;

    .line 48
    new-instance v10, Le/a/a/e/f;

    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v4

    .line 49
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v5

    .line 51
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v6

    .line 53
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v7

    .line 55
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->r()Le/a/b0/q/q;

    move-result-object v8

    .line 57
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v1, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v9

    .line 59
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v10

    .line 60
    invoke-direct/range {v3 .. v9}, Le/a/a/e/f;-><init>(Landroid/content/Context;Ls1/w/f;Le/a/u3/g;Le/a/p5/c0;Le/a/b0/q/q;Le/a/q2/a;)V

    return-object v10

    .line 61
    :cond_5
    iget-object v1, v0, Le/a/a/e/k$c;->a:Le/a/a/e/k;

    .line 62
    new-instance v16, Le/a/a/e/x;

    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 63
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v5

    .line 65
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v6

    .line 67
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W4()Le/a/a/e/m;

    move-result-object v7

    .line 69
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->v7()Le/a/a/s0/d;

    move-result-object v8

    .line 71
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v9

    .line 73
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v10

    .line 75
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v11

    .line 77
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->E()Le/a/b0/q/l0;

    move-result-object v12

    .line 79
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v13

    .line 81
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iget-object v3, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k3()Le/a/c0/h;

    move-result-object v14

    .line 83
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    iget-object v1, v1, Le/a/a/e/k;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->L1()Le/a/q2/d1/d;

    move-result-object v15

    .line 85
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, v16

    .line 86
    invoke-direct/range {v3 .. v15}, Le/a/a/e/x;-><init>(Ls1/w/f;Ls1/w/f;Le/a/a/i0;Le/a/a/e/m;Le/a/a/s0/d;Le/a/o5/b0;Le/a/q2/a;Le/a/p5/g;Le/a/b0/q/l0;Le/a/u3/g;Le/a/c0/h;Le/a/q2/d1/d;)V

    return-object v16
.end method
