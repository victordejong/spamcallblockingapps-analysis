.class public final Le/a/a/c/i/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/i/n;
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
.field public final a:Le/a/a/c/i/n;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/c/i/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/c/i/n$b;->a:Le/a/a/c/i/n;

    .line 3
    iput p2, p0, Le/a/a/c/i/n$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/c/i/n$b;->b:I

    const-string v2, "simInfoCache"

    const-string v3, "multiSimManager"

    const-string v4, "resourceProvider"

    const-string v5, "Cannot return null from a non-@Nullable component method"

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    .line 2
    iget-object v1, v0, Le/a/a/c/i/n$b;->a:Le/a/a/c/i/n;

    .line 3
    new-instance v13, Le/a/a/c/i/b;

    iget-object v6, v1, Le/a/a/c/i/n;->e:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Le/a/a/c/i/d;

    iget-object v6, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v8

    .line 4
    invoke-static {v8, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v6, v1, Le/a/a/c/i/n;->a:Le/a/a/c/i/c;

    invoke-static {v6}, Le/a/c/p/a;->p2(Le/a/a/c/i/c;)Le/a/p5/h0;

    move-result-object v9

    iget-object v6, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v10

    .line 6
    invoke-static {v10, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v6, v1, Le/a/a/c/i/n;->a:Le/a/a/c/i/c;

    invoke-static {v6}, Le/a/c/p/a;->p2(Le/a/a/c/i/c;)Le/a/p5/h0;

    move-result-object v11

    iget-object v12, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v12}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v12

    .line 8
    invoke-static {v12, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v14, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->u3()Le/a/e4/b0;

    move-result-object v14

    .line 10
    invoke-static {v14, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v2, Le/a/a/c/k6;

    invoke-interface {v12}, Le/a/e4/p;->h()Z

    move-result v3

    invoke-direct {v2, v11, v3, v14}, Le/a/a/c/k6;-><init>(Le/a/p5/h0;ZLe/a/e4/b0;)V

    .line 13
    iget-object v1, v1, Le/a/a/c/i/n;->a:Le/a/a/c/i/c;

    .line 14
    iget-boolean v12, v1, Le/a/a/c/i/c;->f:Z

    move-object v6, v13

    move-object v11, v2

    .line 15
    invoke-direct/range {v6 .. v12}, Le/a/a/c/i/b;-><init>(Le/a/a/c/i/d;Le/a/r2/f;Le/a/p5/h0;Le/a/o5/b0;Le/a/a/c/j6;Z)V

    return-object v13

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/a/c/i/n$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 17
    :cond_1
    iget-object v1, v0, Le/a/a/c/i/n$b;->a:Le/a/a/c/i/n;

    .line 18
    new-instance v2, Le/a/a/i1/c;

    iget-object v3, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v7

    .line 19
    invoke-static {v7, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v3, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v8

    .line 21
    invoke-static {v8, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v3, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v9

    .line 23
    invoke-static {v9, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v3, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v10

    .line 25
    invoke-static {v10, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v3, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v11

    .line 27
    invoke-static {v11, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v3, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v12

    .line 29
    invoke-static {v12, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v1, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v13

    .line 31
    invoke-static {v13, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v2

    .line 32
    invoke-direct/range {v6 .. v13}, Le/a/a/i1/c;-><init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V

    return-object v2

    .line 33
    :cond_2
    new-instance v1, Le/a/a/c/i/e;

    invoke-direct {v1}, Le/a/a/c/i/e;-><init>()V

    return-object v1

    .line 34
    :cond_3
    iget-object v1, v0, Le/a/a/c/i/n$b;->a:Le/a/a/c/i/n;

    .line 35
    new-instance v21, Le/a/a/c/i/k;

    iget-object v6, v1, Le/a/a/c/i/n;->a:Le/a/a/c/i/c;

    .line 36
    iget-object v7, v6, Le/a/a/c/i/c;->b:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v6, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v6, v1, Le/a/a/c/i/n;->a:Le/a/a/c/i/c;

    .line 39
    iget-wide v8, v6, Le/a/a/c/i/c;->c:J

    .line 40
    iget-wide v10, v6, Le/a/a/c/i/c;->d:J

    .line 41
    iget-boolean v12, v6, Le/a/a/c/i/c;->e:Z

    .line 42
    iget-boolean v13, v6, Le/a/a/c/i/c;->f:Z

    .line 43
    iget-object v14, v6, Le/a/a/c/i/c;->g:Lcom/truecaller/flashsdk/models/FlashContact;

    .line 44
    iget-object v6, v1, Le/a/a/c/i/n;->e:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Le/a/a/c/i/d;

    iget-object v6, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->Z0()Le/a/r2/f;

    move-result-object v6

    .line 45
    invoke-static {v6, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v0, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v0

    .line 47
    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v16, v6

    .line 48
    iget-object v6, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->J6()Le/a/d/c0/s1;

    move-result-object v6

    .line 49
    invoke-static {v6, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v17, v6

    .line 50
    iget-object v6, v1, Le/a/a/c/i/n;->a:Le/a/a/c/i/c;

    move-object/from16 v18, v0

    invoke-static {v6}, Le/a/c/p/a;->p2(Le/a/a/c/i/c;)Le/a/p5/h0;

    move-result-object v0

    move-object/from16 v19, v15

    iget-object v15, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v15}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v15

    .line 51
    invoke-static {v15, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v20, v14

    .line 52
    iget-object v14, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v14

    .line 53
    invoke-static {v14, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move/from16 v29, v13

    .line 54
    iget-object v13, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v13}, Le/a/j2;->u3()Le/a/e4/b0;

    move-result-object v13

    .line 55
    invoke-static {v13, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move/from16 v30, v12

    .line 56
    iget-object v12, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v12}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v12

    .line 57
    invoke-static {v12, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-wide/from16 v31, v10

    .line 58
    iget-object v10, v1, Le/a/a/c/i/n;->g:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/a/i1/b;

    .line 59
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v15, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dateHelper"

    invoke-static {v12, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "messageUtil"

    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v2, Le/a/a/c/j;

    .line 61
    invoke-interface {v14}, Le/a/e4/p;->h()Z

    move-result v26

    move-object/from16 v22, v2

    move-object/from16 v23, v0

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v27, v10

    move-object/from16 v28, v15

    .line 62
    invoke-direct/range {v22 .. v28}, Le/a/a/c/j;-><init>(Le/a/p5/h0;Le/a/o5/b0;Le/a/e4/b0;ZLe/a/a/i1/b;Landroid/content/Context;)V

    .line 63
    iget-object v0, v1, Le/a/a/c/i/n;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v0

    .line 64
    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v21

    move-wide/from16 v10, v31

    move/from16 v12, v30

    move/from16 v13, v29

    move-object/from16 v14, v20

    move-object/from16 v15, v19

    move-object/from16 v17, v18

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v20, v0

    .line 65
    invoke-direct/range {v6 .. v20}, Le/a/a/c/i/k;-><init>(Lcom/truecaller/data/entity/messaging/Participant;JJZZLcom/truecaller/flashsdk/models/FlashContact;Le/a/a/c/i/d;Le/a/r2/f;Le/a/r2/l;Le/a/d/c0/s1;Le/a/a/c/l5;Le/a/p5/c0;)V

    return-object v21
.end method
