.class public final Le/a/a/c/n/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/n/b;
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
.field public final a:Le/a/a/c/n/b;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/c/n/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 3
    iput p2, p0, Le/a/a/c/n/b$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/c/n/b$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/a/c/n/b$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 4
    new-instance v24, Le/a/a/c/n/g;

    move-object/from16 v3, v24

    iget-object v4, v1, Le/a/a/c/n/b;->l:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/c/m5;

    iget-object v5, v1, Le/a/a/c/n/b;->m:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/c/l5;

    iget-object v6, v1, Le/a/a/c/n/b;->e:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/a/c/w3;

    iget-object v7, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v8

    move-object v7, v8

    .line 5
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v8, v1, Le/a/a/c/n/b;->o:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/a/c/k/a/j$b;

    iget-object v9, v1, Le/a/a/c/n/b;->q:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/c/k/a/j$a;

    iget-object v10, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v10}, Le/a/j2;->b7()Le/a/o5/m;

    move-result-object v11

    move-object v10, v11

    .line 7
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v11, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v12

    move-object v11, v12

    .line 9
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Le/a/a/c/n/b;->a()Le/a/a/i1/c;

    move-result-object v12

    iget-object v13, v1, Le/a/a/c/n/b;->s:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/a/c/t7;

    iget-object v14, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->n0()Le/a/a/k/a/i1;

    move-result-object v15

    move-object v14, v15

    .line 11
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v15, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v15}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v15

    move-object/from16 v16, v15

    move-object/from16 v0, v16

    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v0, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b4()Le/a/a/c/a/n;

    move-result-object v0

    move-object/from16 v16, v0

    .line 15
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v0, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S5()Le/a/a/c/a/g;

    move-result-object v0

    move-object/from16 v17, v0

    .line 17
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v0, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->j1()Le/a/a/c/a/o;

    move-result-object v0

    move-object/from16 v18, v0

    .line 19
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v0, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v0

    move-object/from16 v19, v0

    .line 21
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v0, v1, Le/a/a/c/n/b;->u:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Le/a/a/c/k/a/h;

    iget-object v0, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v0

    move-object/from16 v21, v0

    .line 23
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v0, v1, Le/a/a/c/n/b;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Le/a/c/a/c/h/j;

    new-instance v0, Le/a/a/c/n/p;

    move-object/from16 v23, v0

    invoke-direct {v0}, Le/a/a/c/n/p;-><init>()V

    invoke-direct/range {v3 .. v23}, Le/a/a/c/n/g;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/o5/m;Le/a/o5/b0;Le/a/a/i1/b;Le/a/a/c/t7;Le/a/a/k/a/i1;Le/a/u3/g;Le/a/a/c/a/n;Le/a/a/c/a/g;Le/a/a/c/a/o;Le/a/c/b/j;Le/a/a/c/k/a/h;Le/a/o5/f0;Le/a/c/a/c/h/j;Le/a/a/i1/f;)V

    return-object v24

    .line 25
    :pswitch_1
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 26
    iget-object v1, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    .line 27
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v1, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;

    invoke-direct {v1}, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;-><init>()V

    return-object v1

    .line 29
    :pswitch_2
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 30
    new-instance v3, Le/a/a/c/k/a/i;

    iget-object v1, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v1

    .line 31
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    invoke-direct {v3, v1}, Le/a/a/c/k/a/i;-><init>(Le/a/o5/b0;)V

    return-object v3

    .line 33
    :pswitch_3
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 34
    iget-object v1, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    .line 35
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Le/a/a/c/r8/b;

    invoke-direct {v1}, Le/a/a/c/r8/b;-><init>()V

    return-object v1

    .line 37
    :pswitch_4
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 38
    iget-object v2, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    iget-object v1, v1, Le/a/a/c/n/b;->r:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/r8/b;

    .line 39
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "viewCacher"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v2, Le/a/a/c/u7;

    invoke-direct {v2, v1}, Le/a/a/c/u7;-><init>(Le/a/a/c/r8/b;)V

    return-object v2

    .line 41
    :pswitch_5
    new-instance v1, Le/a/a/c/n/o;

    invoke-direct {v1}, Le/a/a/c/n/o;-><init>()V

    return-object v1

    .line 42
    :pswitch_6
    new-instance v1, Le/a/a/c/n/q;

    invoke-direct {v1}, Le/a/a/c/n/q;-><init>()V

    return-object v1

    .line 43
    :pswitch_7
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 44
    iget-object v3, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    invoke-static {v3}, Le/a/c/p/a;->m2(Le/a/a/c/n/t;)Le/a/p5/h0;

    move-result-object v5

    iget-object v4, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v10

    .line 45
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v4, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->l()Le/a/e4/p;

    move-result-object v4

    .line 47
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v6, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->u3()Le/a/e4/b0;

    move-result-object v7

    .line 49
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iget-object v6, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v6

    .line 51
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v1}, Le/a/a/c/n/b;->a()Le/a/a/i1/c;

    move-result-object v9

    .line 53
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resourceProvider"

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "multiSimManager"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "simInfoCache"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dateHelper"

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "messageUtil"

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v1, Le/a/a/c/j;

    .line 55
    invoke-interface {v4}, Le/a/e4/p;->h()Z

    move-result v8

    move-object v4, v1

    .line 56
    invoke-direct/range {v4 .. v10}, Le/a/a/c/j;-><init>(Le/a/p5/h0;Le/a/o5/b0;Le/a/e4/b0;ZLe/a/a/i1/b;Landroid/content/Context;)V

    return-object v1

    .line 57
    :pswitch_8
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 58
    new-instance v2, Le/a/a/c/n/r;

    iget-object v1, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    .line 59
    iget-object v1, v1, Le/a/a/c/n/t;->d:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 60
    invoke-direct {v2, v1}, Le/a/a/c/n/r;-><init>([Lcom/truecaller/data/entity/messaging/Participant;)V

    return-object v2

    .line 61
    :pswitch_9
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 62
    new-instance v24, Le/a/a/c/n/e;

    move-object/from16 v3, v24

    iget-object v4, v1, Le/a/a/c/n/b;->l:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/c/m5;

    iget-object v5, v1, Le/a/a/c/n/b;->m:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/c/l5;

    iget-object v6, v1, Le/a/a/c/n/b;->e:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/a/c/w3;

    iget-object v7, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->V0()Le/a/a/k/t;

    move-result-object v8

    move-object v7, v8

    .line 63
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v8, v1, Le/a/a/c/n/b;->o:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/a/c/k/a/j$b;

    iget-object v9, v1, Le/a/a/c/n/b;->q:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/c/k/a/j$a;

    iget-object v10, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v10}, Le/a/j2;->b7()Le/a/o5/m;

    move-result-object v11

    move-object v10, v11

    .line 65
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v11, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v12

    move-object v11, v12

    .line 67
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v1}, Le/a/a/c/n/b;->a()Le/a/a/i1/c;

    move-result-object v12

    iget-object v13, v1, Le/a/a/c/n/b;->s:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/a/c/t7;

    iget-object v14, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->n0()Le/a/a/k/a/i1;

    move-result-object v15

    move-object v14, v15

    .line 69
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v15, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v15}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v15

    move-object/from16 v16, v15

    move-object/from16 v0, v16

    .line 71
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v0, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b4()Le/a/a/c/a/n;

    move-result-object v0

    move-object/from16 v16, v0

    .line 73
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v0, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S5()Le/a/a/c/a/g;

    move-result-object v0

    move-object/from16 v17, v0

    .line 75
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v0, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->j1()Le/a/a/c/a/o;

    move-result-object v0

    move-object/from16 v18, v0

    .line 77
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v0, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->R0()Le/a/c/b/j;

    move-result-object v0

    move-object/from16 v19, v0

    .line 79
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v0, v1, Le/a/a/c/n/b;->u:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Le/a/a/c/k/a/h;

    iget-object v0, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v0

    move-object/from16 v21, v0

    .line 81
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iget-object v0, v1, Le/a/a/c/n/b;->v:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Le/a/c/a/c/h/j;

    new-instance v0, Le/a/a/c/n/p;

    move-object/from16 v23, v0

    invoke-direct {v0}, Le/a/a/c/n/p;-><init>()V

    invoke-direct/range {v3 .. v23}, Le/a/a/c/n/e;-><init>(Le/a/a/c/m5;Le/a/a/c/l5;Le/a/a/c/w3;Le/a/a/k/t;Le/a/a/c/k/a/j$b;Le/a/a/c/k/a/j$a;Le/a/o5/m;Le/a/o5/b0;Le/a/a/i1/b;Le/a/a/c/t7;Le/a/a/k/a/i1;Le/a/u3/g;Le/a/a/c/a/n;Le/a/a/c/a/g;Le/a/a/c/a/o;Le/a/c/b/j;Le/a/a/c/k/a/h;Le/a/o5/f0;Le/a/c/a/c/h/j;Le/a/a/i1/f;)V

    return-object v24

    .line 83
    :pswitch_a
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 84
    new-instance v11, Le/a/a/c/n/d0;

    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v4

    .line 85
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    iget-object v3, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    invoke-static {v3}, Le/a/c/p/a;->g2(Le/a/a/c/n/t;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v5

    iget-object v3, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    .line 87
    iget-object v6, v3, Le/a/a/c/n/t;->c:Ljava/lang/String;

    .line 88
    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v7

    .line 89
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v8

    .line 91
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v3, v1, Le/a/a/c/n/b;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/c/w3;

    iget-object v1, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v10

    .line 93
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v11

    .line 94
    invoke-direct/range {v3 .. v10}, Le/a/a/c/n/d0;-><init>(Le/a/o5/b0;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Le/a/a/i0;Le/a/p5/c0;Le/a/a/c/w3;Le/a/u3/g;)V

    return-object v11

    .line 95
    :pswitch_b
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 96
    new-instance v9, Le/a/a/c/n/c;

    iget-object v3, v1, Le/a/a/c/n/b;->g:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/a/c/n/j;

    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v5

    .line 97
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v6

    .line 99
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v7

    .line 101
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v1, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v8

    .line 103
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v9

    .line 104
    invoke-direct/range {v3 .. v8}, Le/a/a/c/n/c;-><init>(Le/a/a/c/n/j;Le/a/a/k/a/a/q;Le/a/o5/f0;Le/a/o5/b0;Le/a/p5/c0;)V

    return-object v9

    .line 105
    :pswitch_c
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 106
    new-instance v9, Le/a/a/c/n/x;

    iget-object v3, v1, Le/a/a/c/n/b;->g:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/a/c/n/j;

    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v5

    .line 107
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g0()Le/a/o5/f0;

    move-result-object v6

    .line 109
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v7

    .line 111
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v1, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v8

    .line 113
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v9

    .line 114
    invoke-direct/range {v3 .. v8}, Le/a/a/c/n/x;-><init>(Le/a/a/c/n/j;Le/a/a/k/a/a/q;Le/a/o5/f0;Le/a/o5/b0;Le/a/p5/c0;)V

    return-object v9

    .line 115
    :pswitch_d
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 116
    iget-object v1, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    .line 117
    invoke-interface {v1}, Le/a/j2;->x3()Le/a/a/g/w;

    move-result-object v1

    .line 118
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 119
    :pswitch_e
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 120
    new-instance v2, Le/a/a/c/n/s;

    iget-object v1, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    invoke-static {v1}, Le/a/c/p/a;->g2(Le/a/a/c/n/t;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/a/c/n/s;-><init>(Lcom/truecaller/messaging/data/types/Message;)V

    return-object v2

    .line 121
    :pswitch_f
    iget-object v1, v0, Le/a/a/c/n/b$b;->a:Le/a/a/c/n/b;

    .line 122
    new-instance v15, Le/a/a/c/n/w;

    iget-object v3, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    invoke-static {v3}, Le/a/c/p/a;->g2(Le/a/a/c/n/t;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v4

    iget-object v3, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    .line 123
    iget-object v5, v3, Le/a/a/c/n/t;->c:Ljava/lang/String;

    .line 124
    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v3

    .line 125
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v6, "actorsThreads"

    .line 126
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-interface {v3}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v6

    const-string v3, "actorsThreads.ui()"

    invoke-static {v6, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v7

    .line 129
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->U6()Le/a/r2/f;

    move-result-object v8

    .line 131
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v9

    .line 133
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    iget-object v3, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    .line 135
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v10

    const-string v3, "TruecallerContract.Messa\u2026itiesView.getContentUri()"

    invoke-static {v10, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v3, v1, Le/a/a/c/n/b;->a:Le/a/a/c/n/t;

    .line 138
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v3, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v11, "msg/msg_im_group_reports"

    .line 140
    invoke-static {v3, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v3, "TruecallerContract.ImGro\u2026ortsTable.getContentUri()"

    .line 141
    invoke-static {v11, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v3, v1, Le/a/a/c/n/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->r4()Le/a/r2/f;

    move-result-object v12

    .line 143
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    iget-object v2, v1, Le/a/a/c/n/b;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Le/a/a/c/w3;

    iget-object v1, v1, Le/a/a/c/n/b;->f:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v14

    move-object v3, v15

    invoke-direct/range {v3 .. v14}, Le/a/a/c/n/w;-><init>(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Le/a/r2/j;Ls1/w/f;Le/a/r2/f;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Le/a/r2/f;Le/a/a/c/w3;Lo3/a;)V

    return-object v15

    nop

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
