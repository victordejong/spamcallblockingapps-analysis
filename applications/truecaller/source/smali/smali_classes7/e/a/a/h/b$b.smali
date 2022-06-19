.class public final Le/a/a/h/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/h/b;
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
.field public final a:Le/a/a/h/b;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/h/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/h/b$b;->a:Le/a/a/h/b;

    .line 3
    iput p2, p0, Le/a/a/h/b$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/h/b$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 2
    iget-object v1, v0, Le/a/a/h/b$b;->a:Le/a/a/h/b;

    .line 3
    new-instance v13, Le/a/a/h/p;

    iget-object v3, v1, Le/a/a/h/b;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/a/h/l;

    iget-object v3, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v5

    .line 4
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v3, v1, Le/a/a/h/b;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/a/h/m;

    iget-object v3, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v7

    .line 6
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v3, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v8

    .line 8
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v3, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v9

    .line 10
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v3, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Y()Le/a/b0/e/r/a;

    move-result-object v10

    .line 12
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iget-object v3, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v11

    .line 14
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    new-instance v12, Le/a/a/i1/g;

    .line 16
    iget-object v3, v1, Le/a/a/h/b;->a:Le/a/a/h/f;

    iget-object v14, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v14

    .line 17
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v15, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v15}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v15

    .line 19
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v0, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v0

    .line 21
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v25, v11

    .line 22
    iget-object v11, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v11}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v11

    .line 23
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v26, v10

    .line 24
    iget-object v10, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v10}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v10

    .line 25
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v27, v9

    .line 26
    iget-object v9, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v9

    .line 27
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v28, v8

    .line 28
    iget-object v8, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v8

    .line 29
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v29, v7

    .line 30
    iget-object v7, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->q3()Le/m/f/a/j;

    move-result-object v7

    .line 31
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "context"

    invoke-static {v14, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v6

    const-string v6, "eventsTracker"

    invoke-static {v15, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "filterManager"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "analytics"

    invoke-static {v11, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "networkUtil"

    invoke-static {v10, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "clock"

    invoke-static {v9, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tagDisplayUtil"

    invoke-static {v8, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "phoneNumberUtil"

    invoke-static {v7, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v6, Le/a/f4/g/g;

    const-string v16, "imGroupInfo"

    move-object/from16 v18, v15

    move-object v15, v6

    move-object/from16 v17, v14

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v21, v10

    move-object/from16 v22, v9

    move-object/from16 v23, v8

    move-object/from16 v24, v7

    invoke-direct/range {v15 .. v24}, Le/a/f4/g/g;-><init>(Ljava/lang/String;Landroid/content/Context;Le/a/r2/f;Le/a/h0/j;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;Le/a/g5/p;Le/m/f/a/j;)V

    .line 34
    iget-object v0, v1, Le/a/a/h/b;->a:Le/a/a/h/f;

    iget-object v7, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v7

    .line 35
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/truecaller/network/search/BulkSearcherImpl;

    const/16 v3, 0x14

    const/4 v8, 0x0

    const-string v9, "imGroupInfo"

    invoke-direct {v0, v7, v3, v9, v8}, Lcom/truecaller/network/search/BulkSearcherImpl;-><init>(Landroid/content/Context;ILjava/lang/String;Le/a/f4/g/j$a;)V

    .line 38
    iget-object v1, v1, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->A6()Le/a/w4/d;

    move-result-object v1

    .line 39
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    invoke-direct {v12, v6, v0, v1}, Le/a/a/i1/g;-><init>(Le/a/f4/g/f;Le/a/f4/g/j;Le/a/w4/d;)V

    move-object v3, v13

    move-object/from16 v6, v30

    move-object/from16 v7, v29

    move-object/from16 v8, v28

    move-object/from16 v9, v27

    move-object/from16 v10, v26

    move-object/from16 v11, v25

    .line 41
    invoke-direct/range {v3 .. v12}, Le/a/a/h/p;-><init>(Le/a/a/h/l;Le/a/o5/f0;Le/a/a/h/m;Le/a/a/k/a/a/q;Le/a/a/i0;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/p5/c0;Le/a/a/i1/f;)V

    return-object v13

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    move-object/from16 v1, p0

    iget v2, v1, Le/a/a/h/b$b;->b:I

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_1
    move-object v1, v0

    .line 43
    iget-object v0, v1, Le/a/a/h/b$b;->a:Le/a/a/h/b;

    .line 44
    new-instance v18, Le/a/a/h/i;

    iget-object v3, v0, Le/a/a/h/b;->a:Le/a/a/h/f;

    .line 45
    iget-object v4, v3, Le/a/a/h/f;->a:Lcom/truecaller/messaging/data/types/Conversation;

    const-string v3, "Cannot return null from a non-@Nullable @Provides method"

    .line 46
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iget-object v3, v0, Le/a/a/h/b;->a:Le/a/a/h/f;

    iget-object v5, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v5

    .line 48
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "actorsThreads"

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {v5}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v5

    const-string v3, "actorsThreads.ui()"

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v3, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v6

    .line 52
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iget-object v3, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v7

    .line 54
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    iget-object v3, v0, Le/a/a/h/b;->a:Le/a/a/h/f;

    .line 56
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v8

    const-string v3, "ImGroupInfoTable.getContentUri()"

    invoke-static {v8, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v3, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v9

    .line 59
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v3, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v10

    .line 61
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v3, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v11

    .line 63
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v3, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v12

    .line 65
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v3, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v13

    .line 67
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v3, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->B3()Le/a/a/n/h;

    move-result-object v14

    .line 69
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v3, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v15

    .line 71
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v3, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    .line 73
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    new-instance v1, Le/a/a/h/e;

    move-object/from16 v16, v3

    iget-object v3, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    .line 75
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v17, v15

    .line 76
    iget-object v15, v0, Le/a/a/h/b;->b:Le/a/j2;

    invoke-interface {v15}, Le/a/j2;->X6()Le/a/a/g/g;

    move-result-object v15

    .line 77
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v0, v0, Le/a/a/h/b;->a:Le/a/a/h/f;

    .line 79
    new-instance v2, Le/a/p5/i0;

    iget-object v0, v0, Le/a/a/h/f;->b:Landroid/content/Context;

    invoke-direct {v2, v0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-direct {v1, v3, v15, v2}, Le/a/a/h/e;-><init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/p5/h0;)V

    move-object/from16 v0, v16

    move-object/from16 v3, v18

    move-object/from16 v15, v17

    move-object/from16 v17, v1

    .line 81
    invoke-direct/range {v3 .. v17}, Le/a/a/h/i;-><init>(Lcom/truecaller/messaging/data/types/Conversation;Le/a/r2/j;Le/a/r2/f;Landroid/content/ContentResolver;Landroid/net/Uri;Le/a/a/k/a/a/q;Le/a/q2/a;Le/a/r2/f;Le/a/a/i0;Le/a/p5/c0;Le/a/a/n/h;Ls1/w/f;Le/a/u3/g;Le/a/a/h/c;)V

    return-object v18
.end method
