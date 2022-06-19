.class public final Le/a/a/c/c/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/c/c;
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
.field public final a:Le/a/a/c/c/c;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/c/c/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/c/c/c$b;->a:Le/a/a/c/c/c;

    .line 3
    iput p2, p0, Le/a/a/c/c/c$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/c/c/c$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 2
    iget-object v1, v0, Le/a/a/c/c/c$b;->a:Le/a/a/c/c/c;

    .line 3
    new-instance v3, Le/a/a/c/o8/e;

    iget-object v4, v1, Le/a/a/c/c/c;->f:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/c/o8/b;

    iget-object v5, v1, Le/a/a/c/c/c;->f:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/c/o8/a;

    iget-object v6, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v6

    .line 4
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v1, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v1

    .line 6
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-direct {v3, v4, v5, v6, v1}, Le/a/a/c/o8/e;-><init>(Le/a/a/c/o8/b;Le/a/a/c/o8/a;Le/a/o5/f0;Le/a/a/k/a/a/q;)V

    return-object v3

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/a/c/c/c$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 9
    :cond_1
    iget-object v1, v0, Le/a/a/c/c/c$b;->a:Le/a/a/c/c/c;

    .line 10
    new-instance v2, Le/a/a/c/c/i;

    iget-object v3, v1, Le/a/a/c/c/c;->b:Le/a/a/c/c/k;

    invoke-static {v3}, Le/a/c/p/a;->X(Le/a/a/c/c/k;)Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    move-result-object v3

    iget-object v4, v1, Le/a/a/c/c/c;->d:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/c/c/o;

    iget-object v1, v1, Le/a/a/c/c/c;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/c/l;

    invoke-direct {v2, v3, v4, v1}, Le/a/a/c/c/i;-><init>(Lcom/truecaller/messaging/conversation/draft/DraftArguments;Le/a/a/c/c/o;Le/a/a/c/c/l;)V

    return-object v2

    .line 11
    :cond_2
    iget-object v1, v0, Le/a/a/c/c/c$b;->a:Le/a/a/c/c/c;

    .line 12
    new-instance v9, Le/a/a/c/o8/i;

    iget-object v3, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 13
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v3, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v5

    .line 15
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v3, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v6

    .line 17
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v3, v1, Le/a/a/c/c/c;->d:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v1, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v8

    .line 19
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v9

    .line 20
    invoke-direct/range {v3 .. v8}, Le/a/a/c/o8/i;-><init>(Ls1/w/f;Le/a/r2/l;Le/a/r2/f;Lo3/a;Le/a/a/k/a/a/q;)V

    return-object v9

    .line 21
    :cond_3
    iget-object v1, v0, Le/a/a/c/c/c$b;->a:Le/a/a/c/c/c;

    .line 22
    new-instance v23, Le/a/a/c/c/r;

    move-object/from16 v3, v23

    iget-object v4, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v5

    move-object v4, v5

    .line 23
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v5, v1, Le/a/a/c/c/c;->b:Le/a/a/c/c/k;

    invoke-static {v5}, Le/a/c/p/a;->X(Le/a/a/c/c/k;)Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    move-result-object v5

    iget-object v6, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->F0()Le/a/r2/f;

    move-result-object v7

    move-object v6, v7

    .line 25
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v7, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->S1()Le/a/o5/u0;

    move-result-object v8

    move-object v7, v8

    .line 27
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v8, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v9

    move-object v8, v9

    .line 29
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v9, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->z5()Le/a/a/c1/d;

    move-result-object v10

    move-object v9, v10

    .line 31
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v10, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v10}, Le/a/j2;->v7()Le/a/a/s0/d;

    move-result-object v11

    move-object v10, v11

    .line 33
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v11, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v12

    move-object v11, v12

    .line 35
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    new-instance v13, Le/a/o5/v1;

    move-object v12, v13

    iget-object v14, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v14

    .line 37
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    invoke-direct {v13, v14}, Le/a/o5/v1;-><init>(Landroid/content/ContentResolver;)V

    .line 39
    new-instance v14, Le/a/p5/j;

    move-object v13, v14

    invoke-direct {v14}, Le/a/p5/j;-><init>()V

    iget-object v14, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->t1()Le/a/r2/f;

    move-result-object v15

    move-object v14, v15

    .line 40
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    new-instance v24, Le/a/a/i1/c;

    move-object/from16 v15, v24

    iget-object v0, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v0

    .line 42
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v32, v3

    .line 43
    iget-object v3, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v3

    .line 44
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v33, v4

    .line 45
    iget-object v4, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v4

    .line 46
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v34, v5

    .line 47
    iget-object v5, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v5

    .line 48
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v35, v6

    .line 49
    iget-object v6, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v6

    .line 50
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v36, v7

    .line 51
    iget-object v7, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v7

    .line 52
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v37, v8

    .line 53
    iget-object v8, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v8

    .line 54
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    .line 55
    invoke-direct/range {v24 .. v31}, Le/a/a/i1/c;-><init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V

    .line 56
    iget-object v0, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v0

    move-object/from16 v16, v0

    .line 57
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v0, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k4()Le/a/b0/q/b;

    move-result-object v0

    move-object/from16 v17, v0

    .line 59
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v0, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v0

    move-object/from16 v18, v0

    .line 61
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    new-instance v0, Le/a/a/c/c/f;

    move-object/from16 v19, v0

    iget-object v3, v1, Le/a/a/c/c/c;->b:Le/a/a/c/c/k;

    invoke-static {v3}, Le/a/c/p/a;->X(Le/a/a/c/c/k;)Lcom/truecaller/messaging/conversation/draft/DraftArguments;

    move-result-object v3

    iget-object v4, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v4

    .line 63
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-direct {v0, v3, v4}, Le/a/a/c/c/f;-><init>(Lcom/truecaller/messaging/conversation/draft/DraftArguments;Le/a/q2/a;)V

    .line 65
    iget-object v0, v1, Le/a/a/c/c/c;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Le/a/a/c/o8/g;

    iget-object v0, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v0

    move-object/from16 v21, v0

    .line 66
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    iget-object v0, v1, Le/a/a/c/c/c;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v0

    move-object/from16 v22, v0

    .line 68
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    move-object/from16 v6, v35

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    .line 69
    invoke-direct/range {v3 .. v22}, Le/a/a/c/c/r;-><init>(Ls1/w/f;Lcom/truecaller/messaging/conversation/draft/DraftArguments;Le/a/r2/f;Le/a/o5/u0;Le/a/a/k/a/a/q;Le/a/a/c1/d;Le/a/a/s0/d;Le/a/a/i0;Le/a/o5/u1;Le/a/p5/j;Le/a/r2/f;Le/a/a/i1/b;Le/a/p5/c0;Le/a/b0/q/b;Le/a/o5/b0;Le/a/a/c/c/f;Le/a/a/c/o8/g;Le/a/u3/g;Le/a/a/k/t;)V

    return-object v23
.end method
