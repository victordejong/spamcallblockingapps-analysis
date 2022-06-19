.class public final Le/a/a/c/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/b/c;
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
.field public final a:Le/a/a/c/b/c;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/c/b/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 3
    iput p2, p0, Le/a/a/c/b/c$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/c/b/c$b;->b:I

    const/4 v2, 0x0

    const-string v3, "context"

    const-string v4, "Cannot return null from a non-@Nullable @Provides method"

    const-string v5, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/a/c/b/c$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 4
    new-instance v2, Le/a/a/d/a/i;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    .line 5
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v4, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v4

    .line 7
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v6, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v6

    .line 9
    invoke-static {v6, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v1, v1, Le/a/a/c/b/c;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/p5/h0;

    invoke-direct {v2, v3, v4, v6, v1}, Le/a/a/d/a/i;-><init>(Le/a/o5/f0;Le/a/a/i0;Le/a/b0/o/a;Le/a/p5/h0;)V

    return-object v2

    .line 11
    :pswitch_1
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 12
    new-instance v2, Le/a/a/c/b/q;

    .line 13
    iget-object v3, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    iget-object v6, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v6

    .line 14
    invoke-static {v6, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "actorsThreads"

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v6}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v3

    const-string v6, "actorsThreads.ui()"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v6, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    .line 18
    iget-object v6, v6, Le/a/a/c/b/f;->b:Lcom/truecaller/messaging/data/types/Conversation;

    .line 19
    invoke-static {v6, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v1, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v1

    .line 21
    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    invoke-direct {v2, v3, v6, v1}, Le/a/a/c/b/q;-><init>(Le/a/r2/j;Lcom/truecaller/messaging/data/types/Conversation;Le/a/r2/f;)V

    return-object v2

    .line 23
    :pswitch_2
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 24
    new-instance v2, Le/a/a/c/k/a/o;

    iget-object v3, v1, Le/a/a/c/b/c;->m:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/b/c;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/b/c;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v10

    .line 25
    invoke-static {v10, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v3, v1, Le/a/a/c/b/c;->o:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/k/a/j$b;

    iget-object v3, v1, Le/a/a/c/b/c;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Le/a/a/c/k/a/j$a;

    iget-object v3, v1, Le/a/a/c/b/c;->s:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Le/a/a/c/t7;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v14

    .line 27
    invoke-static {v14, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v15

    .line 29
    invoke-static {v15, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v1, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v1

    .line 31
    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v2

    move-object/from16 v16, v1

    .line 32
    invoke-direct/range {v6 .. v16}, Le/a/a/c/k/a/o;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/a/c/t7;Le/a/o5/b0;Le/a/u3/g;Le/a/o5/f0;)V

    return-object v2

    .line 33
    :pswitch_3
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 34
    new-instance v2, Le/a/a/c/k/a/q;

    iget-object v3, v1, Le/a/a/c/b/c;->m:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/b/c;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v9

    .line 35
    invoke-static {v9, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v3, v1, Le/a/a/c/b/c;->s:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/c/t7;

    iget-object v3, v1, Le/a/a/c/b/c;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/b/c;->o:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Le/a/a/c/k/a/j$b;

    iget-object v3, v1, Le/a/a/c/b/c;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Le/a/a/c/k/a/j$a;

    iget-object v1, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v14

    .line 37
    invoke-static {v14, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v2

    .line 38
    invoke-direct/range {v6 .. v14}, Le/a/a/c/k/a/q;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/k/t;Le/a/a/c/t7;Le/a/a/c/w3;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/u3/g;)V

    return-object v2

    .line 39
    :pswitch_4
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 40
    new-instance v2, Le/a/a/c/b/s;

    move-object v6, v2

    iget-object v3, v1, Le/a/a/c/b/c;->m:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/b/c;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/b/c;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v3

    move-object v10, v3

    .line 41
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iget-object v3, v1, Le/a/a/c/b/c;->o:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/k/a/j$b;

    iget-object v3, v1, Le/a/a/c/b/c;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Le/a/a/c/k/a/j$a;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b7()Le/a/o5/m;

    move-result-object v3

    move-object v13, v3

    .line 43
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v3

    move-object v14, v3

    .line 45
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v3, v1, Le/a/a/c/b/c;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Le/a/a/i1/b;

    iget-object v3, v1, Le/a/a/c/b/c;->s:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Le/a/a/c/t7;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n0()Le/a/a/k/a/i1;

    move-result-object v3

    move-object/from16 v17, v3

    .line 47
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object/from16 v18, v3

    .line 49
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b4()Le/a/a/c/a/n;

    move-result-object v3

    move-object/from16 v19, v3

    .line 51
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S5()Le/a/a/c/a/g;

    move-result-object v3

    move-object/from16 v20, v3

    .line 53
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j1()Le/a/a/c/a/o;

    move-result-object v3

    move-object/from16 v21, v3

    .line 55
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v3

    move-object/from16 v22, v3

    .line 57
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v3, v1, Le/a/a/c/b/c;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Le/a/a/c/k/a/h;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    move-object/from16 v24, v3

    .line 59
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v3, v1, Le/a/a/c/b/c;->v:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Le/a/c/a/c/h/j;

    iget-object v1, v1, Le/a/a/c/b/c;->x:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Le/a/a/i1/f;

    invoke-direct/range {v6 .. v26}, Le/a/a/c/b/s;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/o5/m;Le/a/o5/b0;Le/a/a/i1/b;Le/a/a/c/t7;Le/a/a/k/a/i1;Le/a/u3/g;Le/a/a/c/a/n;Le/a/a/c/a/g;Le/a/a/c/a/o;Le/a/c/b/j;Le/a/a/c/k/a/h;Le/a/o5/f0;Le/a/c/a/c/h/j;Le/a/a/i1/f;)V

    return-object v2

    .line 61
    :pswitch_5
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 62
    new-instance v4, Le/a/a/i1/g;

    .line 63
    iget-object v6, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    iget-object v7, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v10

    .line 64
    invoke-static {v10, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iget-object v7, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v11

    .line 66
    invoke-static {v11, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    iget-object v7, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->K2()Le/a/h0/j;

    move-result-object v12

    .line 68
    invoke-static {v12, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    iget-object v7, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v13

    .line 70
    invoke-static {v13, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iget-object v7, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v14

    .line 72
    invoke-static {v14, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iget-object v7, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v15

    .line 74
    invoke-static {v15, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iget-object v7, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v7

    .line 76
    invoke-static {v7, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    iget-object v8, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->q3()Le/m/f/a/j;

    move-result-object v9

    .line 78
    invoke-static {v9, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "eventsTracker"

    invoke-static {v11, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "filterManager"

    invoke-static {v12, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "analytics"

    invoke-static {v13, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "networkUtil"

    invoke-static {v14, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "clock"

    invoke-static {v15, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tagDisplayUtil"

    invoke-static {v7, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "phoneNumberUtil"

    invoke-static {v9, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v6, Le/a/f4/g/g;

    const-string v16, "conversation"

    move-object v8, v6

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v17}, Le/a/f4/g/g;-><init>(Ljava/lang/String;Landroid/content/Context;Le/a/r2/f;Le/a/h0/j;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;Le/a/g5/p;Le/m/f/a/j;)V

    .line 81
    iget-object v7, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    iget-object v8, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v8

    .line 82
    invoke-static {v8, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v3, Lcom/truecaller/network/search/BulkSearcherImpl;

    const/16 v7, 0x14

    const-string v9, "conversation"

    invoke-direct {v3, v8, v7, v9, v2}, Lcom/truecaller/network/search/BulkSearcherImpl;-><init>(Landroid/content/Context;ILjava/lang/String;Le/a/f4/g/j$a;)V

    .line 85
    iget-object v1, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->A6()Le/a/w4/d;

    move-result-object v1

    .line 86
    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    invoke-direct {v4, v6, v3, v1}, Le/a/a/i1/g;-><init>(Le/a/f4/g/f;Le/a/f4/g/j;Le/a/w4/d;)V

    return-object v4

    .line 88
    :pswitch_6
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 89
    iget-object v1, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    .line 90
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v1, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;

    invoke-direct {v1}, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;-><init>()V

    return-object v1

    .line 92
    :pswitch_7
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 93
    new-instance v2, Le/a/a/c/k/a/i;

    iget-object v1, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v1

    .line 94
    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    invoke-direct {v2, v1}, Le/a/a/c/k/a/i;-><init>(Le/a/o5/b0;)V

    return-object v2

    .line 96
    :pswitch_8
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 97
    iget-object v1, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    .line 98
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Le/a/a/c/r8/b;

    invoke-direct {v1}, Le/a/a/c/r8/b;-><init>()V

    return-object v1

    .line 100
    :pswitch_9
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 101
    iget-object v2, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    iget-object v1, v1, Le/a/a/c/b/c;->r:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/r8/b;

    .line 102
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "viewCacher"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v2, Le/a/a/c/u7;

    invoke-direct {v2, v1}, Le/a/a/c/u7;-><init>(Le/a/a/c/r8/b;)V

    return-object v2

    .line 104
    :pswitch_a
    new-instance v1, Le/a/a/c/b/d;

    invoke-direct {v1}, Le/a/a/c/b/d;-><init>()V

    return-object v1

    .line 105
    :pswitch_b
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 106
    new-instance v2, Le/a/a/c/b/e;

    iget-object v1, v1, Le/a/a/c/b/c;->l:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/b/g;

    invoke-direct {v2, v1}, Le/a/a/c/b/e;-><init>(Le/a/a/c/b/g;)V

    return-object v2

    .line 107
    :pswitch_c
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 108
    iget-object v1, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    .line 109
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v3, Le/a/a/c/o5;

    sget-object v4, Lcom/truecaller/messaging/conversation/ConversationMode;->DEFAULT:Lcom/truecaller/messaging/conversation/ConversationMode;

    iget-object v5, v1, Le/a/a/c/b/f;->b:Lcom/truecaller/messaging/data/types/Conversation;

    iget-wide v5, v5, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Le/a/a/c/o5;-><init>(Lcom/truecaller/messaging/conversation/ConversationMode;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 111
    iget-object v1, v1, Le/a/a/c/b/f;->b:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 112
    iput-object v1, v3, Le/a/a/c/o5;->l:[Lcom/truecaller/data/entity/messaging/Participant;

    return-object v3

    .line 113
    :pswitch_d
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 114
    new-instance v2, Le/a/a/c/b/l;

    move-object v6, v2

    iget-object v3, v1, Le/a/a/c/b/c;->m:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/a/c/m5;

    iget-object v3, v1, Le/a/a/c/b/c;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/a/c/l5;

    iget-object v3, v1, Le/a/a/c/b/c;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v3

    move-object v10, v3

    .line 115
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iget-object v3, v1, Le/a/a/c/b/c;->o:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/a/c/k/a/j$b;

    iget-object v3, v1, Le/a/a/c/b/c;->q:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Le/a/a/c/k/a/j$a;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b7()Le/a/o5/m;

    move-result-object v3

    move-object v13, v3

    .line 117
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v3

    move-object v14, v3

    .line 119
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v3, v1, Le/a/a/c/b/c;->i:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Le/a/a/i1/b;

    iget-object v3, v1, Le/a/a/c/b/c;->s:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Le/a/a/c/t7;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->n0()Le/a/a/k/a/i1;

    move-result-object v3

    move-object/from16 v17, v3

    .line 121
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    move-object/from16 v18, v3

    .line 123
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b4()Le/a/a/c/a/n;

    move-result-object v3

    move-object/from16 v19, v3

    .line 125
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S5()Le/a/a/c/a/g;

    move-result-object v3

    move-object/from16 v20, v3

    .line 127
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j1()Le/a/a/c/a/o;

    move-result-object v3

    move-object/from16 v21, v3

    .line 129
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v3

    move-object/from16 v22, v3

    .line 131
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v3, v1, Le/a/a/c/b/c;->u:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Le/a/a/c/k/a/h;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v3

    move-object/from16 v24, v3

    .line 133
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    iget-object v3, v1, Le/a/a/c/b/c;->v:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Le/a/c/a/c/h/j;

    iget-object v1, v1, Le/a/a/c/b/c;->x:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Le/a/a/i1/f;

    invoke-direct/range {v6 .. v26}, Le/a/a/c/b/l;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/o5/m;Le/a/o5/b0;Le/a/a/i1/b;Le/a/a/c/t7;Le/a/a/k/a/i1;Le/a/u3/g;Le/a/a/c/a/n;Le/a/a/c/a/g;Le/a/a/c/a/o;Le/a/c/b/j;Le/a/a/c/k/a/h;Le/a/o5/f0;Le/a/c/a/c/h/j;Le/a/a/i1/f;)V

    return-object v2

    .line 135
    :pswitch_e
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 136
    new-instance v2, Le/a/a/i1/c;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v7

    .line 137
    invoke-static {v7, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v8

    .line 139
    invoke-static {v8, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v9

    .line 141
    invoke-static {v9, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v10

    .line 143
    invoke-static {v10, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v11

    .line 145
    invoke-static {v11, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v12

    .line 147
    invoke-static {v12, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iget-object v1, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v13

    .line 149
    invoke-static {v13, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v2

    .line 150
    invoke-direct/range {v6 .. v13}, Le/a/a/i1/c;-><init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V

    return-object v2

    .line 151
    :pswitch_f
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 152
    iget-object v1, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    .line 153
    new-instance v2, Le/a/p5/i0;

    iget-object v1, v1, Le/a/a/c/b/f;->a:Landroid/content/Context;

    invoke-direct {v2, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 154
    :pswitch_10
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 155
    iget-object v2, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    iget-object v4, v1, Le/a/a/c/b/c;->g:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Le/a/p5/h0;

    iget-object v4, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v12

    .line 156
    invoke-static {v12, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    iget-object v4, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v4

    .line 158
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    iget-object v6, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->u3()Le/a/e4/b0;

    move-result-object v9

    .line 160
    invoke-static {v9, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 161
    iget-object v6, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v8

    .line 162
    invoke-static {v8, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    iget-object v1, v1, Le/a/a/c/b/c;->i:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Le/a/a/i1/b;

    .line 164
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resourceProvider"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "multiSimManager"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "simInfoCache"

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dateHelper"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "messageUtil"

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v1, Le/a/a/c/j;

    .line 166
    invoke-interface {v4}, Le/a/e4/p;->h()Z

    move-result v10

    move-object v6, v1

    .line 167
    invoke-direct/range {v6 .. v12}, Le/a/a/c/j;-><init>(Le/a/p5/h0;Le/a/o5/b0;Le/a/e4/b0;ZLe/a/a/i1/b;Landroid/content/Context;)V

    return-object v1

    .line 168
    :pswitch_11
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 169
    iget-object v1, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    .line 170
    invoke-interface {v1}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v1

    .line 171
    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 172
    :pswitch_12
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 173
    new-instance v2, Le/a/a/c/x3;

    iget-object v1, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v1

    .line 174
    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    invoke-direct {v2, v1}, Le/a/a/c/x3;-><init>(Landroid/content/ContentResolver;)V

    return-object v2

    .line 176
    :pswitch_13
    iget-object v1, v0, Le/a/a/c/b/c$b;->a:Le/a/a/c/b/c;

    .line 177
    new-instance v2, Le/a/a/c/b/j;

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v7

    .line 178
    invoke-static {v7, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    iget-object v3, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    .line 180
    iget-object v8, v3, Le/a/a/c/b/f;->b:Lcom/truecaller/messaging/data/types/Conversation;

    .line 181
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    iget-object v3, v1, Le/a/a/c/b/c;->b:Le/a/a/c/b/f;

    .line 183
    iget v9, v3, Le/a/a/c/b/f;->c:I

    .line 184
    iget-object v3, v1, Le/a/a/c/b/c;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/a/c/w3;

    iget-object v3, v1, Le/a/a/c/b/c;->f:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v3, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v12

    .line 185
    invoke-static {v12, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    iget-object v3, v1, Le/a/a/c/b/c;->j:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Le/a/a/c/l5;

    iget-object v1, v1, Le/a/a/c/b/c;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v14

    .line 187
    invoke-static {v14, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v2

    .line 188
    invoke-direct/range {v6 .. v14}, Le/a/a/c/b/j;-><init>(Ls1/w/f;Lcom/truecaller/messaging/data/types/Conversation;ILe/a/a/c/w3;Lo3/a;Le/a/a/i0;Le/a/a/c/l5;Le/a/q2/a;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
