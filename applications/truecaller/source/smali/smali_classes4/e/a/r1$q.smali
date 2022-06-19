.class public final Le/a/r1$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "q"
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
.field public final a:Le/a/r1;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/r1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/r1$q;->a:Le/a/r1;

    .line 3
    iput p2, p0, Le/a/r1$q;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    const-class v0, Le/a/a/k/z/d;

    iget v2, v1, Le/a/r1$q;->b:I

    const/4 v3, 0x1

    const/16 v4, 0x1d

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v2, v1, Le/a/r1$q;->b:I

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->V8(Le/a/r1;)Le/a/b0/q/c;

    move-result-object v0

    return-object v0

    .line 4
    :pswitch_1
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->U8(Le/a/r1;)Le/a/a/p;

    move-result-object v0

    return-object v0

    .line 5
    :pswitch_2
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->T8(Le/a/r1;)Le/a/a/y0/h0;

    move-result-object v0

    return-object v0

    .line 6
    :pswitch_3
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 7
    invoke-virtual {v0}, Le/a/r1;->rc()Le/a/h4/o;

    move-result-object v0

    return-object v0

    .line 8
    :pswitch_4
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 9
    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v0

    return-object v0

    .line 10
    :pswitch_5
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->S8(Le/a/r1;)Le/a/a/c/o/i;

    move-result-object v0

    return-object v0

    .line 11
    :pswitch_6
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->R8(Le/a/r1;)Le/a/a/g/a;

    move-result-object v0

    return-object v0

    .line 12
    :pswitch_7
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->Q8(Le/a/r1;)Le/a/a/i1/c;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_8
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 14
    new-instance v2, Le/a/a/y0/o;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/a/y0/o;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 15
    :pswitch_9
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 16
    new-instance v2, Le/a/a/y0/k;

    iget-object v0, v0, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-direct {v2, v0}, Le/a/a/y0/k;-><init>(Le/a/r2/f;)V

    return-object v2

    .line 17
    :pswitch_a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 18
    iget-object v2, v0, Le/a/r1;->n:Le/a/h0/l;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->w1:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Le/a/h0/m;

    iget-object v4, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->U(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    invoke-virtual {v0}, Le/a/r1;->Z9()Le/a/a/r0/b;

    move-result-object v9

    iget-object v4, v0, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Le/a/b0/q/z;

    invoke-virtual {v0}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v12

    iget-object v0, v0, Le/a/r1;->x1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Le/a/l/p2/v0;

    .line 19
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Le/a/h0/u;

    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v2, Le/a/h0/x/g;->a:Le/a/h0/x/g;

    .line 22
    monitor-enter v2

    .line 23
    :try_start_0
    sget-object v3, Lcom/truecaller/common/network/util/KnownEndpoints;->TOPSPAMMERS:Lcom/truecaller/common/network/util/KnownEndpoints;

    .line 24
    const-class v4, Le/a/h0/x/h;

    .line 25
    invoke-static {v3, v4}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/h0/x/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v2

    move-object v5, v0

    .line 27
    invoke-direct/range {v5 .. v13}, Le/a/h0/u;-><init>(Le/a/h0/m;Landroid/content/ContentResolver;Ls1/w/f;Le/a/a/r0/a;Le/a/h0/x/h;Le/a/b0/q/z;Le/a/b0/q/l0;Le/a/l/p2/v0;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 28
    monitor-exit v2

    throw v0

    .line 29
    :pswitch_b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 30
    new-instance v2, Le/a/a/b1/c;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->Vb()Le/a/f4/g/s;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/a/b1/c;-><init>(Ls1/w/f;Ls1/w/f;Le/a/f4/g/r;)V

    return-object v2

    .line 31
    :pswitch_c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 32
    new-instance v11, Le/a/a/y0/m;

    invoke-virtual {v0}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v5

    invoke-virtual {v0}, Le/a/r1;->S9()Le/a/w4/e;

    move-result-object v6

    iget-object v2, v0, Le/a/r1;->C4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/a/b1/b;

    iget-object v2, v0, Le/a/r1;->D4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/h0/t;

    iget-object v2, v0, Le/a/r1;->F4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/a/y0/j;

    invoke-virtual {v0}, Le/a/r1;->R6()Le/a/k3/j/b;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/a/y0/m;-><init>(Le/a/o5/f0;Le/a/p5/g;Le/a/p5/u;Le/a/w4/d;Le/a/a/b1/b;Le/a/h0/t;Le/a/a/y0/j;Le/a/k3/j/b;)V

    return-object v11

    .line 33
    :pswitch_d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 34
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    .line 35
    new-instance v3, Le/a/b0/a/a0/a;

    new-instance v4, Ln3/b/e/c;

    const v5, 0x7f1303b7

    invoke-direct {v4, v2, v5}, Ln3/b/e/c;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f070363

    invoke-direct {v3, v4, v0, v2}, Le/a/b0/a/a0/a;-><init>(Landroid/content/Context;Ls1/w/f;I)V

    return-object v3

    .line 36
    :pswitch_e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 37
    new-instance v21, Le/a/a/y0/d0;

    move-object/from16 v2, v21

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v4

    iget-object v5, v0, Le/a/r1;->y3:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v6, v0, Le/a/r1;->A4:Ljavax/inject/Provider;

    invoke-static {v6}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v7, v0, Le/a/r1;->H4:Ljavax/inject/Provider;

    invoke-static {v7}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v8, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v8}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v9, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/i0;

    iget-object v10, v0, Le/a/r1;->A3:Ljavax/inject/Provider;

    invoke-static {v10}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v11, v0, Le/a/r1;->J4:Ljavax/inject/Provider;

    invoke-static {v11}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v12, v0, Le/a/r1;->K4:Ljavax/inject/Provider;

    invoke-static {v12}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v13, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/b0/o/a;

    iget-object v14, v0, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/a/b0/e/r/a;

    iget-object v15, v0, Le/a/r1;->M4:Ljavax/inject/Provider;

    invoke-static {v15}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v15

    iget-object v1, v0, Le/a/r1;->O4:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v16

    iget-object v1, v0, Le/a/r1;->P4:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v17

    iget-object v1, v0, Le/a/r1;->Q4:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v18

    iget-object v1, v0, Le/a/r1;->r3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v20

    invoke-direct/range {v2 .. v20}, Le/a/a/y0/d0;-><init>(Landroid/content/Context;Le/a/o5/f0;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/a/i0;Lo3/a;Lo3/a;Lo3/a;Le/a/b0/o/a;Le/a/b0/e/r/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;ZLe/a/p5/a0;)V

    return-object v21

    .line 38
    :pswitch_f
    new-instance v0, Le/a/c/g/e;

    invoke-direct {v0}, Le/a/c/g/e;-><init>()V

    return-object v0

    .line 39
    :pswitch_10
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 40
    new-instance v9, Le/a/c/g/y/i;

    iget-object v2, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/q2/a;

    invoke-virtual {v0}, Le/a/r1;->p9()Le/a/c/c0/b;

    move-result-object v4

    .line 41
    new-instance v5, Le/a/c/g/y/g;

    iget-object v2, v0, Le/a/r1;->S3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/c/f/n;

    invoke-virtual {v0}, Le/a/r1;->J9()Le/a/c/c/d/p;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Le/a/c/g/y/g;-><init>(Le/a/c/c/f/n;Le/a/c/c/d/p;)V

    .line 42
    iget-object v2, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/b/e;

    iget-object v2, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/c/b/j;

    invoke-virtual {v0}, Le/a/r1;->K9()Le/a/c/s/a/b;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/c/g/y/i;-><init>(Le/a/q2/a;Le/a/c/c0/a;Le/a/c/g/y/b;Le/a/c/b/e;Le/a/c/b/j;Le/a/c/s/a/a;)V

    return-object v9

    .line 43
    :pswitch_11
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 44
    new-instance v9, Le/a/c/g/g;

    iget-object v2, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/q2/a;

    iget-object v2, v0, Le/a/r1;->t4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/c/g/y/h;

    iget-object v2, v0, Le/a/r1;->v4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/g/d;

    iget-object v2, v0, Le/a/r1;->p4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/g/n;

    .line 45
    new-instance v7, Le/a/c/g/p;

    iget-object v2, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/b/e;

    invoke-direct {v7, v2}, Le/a/c/g/p;-><init>(Le/a/c/b/e;)V

    .line 46
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/c/g/g;-><init>(Le/a/q2/a;Le/a/c/g/y/h;Le/a/c/g/d;Le/a/c/g/n;Le/a/c/g/p;Ls1/w/f;)V

    return-object v9

    .line 47
    :pswitch_12
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 48
    new-instance v2, Le/a/c/g/o;

    iget-object v0, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/b/e;

    invoke-direct {v2, v0}, Le/a/c/g/o;-><init>(Le/a/c/b/e;)V

    return-object v2

    .line 49
    :pswitch_13
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 50
    iget-object v2, v0, Le/a/r1;->u:Le/a/c/l/b/e;

    iget-object v0, v0, Le/a/r1;->l4:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/g/y/n;

    .line 51
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "multiClassMetadataRepository"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v2, Le/a/c/g/b0/f;

    invoke-direct {v2, v0}, Le/a/c/g/b0/f;-><init>(Le/a/c/g/y/n;)V

    return-object v2

    .line 53
    :pswitch_14
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 54
    iget-object v2, v0, Le/a/r1;->u:Le/a/c/l/b/e;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->l9()Le/a/c/g/y/a;

    move-result-object v0

    .line 55
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ioDispatcher"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "androidMultiClassMetadataDataSource"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v2, Le/a/c/g/y/p;

    invoke-direct {v2, v3, v0}, Le/a/c/g/y/p;-><init>(Ls1/w/f;Le/a/c/g/y/a;)V

    return-object v2

    .line 57
    :pswitch_15
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 58
    iget-object v2, v0, Le/a/r1;->u:Le/a/c/l/b/e;

    iget-object v0, v0, Le/a/r1;->l4:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/g/y/n;

    .line 59
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "multiClassMetadataRepository"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v2, Le/a/c/g/b0/h;

    invoke-direct {v2, v0}, Le/a/c/g/b0/h;-><init>(Le/a/c/g/y/n;)V

    return-object v2

    .line 61
    :pswitch_16
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 62
    new-instance v8, Le/a/c/g/u;

    iget-object v2, v0, Le/a/r1;->m4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/c/g/b0/g;

    iget-object v2, v0, Le/a/r1;->l4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/c/g/y/n;

    iget-object v2, v0, Le/a/r1;->n4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/g/b0/e;

    iget-object v2, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/b/j;

    iget-object v0, v0, Le/a/r1;->p4:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/c/g/n;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/c/g/u;-><init>(Le/a/c/g/b0/g;Le/a/c/g/y/n;Le/a/c/g/b0/e;Le/a/c/b/j;Le/a/c/g/n;)V

    return-object v8

    .line 63
    :pswitch_17
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 64
    new-instance v2, Le/a/c/e/d;

    .line 65
    new-instance v3, Le/a/c/c/f/e;

    .line 66
    iget-object v4, v0, Le/a/r1;->M3:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/insights/database/InsightsDb;

    .line 67
    sget v5, Le/a/c/l/b/c;->a:I

    const-string v5, "db"

    .line 68
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4}, Lcom/truecaller/insights/database/InsightsDb;->e()Le/a/c/c/d/i;

    move-result-object v4

    const-string v5, "Cannot return null from a non-@Nullable @Provides method"

    .line 70
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    invoke-direct {v3, v4}, Le/a/c/c/f/e;-><init>(Le/a/c/c/d/i;)V

    .line 72
    iget-object v4, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q2/a;

    iget-object v5, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/b/j;

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/c/e/d;-><init>(Le/a/c/c/f/d;Le/a/q2/a;Le/a/c/b/j;Ls1/w/f;)V

    return-object v2

    .line 73
    :pswitch_18
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 74
    new-instance v2, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->f9()Le/a/b0/m/a/c;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b0/m/a/b;)V

    return-object v2

    .line 75
    :pswitch_19
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 76
    new-instance v8, Le/a/c/i/l/f/e;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    .line 77
    sget v2, Le/a/c/i/l/d;->a:I

    .line 78
    sget-object v4, Lq3/a/t0;->d:Lq3/a/g0;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 79
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v2, v0, Le/a/r1;->g4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/m/c/a;

    iget-object v2, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/b/j;

    .line 81
    new-instance v7, Le/a/c/i/l/g/d;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/b/j;

    invoke-direct {v7, v2, v0}, Le/a/c/i/l/g/d;-><init>(Landroid/content/Context;Le/a/c/b/j;)V

    move-object v2, v8

    .line 82
    invoke-direct/range {v2 .. v7}, Le/a/c/i/l/f/e;-><init>(Landroid/content/Context;Ls1/w/f;Le/a/b0/m/c/a;Le/a/c/b/j;Le/a/c/i/l/g/d;)V

    return-object v8

    .line 83
    :pswitch_1a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 84
    new-instance v14, Le/a/c/i/l/c;

    iget-object v2, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->c4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/c/i/i/a;

    invoke-virtual {v0}, Le/a/r1;->oa()Le/a/c/r/h/b;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/b/j;

    iget-object v2, v0, Le/a/r1;->i4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/c/i/l/f/a;

    iget-object v2, v0, Le/a/r1;->k4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/c/e/c;

    invoke-virtual {v0}, Le/a/r1;->Dc()Le/a/c/f/i;

    move-result-object v9

    iget-object v2, v0, Le/a/r1;->g4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/b0/m/c/a;

    iget-object v2, v0, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/c/w/o0/g;

    .line 85
    new-instance v12, Le/a/c/i/l/g/b;

    iget-object v2, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v16

    iget-object v2, v0, Le/a/r1;->i4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Le/a/c/i/l/f/a;

    iget-object v2, v0, Le/a/r1;->k4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Le/a/c/e/c;

    invoke-virtual {v0}, Le/a/r1;->bb()Le/a/c/b0/a;

    move-result-object v19

    iget-object v2, v0, Le/a/r1;->g4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Le/a/b0/m/c/a;

    new-instance v21, Le/a/c/a/i/g;

    invoke-direct/range {v21 .. v21}, Le/a/c/a/i/g;-><init>()V

    iget-object v2, v0, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Le/a/c/w/o0/g;

    move-object v15, v12

    invoke-direct/range {v15 .. v22}, Le/a/c/i/l/g/b;-><init>(Landroid/content/Context;Le/a/c/i/l/f/a;Le/a/c/e/c;Le/a/c/b0/a;Le/a/b0/m/c/a;Le/a/c/a/i/g;Le/a/c/w/o0/g;)V

    .line 86
    invoke-virtual {v0}, Le/a/r1;->vb()Le/a/c/j/g;

    move-result-object v13

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Le/a/c/i/l/c;-><init>(Landroid/content/Context;Le/a/c/i/i/a;Le/a/c/r/h/b;Le/a/c/b/j;Le/a/c/i/l/f/a;Le/a/c/e/c;Le/a/c/f/h;Le/a/b0/m/c/a;Le/a/c/w/o0/g;Le/a/c/i/l/g/a;Le/a/c/j/e;)V

    return-object v14

    .line 87
    :pswitch_1b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 88
    new-instance v2, Le/a/a/g/q;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v0}, Le/a/c/p/a;->b2(Le/a/a/g/i;)Le/a/a/g/g;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Le/a/a/g/q;-><init>(Landroid/content/ContentResolver;Le/a/a/g/g;)V

    return-object v2

    .line 89
    :pswitch_1c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 90
    new-instance v2, Le/a/b0/m/d/d;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    .line 91
    new-instance v5, Le/a/b0/m/d/g;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Le/a/b0/m/d/g;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-direct {v2, v3, v4, v5}, Le/a/b0/m/d/d;-><init>(Landroid/content/Context;Ls1/w/f;Le/a/b0/m/d/e;)V

    return-object v2

    .line 93
    :pswitch_1d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 94
    new-instance v2, Le/a/c/c/f/o;

    invoke-virtual {v0}, Le/a/r1;->kc()Le/a/c/c/d/m0;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/c/c/f/o;-><init>(Le/a/c/c/d/m0;)V

    return-object v2

    .line 95
    :pswitch_1e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 96
    new-instance v8, Le/a/c/i/k/b;

    invoke-virtual {v0}, Le/a/r1;->dc()Le/a/c/c/d/h0;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->wb()Le/a/c/c/d/d0;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->S3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/c/f/n;

    .line 97
    iget-object v2, v0, Le/a/r1;->u1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v2

    .line 98
    new-instance v6, Le/a/a/t;

    invoke-direct {v6, v2}, Le/a/a/t;-><init>(Lo3/a;)V

    .line 99
    iget-object v2, v0, Le/a/r1;->z2:Ljavax/inject/Provider;

    .line 100
    iput-object v2, v6, Le/a/a/t;->a:Ljavax/inject/Provider;

    .line 101
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/c/i/k/b;-><init>(Le/a/c/c/d/h0;Le/a/c/c/d/d0;Le/a/c/c/f/n;Le/a/a/t;Ls1/w/f;)V

    return-object v8

    .line 102
    :pswitch_1f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 103
    new-instance v2, Le/a/c/i/k/c;

    iget-object v0, v0, Le/a/r1;->U3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/i/k/a;

    invoke-direct {v2, v0}, Le/a/c/i/k/c;-><init>(Le/a/c/i/k/a;)V

    return-object v2

    .line 104
    :pswitch_20
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 105
    new-instance v2, Le/a/c/w/o0/j;

    invoke-virtual {v0}, Le/a/r1;->p9()Le/a/c/c0/b;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v0, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/b/e;

    invoke-direct {v2, v3, v4, v0}, Le/a/c/w/o0/j;-><init>(Le/a/c/c0/a;Ls1/w/f;Le/a/c/b/e;)V

    return-object v2

    .line 106
    :pswitch_21
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 107
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Le/a/c/c/b;

    invoke-direct {v2}, Le/a/c/c/b;-><init>()V

    .line 108
    sget v6, Le/a/c/l/b/c;->a:I

    const-string v6, "applicationContext"

    .line 109
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "categorizerDBCallback"

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    const-class v6, Lcom/truecaller/insights/database/InsightsDb;

    const-string v7, "insights.db"

    invoke-static {v0, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v0

    const/16 v6, 0x36

    new-array v6, v6, [Ln3/c0/f0/a;

    .line 111
    new-instance v7, Le/a/c/c/a/l;

    invoke-direct {v7}, Le/a/c/c/a/l;-><init>()V

    aput-object v7, v6, v5

    .line 112
    new-instance v5, Le/a/c/c/a/w;

    invoke-direct {v5}, Le/a/c/c/a/w;-><init>()V

    aput-object v5, v6, v3

    .line 113
    new-instance v3, Le/a/c/c/a/g0;

    invoke-direct {v3}, Le/a/c/c/a/g0;-><init>()V

    const/4 v5, 0x2

    aput-object v3, v6, v5

    .line 114
    new-instance v3, Le/a/c/c/a/r0;

    invoke-direct {v3}, Le/a/c/c/a/r0;-><init>()V

    const/4 v5, 0x3

    aput-object v3, v6, v5

    .line 115
    new-instance v3, Le/a/c/c/a/x0;

    invoke-direct {v3}, Le/a/c/c/a/x0;-><init>()V

    const/4 v5, 0x4

    aput-object v3, v6, v5

    .line 116
    new-instance v3, Le/a/c/c/a/y0;

    invoke-direct {v3}, Le/a/c/c/a/y0;-><init>()V

    const/4 v5, 0x5

    aput-object v3, v6, v5

    .line 117
    new-instance v3, Le/a/c/c/a/z0;

    invoke-direct {v3}, Le/a/c/c/a/z0;-><init>()V

    const/4 v5, 0x6

    aput-object v3, v6, v5

    .line 118
    new-instance v3, Le/a/c/c/a/a1;

    invoke-direct {v3}, Le/a/c/c/a/a1;-><init>()V

    const/4 v5, 0x7

    aput-object v3, v6, v5

    .line 119
    new-instance v3, Le/a/c/c/a/b1;

    invoke-direct {v3}, Le/a/c/c/a/b1;-><init>()V

    const/16 v5, 0x8

    aput-object v3, v6, v5

    .line 120
    new-instance v3, Le/a/c/c/a/b;

    invoke-direct {v3}, Le/a/c/c/a/b;-><init>()V

    const/16 v5, 0x9

    aput-object v3, v6, v5

    .line 121
    new-instance v3, Le/a/c/c/a/c;

    invoke-direct {v3}, Le/a/c/c/a/c;-><init>()V

    const/16 v5, 0xa

    aput-object v3, v6, v5

    .line 122
    new-instance v3, Le/a/c/c/a/d;

    invoke-direct {v3}, Le/a/c/c/a/d;-><init>()V

    const/16 v5, 0xb

    aput-object v3, v6, v5

    .line 123
    new-instance v3, Le/a/c/c/a/e;

    invoke-direct {v3}, Le/a/c/c/a/e;-><init>()V

    const/16 v5, 0xc

    aput-object v3, v6, v5

    .line 124
    new-instance v3, Le/a/c/c/a/f;

    invoke-direct {v3}, Le/a/c/c/a/f;-><init>()V

    const/16 v5, 0xd

    aput-object v3, v6, v5

    .line 125
    new-instance v3, Le/a/c/c/a/g;

    invoke-direct {v3}, Le/a/c/c/a/g;-><init>()V

    const/16 v5, 0xe

    aput-object v3, v6, v5

    .line 126
    new-instance v3, Le/a/c/c/a/h;

    invoke-direct {v3}, Le/a/c/c/a/h;-><init>()V

    const/16 v5, 0xf

    aput-object v3, v6, v5

    .line 127
    new-instance v3, Le/a/c/c/a/i;

    invoke-direct {v3}, Le/a/c/c/a/i;-><init>()V

    const/16 v5, 0x10

    aput-object v3, v6, v5

    .line 128
    new-instance v3, Le/a/c/c/a/j;

    invoke-direct {v3}, Le/a/c/c/a/j;-><init>()V

    const/16 v5, 0x11

    aput-object v3, v6, v5

    .line 129
    new-instance v3, Le/a/c/c/a/k;

    invoke-direct {v3}, Le/a/c/c/a/k;-><init>()V

    const/16 v5, 0x12

    aput-object v3, v6, v5

    .line 130
    new-instance v3, Le/a/c/c/a/m;

    invoke-direct {v3}, Le/a/c/c/a/m;-><init>()V

    const/16 v5, 0x13

    aput-object v3, v6, v5

    .line 131
    new-instance v3, Le/a/c/c/a/n;

    invoke-direct {v3}, Le/a/c/c/a/n;-><init>()V

    const/16 v5, 0x14

    aput-object v3, v6, v5

    .line 132
    new-instance v3, Le/a/c/c/a/o;

    invoke-direct {v3}, Le/a/c/c/a/o;-><init>()V

    const/16 v5, 0x15

    aput-object v3, v6, v5

    .line 133
    new-instance v3, Le/a/c/c/a/p;

    invoke-direct {v3}, Le/a/c/c/a/p;-><init>()V

    const/16 v5, 0x16

    aput-object v3, v6, v5

    .line 134
    new-instance v3, Le/a/c/c/a/q;

    invoke-direct {v3}, Le/a/c/c/a/q;-><init>()V

    const/16 v5, 0x17

    aput-object v3, v6, v5

    .line 135
    new-instance v3, Le/a/c/c/a/r;

    invoke-direct {v3}, Le/a/c/c/a/r;-><init>()V

    const/16 v5, 0x18

    aput-object v3, v6, v5

    .line 136
    new-instance v3, Le/a/c/c/a/s;

    invoke-direct {v3}, Le/a/c/c/a/s;-><init>()V

    const/16 v5, 0x19

    aput-object v3, v6, v5

    .line 137
    new-instance v3, Le/a/c/c/a/t;

    invoke-direct {v3}, Le/a/c/c/a/t;-><init>()V

    const/16 v5, 0x1a

    aput-object v3, v6, v5

    .line 138
    new-instance v3, Le/a/c/c/a/u;

    invoke-direct {v3}, Le/a/c/c/a/u;-><init>()V

    const/16 v5, 0x1b

    aput-object v3, v6, v5

    .line 139
    new-instance v3, Le/a/c/c/a/v;

    invoke-direct {v3}, Le/a/c/c/a/v;-><init>()V

    const/16 v5, 0x1c

    aput-object v3, v6, v5

    .line 140
    new-instance v3, Le/a/c/c/a/x;

    invoke-direct {v3}, Le/a/c/c/a/x;-><init>()V

    aput-object v3, v6, v4

    .line 141
    new-instance v3, Le/a/c/c/a/y;

    invoke-direct {v3}, Le/a/c/c/a/y;-><init>()V

    const/16 v4, 0x1e

    aput-object v3, v6, v4

    .line 142
    new-instance v3, Le/a/c/c/a/z;

    invoke-direct {v3}, Le/a/c/c/a/z;-><init>()V

    const/16 v4, 0x1f

    aput-object v3, v6, v4

    .line 143
    new-instance v3, Le/a/c/c/a/a0;

    invoke-direct {v3}, Le/a/c/c/a/a0;-><init>()V

    const/16 v4, 0x20

    aput-object v3, v6, v4

    .line 144
    new-instance v3, Le/a/c/c/a/a;

    invoke-direct {v3}, Le/a/c/c/a/a;-><init>()V

    const/16 v4, 0x21

    aput-object v3, v6, v4

    .line 145
    new-instance v3, Le/a/c/c/a/b0;

    invoke-direct {v3}, Le/a/c/c/a/b0;-><init>()V

    const/16 v4, 0x22

    aput-object v3, v6, v4

    .line 146
    new-instance v3, Le/a/c/c/a/c0;

    invoke-direct {v3}, Le/a/c/c/a/c0;-><init>()V

    const/16 v4, 0x23

    aput-object v3, v6, v4

    .line 147
    new-instance v3, Le/a/c/c/a/d0;

    invoke-direct {v3}, Le/a/c/c/a/d0;-><init>()V

    const/16 v4, 0x24

    aput-object v3, v6, v4

    .line 148
    new-instance v3, Le/a/c/c/a/e0;

    invoke-direct {v3}, Le/a/c/c/a/e0;-><init>()V

    const/16 v4, 0x25

    aput-object v3, v6, v4

    .line 149
    new-instance v3, Le/a/c/c/a/f0;

    invoke-direct {v3}, Le/a/c/c/a/f0;-><init>()V

    const/16 v4, 0x26

    aput-object v3, v6, v4

    .line 150
    new-instance v3, Le/a/c/c/a/h0;

    invoke-direct {v3}, Le/a/c/c/a/h0;-><init>()V

    const/16 v4, 0x27

    aput-object v3, v6, v4

    .line 151
    new-instance v3, Le/a/c/c/a/i0;

    invoke-direct {v3}, Le/a/c/c/a/i0;-><init>()V

    const/16 v4, 0x28

    aput-object v3, v6, v4

    .line 152
    new-instance v3, Le/a/c/c/a/j0;

    invoke-direct {v3}, Le/a/c/c/a/j0;-><init>()V

    const/16 v4, 0x29

    aput-object v3, v6, v4

    .line 153
    new-instance v3, Le/a/c/c/a/k0;

    invoke-direct {v3}, Le/a/c/c/a/k0;-><init>()V

    const/16 v4, 0x2a

    aput-object v3, v6, v4

    .line 154
    new-instance v3, Le/a/c/c/a/l0;

    invoke-direct {v3}, Le/a/c/c/a/l0;-><init>()V

    const/16 v4, 0x2b

    aput-object v3, v6, v4

    .line 155
    new-instance v3, Le/a/c/c/a/m0;

    invoke-direct {v3}, Le/a/c/c/a/m0;-><init>()V

    const/16 v4, 0x2c

    aput-object v3, v6, v4

    .line 156
    new-instance v3, Le/a/c/c/a/n0;

    invoke-direct {v3}, Le/a/c/c/a/n0;-><init>()V

    const/16 v4, 0x2d

    aput-object v3, v6, v4

    .line 157
    new-instance v3, Le/a/c/c/a/o0;

    invoke-direct {v3}, Le/a/c/c/a/o0;-><init>()V

    const/16 v4, 0x2e

    aput-object v3, v6, v4

    .line 158
    new-instance v3, Le/a/c/c/a/p0;

    invoke-direct {v3}, Le/a/c/c/a/p0;-><init>()V

    const/16 v4, 0x2f

    aput-object v3, v6, v4

    .line 159
    new-instance v3, Le/a/c/c/a/q0;

    invoke-direct {v3}, Le/a/c/c/a/q0;-><init>()V

    const/16 v4, 0x30

    aput-object v3, v6, v4

    .line 160
    new-instance v3, Le/a/c/c/a/s0;

    invoke-direct {v3}, Le/a/c/c/a/s0;-><init>()V

    const/16 v4, 0x31

    aput-object v3, v6, v4

    .line 161
    new-instance v3, Le/a/c/c/a/t0;

    invoke-direct {v3}, Le/a/c/c/a/t0;-><init>()V

    const/16 v4, 0x32

    aput-object v3, v6, v4

    .line 162
    new-instance v3, Le/a/c/c/a/u0;

    invoke-direct {v3}, Le/a/c/c/a/u0;-><init>()V

    const/16 v4, 0x33

    aput-object v3, v6, v4

    .line 163
    new-instance v3, Le/a/c/c/a/v0;

    invoke-direct {v3}, Le/a/c/c/a/v0;-><init>()V

    const/16 v4, 0x34

    aput-object v3, v6, v4

    .line 164
    new-instance v3, Le/a/c/c/a/w0;

    invoke-direct {v3}, Le/a/c/c/a/w0;-><init>()V

    const/16 v4, 0x35

    aput-object v3, v6, v4

    .line 165
    invoke-virtual {v0, v6}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    .line 166
    invoke-virtual {v0, v2}, Ln3/c0/q$a;->a(Ln3/c0/q$b;)Ln3/c0/q$a;

    .line 167
    invoke-virtual {v0}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v0

    const-string v2, "Room\n                .da\u2026\n                .build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/insights/database/InsightsDb;

    return-object v0

    .line 168
    :pswitch_22
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 169
    new-instance v9, Le/a/c/w/o0/c;

    invoke-virtual {v0}, Le/a/r1;->p9()Le/a/c/c0/b;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->J3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/c/i/b/a;

    invoke-virtual {v0}, Le/a/r1;->oa()Le/a/c/r/h/b;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/b/j;

    invoke-virtual {v0}, Le/a/r1;->cc()Le/a/c/a0/a0;

    move-result-object v7

    iget-object v0, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/a/c/b/e;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/c/w/o0/c;-><init>(Le/a/c/c0/a;Le/a/c/i/b/a;Le/a/c/r/h/b;Le/a/c/b/j;Le/a/c/a0/z;Le/a/c/b/e;)V

    return-object v9

    .line 170
    :pswitch_23
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 171
    new-instance v11, Le/a/c/w/o0/h;

    iget-object v2, v0, Le/a/r1;->O3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->Q3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->cc()Le/a/c/a0/a0;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/b/j;

    invoke-virtual {v0}, Le/a/r1;->f9()Le/a/b0/m/a/c;

    move-result-object v7

    iget-object v2, v0, Le/a/r1;->k3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/c/h/e;

    iget-object v2, v0, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/c/c0/o;

    iget-object v0, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Le/a/c/b/e;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/c/w/o0/h;-><init>(Lo3/a;Lo3/a;Le/a/c/a0/z;Le/a/c/b/j;Le/a/b0/m/a/b;Le/a/c/h/e;Le/a/c/c0/o;Le/a/c/b/e;)V

    return-object v11

    .line 172
    :pswitch_24
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 173
    new-instance v2, Le/a/c/i/b/b;

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    invoke-direct {v2, v0}, Le/a/c/i/b/b;-><init>(Le/a/u3/g;)V

    return-object v2

    .line 174
    :pswitch_25
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 175
    new-instance v8, Le/a/c/i/b/g;

    invoke-virtual {v0}, Le/a/r1;->T7()Le/a/c/c0/m;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/b/e;

    iget-object v2, v0, Le/a/r1;->J3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/i/b/a;

    iget-object v0, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/c/b/j;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/c/i/b/g;-><init>(Le/a/c/c0/m;Ls1/w/f;Le/a/c/b/e;Le/a/c/i/b/a;Le/a/c/b/j;)V

    return-object v8

    .line 176
    :pswitch_26
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 177
    invoke-virtual {v0}, Le/a/r1;->Bc()Le/a/t3/b;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_27
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 179
    new-instance v2, Le/a/a/u0/a;

    iget-object v0, v0, Le/a/r1;->C3:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/a/u0/a;-><init>(Lo3/a;)V

    return-object v2

    .line 180
    :pswitch_28
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 181
    new-instance v9, Le/a/c/b/a;

    iget-object v2, v0, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/b0/e/r/a;

    iget-object v2, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/b0/o/a;

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/b0/e/f;

    iget-object v2, v0, Le/a/r1;->D3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v0, v0, Le/a/r1;->d:Le/a/b0/g/a$a;

    invoke-static {v0}, Le/a/n/g0;->j(Le/a/b0/g/a$a;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/c/b/a;-><init>(Le/a/b0/e/r/a;Le/a/b0/o/a;Le/a/p5/g;Le/a/b0/e/f;Lo3/a;Ljava/lang/String;)V

    return-object v9

    .line 182
    :pswitch_29
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 183
    new-instance v9, Le/a/c/b/k;

    invoke-virtual {v0}, Le/a/r1;->E3()Le/a/u3/g;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/e/l;

    iget-object v2, v0, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/c0/o;

    iget-object v2, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/c/b/e;

    iget-object v0, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/a/b0/o/a;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/c/b/k;-><init>(Le/a/u3/g;Le/a/p5/g;Le/a/b0/e/l;Le/a/c/c0/o;Le/a/c/b/e;Le/a/b0/o/a;)V

    return-object v9

    .line 184
    :pswitch_2a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 185
    new-instance v10, Le/a/c/i/i/b;

    iget-object v2, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/c/b/j;

    iget-object v2, v0, Le/a/r1;->L3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    new-instance v5, Le/a/w4/c;

    invoke-direct {v5}, Le/a/w4/c;-><init>()V

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v6

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v7

    invoke-virtual {v0}, Le/a/r1;->oa()Le/a/c/r/h/b;

    move-result-object v8

    iget-object v0, v0, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Le/a/c/w/o0/g;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/c/i/i/b;-><init>(Le/a/c/b/j;Lo3/a;Le/a/c/h/b;Landroid/content/Context;Ls1/w/f;Le/a/c/r/h/b;Le/a/c/w/o0/g;)V

    return-object v10

    .line 186
    :pswitch_2b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 187
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Le/a/r1;->p0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i4/q;

    .line 188
    new-instance v3, Le/a/a/y0/t;

    invoke-direct {v3, v2, v0}, Le/a/a/y0/t;-><init>(Landroid/content/Context;Le/a/i4/q;)V

    return-object v3

    .line 189
    :pswitch_2c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 190
    invoke-virtual {v0}, Le/a/r1;->Ub()Le/a/o5/m1;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_2d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 192
    iget-object v0, v0, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v0}, Le/a/c/p/a;->Z1(Le/a/a/g/i;)Le/a/r2/l;

    move-result-object v0

    .line 193
    check-cast v0, Le/a/r2/m;

    const-string v2, "message_notifications"

    .line 194
    new-instance v3, Le/a/r2/o;

    iget-object v4, v0, Le/a/r2/m;->a:Le/a/r2/a0;

    iget-object v0, v0, Le/a/r2/m;->b:Le/a/r2/n;

    invoke-direct {v3, v4, v0, v2}, Le/a/r2/o;-><init>(Le/a/r2/a0;Le/a/r2/n;Ljava/lang/String;)V

    return-object v3

    .line 195
    :pswitch_2e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 196
    iget-object v2, v0, Le/a/r1;->x3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/j;

    invoke-virtual {v0}, Le/a/r1;->kb()Le/a/a/y0/s;

    move-result-object v0

    .line 197
    const-class v3, Le/a/a/y0/q;

    invoke-interface {v2, v3, v0}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 198
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 199
    :pswitch_2f
    iget-object v2, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 200
    iget-object v3, v2, Le/a/r1;->r:Le/a/a/k/v;

    invoke-virtual {v2}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/r2/l;

    .line 201
    iget-object v6, v2, Le/a/r1;->r:Le/a/a/k/v;

    iget-object v7, v2, Le/a/r1;->o3:Ljavax/inject/Provider;

    invoke-static {v7}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v8, v2, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v8}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v2, v2, Le/a/r1;->t3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/w0/a;

    .line 202
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v6, Le/a/a/k/z/b;

    invoke-direct {v6, v7, v8, v2}, Le/a/a/k/z/b;-><init>(Lo3/a;Lo3/a;Le/a/a/w0/a;)V

    .line 204
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-class v2, Lcom/truecaller/messaging/transport/SendImService;

    const/16 v3, 0x272d

    invoke-interface {v5, v4, v2, v3}, Le/a/r2/l;->a(Landroid/content/Context;Ljava/lang/Class;I)Le/a/r2/j;

    move-result-object v2

    .line 206
    invoke-interface {v2, v0, v6}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 207
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 208
    :pswitch_30
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 209
    iget-object v2, v0, Le/a/r1;->s:Le/a/a/m0;

    iget-object v4, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/u3/g;

    iget-object v0, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    .line 210
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "featuresRegistry"

    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "coreSettings"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v2, v4, Le/a/u3/g;->H5:Le/a/u3/g$a;

    sget-object v6, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v7, 0x15f

    aget-object v6, v6, v7

    invoke-virtual {v2, v4, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    .line 212
    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "has_successfully_loaded_config_once"

    invoke-interface {v0, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    .line 213
    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 214
    :pswitch_31
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 215
    new-instance v2, Le/a/a/w0/e;

    invoke-virtual {v0}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/a/w0/e;-><init>(Le/a/b0/q/l0;)V

    return-object v2

    .line 216
    :pswitch_32
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 217
    new-instance v11, Le/a/a/w0/c;

    iget-object v2, v0, Le/a/r1;->q3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/a/w0/d;

    iget-object v2, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/q2/a;

    iget-object v2, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/e4/p;

    invoke-virtual {v0}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v6

    invoke-virtual {v0}, Le/a/r1;->gb()Le/a/q2/o0;

    move-result-object v7

    invoke-virtual {v0}, Le/a/r1;->ca()Le/a/o5/c0;

    move-result-object v8

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v9

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Le/a/u3/g;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/a/w0/c;-><init>(Le/a/a/w0/d;Le/a/q2/a;Le/a/e4/p;Le/a/b0/q/l0;Le/a/q2/i0;Le/a/o5/b0;Le/a/p5/a0;Le/a/u3/g;)V

    return-object v11

    .line 218
    :pswitch_33
    iget-object v2, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 219
    iget-object v3, v2, Le/a/r1;->r:Le/a/a/k/v;

    invoke-virtual {v2}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/r2/l;

    .line 220
    iget-object v6, v2, Le/a/r1;->r:Le/a/a/k/v;

    iget-object v7, v2, Le/a/r1;->o3:Ljavax/inject/Provider;

    invoke-static {v7}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v8, v2, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v8}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v2, v2, Le/a/r1;->t3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/w0/a;

    .line 221
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v6, Le/a/a/k/z/e;

    invoke-direct {v6, v7, v8, v2}, Le/a/a/k/z/e;-><init>(Lo3/a;Lo3/a;Le/a/a/w0/a;)V

    .line 223
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-class v2, Lcom/truecaller/messaging/transport/SendMessageService;

    const/16 v3, 0x2726

    invoke-interface {v5, v4, v2, v3}, Le/a/r2/l;->a(Landroid/content/Context;Ljava/lang/Class;I)Le/a/r2/j;

    move-result-object v2

    .line 225
    invoke-interface {v2, v0, v6}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 226
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 227
    :pswitch_34
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 228
    iget-object v0, v0, Le/a/r1;->r:Le/a/a/k/v;

    .line 229
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "transport"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-object v0

    .line 232
    :pswitch_35
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 233
    iget-object v2, v0, Le/a/r1;->r:Le/a/a/k/v;

    iget-object v3, v0, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v3}, Le/a/c/p/a;->Z1(Le/a/a/g/i;)Le/a/r2/l;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->m3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    .line 234
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    check-cast v3, Le/a/r2/m;

    invoke-virtual {v3, v0}, Le/a/r2/m;->g(Landroid/os/Looper;)Le/a/r2/j;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_36
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 237
    iget-object v2, v0, Le/a/r1;->r:Le/a/a/k/v;

    iget-object v3, v0, Le/a/r1;->n3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/j;

    invoke-virtual {v0}, Le/a/r1;->hb()Le/a/a/k/f;

    move-result-object v0

    .line 238
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-class v2, Le/a/a/k/i;

    invoke-interface {v3, v2, v0}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 240
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 241
    :pswitch_37
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 242
    iget-object v2, v0, Le/a/r1;->r:Le/a/a/k/v;

    iget-object v3, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Le/a/a/i0;

    invoke-virtual {v0}, Le/a/r1;->Z9()Le/a/a/r0/b;

    move-result-object v6

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v7

    iget-object v3, v0, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v3, v0, Le/a/r1;->w3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/r2/f;

    .line 243
    iget-object v3, v0, Le/a/r1;->r:Le/a/a/k/v;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    .line 244
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v3, Le/a/a/k/l;

    move-object v10, v3

    invoke-direct {v3, v4}, Le/a/a/k/l;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {v0}, Le/a/r1;->nb()Le/a/a/k/q;

    move-result-object v11

    invoke-virtual {v0}, Le/a/r1;->ob()Le/a/a/k/q;

    move-result-object v12

    invoke-virtual {v0}, Le/a/r1;->za()Le/a/a/k/a/m0;

    move-result-object v13

    .line 247
    iget-object v3, v0, Le/a/r1;->r:Le/a/a/k/v;

    .line 248
    new-instance v15, Le/a/n/f2;

    move-object v14, v15

    invoke-virtual {v0}, Le/a/r1;->Ac()Le/a/a/k/w$c;

    move-result-object v16

    iget-object v4, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Le/a/a/i0;

    iget-object v4, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Le/a/u3/g;

    iget-object v4, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Le/a/b0/o/a;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-direct/range {v15 .. v20}, Le/a/n/f2;-><init>(Le/a/a/k/w$c;Le/a/a/i0;Le/a/u3/g;Le/a/b0/o/a;Landroid/content/ContentResolver;)V

    .line 249
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v3, v0, Le/a/r1;->t:Le/a/a/k/a0/e;

    invoke-virtual {v0}, Le/a/r1;->nb()Le/a/a/k/q;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->Ac()Le/a/a/k/w$c;

    move-result-object v15

    .line 251
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v3, Le/a/a/k/a0/b;

    move-object v1, v15

    move-object v15, v3

    invoke-direct {v3, v4, v1}, Le/a/a/k/a0/b;-><init>(Le/a/a/k/q;Le/a/a/k/w$c;)V

    .line 253
    iget-object v1, v0, Le/a/r1;->w:Le/a/a/k/y/h;

    invoke-virtual {v0}, Le/a/r1;->ob()Le/a/a/k/q;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Ac()Le/a/a/k/w$c;

    move-result-object v4

    .line 254
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v1, Le/a/a/k/a0/b;

    move-object/from16 v16, v1

    invoke-direct {v1, v3, v4}, Le/a/a/k/a0/b;-><init>(Le/a/a/k/q;Le/a/a/k/w$c;)V

    .line 256
    new-instance v1, Le/a/a/k/x/d;

    move-object/from16 v17, v1

    iget-object v3, v0, Le/a/r1;->V1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/f;

    iget-object v4, v0, Le/a/r1;->B7:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/k/x/b;

    move-object/from16 v27, v5

    iget-object v5, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/i0;

    move-object/from16 v28, v6

    invoke-virtual {v0}, Le/a/r1;->Ac()Le/a/a/k/w$c;

    move-result-object v6

    invoke-direct {v1, v3, v4, v5, v6}, Le/a/a/k/x/d;-><init>(Le/a/r2/f;Le/a/a/k/x/b;Le/a/a/i0;Le/a/a/k/w$c;)V

    .line 257
    new-instance v1, Le/a/a/k/b0/a;

    move-object/from16 v18, v1

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Ac()Le/a/a/k/w$c;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Le/a/a/k/b0/a;-><init>(Landroid/content/ContentResolver;Le/a/a/k/w$c;)V

    .line 258
    iget-object v1, v0, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Le/a/b0/e/l;

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v20

    iget-object v1, v0, Le/a/r1;->W4:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Le/a/a/p;

    iget-object v1, v0, Le/a/r1;->t3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Le/a/a/w0/a;

    iget-object v1, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Le/a/b0/o/a;

    .line 259
    iget-object v1, v0, Le/a/r1;->r:Le/a/a/k/v;

    .line 260
    new-instance v3, Le/a/n/u1;

    move-object/from16 v24, v3

    invoke-virtual {v0}, Le/a/r1;->Ac()Le/a/a/k/w$c;

    move-result-object v4

    invoke-direct {v3, v4}, Le/a/n/u1;-><init>(Le/a/a/k/w$c;)V

    .line 261
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v1, v0, Le/a/r1;->O4:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Le/a/a/c/o/h;

    iget-object v0, v0, Le/a/r1;->w7:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Le/a/a/k/a/n;

    .line 263
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v0, Le/a/a/k/u;

    move-object v4, v0

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    invoke-direct/range {v4 .. v26}, Le/a/a/k/u;-><init>(Le/a/a/i0;Le/a/a/r0/a;Le/a/p5/g;Lo3/a;Le/a/r2/f;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/a/k/q;Le/a/b0/e/l;Le/a/p5/a0;Le/a/a/p;Le/a/a/w0/a;Le/a/b0/o/a;Le/a/a/k/q;Le/a/a/c/o/h;Le/a/a/k/a/n;)V

    return-object v0

    .line 265
    :pswitch_38
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 266
    new-instance v8, Le/a/a/c1/h;

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->l1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/h5/w;

    invoke-virtual {v0}, Le/a/r1;->S1()Le/a/o5/u0;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->o3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/k/t;

    iget-object v0, v0, Le/a/r1;->C7:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/r2/f;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/a/c1/h;-><init>(Le/a/p5/g;Le/a/h5/w;Le/a/o5/u0;Le/a/a/k/t;Le/a/r2/f;)V

    return-object v8

    .line 267
    :pswitch_39
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 268
    iget-object v0, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v0}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v0

    .line 269
    sget v2, Le/a/c/l/b/f;->a:I

    const-string v2, "context"

    .line 270
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "insights_settings"

    .line 271
    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    new-instance v2, Le/a/c/c0/p;

    const-string v3, "prefs"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Le/a/c/c0/p;-><init>(Landroid/content/SharedPreferences;)V

    return-object v2

    .line 273
    :pswitch_3a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 274
    invoke-virtual {v0}, Le/a/r1;->v9()Le/a/a3/b;

    move-result-object v0

    return-object v0

    .line 275
    :pswitch_3b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 276
    new-instance v2, Le/a/h0/o;

    iget-object v3, v0, Le/a/r1;->h3:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/h0/o;-><init>(Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 277
    :pswitch_3c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 278
    new-instance v2, Le/a/g3/c;

    iget-object v3, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/e/f;

    iget-object v0, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    invoke-direct {v2, v3, v4, v0}, Le/a/g3/c;-><init>(Landroid/content/Context;Le/a/b0/e/f;Le/a/b0/o/a;)V

    return-object v2

    .line 279
    :pswitch_3d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 280
    new-instance v2, Le/a/g3/d;

    iget-object v3, v0, Le/a/r1;->e3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/g3/b;

    .line 281
    iget-object v0, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v0}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v0

    .line 282
    sget-object v4, Lcom/truecaller/clevertap/CleverTapModule;->Companion:Lcom/truecaller/clevertap/CleverTapModule$a;

    .line 283
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "context"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "clever_tap_preferences"

    .line 284
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 285
    new-instance v4, Le/a/g3/h;

    const-string v5, "sharedPreferences"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Le/a/g3/h;-><init>(Landroid/content/SharedPreferences;)V

    .line 286
    invoke-direct {v2, v3, v4}, Le/a/g3/d;-><init>(Le/a/g3/b;Le/a/g3/g;)V

    return-object v2

    .line 287
    :pswitch_3e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 288
    new-instance v2, Le/a/l0/x/b;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/l0/x/b;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 289
    :pswitch_3f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 290
    new-instance v8, Le/a/l0/u/b;

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->M1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/k3/l/f;

    iget-object v2, v0, Le/a/r1;->z1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/l0/f;

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/u3/g;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/l0/u/b;-><init>(Le/a/p5/a0;Lo3/a;Le/a/k3/l/f;Le/a/l0/f;Le/a/u3/g;)V

    return-object v8

    .line 291
    :pswitch_40
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 292
    new-instance v8, Le/a/k0/a/m;

    invoke-virtual {v0}, Le/a/r1;->O9()Le/a/x2/a;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/u3/g;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v6

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/k0/a/m;-><init>(Le/a/b0/a/b/b;Le/a/p5/g;Le/a/u3/g;Landroid/content/Context;Ls1/w/f;)V

    return-object v8

    .line 293
    :pswitch_41
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 294
    new-instance v2, Le/a/k0/i/b;

    iget-object v0, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a;

    invoke-direct {v2, v0}, Le/a/k0/i/b;-><init>(Le/a/q2/a;)V

    return-object v2

    .line 295
    :pswitch_42
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 296
    new-instance v2, Le/a/k0/l/i;

    invoke-virtual {v0}, Le/a/r1;->tc()Le/a/p5/v0/c;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/k0/l/i;-><init>(Le/a/p5/v0/b;)V

    return-object v2

    .line 297
    :pswitch_43
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 298
    new-instance v2, Le/a/k0/l/g;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/k0/l/g;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 299
    :pswitch_44
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 300
    new-instance v10, Le/a/k0/l/d;

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->C2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/k0/m/a;

    iget-object v2, v0, Le/a/r1;->L2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/k0/l/f;

    iget-object v2, v0, Le/a/r1;->J2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/k0/a/b;

    iget-object v2, v0, Le/a/r1;->N2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/k0/l/h;

    new-instance v8, Le/a/p5/d;

    invoke-direct {v8}, Le/a/p5/d;-><init>()V

    iget-object v0, v0, Le/a/r1;->P2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Le/a/k0/i/a;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/k0/l/d;-><init>(Ls1/w/f;Le/a/k0/m/a;Le/a/k0/l/f;Le/a/k0/a/b;Le/a/k0/l/h;Le/a/p5/c;Le/a/k0/i/a;)V

    return-object v10

    .line 301
    :pswitch_45
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 302
    new-instance v2, Le/a/k0/a/c;

    iget-object v3, v0, Le/a/r1;->w2:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/k0/f;

    iget-object v4, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/u3/g;

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/k0/a/c;-><init>(Le/a/k0/f;Le/a/u3/g;Le/a/p5/g;)V

    return-object v2

    .line 303
    :pswitch_46
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 304
    new-instance v2, Le/a/k0/a/i;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/k0/a/i;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 305
    :pswitch_47
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 306
    invoke-virtual {v0}, Le/a/r1;->zc()Le/a/p5/k0;

    move-result-object v0

    return-object v0

    .line 307
    :pswitch_48
    new-instance v0, Le/a/k0/a/r;

    invoke-direct {v0}, Le/a/k0/a/r;-><init>()V

    return-object v0

    .line 308
    :pswitch_49
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 309
    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, v0, Le/a/r1;->B2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k0/a/q;

    const-string v3, "contentResolver"

    .line 310
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fileWrapper"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_2

    .line 312
    new-instance v3, Le/a/k0/m/e;

    invoke-direct {v3, v0, v2}, Le/a/k0/m/e;-><init>(Le/a/k0/a/q;Landroid/content/ContentResolver;)V

    goto :goto_1

    .line 313
    :cond_2
    new-instance v3, Le/a/k0/m/d;

    invoke-direct {v3, v0, v2}, Le/a/k0/m/d;-><init>(Le/a/k0/a/q;Landroid/content/ContentResolver;)V

    :goto_1
    return-object v3

    .line 314
    :pswitch_4a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 315
    :pswitch_4b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 316
    new-instance v9, Le/a/k0/o/b;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->fa()Le/a/y2/q/b;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->w2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/k0/f;

    iget-object v2, v0, Le/a/r1;->C2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/k0/m/a;

    iget-object v2, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/u3/g;

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/k0/o/b;-><init>(Landroid/content/ContentResolver;Le/a/y2/q/a;Le/a/k0/f;Le/a/k0/m/a;Le/a/u3/g;Le/a/p5/a0;)V

    return-object v9

    .line 317
    :pswitch_4c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 318
    new-instance v2, Le/a/k0/g;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/k0/g;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 319
    :pswitch_4d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 320
    iget-object v2, v0, Le/a/r1;->d:Le/a/b0/g/a$a;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v0

    .line 321
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v2, Le/a/b0/q/i0;

    invoke-direct {v2, v3, v0}, Le/a/b0/q/i0;-><init>(Landroid/content/Context;Le/a/p5/c0;)V

    return-object v2

    .line 323
    :pswitch_4e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 324
    invoke-virtual {v0}, Le/a/r1;->Ea()Le/a/f/n;

    move-result-object v0

    return-object v0

    .line 325
    :pswitch_4f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 326
    invoke-virtual {v0}, Le/a/r1;->tc()Le/a/p5/v0/c;

    move-result-object v0

    return-object v0

    .line 327
    :pswitch_50
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 328
    new-instance v14, Le/a/f/z/r;

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->q1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->m2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    new-instance v6, Le/a/p5/m;

    invoke-direct {v6}, Le/a/p5/m;-><init>()V

    iget-object v2, v0, Le/a/r1;->n2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v2, v0, Le/a/r1;->k2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v2, v0, Le/a/r1;->Y1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    new-instance v10, Le/a/p5/d;

    invoke-direct {v10}, Le/a/p5/d;-><init>()V

    iget-object v2, v0, Le/a/r1;->o2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v2, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v0, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Le/a/f/z/r;-><init>(Ls1/w/f;Lo3/a;Lo3/a;Le/a/p5/l;Lo3/a;Lo3/a;Lo3/a;Le/a/p5/c;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v14

    .line 329
    :pswitch_51
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 330
    new-instance v2, Le/a/f/z/w;

    invoke-virtual {v0}, Le/a/r1;->E3()Le/a/u3/g;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Ea()Le/a/f/n;

    move-result-object v4

    iget-object v0, v0, Le/a/r1;->Y1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/y;

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    invoke-direct {v2, v3, v4, v0, v5}, Le/a/f/z/w;-><init>(Le/a/u3/g;Le/a/f/m;Le/a/f/z/y;Le/a/p5/c;)V

    return-object v2

    .line 331
    :pswitch_52
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->e8(Le/a/r1;)Le/a/z2/b;

    move-result-object v0

    return-object v0

    .line 332
    :pswitch_53
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->R6()Le/a/k3/j/b;

    move-result-object v0

    return-object v0

    .line 333
    :pswitch_54
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 334
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/f;

    .line 335
    new-instance v3, Le/a/b0/p/e;

    invoke-direct {v3, v2, v0}, Le/a/b0/p/e;-><init>(Landroid/content/Context;Le/a/b0/e/f;)V

    return-object v3

    .line 336
    :pswitch_55
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 337
    invoke-virtual {v0}, Le/a/r1;->sc()Le/a/g5/q;

    move-result-object v0

    return-object v0

    .line 338
    :pswitch_56
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->P6()Le/a/d0/j0;

    move-result-object v0

    return-object v0

    .line 339
    :pswitch_57
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 340
    new-instance v2, Le/a/f/w/e;

    invoke-virtual {v0}, Le/a/r1;->Da()Le/a/f/g;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/f/w/e;-><init>(Le/a/f/z/k;Ls1/w/f;Ls1/w/f;)V

    return-object v2

    .line 341
    :pswitch_58
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 342
    new-instance v9, Le/a/f/y/e;

    iget-object v2, v0, Le/a/r1;->h2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/f/w/c;

    invoke-virtual {v0}, Le/a/r1;->Ea()Le/a/f/n;

    move-result-object v4

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    .line 343
    new-instance v6, Le/a/f/z/e0;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v7, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/e4/p;

    invoke-direct {v6, v2, v7}, Le/a/f/z/e0;-><init>(Landroid/content/Context;Le/a/e4/p;)V

    .line 344
    iget-object v2, v0, Le/a/r1;->i2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/truecaller/callrecording/CallRecordingManager;

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/f/y/e;-><init>(Le/a/f/w/c;Le/a/f/m;Le/a/p5/c;Le/a/f/z/e0;Lcom/truecaller/callrecording/CallRecordingManager;Ls1/w/f;)V

    return-object v9

    .line 345
    :pswitch_59
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 346
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    const-string v2, "context"

    .line 347
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    new-instance v2, Le/a/f/z/z;

    invoke-direct {v2, v0}, Le/a/f/z/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-object v2

    .line 349
    :pswitch_5a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 350
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v8, Le/a/f/o;

    invoke-virtual {v0}, Le/a/r1;->Ea()Le/a/f/n;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->k2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v0, Le/a/r1;->Y1:Ljavax/inject/Provider;

    iget-object v2, v0, Le/a/r1;->l2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v0, v0, Le/a/r1;->q2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/f/z/q;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/f/o;-><init>(Le/a/f/m;Lo3/a;Ljavax/inject/Provider;Lo3/a;Le/a/f/z/q;)V

    return-object v8

    .line 352
    :pswitch_5b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 353
    new-instance v8, Le/a/k0/a/k;

    invoke-virtual {v0}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->s2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/f/b;

    iget-object v2, v0, Le/a/r1;->y1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/truecaller/settings/CallingSettings;

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/k0/a/k;-><init>(Le/a/o5/f0;Landroid/content/Context;Le/a/f/b;Lcom/truecaller/settings/CallingSettings;Le/a/p5/a0;)V

    return-object v8

    .line 354
    :pswitch_5c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 355
    new-instance v8, Le/a/k0/a/a;

    iget-object v2, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/u3/g;

    iget-object v2, v0, Le/a/r1;->u2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/k0/a/j;

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->w2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/k0/f;

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/k0/a/a;-><init>(Le/a/u3/g;Le/a/k0/a/j;Le/a/p5/g;Le/a/k0/f;Le/a/p5/a0;)V

    return-object v8

    .line 356
    :pswitch_5d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 357
    new-instance v16, Le/a/k0/c;

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->y2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/k0/a/e;

    iget-object v2, v0, Le/a/r1;->E2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/k0/o/a;

    iget-object v2, v0, Le/a/r1;->z2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v2, v0, Le/a/r1;->F2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v2, v0, Le/a/r1;->C2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v2, v0, Le/a/r1;->H2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v2, v0, Le/a/r1;->w2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v2, v0, Le/a/r1;->J2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v2, v0, Le/a/r1;->R2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    iget-object v2, v0, Le/a/r1;->T2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v14

    iget-object v0, v0, Le/a/r1;->P2:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v15

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v15}, Le/a/k0/c;-><init>(Ls1/w/f;Ls1/w/f;Le/a/k0/a/e;Le/a/k0/o/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v16

    .line 358
    :pswitch_5e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 359
    new-instance v2, Le/a/l0/v/b;

    iget-object v0, v0, Le/a/r1;->V1:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/l0/v/b;-><init>(Lo3/a;)V

    return-object v2

    .line 360
    :pswitch_5f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 361
    new-instance v2, Le/a/l0/u/e/e;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/l0/u/e/e;-><init>(Landroid/content/ContentResolver;)V

    return-object v2

    .line 362
    :pswitch_60
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 363
    new-instance v12, Le/a/l0/s;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->U1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/l0/u/e/d;

    iget-object v2, v0, Le/a/r1;->z1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/l0/f;

    iget-object v2, v0, Le/a/r1;->X1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/l0/v/a;

    iget-object v2, v0, Le/a/r1;->y1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/truecaller/settings/CallingSettings;

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v8

    iget-object v2, v0, Le/a/r1;->i2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/truecaller/callrecording/CallRecordingManager;

    iget-object v2, v0, Le/a/r1;->W2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/l0/u/a;

    iget-object v0, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Le/a/q2/a;

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Le/a/l0/s;-><init>(Landroid/content/Context;Le/a/l0/u/e/d;Le/a/l0/f;Le/a/l0/v/a;Lcom/truecaller/settings/CallingSettings;Le/a/p5/g;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/l0/u/a;Le/a/q2/a;)V

    return-object v12

    .line 364
    :pswitch_61
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 365
    new-instance v2, Le/a/l0/q;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->J1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k3/d;

    invoke-direct {v2, v3, v0}, Le/a/l0/q;-><init>(Landroid/content/Context;Le/a/k3/d;)V

    return-object v2

    .line 366
    :pswitch_62
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 367
    new-instance v2, Le/a/h/b/x;

    invoke-virtual {v0}, Le/a/r1;->n3()Z

    move-result v0

    invoke-direct {v2, v0}, Le/a/h/b/x;-><init>(Z)V

    return-object v2

    .line 368
    :pswitch_63
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 369
    iget-object v2, v0, Le/a/r1;->q:Le/a/k3/l/c;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v4

    iget-object v0, v0, Le/a/r1;->q:Le/a/k3/l/c;

    .line 370
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v0, Le/a/k3/a;

    invoke-direct {v0}, Le/a/k3/a;-><init>()V

    .line 372
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "context"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "resourceProvider"

    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "numberTypeLabelProvider"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    new-instance v2, Le/a/k3/l/g;

    const-string v5, "phone"

    .line 374
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 375
    invoke-direct {v2, v3, v4, v0}, Le/a/k3/l/g;-><init>(Landroid/telephony/TelephonyManager;Le/a/p5/c0;Le/a/k3/h;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public final b()Ljava/lang/Object;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget v0, v1, Le/a/r1$q;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v2, v1, Le/a/r1$q;->b:I

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 4
    iget-object v2, v0, Le/a/r1;->y:Le/a/a/c1/i;

    iget-object v3, v0, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/l;

    .line 5
    new-instance v10, Le/a/a/c1/m;

    iget-object v4, v0, Le/a/r1;->o3:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Le/a/a/k/t;

    iget-object v4, v0, Le/a/r1;->t3:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Le/a/a/w0/a;

    invoke-virtual {v0}, Le/a/r1;->gb()Le/a/q2/o0;

    move-result-object v7

    iget-object v4, v0, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v0, v0, Le/a/r1;->M4:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Le/a/a/c1/m;-><init>(Le/a/a/k/t;Le/a/a/w0/a;Le/a/q2/i0;Lo3/a;Lo3/a;)V

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "actorThreads"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftTransportWrapper"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DraftSend"

    .line 7
    invoke-interface {v3, v0}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v0

    const-class v2, Le/a/a/c1/l;

    invoke-interface {v0, v2, v10}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v0

    const-string v2, "actorThreads.createThrea\u2026a, draftTransportWrapper)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 8
    :pswitch_1
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 9
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/e4/p;

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 10
    new-instance v4, Le/a/a/k/x/b;

    invoke-direct {v4, v2, v3, v0}, Le/a/a/k/x/b;-><init>(Landroid/content/Context;Le/a/e4/p;Le/a/u3/g;)V

    return-object v4

    .line 11
    :pswitch_2
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 12
    new-instance v2, Le/a/a/k/a/p1;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->Y4:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/q/b;

    invoke-virtual {v0}, Le/a/r1;->db()Le/a/a/v0/c;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/a/k/a/p1;-><init>(Landroid/content/Context;Le/a/b0/q/b;Le/a/a/v0/a;)V

    return-object v2

    .line 13
    :pswitch_3
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 14
    new-instance v14, Le/a/a/k/a/q0;

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    iget-object v2, v0, Le/a/r1;->d1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/k/a/s1;

    invoke-virtual {v0}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v7

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v0}, Le/a/r1;->ya()Le/a/a/k/a/a/r;

    move-result-object v9

    iget-object v2, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/a/i0;

    invoke-virtual {v0}, Le/a/r1;->ua()Le/a/a/k/a/g;

    move-result-object v11

    iget-object v2, v0, Le/a/r1;->w1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/h0/m;

    invoke-virtual {v0}, Le/a/r1;->v9()Le/a/a3/b;

    move-result-object v13

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Le/a/a/k/a/q0;-><init>(Ls1/w/f;Ls1/w/f;Le/a/p5/c;Le/a/a/k/a/s1;Le/a/p5/c0;Landroid/content/ContentResolver;Le/a/a/k/a/a/q;Le/a/a/i0;Le/a/a/k/a/g;Le/a/h0/m;Le/a/a3/a;)V

    return-object v14

    .line 15
    :pswitch_4
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 16
    invoke-virtual {v0}, Le/a/r1;->za()Le/a/a/k/a/m0;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_5
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 18
    invoke-virtual {v0}, Le/a/r1;->db()Le/a/a/v0/c;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_6
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 20
    new-instance v11, Le/a/a/k/a/o;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v2}, Le/a/c/p/a;->b2(Le/a/a/g/i;)Le/a/a/g/g;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->M4:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v0, Le/a/r1;->Q6:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v2, v0, Le/a/r1;->a5:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v2, v0, Le/a/r1;->t7:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v0, v0, Le/a/r1;->u7:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/a/k/a/o;-><init>(Landroid/content/ContentResolver;Le/a/a/g/g;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v11

    .line 21
    :pswitch_7
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 22
    new-instance v10, Le/a/a/k/a/a/t;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->q7:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/r2/f;

    iget-object v2, v0, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/r2/f;

    iget-object v2, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/q2/a;

    iget-object v2, v0, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v2, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/a/i0;

    invoke-virtual {v0}, Le/a/r1;->D()Ln3/m0/y;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/a/k/a/a/t;-><init>(Landroid/content/ContentResolver;Le/a/r2/f;Le/a/r2/f;Le/a/q2/a;Lo3/a;Le/a/a/i0;Ln3/m0/y;)V

    return-object v10

    .line 23
    :pswitch_8
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 24
    new-instance v11, Le/a/a/k/a/a/v;

    iget-object v2, v0, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->j1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/r2/f;

    invoke-virtual {v0}, Le/a/r1;->d0()Le/a/w4/t/b/b;

    move-result-object v5

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v0}, Le/a/r1;->D()Ln3/m0/y;

    move-result-object v7

    iget-object v2, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/a/i0;

    iget-object v2, v0, Le/a/r1;->d1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/a/k/a/s1;

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/a/k/a/a/v;-><init>(Lo3/a;Le/a/r2/f;Le/a/w4/t/b/b;Landroid/content/ContentResolver;Ln3/m0/y;Le/a/a/i0;Le/a/a/k/a/s1;Ls1/w/f;)V

    return-object v11

    .line 25
    :pswitch_9
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 26
    new-instance v2, Le/a/a/k/a/a/c;

    invoke-virtual {v0}, Le/a/r1;->D()Ln3/m0/y;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/a/k/a/a/c;-><init>(Ln3/m0/y;)V

    return-object v2

    .line 27
    :pswitch_a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 28
    new-instance v8, Le/a/a/k/a/c1;

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->i7()Le/a/k3/j/j;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->R6()Le/a/k3/j/b;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->j1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/r2/f;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/a/k/a/c1;-><init>(Ls1/w/f;Le/a/k3/j/j;Le/a/k3/j/b;Le/a/r2/f;Landroid/content/ContentResolver;)V

    return-object v8

    .line 29
    :pswitch_b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 30
    new-instance v8, Le/a/a/k/a/a/k;

    iget-object v2, v0, Le/a/r1;->d1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/a/k/a/s1;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/a/i0;

    iget-object v2, v0, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/r2/f;

    iget-object v0, v0, Le/a/r1;->b7:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/a/k/a/a/z;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/a/k/a/a/k;-><init>(Le/a/a/k/a/s1;Landroid/content/ContentResolver;Le/a/a/i0;Le/a/r2/f;Le/a/a/k/a/a/z;)V

    return-object v8

    .line 31
    :pswitch_c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 32
    new-instance v10, Le/a/a/k/a/a/x;

    iget-object v2, v0, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Vb()Le/a/f4/g/s;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/u3/g;

    invoke-virtual {v0}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v7

    invoke-virtual {v0}, Le/a/r1;->ya()Le/a/a/k/a/a/r;

    move-result-object v8

    iget-object v0, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Le/a/a/i0;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/a/k/a/a/x;-><init>(Lo3/a;Le/a/f4/g/r;Landroid/content/ContentResolver;Le/a/u3/g;Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/a/i0;)V

    return-object v10

    .line 33
    :pswitch_d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 34
    new-instance v19, Le/a/a/k/a/a/f;

    move-object/from16 v2, v19

    iget-object v3, v0, Le/a/r1;->d1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/k/a/s1;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v0, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v5}, Le/a/c/p/a;->b2(Le/a/a/g/i;)Le/a/a/g/g;

    move-result-object v5

    iget-object v6, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/a/i0;

    new-instance v8, Le/a/p5/d;

    move-object v7, v8

    invoke-direct {v8}, Le/a/p5/d;-><init>()V

    iget-object v8, v0, Le/a/r1;->f7:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/a/k/a/a/w;

    invoke-virtual {v0}, Le/a/r1;->kb()Le/a/a/y0/s;

    move-result-object v9

    iget-object v10, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/u3/g;

    iget-object v11, v0, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v11}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v12, v0, Le/a/r1;->j1:Ljavax/inject/Provider;

    invoke-static {v12}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v13, v0, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/r2/f;

    iget-object v14, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/a/q2/a;

    iget-object v15, v0, Le/a/r1;->h7:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/a/k/a/a/i;

    iget-object v1, v0, Le/a/r1;->j7:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Le/a/a/k/a/b1;

    iget-object v1, v0, Le/a/r1;->l7:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Le/a/a/k/a/a/b;

    invoke-virtual {v0}, Le/a/r1;->v9()Le/a/a3/b;

    move-result-object v18

    invoke-direct/range {v2 .. v18}, Le/a/a/k/a/a/f;-><init>(Le/a/a/k/a/s1;Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/i0;Le/a/p5/c;Le/a/a/k/a/a/w;Le/a/a/y0/q;Le/a/u3/g;Lo3/a;Lo3/a;Le/a/r2/f;Le/a/q2/a;Le/a/a/k/a/a/i;Le/a/a/k/a/b1;Le/a/a/k/a/a/b;Le/a/a3/a;)V

    return-object v19

    .line 35
    :pswitch_e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 36
    iget-object v0, v0, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/l;

    const-string v2, "im_unprocessed_event_manager"

    .line 37
    invoke-interface {v0, v2}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 38
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 39
    :pswitch_f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 40
    new-instance v2, Le/a/a/k/a/a/a0;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v4}, Le/a/c/p/a;->b2(Le/a/a/g/i;)Le/a/a/g/g;

    move-result-object v4

    iget-object v0, v0, Le/a/r1;->S6:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/p;

    invoke-direct {v2, v3, v4, v0}, Le/a/a/k/a/a/a0;-><init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/k/a/p;)V

    return-object v2

    .line 41
    :pswitch_10
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 42
    iget-object v2, v0, Le/a/r1;->b7:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/a/z;

    iget-object v0, v0, Le/a/r1;->c7:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/j;

    .line 43
    const-class v3, Le/a/a/k/a/a/z;

    invoke-interface {v0, v3, v2}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 44
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 45
    :pswitch_11
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 46
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Le/a/r1;->Nc()Le/a/o5/s0;

    move-result-object v0

    .line 47
    new-instance v3, Le/a/o5/g2/c;

    invoke-direct {v3, v2, v0}, Le/a/o5/g2/c;-><init>(Landroid/content/Context;Le/a/o5/s0;)V

    return-object v3

    .line 48
    :pswitch_12
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 49
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v10, Le/a/a/p0/c;

    iget-object v2, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/u3/g;

    iget-object v2, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/q2/a;

    iget-object v2, v0, Le/a/r1;->c4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/i/i/a;

    iget-object v2, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/i0;

    iget-object v2, v0, Le/a/r1;->x4:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v0, v0, Le/a/r1;->M4:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Le/a/a/g/w;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/a/p0/c;-><init>(Le/a/u3/g;Le/a/q2/a;Le/a/c/i/i/a;Le/a/a/i0;Lo3/a;Landroid/content/ContentResolver;Le/a/a/g/w;)V

    return-object v10

    .line 51
    :pswitch_13
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 52
    iget-object v0, v0, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/l;

    const-string v2, "im_unsupported_event_manager"

    .line 53
    invoke-interface {v0, v2}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 54
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 55
    :pswitch_14
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 56
    new-instance v2, Le/a/a/k/a/q;

    invoke-virtual {v0}, Le/a/r1;->Aa()Le/a/a/k/a/j1;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->o3:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Le/a/a/k/a/q;-><init>(Le/a/a/k/a/i1;Lo3/a;)V

    return-object v2

    .line 57
    :pswitch_15
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 58
    new-instance v2, Le/a/a/k/a/y0;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Aa()Le/a/a/k/a/j1;

    move-result-object v4

    iget-object v0, v0, Le/a/r1;->S6:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/p;

    invoke-direct {v2, v3, v4, v0}, Le/a/a/k/a/y0;-><init>(Landroid/content/ContentResolver;Le/a/a/k/a/i1;Le/a/a/k/a/p;)V

    return-object v2

    .line 59
    :pswitch_16
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 60
    iget-object v2, v0, Le/a/r1;->U6:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/x0;

    iget-object v0, v0, Le/a/r1;->V6:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/j;

    .line 61
    const-class v3, Le/a/a/k/a/x0;

    invoke-interface {v0, v3, v2}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 62
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 63
    :pswitch_17
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 64
    iget-object v0, v0, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/l;

    const-string v2, "im-manager"

    .line 65
    invoke-interface {v0, v2}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 66
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 67
    :pswitch_18
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 68
    new-instance v2, Le/a/b0/j/c;

    invoke-virtual {v0}, Le/a/r1;->L5()Le/a/b0/j/d;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/b0/j/c;-><init>(Le/a/b0/j/d;)V

    return-object v2

    .line 69
    :pswitch_19
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 70
    invoke-virtual {v0}, Le/a/r1;->A9()Le/a/k/f;

    move-result-object v0

    return-object v0

    .line 71
    :pswitch_1a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 72
    invoke-virtual {v0}, Le/a/r1;->Jc()Le/a/k/c/j1;

    move-result-object v0

    return-object v0

    .line 73
    :pswitch_1b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 74
    new-instance v2, Le/a/k/n/c;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->g5:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;

    invoke-direct {v2, v3, v0}, Le/a/k/n/c;-><init>(Ls1/w/f;Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;)V

    return-object v2

    .line 75
    :pswitch_1c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->k8(Le/a/r1;)Le/a/k/c/z0;

    move-result-object v0

    return-object v0

    .line 76
    :pswitch_1d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->n8(Le/a/r1;)Le/a/k/c/q1;

    move-result-object v0

    return-object v0

    .line 77
    :pswitch_1e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 78
    new-instance v2, Le/a/k/c/d1;

    iget-object v3, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    invoke-virtual {v0}, Le/a/r1;->Hc()Le/a/k/c/s0;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->Jc()Le/a/k/c/j1;

    move-result-object v0

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    invoke-direct {v2, v3, v4, v0, v5}, Le/a/k/c/d1;-><init>(Le/a/u3/g;Le/a/k/c/r0;Le/a/k/c/i1;Le/a/p5/c;)V

    return-object v2

    .line 79
    :pswitch_1f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 80
    invoke-virtual {v0}, Le/a/r1;->Gc()Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    move-result-object v0

    return-object v0

    .line 81
    :pswitch_20
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 82
    new-instance v9, Le/a/k/c/b2;

    invoke-virtual {v0}, Le/a/r1;->Hc()Le/a/k/c/s0;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Sb()Le/a/k/c/i0;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->Kc()Le/a/k/c/n1;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->y6:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/k/c/u0;

    invoke-virtual {v0}, Le/a/r1;->Lc()Le/a/k/k;

    move-result-object v7

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/k/c/b2;-><init>(Le/a/k/c/r0;Le/a/k/c/h0;Le/a/k/c/k1;Le/a/k/c/u0;Le/a/k/j;Ls1/w/f;)V

    return-object v9

    .line 83
    :pswitch_21
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 84
    new-instance v2, Le/a/k/c/b1;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Hc()Le/a/k/c/s0;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->Lc()Le/a/k/k;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/k/c/b1;-><init>(Ls1/w/f;Le/a/k/c/r0;Le/a/k/j;)V

    return-object v2

    .line 85
    :pswitch_22
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 86
    new-instance v2, Le/a/k/c/c0;

    invoke-virtual {v0}, Le/a/r1;->Hc()Le/a/k/c/s0;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Ma()Le/a/k/n/f/f;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->Eb()Le/a/k/n/h/d;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/k/c/c0;-><init>(Le/a/k/c/r0;Le/a/k/n/f/d;Le/a/k/n/h/a;)V

    return-object v2

    .line 87
    :pswitch_23
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 88
    new-instance v2, Le/a/k/c/v0;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/k/c/v0;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 89
    :pswitch_24
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 90
    iget-object v0, v0, Le/a/r1;->g5:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;

    .line 91
    sget v2, Le/a/k/o/f;->a:I

    const-string v2, "videoCallerIdDb"

    .line 92
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;->c()Le/a/k/n/g/c;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 94
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 95
    :pswitch_25
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 96
    invoke-virtual {v0}, Le/a/r1;->tb()Le/a/k/c/e0;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_26
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 98
    new-instance v2, Le/a/k/c/r;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->Mc()Le/a/k/c/a;

    move-result-object v5

    .line 99
    new-instance v6, Le/a/k/b/h;

    iget-object v7, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v7}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v7

    invoke-virtual {v0}, Le/a/r1;->Jc()Le/a/k/c/j1;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Le/a/k/b/h;-><init>(Ls1/w/f;Le/a/k/c/i1;)V

    .line 100
    invoke-direct {v2, v3, v4, v5, v6}, Le/a/k/c/r;-><init>(Ls1/w/f;Landroid/content/Context;Le/a/k/c/s1;Le/a/k/b/h;)V

    return-object v2

    .line 101
    :pswitch_27
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 102
    new-instance v2, Le/a/k/q/f;

    iget-object v0, v0, Le/a/r1;->r6:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/c/q;

    invoke-direct {v2, v0}, Le/a/k/q/f;-><init>(Le/a/k/c/q;)V

    return-object v2

    .line 103
    :pswitch_28
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 104
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 105
    sget v2, Le/a/k/o/f;->a:I

    const-string v2, "featuresRegistry"

    .line 106
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v2, v0, Le/a/u3/g;->N5:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x165

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 108
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 109
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 110
    :pswitch_29
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->d8(Le/a/r1;)Le/a/k/c/d2;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_2a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 112
    iget-object v0, v0, Le/a/r1;->g5:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;

    .line 113
    sget v2, Le/a/k/o/f;->a:I

    const-string v2, "videoCallerIdDb"

    .line 114
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;->b()Le/a/k/n/f/b;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 116
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 117
    :pswitch_2b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->w()Le/a/e3/a;

    move-result-object v0

    return-object v0

    .line 118
    :pswitch_2c
    new-instance v0, Le/a/o/b/j0;

    invoke-direct {v0}, Le/a/o/b/j0;-><init>()V

    return-object v0

    .line 119
    :pswitch_2d
    new-instance v0, Le/a/o/b/u;

    invoke-direct {v0}, Le/a/o/b/u;-><init>()V

    return-object v0

    .line 120
    :pswitch_2e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 121
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    const-string v2, "featuresRegistry"

    .line 122
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v2, v0, Le/a/u3/g;->d6:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x175

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    const-wide/16 v2, 0x5

    .line 124
    invoke-interface {v0, v2, v3}, Le/a/u3/i;->d(J)J

    move-result-wide v2

    .line 125
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 126
    :pswitch_2f
    new-instance v0, Le/a/p5/m;

    invoke-direct {v0}, Le/a/p5/m;-><init>()V

    return-object v0

    .line 127
    :pswitch_30
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 128
    new-instance v2, Le/a/o/b/m0;

    iget-object v0, v0, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/o/b/m0;-><init>(Lo3/a;)V

    return-object v2

    .line 129
    :pswitch_31
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 130
    invoke-virtual {v0}, Le/a/r1;->V9()Le/a/o/b/l;

    move-result-object v0

    return-object v0

    .line 131
    :pswitch_32
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 132
    invoke-virtual {v0}, Le/a/r1;->va()Le/a/o/p/b/e;

    move-result-object v0

    return-object v0

    .line 133
    :pswitch_33
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 134
    invoke-virtual {v0}, Le/a/r1;->Db()Le/a/o/p/e/g/d;

    move-result-object v0

    return-object v0

    .line 135
    :pswitch_34
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 136
    invoke-virtual {v0}, Le/a/r1;->G9()Le/a/o/p/e/f;

    move-result-object v0

    return-object v0

    .line 137
    :pswitch_35
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->q8(Le/a/r1;)Le/a/o/a/h/h;

    move-result-object v0

    return-object v0

    .line 138
    :pswitch_36
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 139
    invoke-virtual {v0}, Le/a/r1;->C9()Le/a/o/b/c;

    move-result-object v0

    return-object v0

    .line 140
    :pswitch_37
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 141
    invoke-virtual {v0}, Le/a/r1;->La()Le/a/o/b/w;

    move-result-object v0

    return-object v0

    .line 142
    :pswitch_38
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 143
    new-instance v2, Le/a/o/p/e/d;

    iget-object v3, v0, Le/a/r1;->Q5:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/contextcall/db/ContextCallDatabase;

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Le/a/o/p/e/d;-><init>(Lcom/truecaller/contextcall/db/ContextCallDatabase;Ls1/w/f;)V

    return-object v2

    .line 144
    :pswitch_39
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 145
    iget-object v0, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v0}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "context"

    .line 146
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v4, Lcom/truecaller/contextcall/db/ContextCallDatabase;->a:Lcom/truecaller/contextcall/db/ContextCallDatabase$a;

    .line 148
    monitor-enter v4

    :try_start_0
    const-string v5, "context"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 150
    const-class v5, Lcom/truecaller/contextcall/db/ContextCallDatabase;

    const-string v6, "contextCallDb"

    .line 151
    invoke-static {v0, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v0

    new-array v3, v3, [Ln3/c0/f0/a;

    .line 152
    new-instance v5, Le/a/o/p/d/a;

    invoke-direct {v5}, Le/a/o/p/d/a;-><init>()V

    aput-object v5, v3, v2

    invoke-virtual {v0, v3}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    .line 153
    invoke-virtual {v0}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v0

    const-string v2, "Room.databaseBuilder(\n  \u2026\n                .build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/contextcall/db/ContextCallDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 155
    :pswitch_3a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 156
    iget-object v0, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v0}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "context"

    .line 157
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v2, Le/a/o/b/p;

    invoke-direct {v2, v0}, Le/a/o/b/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-object v2

    .line 159
    :pswitch_3b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 160
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    const-string v2, "featuresRegistry"

    .line 161
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v2, v0, Le/a/u3/g;->U5:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x16c

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 164
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 165
    :pswitch_3c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 166
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    const-string v2, "featuresRegistry"

    .line 167
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v2, v0, Le/a/u3/g;->T5:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x16b

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 170
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 171
    :pswitch_3d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 172
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    const-string v2, "featuresRegistry"

    .line 173
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v2, v0, Le/a/u3/g;->e3:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0xd4

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 176
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 177
    :pswitch_3e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 178
    invoke-virtual {v0}, Le/a/r1;->U9()Le/a/o/b/g;

    move-result-object v0

    return-object v0

    .line 179
    :pswitch_3f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 180
    new-instance v19, Le/a/o/d;

    move-object/from16 v2, v19

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->T5:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v0, Le/a/r1;->V5:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v6, v0, Le/a/r1;->W5:Ljavax/inject/Provider;

    invoke-static {v6}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v7, v0, Le/a/r1;->X5:Ljavax/inject/Provider;

    invoke-static {v7}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v8, v0, Le/a/r1;->Y5:Ljavax/inject/Provider;

    invoke-static {v8}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v9, v0, Le/a/r1;->Z5:Ljavax/inject/Provider;

    invoke-static {v9}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v10, v0, Le/a/r1;->P5:Ljavax/inject/Provider;

    invoke-static {v10}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v11, v0, Le/a/r1;->a6:Ljavax/inject/Provider;

    invoke-static {v11}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    invoke-virtual {v0}, Le/a/r1;->T9()Le/a/o/b/e;

    move-result-object v12

    iget-object v13, v0, Le/a/r1;->c6:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/o/b/l0;

    .line 181
    new-instance v20, Le/a/o/b/g0;

    move-object/from16 v14, v20

    iget-object v15, v0, Le/a/r1;->P5:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v21, v15

    check-cast v21, Le/a/o/b/o;

    iget-object v15, v0, Le/a/r1;->d6:Ljavax/inject/Provider;

    invoke-static {v15}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v22

    new-instance v23, Le/a/p5/d;

    invoke-direct/range {v23 .. v23}, Le/a/p5/d;-><init>()V

    invoke-virtual {v0}, Le/a/r1;->U9()Le/a/o/b/g;

    move-result-object v24

    iget-object v15, v0, Le/a/r1;->c6:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v25, v15

    check-cast v25, Le/a/o/b/l0;

    invoke-virtual {v0}, Le/a/r1;->W9()Le/a/o/h;

    move-result-object v26

    iget-object v15, v0, Le/a/r1;->e6:Ljavax/inject/Provider;

    move-object/from16 v27, v15

    invoke-direct/range {v20 .. v27}, Le/a/o/b/g0;-><init>(Le/a/o/b/o;Lo3/a;Le/a/p5/c;Le/a/o/b/f;Le/a/o/b/l0;Le/a/o/f;Ljavax/inject/Provider;)V

    .line 182
    iget-object v15, v0, Le/a/r1;->g6:Ljavax/inject/Provider;

    invoke-static {v15}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v15

    .line 183
    new-instance v1, Le/a/o/b/b0;

    move-object/from16 v16, v1

    move-object/from16 v20, v2

    invoke-virtual {v0}, Le/a/r1;->La()Le/a/o/b/w;

    move-result-object v2

    move-object/from16 v21, v3

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    move-object/from16 v22, v4

    invoke-virtual {v0}, Le/a/r1;->T9()Le/a/o/b/e;

    move-result-object v4

    move-object/from16 v23, v5

    iget-object v5, v0, Le/a/r1;->i6:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/o/b/i0;

    invoke-direct {v1, v2, v3, v4, v5}, Le/a/o/b/b0;-><init>(Le/a/o/b/v;Ls1/w/f;Le/a/o/b/d;Le/a/o/b/i0;)V

    .line 184
    invoke-virtual {v0}, Le/a/r1;->T9()Le/a/o/b/e;

    move-result-object v17

    iget-object v0, v0, Le/a/r1;->i6:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Le/a/o/b/i0;

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    invoke-direct/range {v2 .. v18}, Le/a/o/d;-><init>(Ls1/w/f;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/o/b/d;Le/a/o/b/l0;Le/a/o/b/f0;Lo3/a;Le/a/o/b/z;Le/a/o/b/d;Le/a/o/b/i0;)V

    return-object v19

    .line 185
    :pswitch_40
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 186
    new-instance v2, Le/a/h/d/a;

    iget-object v3, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    iget-object v4, v0, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/q/z;

    iget-object v5, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/e4/p;

    iget-object v0, v0, Le/a/r1;->X0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/f/a/j;

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/h/d/a;-><init>(Le/a/u3/g;Le/a/b0/q/z;Le/a/e4/p;Le/m/f/a/j;)V

    return-object v2

    .line 187
    :pswitch_41
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 188
    new-instance v2, Le/a/h/d/c;

    iget-object v3, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    iget-object v4, v0, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/q/z;

    iget-object v0, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e4/p;

    invoke-direct {v2, v3, v4, v0}, Le/a/h/d/c;-><init>(Le/a/u3/g;Le/a/b0/q/z;Le/a/e4/p;)V

    return-object v2

    .line 189
    :pswitch_42
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 190
    new-instance v2, Le/a/h/d/b;

    iget-object v3, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    iget-object v4, v0, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/q/z;

    iget-object v0, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e4/p;

    invoke-direct {v2, v3, v4, v0}, Le/a/h/d/b;-><init>(Le/a/u3/g;Le/a/b0/q/z;Le/a/e4/p;)V

    return-object v2

    .line 191
    :pswitch_43
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 192
    invoke-virtual {v0}, Le/a/r1;->rb()Le/a/h/d/e;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_44
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 194
    invoke-virtual {v0}, Le/a/r1;->B9()Le/a/q2/w0/h/f;

    move-result-object v0

    const-string v2, "support"

    .line 195
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-interface {v0}, Le/a/q2/w0/h/f;->d()Le/a/q2/w0/h/d;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 197
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 198
    :pswitch_45
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 199
    invoke-virtual {v0}, Le/a/r1;->B9()Le/a/q2/w0/h/f;

    move-result-object v0

    const-string v2, "support"

    .line 200
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-interface {v0}, Le/a/q2/w0/h/f;->b()Le/a/q2/w0/h/a;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 202
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 203
    :pswitch_46
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 204
    invoke-virtual {v0}, Le/a/r1;->B9()Le/a/q2/w0/h/f;

    move-result-object v0

    const-string v2, "support"

    .line 205
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-interface {v0}, Le/a/q2/w0/h/f;->a()Le/a/q2/w0/h/b;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 207
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 208
    :pswitch_47
    new-instance v0, Le/a/q2/w0/h/i;

    invoke-direct {v0}, Le/a/q2/w0/h/i;-><init>()V

    return-object v0

    .line 209
    :pswitch_48
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 210
    new-instance v2, Le/a/q2/w0/h/l;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    new-instance v4, Le/a/p5/d;

    invoke-direct {v4}, Le/a/p5/d;-><init>()V

    iget-object v5, v0, Le/a/r1;->y5:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/q2/w0/h/h;

    iget-object v0, v0, Le/a/r1;->z5:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/q2/w0/h/l;-><init>(Ls1/w/f;Le/a/p5/c;Le/a/q2/w0/h/h;Lo3/a;)V

    return-object v2

    .line 211
    :pswitch_49
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 212
    invoke-virtual {v0}, Le/a/r1;->B9()Le/a/q2/w0/h/f;

    move-result-object v0

    const-string v2, "support"

    .line 213
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-interface {v0}, Le/a/q2/w0/h/f;->c()Le/a/q2/w0/h/e;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 215
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 216
    :pswitch_4a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 217
    new-instance v13, Le/a/q2/w0/b;

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->w5:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v0, Le/a/r1;->s2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v2, v0, Le/a/r1;->A5:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v2, v0, Le/a/r1;->y5:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/q2/w0/h/h;

    iget-object v2, v0, Le/a/r1;->B5:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v2, v0, Le/a/r1;->z5:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v0, v0, Le/a/r1;->C5:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Le/a/q2/w0/b;-><init>(Ls1/w/f;Ls1/w/f;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/q2/w0/h/h;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v13

    .line 218
    :pswitch_4b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 219
    new-instance v2, Le/a/h/e/i;

    iget-object v3, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/e4/p;

    .line 220
    new-instance v4, Le/a/y4/b;

    iget-object v5, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v5}, Le/a/e/a2;->U(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v5

    invoke-virtual {v0}, Le/a/r1;->R6()Le/a/k3/j/b;

    move-result-object v6

    invoke-virtual {v0}, Le/a/r1;->q9()Le/a/w4/t/b/a;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Le/a/y4/b;-><init>(Ls1/w/f;Le/a/k3/j/b;Le/a/l4/c;)V

    .line 221
    new-instance v5, Le/a/h/e/c;

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v6

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    invoke-direct {v5, v6, v0}, Le/a/h/e/c;-><init>(Le/a/p5/g;Le/a/u3/g;)V

    .line 222
    invoke-direct {v2, v3, v4, v5}, Le/a/h/e/i;-><init>(Le/a/e4/p;Le/a/y4/a;Le/a/h/e/c;)V

    return-object v2

    .line 223
    :pswitch_4c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 224
    invoke-virtual {v0}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v0

    return-object v0

    .line 225
    :pswitch_4d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 226
    new-instance v2, Le/a/o5/e0;

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e4/p;

    invoke-direct {v2, v3, v0}, Le/a/o5/e0;-><init>(Le/a/p5/g;Le/a/e4/p;)V

    return-object v2

    .line 227
    :pswitch_4e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 228
    new-instance v24, Le/a/h/e/a;

    move-object/from16 v2, v24

    iget-object v3, v0, Le/a/r1;->t5:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v6

    iget-object v7, v0, Le/a/r1;->M1:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/k3/l/f;

    iget-object v8, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-static {v8}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    invoke-virtual {v0}, Le/a/r1;->gc()Le/a/h/c0;

    move-result-object v9

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v10

    iget-object v11, v0, Le/a/r1;->y1:Ljavax/inject/Provider;

    invoke-static {v11}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    invoke-virtual {v0}, Le/a/r1;->Ab()Le/a/h/r0/b;

    move-result-object v12

    iget-object v13, v0, Le/a/r1;->c0:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    iget-object v14, v0, Le/a/r1;->o2:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/a/b0/q/h0;

    iget-object v15, v0, Le/a/r1;->v5:Ljavax/inject/Provider;

    invoke-static {v15}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v15

    iget-object v1, v0, Le/a/r1;->s2:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v16

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v17

    iget-object v1, v0, Le/a/r1;->E5:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v18

    iget-object v1, v0, Le/a/r1;->L5:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v19

    iget-object v1, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v20

    .line 229
    new-instance v25, Le/a/h/e/k;

    move-object/from16 v21, v25

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v26

    invoke-virtual {v0}, Le/a/r1;->zc()Le/a/p5/k0;

    move-result-object v27

    iget-object v1, v0, Le/a/r1;->k6:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Le/a/o/c;

    iget-object v1, v0, Le/a/r1;->W0:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v29

    iget-object v1, v0, Le/a/r1;->v5:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v30

    iget-object v1, v0, Le/a/r1;->l6:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v31

    invoke-direct/range {v25 .. v31}, Le/a/h/e/k;-><init>(Landroid/content/Context;Le/a/p5/j0;Le/a/o/c;Lo3/a;Lo3/a;Lo3/a;)V

    .line 230
    new-instance v1, Le/a/h/e/g;

    move-object/from16 v22, v1

    move-object/from16 v25, v2

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le/a/h/e/g;-><init>(Landroid/content/Context;)V

    .line 231
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v23

    move-object/from16 v2, v25

    invoke-direct/range {v2 .. v23}, Le/a/h/e/a;-><init>(Lo3/a;Lo3/a;Lo3/a;Le/a/p5/a0;Le/a/k3/l/f;Lo3/a;Le/a/h/b0;Le/a/p5/g;Lo3/a;Le/a/h/r0/b;Landroid/telephony/TelephonyManager;Le/a/b0/q/h0;Lo3/a;Lo3/a;Landroid/content/Context;Lo3/a;Lo3/a;Lo3/a;Le/a/h/e/j;Le/a/h/e/f;Ls1/w/f;)V

    return-object v24

    .line 232
    :pswitch_4f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 233
    invoke-virtual {v0}, Le/a/r1;->Ic()Le/a/k/i;

    move-result-object v0

    return-object v0

    .line 234
    :pswitch_50
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 235
    new-instance v2, Le/a/d3/c;

    .line 236
    iget-object v3, v0, Le/a/r1;->x:Le/a/d3/g;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    .line 237
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "context"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "businesscard"

    .line 238
    invoke-virtual {v0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v3, "context.getFileStreamPath(\"businesscard\")"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-direct {v2, v0}, Le/a/d3/c;-><init>(Ljava/io/File;)V

    return-object v2

    .line 240
    :pswitch_51
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 241
    new-instance v13, Le/a/d3/k;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/b0/e/l;

    iget-object v2, v0, Le/a/r1;->k0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/e/h;

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v6

    iget-object v2, v0, Le/a/r1;->m0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/f4/b/g/b;

    iget-object v2, v0, Le/a/r1;->F0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/f4/b/b;

    invoke-virtual {v0}, Le/a/r1;->H6()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Le/a/r1;->G0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/f4/b/h/c;

    iget-object v2, v0, Le/a/r1;->I0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/f4/b/f/b;

    invoke-virtual {v0}, Le/a/r1;->ma()Le/a/x3/d;

    move-result-object v12

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Le/a/d3/k;-><init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/f/b;Le/a/x3/c;)V

    return-object v13

    .line 242
    :pswitch_52
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 243
    new-instance v2, Le/a/d3/f;

    iget-object v3, v0, Le/a/r1;->n5:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d3/j;

    iget-object v4, v0, Le/a/r1;->p5:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d3/b;

    iget-object v0, v0, Le/a/r1;->q5:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/d3/f;-><init>(Le/a/d3/j;Le/a/d3/b;Lo3/a;)V

    return-object v2

    .line 244
    :pswitch_53
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 245
    invoke-virtual {v0}, Le/a/r1;->fa()Le/a/y2/q/b;

    move-result-object v0

    return-object v0

    .line 246
    :pswitch_54
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 247
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    .line 248
    new-instance v2, Le/a/o5/s;

    invoke-direct {v2, v0}, Le/a/o5/s;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 249
    :pswitch_55
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 250
    invoke-virtual {v0}, Le/a/r1;->ec()Le/a/h/b/w0/b;

    move-result-object v0

    return-object v0

    .line 251
    :pswitch_56
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 252
    invoke-virtual {v0}, Le/a/r1;->Sb()Le/a/k/c/i0;

    move-result-object v0

    return-object v0

    .line 253
    :pswitch_57
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 254
    iget-object v0, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v0}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v0

    .line 255
    sget v4, Le/a/k/o/f;->a:I

    const-string v4, "context"

    .line 256
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 259
    const-class v4, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;

    const-string v5, "videoCallerIdDb"

    .line 260
    invoke-static {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v0

    new-array v3, v3, [Ln3/c0/f0/a;

    .line 261
    sget-object v4, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;->a:Ln3/c0/f0/a;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    .line 262
    invoke-virtual {v0}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 263
    invoke-virtual {v0}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v0

    const-string v2, "Room.databaseBuilder(\n  \u2026\n                .build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;

    return-object v0

    .line 264
    :pswitch_58
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 265
    iget-object v0, v0, Le/a/r1;->g5:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;

    .line 266
    sget v2, Le/a/k/o/f;->a:I

    const-string v2, "videoCallerIdDb"

    .line 267
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/db/VideoCallerIdDatabase;->d()Le/a/k/n/d/a;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 269
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 270
    :pswitch_59
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 271
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget v2, Le/a/k/o/f;->a:I

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    const-string v2, "featuresRegistry"

    .line 273
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v2, v0, Le/a/u3/g;->M5:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x164

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 276
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 277
    :pswitch_5a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 278
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget v2, Le/a/k/o/f;->a:I

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    const-string v2, "featuresRegistry"

    .line 280
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Le/a/u3/g;->F()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 282
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 283
    :pswitch_5b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 284
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget v2, Le/a/k/o/f;->a:I

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    const-string v2, "featuresRegistry"

    .line 286
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v2, v0, Le/a/u3/g;->W4:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x13a

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 289
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 290
    :pswitch_5c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 291
    invoke-virtual {v0}, Le/a/r1;->Hc()Le/a/k/c/s0;

    move-result-object v0

    return-object v0

    .line 292
    :pswitch_5d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->D()Ln3/m0/y;

    move-result-object v0

    return-object v0

    .line 293
    :pswitch_5e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 294
    new-instance v11, Le/a/a/k/a/m;

    invoke-virtual {v0}, Le/a/r1;->ca()Le/a/o5/c0;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/a/i0;

    iget-object v2, v0, Le/a/r1;->g1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/k/a/e1;

    iget-object v2, v0, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/b0/e/l;

    invoke-virtual {v0}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v8

    iget-object v2, v0, Le/a/r1;->a5:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/a/k/a/m;-><init>(Le/a/o5/b0;Landroid/content/ContentResolver;Le/a/a/i0;Le/a/a/k/a/e1;Le/a/b0/e/l;Le/a/o5/f0;Lo3/a;Landroid/content/Context;)V

    return-object v11

    .line 295
    :pswitch_5f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 296
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Le/a/p5/k;

    invoke-direct {v4}, Le/a/p5/k;-><init>()V

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->c5:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/k/a/l;

    invoke-virtual {v0}, Le/a/r1;->Ic()Le/a/k/i;

    move-result-object v7

    .line 297
    new-instance v0, Le/a/o5/i1;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Le/a/o5/i1;-><init>(Landroid/content/Context;Le/a/p5/m0;Le/a/p5/a0;Le/a/a/k/a/l;Le/a/k/h;)V

    return-object v0

    .line 298
    :pswitch_60
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 299
    iget-object v0, v0, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/l;

    const/4 v2, 0x4

    const-string v3, "utils"

    .line 300
    invoke-interface {v0, v3, v2}, Le/a/r2/l;->c(Ljava/lang/String;I)Le/a/r2/j;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 301
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 302
    :pswitch_61
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 303
    iget-object v2, v0, Le/a/r1;->Z4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/j;

    .line 304
    iget-object v3, v0, Le/a/r1;->J6:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Le/a/o5/i1;

    iget-object v3, v0, Le/a/r1;->V1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/r2/f;

    invoke-virtual {v0}, Le/a/r1;->R6()Le/a/k3/j/b;

    move-result-object v7

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v0}, Le/a/r1;->i7()Le/a/k3/j/j;

    move-result-object v9

    iget-object v3, v0, Le/a/r1;->Y3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/b0/m/d/a;

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v11

    invoke-virtual {v0}, Le/a/r1;->wa()Le/a/k3/f;

    move-result-object v12

    .line 305
    new-instance v0, Le/a/o5/y;

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Le/a/o5/y;-><init>(Le/a/o5/i1;Le/a/r2/f;Le/a/k3/j/b;Landroid/content/ContentResolver;Le/a/k3/j/j;Le/a/b0/m/d/a;Le/a/p5/a0;Le/a/k3/e;)V

    .line 306
    const-class v3, Le/a/o5/x;

    invoke-interface {v2, v3, v0}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 307
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 308
    :pswitch_62
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 309
    new-instance v15, Le/a/a/k/a/u;

    iget-object v2, v0, Le/a/r1;->o3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->d1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/a/k/a/s1;

    iget-object v2, v0, Le/a/r1;->P0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lu3/e0;

    iget-object v2, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/q2/a;

    iget-object v2, v0, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v2}, Le/a/c/p/a;->b2(Le/a/a/g/i;)Le/a/a/g/g;

    move-result-object v7

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v0}, Le/a/r1;->ua()Le/a/a/k/a/g;

    move-result-object v9

    iget-object v2, v0, Le/a/r1;->Y4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/b0/q/b;

    iget-object v2, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/a/i0;

    iget-object v2, v0, Le/a/r1;->M6:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/r2/f;

    iget-object v2, v0, Le/a/r1;->H0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Le/a/p4/b;

    iget-object v0, v0, Le/a/r1;->O0:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v14

    move-object v2, v15

    invoke-direct/range {v2 .. v14}, Le/a/a/k/a/u;-><init>(Lo3/a;Le/a/a/k/a/s1;Lu3/e0;Le/a/q2/a;Le/a/a/g/g;Landroid/content/ContentResolver;Le/a/a/k/a/g;Le/a/b0/q/b;Le/a/a/i0;Le/a/r2/f;Le/a/p4/b;Lo3/a;)V

    return-object v15

    .line 310
    :pswitch_63
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 311
    iget-object v2, v0, Le/a/r1;->O6:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/t;

    iget-object v0, v0, Le/a/r1;->P6:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/j;

    .line 312
    const-class v3, Le/a/a/k/a/t;

    invoke-interface {v0, v3, v2}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v0

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 313
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public final c()Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    sget-object v2, Le/a/h4/q/f;->a:Le/a/h4/q/f$a;

    iget v0, v1, Le/a/r1$q;->b:I

    const-string v3, "Cannot return null from a non-@Nullable @Provides method"

    const/4 v4, 0x0

    const-string v5, "settings"

    const-string v6, "context"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v2, v1, Le/a/r1$q;->b:I

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Le/a/a1;

    invoke-direct {v2, v0}, Le/a/a1;-><init>(Le/a/r1;)V

    return-object v2

    .line 6
    :pswitch_1
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 7
    new-instance v13, Le/a/j/c/e/b;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/b0/e/l;

    iget-object v2, v0, Le/a/r1;->k0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/e/h;

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v6

    iget-object v2, v0, Le/a/r1;->m0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/f4/b/g/b;

    iget-object v2, v0, Le/a/r1;->F0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/f4/b/b;

    invoke-virtual {v0}, Le/a/r1;->H6()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Le/a/r1;->G0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/f4/b/h/c;

    iget-object v2, v0, Le/a/r1;->I0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/f4/b/f/b;

    invoke-virtual {v0}, Le/a/r1;->ma()Le/a/x3/d;

    move-result-object v12

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Le/a/j/c/e/b;-><init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/f/b;Le/a/x3/c;)V

    return-object v13

    .line 8
    :pswitch_2
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 9
    new-instance v2, Le/a/j/c/c;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->qa:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/j/c/e/a;

    invoke-virtual {v0}, Le/a/r1;->nc()Le/a/j/c/d/b;

    move-result-object v0

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    invoke-direct {v2, v3, v4, v0, v5}, Le/a/j/c/c;-><init>(Ls1/w/f;Le/a/j/c/e/a;Le/a/j/c/d/b;Le/a/p5/c;)V

    return-object v2

    .line 10
    :pswitch_3
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Le/a/z0;

    invoke-direct {v2, v0}, Le/a/z0;-><init>(Le/a/r1;)V

    return-object v2

    .line 13
    :pswitch_4
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v2, Le/a/y0;

    invoke-direct {v2, v0}, Le/a/y0;-><init>(Le/a/r1;)V

    return-object v2

    .line 16
    :pswitch_5
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Le/a/x0;

    invoke-direct {v2, v0}, Le/a/x0;-><init>(Le/a/r1;)V

    return-object v2

    .line 19
    :pswitch_6
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 20
    new-instance v8, Le/a/a/s;

    iget-object v2, v0, Le/a/r1;->c9:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->k4:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/i0;

    iget-object v0, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/a/q2/a;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/a/s;-><init>(Lo3/a;Lo3/a;Lo3/a;Le/a/a/i0;Le/a/q2/a;)V

    return-object v8

    .line 21
    :pswitch_7
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 22
    new-instance v11, Le/a/c/i/m/d;

    iget-object v2, v0, Le/a/r1;->c4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/c/i/i/a;

    invoke-virtual {v0}, Le/a/r1;->pa()Le/a/c/i/c/c;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->S3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/c/f/n;

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v6

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v7

    .line 23
    new-instance v8, Le/a/c/c/f/k;

    invoke-virtual {v0}, Le/a/r1;->wb()Le/a/c/c/d/d0;

    move-result-object v2

    invoke-virtual {v0}, Le/a/r1;->kc()Le/a/c/c/d/m0;

    move-result-object v9

    invoke-virtual {v0}, Le/a/r1;->ja()Le/a/c/c/d/s;

    move-result-object v10

    invoke-direct {v8, v2, v9, v10}, Le/a/c/c/f/k;-><init>(Le/a/c/c/d/d0;Le/a/c/c/d/m0;Le/a/c/c/d/s;)V

    .line 24
    iget-object v2, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/c/b/e;

    iget-object v0, v0, Le/a/r1;->ja:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Le/a/c/h/i;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/c/i/m/d;-><init>(Le/a/c/i/i/a;Le/a/c/i/c/c;Le/a/c/c/f/n;Ls1/w/f;Landroid/content/ContentResolver;Le/a/c/c/f/k;Le/a/c/b/e;Le/a/c/h/i;)V

    return-object v11

    .line 25
    :pswitch_8
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 26
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v2, Le/a/q1;

    invoke-direct {v2, v0}, Le/a/q1;-><init>(Le/a/r1;)V

    return-object v2

    .line 28
    :pswitch_9
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v2, Le/a/p1;

    invoke-direct {v2, v0}, Le/a/p1;-><init>(Le/a/r1;)V

    return-object v2

    .line 31
    :pswitch_a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v2, Le/a/o1;

    invoke-direct {v2, v0}, Le/a/o1;-><init>(Le/a/r1;)V

    return-object v2

    .line 34
    :pswitch_b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v2, Le/a/n1;

    invoke-direct {v2, v0}, Le/a/n1;-><init>(Le/a/r1;)V

    return-object v2

    .line 37
    :pswitch_c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 38
    new-instance v2, Le/a/a/s0/k;

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/a/s0/k;-><init>(Ls1/w/f;)V

    return-object v2

    .line 39
    :pswitch_d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 40
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v2, Le/a/m1;

    invoke-direct {v2, v0}, Le/a/m1;-><init>(Le/a/r1;)V

    return-object v2

    .line 42
    :pswitch_e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v2, Le/a/l1;

    invoke-direct {v2, v0}, Le/a/l1;-><init>(Le/a/r1;)V

    return-object v2

    .line 45
    :pswitch_f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v2, Le/a/k1;

    invoke-direct {v2, v0}, Le/a/k1;-><init>(Le/a/r1;)V

    return-object v2

    .line 48
    :pswitch_10
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 49
    iget-object v2, v0, Le/a/r1;->z:Le/a/n/f0;

    iget-object v0, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v0}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v0

    .line 50
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x14008000

    .line 52
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "Intent(context, Truecall\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 53
    :pswitch_11
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 54
    new-instance v2, Le/a/n/f;

    invoke-virtual {v0}, Le/a/r1;->E3()Le/a/u3/g;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->lb()Le/a/d4/d;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/n/f;-><init>(Le/a/u3/g;Le/a/p5/g;Le/a/d4/c;)V

    return-object v2

    .line 55
    :pswitch_12
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 56
    new-instance v8, Le/a/n/c1;

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v5

    iget-object v0, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le/a/b0/o/a;

    new-instance v7, Le/a/n/g1;

    invoke-direct {v7}, Le/a/n/g1;-><init>()V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/n/c1;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/b0/o/a;Le/a/n/g1;)V

    return-object v8

    .line 57
    :pswitch_13
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 58
    new-instance v2, Le/a/n/y0;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/n/y0;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 59
    :pswitch_14
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 60
    new-instance v9, Le/a/n/s0;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/e4/p;

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->z1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/l0/f;

    new-instance v7, Le/a/p5/d;

    invoke-direct {v7}, Le/a/p5/d;-><init>()V

    iget-object v0, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/a/q2/a;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/n/s0;-><init>(Landroid/content/Context;Le/a/e4/p;Le/a/p5/a0;Le/a/l0/f;Le/a/p5/c;Le/a/q2/a;)V

    return-object v9

    .line 61
    :pswitch_15
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 62
    new-instance v15, Le/a/n/p;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->P9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/n/r0;

    iget-object v2, v0, Le/a/r1;->R9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/n/x0;

    iget-object v2, v0, Le/a/r1;->a9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/n/r1;

    iget-object v2, v0, Le/a/r1;->T9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/n/a1;

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    iget-object v2, v0, Le/a/r1;->V9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/n/e;

    iget-object v2, v0, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/b0/e/l;

    iget-object v2, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/b0/o/a;

    invoke-virtual {v0}, Le/a/r1;->r9()Le/a/n/j0;

    move-result-object v12

    .line 63
    new-instance v13, Le/a/n/j2/b;

    iget-object v2, v0, Le/a/r1;->T9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Le/a/n/a1;

    invoke-virtual {v0}, Le/a/r1;->r9()Le/a/n/j0;

    move-result-object v18

    iget-object v2, v0, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Le/a/b0/e/l;

    iget-object v2, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Le/a/b0/o/a;

    new-instance v21, Le/a/n/j2/d;

    invoke-direct/range {v21 .. v21}, Le/a/n/j2/d;-><init>()V

    move-object/from16 v16, v13

    invoke-direct/range {v16 .. v21}, Le/a/n/j2/b;-><init>(Le/a/n/a1;Le/a/n/i0;Le/a/b0/e/l;Le/a/b0/o/a;Le/a/n/j2/c;)V

    .line 64
    new-instance v14, Le/a/n/m1;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v23

    iget-object v2, v0, Le/a/r1;->T9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Le/a/n/a1;

    invoke-virtual {v0}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v25

    iget-object v2, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Le/a/b0/o/a;

    iget-object v2, v0, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Le/a/b0/e/r/a;

    iget-object v2, v0, Le/a/r1;->Y4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Le/a/b0/q/b;

    .line 65
    new-instance v2, Le/a/n/o1;

    iget-object v1, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/o/a;

    invoke-virtual {v0}, Le/a/r1;->r9()Le/a/n/j0;

    move-result-object v13

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v1, v13, v0}, Le/a/n/o1;-><init>(Le/a/b0/o/a;Le/a/n/i0;Landroid/content/Context;)V

    move-object/from16 v22, v14

    move-object/from16 v29, v2

    .line 66
    invoke-direct/range {v22 .. v29}, Le/a/n/m1;-><init>(Landroid/content/Context;Le/a/n/a1;Le/a/p5/a0;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/b0/q/b;Le/a/n/n1;)V

    move-object v2, v15

    move-object/from16 v13, v16

    .line 67
    invoke-direct/range {v2 .. v14}, Le/a/n/p;-><init>(Landroid/content/Context;Le/a/n/r0;Le/a/n/x0;Le/a/n/r1;Le/a/n/a1;Ls1/w/f;Le/a/n/e;Le/a/b0/e/l;Le/a/b0/o/a;Le/a/n/i0;Le/a/n/j2/a;Le/a/n/l1;)V

    return-object v15

    .line 68
    :pswitch_16
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 69
    iget-object v2, v0, Le/a/r1;->z:Le/a/n/f0;

    iget-object v0, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v0}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v8

    .line 70
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v7, Lcom/truecaller/ui/settings/SettingsActivity;->g:Lcom/truecaller/ui/settings/SettingsActivity$a;

    sget-object v9, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_BACKUP:Lcom/truecaller/ui/settings/SettingsCategory;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    invoke-static/range {v7 .. v12}, Lcom/truecaller/ui/settings/SettingsActivity$a;->b(Lcom/truecaller/ui/settings/SettingsActivity$a;Landroid/content/Context;Lcom/truecaller/ui/settings/SettingsCategory;ZLjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 72
    :pswitch_17
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 73
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v2, Le/a/j1;

    invoke-direct {v2, v0}, Le/a/j1;-><init>(Le/a/r1;)V

    return-object v2

    .line 75
    :pswitch_18
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 76
    iget-object v2, v0, Le/a/r1;->d:Le/a/b0/g/a$a;

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 77
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 79
    iget-object v2, v0, Le/a/u3/g;->H2:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0xbd

    aget-object v4, v4, v5

    invoke-virtual {v2, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 81
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 82
    :pswitch_19
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 83
    iget-object v2, v0, Le/a/r1;->d:Le/a/b0/g/a$a;

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 84
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 86
    iget-object v2, v0, Le/a/u3/g;->J2:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0xbf

    aget-object v4, v4, v5

    invoke-virtual {v2, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 88
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 89
    :pswitch_1a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 90
    new-instance v2, Le/a/e/b/k/s;

    iget-object v3, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/o/a;

    invoke-virtual {v0}, Le/a/r1;->D()Ln3/m0/y;

    move-result-object v4

    iget-object v0, v0, Le/a/r1;->e1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-direct {v2, v3, v4, v0}, Le/a/e/b/k/s;-><init>(Le/a/b0/o/a;Ln3/m0/y;Le/a/r2/f;)V

    return-object v2

    .line 91
    :pswitch_1b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 92
    new-instance v2, Le/a/a/g/u;

    iget-object v0, v0, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v0}, Le/a/a/g/u;-><init>(Lo3/a;)V

    return-object v2

    .line 93
    :pswitch_1c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 94
    new-instance v2, Le/a/a/y;

    iget-object v3, v0, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    invoke-direct {v2, v3, v0}, Le/a/a/y;-><init>(Lo3/a;Le/a/b0/o/a;)V

    return-object v2

    .line 95
    :pswitch_1d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 96
    new-instance v2, Le/a/c/g/y/l;

    iget-object v3, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/b/e;

    iget-object v4, v0, Le/a/r1;->x4:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/q2/a;

    invoke-virtual {v0}, Le/a/r1;->K9()Le/a/c/s/a/b;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/c/g/y/l;-><init>(Le/a/c/b/e;Lo3/a;Le/a/q2/a;Le/a/c/s/a/a;)V

    return-object v2

    .line 97
    :pswitch_1e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 98
    iget-object v2, v0, Le/a/r1;->j:Le/a/a/g/i;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v0}, Le/a/c/p/a;->Z1(Le/a/a/g/i;)Le/a/r2/l;

    move-result-object v0

    .line 99
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "actorsThreads"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v2, Le/a/a/g/i;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 101
    const-class v2, Lcom/truecaller/messaging/data/MessagesDataService;

    const/16 v4, 0x2725

    .line 102
    check-cast v0, Le/a/r2/m;

    invoke-virtual {v0, v3, v2, v4}, Le/a/r2/m;->a(Landroid/content/Context;Ljava/lang/Class;I)Le/a/r2/j;

    move-result-object v0

    const-string v2, "actorsThreads.createThre\u2026GES_STORE_ACTOR\n        )"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 103
    :pswitch_1f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 104
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget v2, Le/a/c/l/b/b;->a:I

    iget-object v0, v0, Le/a/r1;->J3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/i/b/a;

    const-string v2, "firebaseSeedStore"

    .line 106
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-interface {v0}, Le/a/c/i/b/a;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v2, Le/m/e/k;

    invoke-direct {v2}, Le/m/e/k;-><init>()V

    new-instance v3, Le/a/c/l/b/a;

    invoke-direct {v3}, Le/a/c/l/b/a;-><init>()V

    invoke-virtual {v3}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    sget-object v2, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 110
    invoke-virtual {v2, v0, v4}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v4

    .line 111
    :pswitch_20
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 112
    new-instance v2, Le/a/c/i/j/b;

    invoke-virtual {v0}, Le/a/r1;->cc()Le/a/c/a0/a0;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->t9:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v0, v0, Le/a/r1;->e9:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/b/l;

    invoke-direct {v2, v3, v4, v0}, Le/a/c/i/j/b;-><init>(Le/a/c/a0/z;Lo3/a;Le/a/c/b/l;)V

    return-object v2

    .line 113
    :pswitch_21
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 114
    new-instance v2, Le/a/c/a0/o;

    invoke-virtual {v0}, Le/a/r1;->wb()Le/a/c/c/d/d0;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/w/o0/g;

    invoke-direct {v2, v3, v0}, Le/a/c/a0/o;-><init>(Le/a/c/c/d/d0;Le/a/c/w/o0/g;)V

    return-object v2

    .line 115
    :pswitch_22
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 116
    new-instance v2, Le/a/c/i/a/c;

    .line 117
    new-instance v3, Le/a/c/a0/d;

    iget-object v4, v0, Le/a/r1;->r9:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/a0/h;

    invoke-direct {v3, v4}, Le/a/c/a0/d;-><init>(Le/a/c/a0/h;)V

    .line 118
    iget-object v4, v0, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/r2/f;

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/c/i/a/c;-><init>(Le/a/c/a0/c;Le/a/r2/f;Ls1/w/f;)V

    return-object v2

    .line 119
    :pswitch_23
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 120
    new-instance v16, Le/a/c/i/h/b;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->e9:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->h9:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->L3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v0, Le/a/r1;->c4:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v2, v0, Le/a/r1;->x4:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v2, v0, Le/a/r1;->s9:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v2, v0, Le/a/r1;->m9:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v2, v0, Le/a/r1;->v9:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v2, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v2, v0, Le/a/r1;->Q3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    invoke-virtual {v0}, Le/a/r1;->Ec()Le/a/c/g/x;

    move-result-object v14

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v15

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v15}, Le/a/c/i/h/b;-><init>(Landroid/content/Context;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/c/g/w;Ls1/w/f;)V

    return-object v16

    .line 121
    :pswitch_24
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 122
    new-instance v2, Le/a/m0/g;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/o/a;

    invoke-virtual {v0}, Le/a/r1;->E3()Le/a/u3/g;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/m0/g;-><init>(Landroid/content/Context;Le/a/b0/o/a;Le/a/u3/g;)V

    return-object v2

    .line 123
    :pswitch_25
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 124
    invoke-virtual {v0}, Le/a/r1;->Ya()Le/a/c/i/m/b;

    move-result-object v0

    return-object v0

    .line 125
    :pswitch_26
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 126
    new-instance v3, Le/a/c/i/a/a;

    invoke-direct {v3}, Le/a/c/i/a/a;-><init>()V

    invoke-virtual {v0}, Le/a/r1;->Y8()Le/a/c/c/f/b;

    move-result-object v4

    .line 127
    iget-object v2, v0, Le/a/r1;->M3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/insights/database/InsightsDb;

    iget-object v5, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v5}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v5

    .line 128
    sget v6, Le/a/c/l/b/d;->a:I

    const-string v6, "insightsDb"

    .line 129
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "coroutineContext"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance v7, Le/a/c/c/f/a;

    invoke-virtual {v2}, Lcom/truecaller/insights/database/InsightsDb;->a()Le/a/c/c/d/a;

    move-result-object v2

    invoke-direct {v7, v2, v5}, Le/a/c/c/f/a;-><init>(Le/a/c/c/d/a;Ls1/w/f;)V

    .line 131
    iget-object v0, v0, Le/a/r1;->M3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/database/InsightsDb;

    .line 132
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v6, Le/a/c/c/f/c;

    .line 134
    invoke-virtual {v0}, Lcom/truecaller/insights/database/InsightsDb;->c()Le/a/c/c/d/e;

    move-result-object v2

    .line 135
    invoke-virtual {v0}, Lcom/truecaller/insights/database/InsightsDb;->b()Le/a/c/c/d/c;

    move-result-object v0

    .line 136
    invoke-direct {v6, v2, v0}, Le/a/c/c/f/c;-><init>(Le/a/c/c/d/e;Le/a/c/c/d/c;)V

    const-string v0, "accountFactory"

    .line 137
    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountModelUseCases"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountMappingRuleModelUseCases"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRelationUseCases"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v0, Le/q/a/a/a;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v5, v7

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Le/q/a/a/a;-><init>(Le/a/c/i/a/a;Le/q/a/a/b/a;Le/q/a/a/b/b;Le/q/a/a/b/c;Lorg/json/JSONObject;)V

    return-object v0

    .line 139
    :pswitch_27
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 140
    new-instance v2, Le/a/c/c/f/h;

    invoke-virtual {v0}, Le/a/r1;->wb()Le/a/c/c/d/d0;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->S3:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/c/f/n;

    invoke-virtual {v0}, Le/a/r1;->ja()Le/a/c/c/d/s;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/c/c/f/h;-><init>(Le/a/c/c/d/d0;Le/a/c/c/f/n;Le/a/c/c/d/s;)V

    return-object v2

    .line 141
    :pswitch_28
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 142
    new-instance v14, Le/a/c/i/d/b;

    iget-object v2, v0, Le/a/r1;->j9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/c/c/f/g;

    invoke-virtual {v0}, Le/a/r1;->Y8()Le/a/c/c/f/b;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->S3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/c/f/n;

    invoke-virtual {v0}, Le/a/r1;->oa()Le/a/c/r/h/b;

    move-result-object v6

    iget-object v2, v0, Le/a/r1;->k9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/q/a/a/a;

    iget-object v2, v0, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/c/c0/o;

    iget-object v2, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/c/b/j;

    iget-object v2, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/c/b/e;

    .line 143
    new-instance v11, Le/a/c/i/b/d;

    invoke-virtual {v0}, Le/a/r1;->T7()Le/a/c/c0/m;

    move-result-object v2

    invoke-direct {v11, v2}, Le/a/c/i/b/d;-><init>(Le/a/c/c0/m;)V

    .line 144
    iget-object v2, v0, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/c/w/o0/g;

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v13

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Le/a/c/i/d/b;-><init>(Le/a/c/c/f/g;Le/a/c/c/f/b;Le/a/c/c/f/n;Le/a/c/r/h/b;Le/q/a/a/a;Le/a/c/c0/o;Le/a/c/b/j;Le/a/c/b/e;Le/a/c/i/b/d;Le/a/c/w/o0/g;Ls1/w/f;)V

    return-object v14

    .line 145
    :pswitch_29
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 146
    invoke-virtual {v0}, Le/a/r1;->Za()Le/a/c/i/m/g;

    move-result-object v0

    return-object v0

    .line 147
    :pswitch_2a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 148
    new-instance v2, Le/a/a/f1/b;

    iget-object v3, v0, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->ca()Le/a/o5/c0;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Le/a/a/f1/b;-><init>(Lo3/a;Lo3/a;Le/a/o5/b0;)V

    return-object v2

    .line 149
    :pswitch_2b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 150
    new-instance v9, Le/a/c/b/m;

    iget-object v2, v0, Le/a/r1;->S3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/c/c/f/n;

    iget-object v2, v0, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/c/c0/o;

    iget-object v2, v0, Le/a/r1;->J3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/i/b/a;

    iget-object v2, v0, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/b/e;

    iget-object v2, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/c/b/j;

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/c/b/m;-><init>(Le/a/c/c/f/n;Le/a/c/c0/o;Le/a/c/i/b/a;Le/a/c/b/e;Le/a/c/b/j;Ls1/w/f;)V

    return-object v9

    .line 151
    :pswitch_2c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 152
    new-instance v2, Le/a/a/g1/c;

    iget-object v3, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    invoke-direct {v2, v3, v0}, Le/a/a/g1/c;-><init>(Landroid/content/Context;Le/a/u3/g;)V

    return-object v2

    .line 153
    :pswitch_2d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 154
    new-instance v13, Le/a/a/p0/k;

    iget-object v2, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/c/b/j;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->Y6:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/a/p0/b;

    .line 155
    iget-object v2, v0, Le/a/r1;->r:Le/a/a/k/v;

    iget-object v6, v0, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b0/q/z;

    .line 156
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v7, Le/a/a/k/n;

    invoke-direct {v7, v6}, Le/a/a/k/n;-><init>(Le/a/b0/q/z;)V

    .line 158
    iget-object v2, v0, Le/a/r1;->c4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/c/i/i/a;

    invoke-virtual {v0}, Le/a/r1;->pa()Le/a/c/i/c/c;

    move-result-object v9

    iget-object v2, v0, Le/a/r1;->c9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/a/g1/b;

    iget-object v2, v0, Le/a/r1;->e9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/c/b/l;

    iget-object v2, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/q2/a;

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    move-object v2, v13

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v0

    invoke-direct/range {v2 .. v12}, Le/a/a/p0/k;-><init>(Le/a/c/b/j;Landroid/content/ContentResolver;Le/a/a/p0/b;Le/a/a/k/m;Le/a/c/i/i/a;Le/a/c/i/c/c;Le/a/a/g1/b;Le/a/c/b/l;Le/a/q2/a;Ls1/w/f;)V

    return-object v13

    .line 159
    :pswitch_2e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 160
    new-instance v2, Le/a/n/s1;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/o/a;

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    iget-object v0, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a;

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/n/s1;-><init>(Landroid/content/Context;Le/a/b0/o/a;Le/a/p5/c;Le/a/q2/a;)V

    return-object v2

    .line 161
    :pswitch_2f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 162
    iget-object v2, v0, Le/a/r1;->r:Le/a/a/k/v;

    iget-object v0, v0, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/q/z;

    .line 163
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v2, Le/a/a/k/n;

    invoke-direct {v2, v0}, Le/a/a/k/n;-><init>(Le/a/b0/q/z;)V

    return-object v2

    .line 165
    :pswitch_30
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 166
    iget-object v2, v0, Le/a/r1;->r:Le/a/a/k/v;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    .line 167
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v2, Le/a/a/k/k;

    invoke-direct {v2, v0}, Le/a/a/k/k;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 169
    :pswitch_31
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 170
    invoke-virtual {v0}, Le/a/r1;->hb()Le/a/a/k/f;

    move-result-object v0

    return-object v0

    .line 171
    :pswitch_32
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 172
    iget-object v0, v0, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v0}, Le/a/c/p/a;->Z1(Le/a/a/g/i;)Le/a/r2/l;

    move-result-object v0

    .line 173
    check-cast v0, Le/a/r2/m;

    .line 174
    new-instance v2, Le/a/r2/o;

    iget-object v3, v0, Le/a/r2/m;->a:Le/a/r2/a0;

    iget-object v0, v0, Le/a/r2/m;->b:Le/a/r2/n;

    const-string v4, "im_reaction_manager"

    invoke-direct {v2, v3, v0, v4}, Le/a/r2/o;-><init>(Le/a/r2/a0;Le/a/r2/n;Ljava/lang/String;)V

    return-object v2

    .line 175
    :pswitch_33
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v0}, Le/a/r1;->K0()Le/a/s4/a;

    move-result-object v0

    return-object v0

    .line 176
    :pswitch_34
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 177
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget v2, Le/a/q2/r;->a:I

    iget-object v0, v0, Le/a/r1;->M8:Ljavax/inject/Provider;

    const-string v2, "remoteConfig"

    .line 179
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s4/a;

    const-wide/16 v2, 0x708

    const-string v4, "dauEventThresholdSeconds_33415"

    invoke-interface {v0, v4, v2, v3}, Le/a/s4/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/32 v6, 0x14370

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move-wide v2, v6

    goto :goto_1

    :cond_2
    move-wide v2, v4

    .line 181
    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 183
    :pswitch_35
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 184
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget v2, Le/a/q2/r;->a:I

    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    const-string v2, "featureRegistry"

    .line 186
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 188
    iget-object v2, v0, Le/a/u3/g;->V4:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x139

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 190
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 191
    :pswitch_36
    invoke-static {}, Le/m/d/y/n;->S0()Lu3/e0;

    move-result-object v0

    return-object v0

    .line 192
    :pswitch_37
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 193
    new-instance v8, Le/a/q2/t;

    iget-object v3, v0, Le/a/r1;->g0:Ljavax/inject/Provider;

    new-instance v4, Le/a/p5/d;

    invoke-direct {v4}, Le/a/p5/d;-><init>()V

    iget-object v2, v0, Le/a/r1;->K8:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v6, v0, Le/a/r1;->L8:Ljavax/inject/Provider;

    iget-object v0, v0, Le/a/r1;->N8:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/q2/t;-><init>(Ljavax/inject/Provider;Le/a/p5/c;Lo3/a;Ljavax/inject/Provider;Lo3/a;)V

    return-object v8

    .line 194
    :pswitch_38
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 195
    invoke-virtual {v0}, Le/a/r1;->Y9()Le/a/h4/d;

    move-result-object v0

    return-object v0

    .line 196
    :pswitch_39
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 197
    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v0

    .line 198
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Le/a/h4/h;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :pswitch_3a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 201
    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v0

    .line 202
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Le/a/h4/h;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_3b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 205
    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v0

    .line 206
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Le/a/h4/h;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :pswitch_3c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 209
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v2, Le/a/h4/f;

    .line 211
    new-instance v3, Le/a/h4/q/a;

    const-string v4, "personal_chats"

    invoke-direct {v3, v4}, Le/a/h4/q/a;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v4, v0, Le/a/r1;->E8:Ljavax/inject/Provider;

    .line 213
    new-instance v5, Le/a/h4/q/a;

    const-string v6, "non_spam_sms_v2"

    invoke-direct {v5, v6}, Le/a/h4/q/a;-><init>(Ljava/lang/String;)V

    .line 214
    iget-object v6, v0, Le/a/r1;->F8:Ljavax/inject/Provider;

    .line 215
    new-instance v7, Le/a/h4/q/a;

    const-string v8, "group_chats"

    invoke-direct {v7, v8}, Le/a/h4/q/a;-><init>(Ljava/lang/String;)V

    .line 216
    iget-object v8, v0, Le/a/r1;->G8:Ljavax/inject/Provider;

    invoke-static/range {v3 .. v8}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 217
    invoke-direct {v2, v0}, Le/a/h4/f;-><init>(Ljava/util/Map;)V

    return-object v2

    .line 218
    :pswitch_3d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 219
    new-instance v2, Le/a/h4/j;

    invoke-virtual {v0}, Le/a/r1;->eb()Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Le/a/r1;->H8:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    .line 220
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v7

    .line 221
    new-instance v8, Le/a/h4/l;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Le/a/h4/l;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-static {v7, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v8, v7}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    .line 224
    invoke-direct {v2, v3, v4, v8}, Le/a/h4/j;-><init>(Ljava/util/Map;Lo3/a;Le/a/h4/k;)V

    return-object v2

    .line 225
    :pswitch_3e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 226
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    .line 227
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v2, Landroid/app/NotificationChannelGroup;

    .line 229
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_group_im:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "im"

    .line 230
    invoke-direct {v2, v3, v0}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v2

    .line 231
    :pswitch_3f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 232
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    .line 233
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v2, Landroid/app/NotificationChannelGroup;

    .line 235
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_group_sms:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "sms"

    .line 236
    invoke-direct {v2, v3, v0}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v2

    .line 237
    :pswitch_40
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 238
    iget-object v2, v0, Le/a/r1;->k:Le/a/h4/q/d;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v0

    .line 239
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    new-instance v2, Landroid/app/NotificationChannelGroup;

    .line 241
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_group_calls:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "calls"

    .line 242
    invoke-direct {v2, v3, v0}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v2

    .line 243
    :pswitch_41
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 244
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v4

    .line 245
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    sget v6, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_urgent_messages:I

    .line 247
    sget v7, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_urgent_messages:I

    .line 248
    invoke-virtual {v4}, Le/a/h4/h;->m()Landroid/net/Uri;

    move-result-object v13

    .line 249
    invoke-virtual {v4}, Le/a/h4/h;->o()[J

    move-result-object v11

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v14, 0x40

    const-string v5, "urgent_messages_ringtone"

    const-string v12, "im"

    .line 250
    invoke-static/range {v2 .. v14}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 251
    :pswitch_42
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 252
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v4

    .line 253
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    sget v6, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_urgent_messages_service:I

    .line 255
    sget v7, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_urgent_messages_service:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7e0

    const-string v5, "urgent_messages"

    .line 256
    invoke-static/range {v2 .. v14}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 257
    :pswitch_43
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 258
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v4

    .line 259
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    sget v6, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_nudge_to_send:I

    .line 261
    sget v7, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_nudge_to_send:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x5e0

    const-string v5, "nudge_to_send"

    const-string v12, "im"

    .line 262
    invoke-static/range {v2 .. v14}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 263
    :pswitch_44
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 264
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v4

    .line 265
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    sget v6, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_inbox_cleanup:I

    .line 267
    sget v7, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_inbox_cleanup:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7e0

    const-string v5, "inbox_cleanup"

    .line 268
    invoke-static/range {v2 .. v14}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 269
    :pswitch_45
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 270
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v4

    .line 271
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    sget v6, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_unread_reminders:I

    .line 273
    sget v7, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_unread_reminders:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x5e0

    const-string v5, "unread_reminders"

    const-string v12, "im"

    .line 274
    invoke-static/range {v2 .. v14}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 275
    :pswitch_46
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 276
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v4

    .line 277
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sget v6, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_recent_joiners:I

    .line 279
    sget v7, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_recent_joiners:I

    .line 280
    invoke-virtual {v4}, Le/a/h4/h;->h()Landroid/net/Uri;

    move-result-object v13

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x1c0

    const-string v5, "recent_joiners"

    const-string v12, "im"

    .line 281
    invoke-static/range {v2 .. v14}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_47
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 283
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v4

    .line 284
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    sget v6, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_flash:I

    .line 286
    sget v7, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_flash:I

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x5c0

    const-string v5, "flash"

    const-string v12, "im"

    .line 287
    invoke-static/range {v2 .. v14}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 288
    :pswitch_48
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 289
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v4

    .line 290
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v4}, Le/a/h4/h;->p()Ljava/lang/String;

    move-result-object v5

    .line 292
    sget v6, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_group_chats:I

    .line 293
    sget v7, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_group_chats:I

    .line 294
    invoke-virtual {v4}, Le/a/h4/h;->k()Z

    move-result v10

    .line 295
    invoke-virtual {v4}, Le/a/h4/h;->h()Landroid/net/Uri;

    move-result-object v13

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x140

    const-string v12, "im"

    .line 296
    invoke-static/range {v2 .. v14}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 297
    :pswitch_49
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 298
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v4

    .line 299
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    sget v6, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_blocked_sms:I

    .line 301
    sget v7, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_blocked_sms:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x5a0

    const-string v5, "blocked_sms"

    const-string v12, "sms"

    .line 302
    invoke-static/range {v2 .. v14}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 303
    :pswitch_4a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 304
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v4

    .line 305
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    sget v6, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_spam_sms:I

    .line 307
    sget v7, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_spam_sms:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x5e0

    const-string v5, "spam_sms"

    const-string v12, "sms"

    .line 308
    invoke-static/range {v2 .. v14}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 309
    :pswitch_4b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 310
    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v4

    .line 311
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v4}, Le/a/h4/h;->j()Ljava/lang/String;

    move-result-object v5

    .line 313
    sget v6, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_non_spam_sms:I

    .line 314
    sget v7, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_non_spam_sms:I

    .line 315
    invoke-virtual {v4}, Le/a/h4/h;->f()Z

    move-result v10

    .line 316
    invoke-virtual {v4}, Le/a/h4/h;->g()Landroid/net/Uri;

    move-result-object v13

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v14, 0x140

    const-string v12, "sms"

    .line 317
    invoke-static/range {v2 .. v14}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0

    .line 318
    :pswitch_4c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 319
    new-instance v11, Le/a/a/k/a/a/a;

    invoke-virtual {v0}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v2}, Le/a/c/p/a;->b2(Le/a/a/g/i;)Le/a/a/g/g;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/a/i0;

    iget-object v2, v0, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v0, Le/a/r1;->w3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v2, v0, Le/a/r1;->o3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v0, v0, Le/a/r1;->V4:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    new-instance v10, Le/a/p5/d;

    invoke-direct {v10}, Le/a/p5/d;-><init>()V

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/a/k/a/a/a;-><init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/i0;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/p5/c;)V

    return-object v11

    .line 320
    :pswitch_4d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 321
    iget-object v2, v0, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/l;

    iget-object v0, v0, Le/a/r1;->m8:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/k/a/a/m;

    const-string v4, "im_group_manager"

    .line 322
    invoke-interface {v2, v4}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v2

    const-class v4, Le/a/a/k/a/a/m;

    invoke-interface {v2, v4, v0}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v0

    .line 323
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 324
    :pswitch_4e
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 325
    new-instance v2, Le/a/d/c0/n;

    invoke-virtual {v0}, Le/a/r1;->E3()Le/a/u3/g;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Rc()Le/a/d/e;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->Vc()Le/a/d/c0/h1;

    move-result-object v0

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    invoke-direct {v2, v3, v4, v0, v5}, Le/a/d/c0/n;-><init>(Le/a/u3/g;Le/a/d/g;Le/a/d/c0/g1;Le/a/p5/c;)V

    return-object v2

    .line 326
    :pswitch_4f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 327
    invoke-virtual {v0}, Le/a/r1;->Uc()Le/a/d/c0/z0;

    move-result-object v0

    return-object v0

    .line 328
    :pswitch_50
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 329
    new-instance v2, Le/a/d/c/a/h;

    invoke-virtual {v0}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Le/a/d/c/a/h;-><init>(Le/a/d/c0/f0;Ls1/w/f;)V

    return-object v2

    .line 330
    :pswitch_51
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->W8(Le/a/r1;)Le/a/d/c0/u;

    move-result-object v0

    return-object v0

    .line 331
    :pswitch_52
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 332
    invoke-virtual {v0}, Le/a/r1;->H9()Le/a/d/c0/f;

    move-result-object v0

    return-object v0

    .line 333
    :pswitch_53
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 334
    invoke-virtual {v0}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v0

    return-object v0

    .line 335
    :pswitch_54
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 336
    invoke-virtual {v0}, Le/a/r1;->Pc()Le/a/d/c0/y1/c;

    move-result-object v0

    return-object v0

    .line 337
    :pswitch_55
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 338
    new-instance v2, Le/a/d/v/e;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v6

    new-instance v7, Le/a/r1$k;

    iget-object v3, v0, Le/a/r1;->P:Le/a/r1;

    invoke-direct {v7, v3, v4}, Le/a/r1$k;-><init>(Le/a/r1;Le/a/h1;)V

    invoke-virtual {v0}, Le/a/r1;->E9()Le/a/d/c0/z1/j;

    move-result-object v8

    iget-object v3, v0, Le/a/r1;->X7:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v3, v0, Le/a/r1;->V7:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    new-instance v11, Le/a/d/c0/q;

    invoke-direct {v11}, Le/a/d/c0/q;-><init>()V

    iget-object v3, v0, Le/a/r1;->Y7:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    invoke-virtual {v0}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v13

    iget-object v0, v0, Le/a/r1;->Z7:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v14

    move-object v5, v2

    invoke-direct/range {v5 .. v14}, Le/a/d/v/e;-><init>(Ls1/w/f;Le/a/d/u/f;Le/a/d/c0/z1/j;Lo3/a;Lo3/a;Le/a/d/c0/q;Lo3/a;Le/a/p5/u;Lo3/a;)V

    return-object v2

    .line 339
    :pswitch_56
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 340
    new-instance v2, Le/a/d/w/e;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v6

    new-instance v7, Le/a/r1$m;

    iget-object v3, v0, Le/a/r1;->P:Le/a/r1;

    invoke-direct {v7, v3, v4}, Le/a/r1$m;-><init>(Le/a/r1;Le/a/h1;)V

    iget-object v3, v0, Le/a/r1;->b8:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/d/v/d;

    invoke-virtual {v0}, Le/a/r1;->E9()Le/a/d/c0/z1/j;

    move-result-object v9

    iget-object v3, v0, Le/a/r1;->X7:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v3, v0, Le/a/r1;->c8:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v3, v0, Le/a/r1;->U7:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v3, v0, Le/a/r1;->S7:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    new-instance v14, Le/a/p5/d;

    invoke-direct {v14}, Le/a/p5/d;-><init>()V

    iget-object v3, v0, Le/a/r1;->d8:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v15

    .line 341
    new-instance v3, Le/a/d/c/a/h;

    invoke-virtual {v0}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v4

    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Le/a/d/c/a/h;-><init>(Le/a/d/c0/f0;Ls1/w/f;)V

    move-object v5, v2

    move-object/from16 v16, v3

    .line 342
    invoke-direct/range {v5 .. v16}, Le/a/d/w/e;-><init>(Ls1/w/f;Le/a/d/u/g;Le/a/d/v/d;Le/a/d/c0/z1/j;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/p5/c;Lo3/a;Le/a/d/c/a/f;)V

    return-object v2

    .line 343
    :pswitch_57
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 344
    new-instance v2, Le/a/d/q/k;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Le/a/r1;->f8:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/w/d;

    iget-object v0, v0, Le/a/r1;->b8:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/d;

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/d/q/k;-><init>(Ls1/w/f;Landroid/content/Context;Le/a/d/w/d;Le/a/d/v/d;)V

    return-object v2

    .line 345
    :pswitch_58
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 346
    new-instance v2, Le/a/d/q/w;

    invoke-virtual {v0}, Le/a/r1;->Rc()Le/a/d/e;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->g8:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Le/a/d/q/w;-><init>(Le/a/d/g;Lo3/a;)V

    return-object v2

    .line 347
    :pswitch_59
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 348
    invoke-virtual {v0}, Le/a/r1;->Xc()Le/a/d/c0/n1;

    move-result-object v0

    return-object v0

    .line 349
    :pswitch_5a
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 350
    new-instance v9, Le/a/d/x/r/f;

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->Rc()Le/a/d/e;

    move-result-object v5

    iget-object v2, v0, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v6

    .line 351
    new-instance v7, Le/m/e/k;

    invoke-direct {v7}, Le/m/e/k;-><init>()V

    .line 352
    invoke-virtual {v0}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/d/x/r/f;-><init>(Ls1/w/f;Ls1/w/f;Le/a/d/g;Landroid/content/Context;Le/m/e/k;Le/a/d/c0/f0;)V

    return-object v9

    .line 353
    :pswitch_5b
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 354
    new-instance v2, Le/a/d/c0/p1;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v0, v0, Le/a/r1;->L7:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Le/a/d/c0/p1;-><init>(Ls1/w/f;Lo3/a;)V

    return-object v2

    .line 355
    :pswitch_5c
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 356
    new-instance v8, Le/a/d/x/r/c;

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Uc()Le/a/d/c0/z0;

    move-result-object v4

    iget-object v2, v0, Le/a/r1;->Q7:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/d/c0/o1;

    iget-object v2, v0, Le/a/r1;->S7:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/d/x/r/o;

    invoke-virtual {v0}, Le/a/r1;->Oc()Le/a/d/c0/k0;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/d/x/r/c;-><init>(Ls1/w/f;Le/a/d/c0/y0;Le/a/d/c0/o1;Le/a/d/x/r/o;Le/a/d/c0/f0;)V

    return-object v8

    .line 357
    :pswitch_5d
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 358
    invoke-virtual {v0}, Le/a/r1;->Sc()Le/a/d/t/a;

    move-result-object v0

    return-object v0

    .line 359
    :pswitch_5e
    invoke-static {}, Le/a/p5/s0/g;->S0()Le/a/d/p/a;

    move-result-object v0

    return-object v0

    .line 360
    :pswitch_5f
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 361
    invoke-virtual {v0}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object v0

    return-object v0

    .line 362
    :pswitch_60
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 363
    new-instance v2, Le/a/d/c0/a2/c;

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    .line 364
    new-instance v4, Le/a/d/c0/b2/a;

    iget-object v5, v0, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b0/q/z;

    invoke-virtual {v0}, Le/a/r1;->Bb()Le/a/b0/q/x;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/d/c0/b2/a;-><init>(Le/a/b0/q/z;Le/a/b0/q/w;)V

    .line 365
    iget-object v5, v0, Le/a/r1;->F0:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/f4/b/b;

    iget-object v0, v0, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/q/z;

    invoke-direct {v2, v3, v4, v5, v0}, Le/a/d/c0/a2/c;-><init>(Ls1/w/f;Le/a/d/c0/b2/a;Le/a/f4/b/b;Le/a/b0/q/z;)V

    return-object v2

    .line 366
    :pswitch_61
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 367
    invoke-virtual {v0}, Le/a/r1;->Yc()Le/a/d/c0/t1;

    move-result-object v0

    return-object v0

    .line 368
    :pswitch_62
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 369
    invoke-virtual {v0}, Le/a/r1;->q9()Le/a/w4/t/b/a;

    move-result-object v0

    return-object v0

    .line 370
    :pswitch_63
    iget-object v0, v1, Le/a/r1$q;->a:Le/a/r1;

    .line 371
    invoke-virtual {v0}, Le/a/r1;->S9()Le/a/w4/e;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public final d()Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/r1$q;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "adsDatabase"

    const-string v7, "context"

    const-string v8, "Cannot return null from a non-@Nullable @Provides method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/r1$q;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 4
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    iget-object v1, v1, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/e4/p;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Le/a/e4/c0;

    invoke-direct {v2, v1}, Le/a/e4/c0;-><init>(Le/a/e4/p;)V

    return-object v2

    .line 7
    :pswitch_1
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 8
    new-instance v2, Le/a/i/f0/k/e;

    invoke-virtual {v1}, Le/a/r1;->I9()Le/a/i/f0/k/d;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/i/f0/k/e;-><init>(Le/a/i/f0/k/a;)V

    .line 9
    invoke-static {}, Le/m/d/y/n;->R0()Le/a/r2/l;

    move-result-object v1

    const-string v3, "adsProvider"

    .line 10
    invoke-interface {v1, v3}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v1

    .line 11
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    const-class v3, Le/a/i/f0/k/c;

    invoke-interface {v1, v3, v2}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 13
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 14
    :pswitch_2
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 15
    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 18
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const v5, 0x7f070142

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v4, v2

    .line 19
    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v2

    float-to-int v2, v4

    .line 20
    invoke-static {v1, v2}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    .line 21
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 22
    :pswitch_3
    new-instance v1, Le/a/i/b0/e/b;

    invoke-direct {v1}, Le/a/i/b0/e/b;-><init>()V

    return-object v1

    .line 23
    :pswitch_4
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 24
    new-instance v2, Le/a/i/b0/e/e;

    iget-object v1, v1, Le/a/r1;->Pc:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/i/b0/e/e;-><init>(Lo3/a;)V

    return-object v2

    .line 25
    :pswitch_5
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 26
    iget-object v2, v1, Le/a/r1;->A:Le/a/i/z/a;

    invoke-virtual {v1}, Le/a/r1;->h9()Lcom/truecaller/ads/db/AdsDatabase;

    move-result-object v1

    .line 27
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lcom/truecaller/ads/db/AdsDatabase;->a()Le/a/i/b0/c/c/a;

    move-result-object v1

    .line 29
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 30
    :pswitch_6
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 31
    new-instance v2, Le/a/i/b0/c/b;

    iget-object v3, v1, Le/a/r1;->Lc:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->cc:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/i/b0/c/b;-><init>(Lo3/a;Lo3/a;)V

    return-object v2

    .line 32
    :pswitch_7
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 33
    new-instance v9, Le/a/i/b0/b;

    iget-object v2, v1, Le/a/r1;->vc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->Nc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->Rc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->Mb:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v1, v1, Le/a/r1;->cc:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/i/b0/b;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v9

    .line 34
    :pswitch_8
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 35
    iget-object v2, v1, Le/a/r1;->A:Le/a/i/z/a;

    invoke-virtual {v1}, Le/a/r1;->h9()Lcom/truecaller/ads/db/AdsDatabase;

    move-result-object v1

    .line 36
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Lcom/truecaller/ads/db/AdsDatabase;->d()Le/a/i/e/h/a/e;

    move-result-object v1

    .line 38
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 39
    :pswitch_9
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 40
    iget-object v2, v1, Le/a/r1;->A:Le/a/i/z/a;

    invoke-virtual {v1}, Le/a/r1;->h9()Lcom/truecaller/ads/db/AdsDatabase;

    move-result-object v1

    .line 41
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Lcom/truecaller/ads/db/AdsDatabase;->e()Le/a/i/e/h/a/i;

    move-result-object v1

    .line 43
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 44
    :pswitch_a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 45
    iget-object v2, v1, Le/a/r1;->A:Le/a/i/z/a;

    invoke-virtual {v1}, Le/a/r1;->h9()Lcom/truecaller/ads/db/AdsDatabase;

    move-result-object v1

    .line 46
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Lcom/truecaller/ads/db/AdsDatabase;->c()Le/a/i/e/h/a/b;

    move-result-object v1

    .line 48
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 49
    :pswitch_b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 50
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v9, Le/a/i/e/k/f;

    iget-object v2, v1, Le/a/r1;->kc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->Ec:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->fc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->uc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->Fc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v1, v1, Le/a/r1;->Gc:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/i/e/k/f;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v9

    .line 52
    :pswitch_c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 53
    new-instance v2, Le/a/i/v/d;

    .line 54
    new-instance v3, Le/a/i/h0/l;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    new-instance v4, Le/a/p5/d;

    invoke-direct {v4}, Le/a/p5/d;-><init>()V

    invoke-direct {v3, v1, v4}, Le/a/i/h0/l;-><init>(Landroid/content/Context;Le/a/p5/c;)V

    .line 55
    invoke-direct {v2, v3}, Le/a/i/v/d;-><init>(Le/a/i/h0/l;)V

    return-object v2

    .line 56
    :pswitch_d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 57
    new-instance v2, Le/a/i/f0/j/d;

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    invoke-direct {v2, v1}, Le/a/i/f0/j/d;-><init>(Le/a/u3/g;)V

    return-object v2

    .line 58
    :pswitch_e
    new-instance v1, Le/a/i/d0/g0/d/c;

    invoke-direct {v1}, Le/a/i/d0/g0/d/c;-><init>()V

    return-object v1

    .line 59
    :pswitch_f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 60
    iget-object v2, v1, Le/a/r1;->A:Le/a/i/z/a;

    invoke-virtual {v1}, Le/a/r1;->h9()Lcom/truecaller/ads/db/AdsDatabase;

    move-result-object v1

    .line 61
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Lcom/truecaller/ads/db/AdsDatabase;->g()Le/a/i/d0/g0/c/b;

    move-result-object v1

    .line 63
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 64
    :pswitch_10
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 65
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 66
    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    return-object v1

    .line 67
    :pswitch_11
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 68
    new-instance v2, Le/a/i/d0/g0/b;

    iget-object v3, v1, Le/a/r1;->vc:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->wc:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->xc:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/i/d0/g0/b;-><init>(Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 69
    :pswitch_12
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 70
    invoke-virtual {v1}, Le/a/r1;->e9()Le/a/i/c/d/k;

    move-result-object v1

    return-object v1

    .line 71
    :pswitch_13
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 72
    new-instance v2, Le/a/i/d0/a0/d;

    iget-object v3, v1, Le/a/r1;->u5:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/i/d0/a0/d;-><init>(Lo3/a;Ls1/w/f;)V

    return-object v2

    .line 73
    :pswitch_14
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 74
    new-instance v2, Le/a/i/d0/a0/g;

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/i/d0/a0/g;-><init>(Ls1/w/f;)V

    return-object v2

    .line 75
    :pswitch_15
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 76
    new-instance v2, Le/a/i/d0/a0/c;

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    invoke-direct {v2, v1}, Le/a/i/d0/a0/c;-><init>(Le/a/u3/g;)V

    return-object v2

    .line 77
    :pswitch_16
    new-instance v1, Le/a/i/d0/a0/j;

    invoke-direct {v1}, Le/a/i/d0/a0/j;-><init>()V

    return-object v1

    .line 78
    :pswitch_17
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 79
    new-instance v2, Le/a/i/d0/a0/n;

    .line 80
    iget-object v4, v1, Le/a/r1;->pc:Ljavax/inject/Provider;

    iget-object v6, v1, Le/a/r1;->qc:Ljavax/inject/Provider;

    iget-object v8, v1, Le/a/r1;->rc:Ljavax/inject/Provider;

    iget-object v10, v1, Le/a/r1;->sc:Ljavax/inject/Provider;

    const-string v3, "FacebookMediationAdapter"

    const-string v5, "AmazonMediationAdapter"

    const-string v7, "CriteoMediationAdapter"

    const-string v9, "AppNextMediationAdapter"

    invoke-static/range {v3 .. v10}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 81
    invoke-direct {v2, v1}, Le/a/i/d0/a0/n;-><init>(Ljava/util/Map;)V

    return-object v2

    .line 82
    :pswitch_18
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 83
    new-instance v12, Le/a/i/d0/d;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->tc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/u3/g;

    new-instance v6, Le/a/p5/d;

    invoke-direct {v6}, Le/a/p5/d;-><init>()V

    invoke-virtual {v1}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v7

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v8

    iget-object v2, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/q2/a;

    iget-object v2, v1, Le/a/r1;->uc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v1, v1, Le/a/r1;->yc:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Le/a/i/d0/d;-><init>(Ls1/w/f;Lo3/a;Le/a/u3/g;Le/a/p5/c;Le/a/p5/u;Le/a/p5/g;Le/a/q2/a;Lo3/a;Lo3/a;)V

    return-object v12

    .line 84
    :pswitch_19
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 85
    iget-object v2, v1, Le/a/r1;->A:Le/a/i/z/a;

    invoke-virtual {v1}, Le/a/r1;->h9()Lcom/truecaller/ads/db/AdsDatabase;

    move-result-object v1

    .line 86
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Lcom/truecaller/ads/db/AdsDatabase;->f()Le/a/i/d0/c0/m;

    move-result-object v1

    .line 88
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 89
    :pswitch_1a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 90
    iget-object v2, v1, Le/a/r1;->A:Le/a/i/z/a;

    invoke-virtual {v1}, Le/a/r1;->h9()Lcom/truecaller/ads/db/AdsDatabase;

    move-result-object v1

    .line 91
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Lcom/truecaller/ads/db/AdsDatabase;->b()Le/a/i/v/f;

    move-result-object v1

    .line 93
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 94
    :pswitch_1b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 95
    new-instance v2, Le/a/i/c/d/h;

    iget-object v3, v1, Le/a/r1;->mc:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->nc:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/i/c/d/h;-><init>(Lo3/a;Lo3/a;)V

    return-object v2

    .line 96
    :pswitch_1c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 97
    iget-object v2, v1, Le/a/r1;->A:Le/a/i/z/a;

    invoke-virtual {v1}, Le/a/r1;->h9()Lcom/truecaller/ads/db/AdsDatabase;

    move-result-object v1

    .line 98
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Lcom/truecaller/ads/db/AdsDatabase;->h()Le/a/i/e/h/a/l;

    move-result-object v1

    .line 100
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 101
    :pswitch_1d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 102
    new-instance v2, Le/a/i/e/l/b;

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/i/e/l/b;-><init>(Lo3/a;)V

    return-object v2

    .line 103
    :pswitch_1e
    new-instance v1, Le/a/i/c/c/b;

    invoke-direct {v1}, Le/a/i/c/c/b;-><init>()V

    return-object v1

    .line 104
    :pswitch_1f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 105
    new-instance v2, Le/a/i/c/c/d;

    iget-object v3, v1, Le/a/r1;->hc:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/i/c/c/a;

    iget-object v1, v1, Le/a/r1;->jc:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/e/l/a;

    invoke-direct {v2, v3, v1}, Le/a/i/c/c/d;-><init>(Le/a/i/c/c/a;Le/a/i/e/l/a;)V

    return-object v2

    .line 106
    :pswitch_20
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 107
    invoke-virtual {v1}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v1

    return-object v1

    .line 108
    :pswitch_21
    new-instance v1, Le/a/i/u/c;

    invoke-direct {v1}, Le/a/i/u/c;-><init>()V

    return-object v1

    .line 109
    :pswitch_22
    new-instance v1, Le/a/p5/d;

    invoke-direct {v1}, Le/a/p5/d;-><init>()V

    return-object v1

    .line 110
    :pswitch_23
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 111
    new-instance v16, Le/a/i/c/d/b;

    iget-object v2, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->Pb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    iget-object v2, v1, Le/a/r1;->bc:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/i/e/k/a;

    invoke-virtual {v1}, Le/a/r1;->e9()Le/a/i/c/d/k;

    move-result-object v6

    invoke-virtual {v1}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v7

    .line 112
    new-instance v8, Le/a/i/c/d/f;

    iget-object v2, v1, Le/a/r1;->kc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v2

    iget-object v9, v1, Le/a/r1;->oc:Ljavax/inject/Provider;

    invoke-static {v9}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Le/a/i/c/d/f;-><init>(Lo3/a;Lo3/a;)V

    .line 113
    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v2, v1, Le/a/r1;->zc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    new-instance v11, Le/a/p5/d;

    invoke-direct {v11}, Le/a/p5/d;-><init>()V

    iget-object v2, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/q2/a;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v13

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v14

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v15

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v15}, Le/a/i/c/d/b;-><init>(Landroid/content/Context;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/i/e/k/a;Le/a/i/c/d/j;Le/a/p5/u;Le/a/i/c/d/e;Lo3/a;Lo3/a;Le/a/p5/c;Le/a/q2/a;Le/a/p5/g;Ls1/w/f;Ls1/w/f;)V

    return-object v16

    .line 114
    :pswitch_24
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 115
    new-instance v17, Le/a/i/e/k/c;

    iget-object v2, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->Bc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->Dc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->Ec:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v2, v1, Le/a/r1;->Ic:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v2, v1, Le/a/r1;->cc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v2, v1, Le/a/r1;->Sb:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v2, v1, Le/a/r1;->uc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    .line 116
    new-instance v13, Le/a/i/h0/l;

    iget-object v2, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v2

    new-instance v14, Le/a/p5/d;

    invoke-direct {v14}, Le/a/p5/d;-><init>()V

    invoke-direct {v13, v2, v14}, Le/a/i/h0/l;-><init>(Landroid/content/Context;Le/a/p5/c;)V

    .line 117
    iget-object v2, v1, Le/a/r1;->Fc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v14

    iget-object v2, v1, Le/a/r1;->Jc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v15

    iget-object v1, v1, Le/a/r1;->Gc:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v16

    move-object/from16 v2, v17

    invoke-direct/range {v2 .. v16}, Le/a/i/e/k/c;-><init>(Landroid/content/Context;Ls1/w/f;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/i/h0/l;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v17

    .line 118
    :pswitch_25
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 119
    new-instance v2, Le/a/i/e0/b;

    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    invoke-direct {v2, v3, v1}, Le/a/i/e0/b;-><init>(Landroid/content/Context;Le/a/u3/g;)V

    return-object v2

    .line 120
    :pswitch_26
    new-instance v1, Le/a/i/f0/j/b;

    invoke-direct {v1}, Le/a/i/f0/j/b;-><init>()V

    return-object v1

    .line 121
    :pswitch_27
    new-instance v1, Le/a/i/d/c;

    invoke-direct {v1}, Le/a/i/d/c;-><init>()V

    return-object v1

    .line 122
    :pswitch_28
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->b8(Le/a/r1;)Le/a/g/j/n;

    move-result-object v1

    return-object v1

    .line 123
    :pswitch_29
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 124
    new-instance v14, Le/a/i/f0/l/q;

    iget-object v2, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v4

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    invoke-virtual {v1}, Le/a/r1;->x9()Le/a/c3/b;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->d:Le/a/b0/g/a$a;

    invoke-static {v2}, Le/a/n/g0;->j(Le/a/b0/g/a$a;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/u3/g;

    iget-object v2, v1, Le/a/r1;->Mb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/z4/a;

    invoke-virtual {v1}, Le/a/r1;->k9()Le/a/g/d;

    move-result-object v11

    invoke-virtual {v1}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v12

    iget-object v1, v1, Le/a/r1;->Vb:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Le/a/i/d/b;

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Le/a/i/f0/l/q;-><init>(Landroid/content/Context;Le/a/p5/g;Le/a/p5/c;Le/a/c3/a;Ljava/lang/String;Ls1/w/f;Le/a/u3/g;Le/a/z4/a;Le/a/g/c;Le/a/p5/u;Le/a/i/d/b;)V

    return-object v14

    .line 125
    :pswitch_2a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 126
    new-instance v2, Le/a/i/f0/b;

    new-instance v3, Le/a/p5/d;

    invoke-direct {v3}, Le/a/p5/d;-><init>()V

    iget-object v1, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/i/f0/b;-><init>(Le/a/p5/c;Lo3/a;)V

    return-object v2

    .line 127
    :pswitch_2b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 128
    new-instance v2, Le/a/i/f0/l/v/b;

    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    invoke-direct {v2, v3, v4, v1}, Le/a/i/f0/l/v/b;-><init>(Landroid/content/Context;Ls1/w/f;Le/a/u3/g;)V

    return-object v2

    .line 129
    :pswitch_2c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 130
    iget-object v2, v1, Le/a/r1;->p:Le/a/z4/g;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 131
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v2, Le/a/z4/b;

    invoke-direct {v2, v1}, Le/a/z4/b;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 133
    :pswitch_2d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 134
    new-instance v11, Le/a/i/f0/l/s;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    new-instance v4, Le/a/b0/b/l/b;

    invoke-direct {v4}, Le/a/b0/b/l/b;-><init>()V

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    iget-object v2, v1, Le/a/r1;->Mb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/z4/a;

    iget-object v2, v1, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/b0/e/f;

    iget-object v2, v1, Le/a/r1;->Ob:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/i/f0/l/v/a;

    invoke-virtual {v1}, Le/a/r1;->g9()Le/a/i/f0/l/g;

    move-result-object v9

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Le/a/u3/g;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/i/f0/l/s;-><init>(Ls1/w/f;Le/a/b0/b/l/a;Le/a/p5/c;Le/a/z4/a;Le/a/b0/e/f;Le/a/i/f0/l/v/a;Le/a/i/f0/l/f;Le/a/u3/g;)V

    return-object v11

    .line 135
    :pswitch_2e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 136
    new-instance v9, Le/a/i/f0/e;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/r2/f;

    iget-object v2, v1, Le/a/r1;->Pb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/u3/g;

    .line 137
    new-instance v7, Le/a/i/f0/l/t;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v11

    new-instance v12, Le/a/p5/d;

    invoke-direct {v12}, Le/a/p5/d;-><init>()V

    invoke-virtual {v1}, Le/a/r1;->lb()Le/a/d4/d;

    move-result-object v13

    iget-object v2, v1, Le/a/r1;->Sb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Le/a/i/f0/a;

    iget-object v2, v1, Le/a/r1;->Mb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Le/a/z4/a;

    invoke-virtual {v1}, Le/a/r1;->I9()Le/a/i/f0/k/d;

    move-result-object v16

    iget-object v2, v1, Le/a/r1;->Xb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Le/a/i/f0/l/p;

    iget-object v2, v1, Le/a/r1;->Pb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Le/a/u3/g;

    invoke-virtual {v1}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v20

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v21

    iget-object v2, v1, Le/a/r1;->Zb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Le/a/i/f0/j/a;

    iget-object v2, v1, Le/a/r1;->ac:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v23

    iget-object v2, v1, Le/a/r1;->bc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v24

    iget-object v2, v1, Le/a/r1;->Tc:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Le/a/i/b0/a;

    move-object v10, v7

    invoke-direct/range {v10 .. v25}, Le/a/i/f0/l/t;-><init>(Ls1/w/f;Le/a/p5/c;Le/a/d4/c;Le/a/i/f0/a;Le/a/z4/a;Le/a/i/f0/k/a;Le/a/i/f0/l/p;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/u3/g;Le/a/p5/u;Le/a/p5/g;Le/a/i/f0/j/a;Lo3/a;Lo3/a;Le/a/i/b0/a;)V

    .line 138
    new-instance v8, Le/a/i/f0/n/b;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    iget-object v10, v1, Le/a/r1;->Mb:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/z4/a;

    .line 139
    new-instance v11, Le/a/i/f0/n/c;

    .line 140
    new-instance v12, Le/a/i/f0/h;

    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v1

    invoke-direct {v12, v1}, Le/a/i/f0/h;-><init>(Le/a/p5/c0;)V

    .line 141
    invoke-direct {v11, v12}, Le/a/i/f0/n/c;-><init>(Le/a/i/f0/h;)V

    .line 142
    invoke-direct {v8, v2, v10, v11}, Le/a/i/f0/n/b;-><init>(Ls1/w/f;Le/a/z4/a;Le/a/i/f0/n/c;)V

    move-object v2, v9

    .line 143
    invoke-direct/range {v2 .. v8}, Le/a/i/f0/e;-><init>(Ls1/w/f;Le/a/r2/f;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/u3/g;Le/a/i/f0/l/j;Le/a/i/f0/n/g;)V

    return-object v9

    .line 144
    :pswitch_2f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 145
    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 146
    sget v2, Le/a/b0/h/b;->a:I

    .line 147
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v2, Le/a/b0/h/c;

    invoke-direct {v2, v1}, Le/a/b0/h/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-object v2

    .line 149
    :pswitch_30
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 150
    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 151
    sget v6, Le/a/s4/d;->a:I

    .line 152
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {v1}, Le/m/d/g;->e(Landroid/content/Context;)Le/m/d/g;

    .line 154
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object v1

    .line 155
    const-class v6, Le/m/d/b0/q;

    .line 156
    invoke-virtual {v1}, Le/m/d/g;->a()V

    .line 157
    iget-object v1, v1, Le/m/d/g;->d:Le/m/d/m/t;

    invoke-virtual {v1, v6}, Le/m/d/m/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 158
    check-cast v1, Le/m/d/b0/q;

    const-string v6, "firebase"

    .line 159
    invoke-virtual {v1, v6}, Le/m/d/b0/q;->b(Ljava/lang/String;)Le/m/d/b0/k;

    move-result-object v1

    const-string v6, "FirebaseRemoteConfig.getInstance()"

    .line 160
    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget v6, Lcom/truecaller/common/config/R$xml;->remote_config_defaults:I

    .line 162
    iget-object v7, v1, Le/m/d/b0/k;->a:Landroid/content/Context;

    .line 163
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 164
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 165
    :cond_0
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 166
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v7

    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    :goto_0
    if-eq v7, v5, :cond_b

    if-ne v7, v2, :cond_1

    .line 167
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_1
    const/4 v12, 0x3

    if-ne v7, v12, :cond_4

    .line 168
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "entry"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v10, :cond_2

    if-eqz v11, :cond_2

    .line 169
    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v10, v3

    move-object v11, v10

    :cond_3
    move-object v9, v3

    goto :goto_2

    :cond_4
    const/4 v12, 0x4

    if-ne v7, v12, :cond_a

    if-eqz v9, :cond_a

    const/4 v7, -0x1

    .line 170
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, 0x19e5f

    if-eq v12, v13, :cond_6

    const v13, 0x6ac9171

    if-eq v12, v13, :cond_5

    goto :goto_1

    :cond_5
    const-string v12, "value"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v7, v5

    goto :goto_1

    :cond_6
    const-string v12, "key"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v7, v4

    :cond_7
    :goto_1
    if-eqz v7, :cond_9

    if-eq v7, v5, :cond_8

    goto :goto_2

    .line 171
    :cond_8
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 172
    :cond_9
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 173
    :cond_a
    :goto_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    :cond_b
    :goto_3
    :try_start_1
    sget-object v2, Le/m/d/b0/r/k;->f:Ljava/util/Date;

    .line 175
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 176
    sget-object v2, Le/m/d/b0/r/k;->f:Ljava/util/Date;

    .line 177
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 178
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 179
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 180
    new-instance v7, Le/m/d/b0/r/k;

    .line 181
    invoke-direct {v7, v6, v2, v4, v5}, Le/m/d/b0/r/k;-><init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    iget-object v2, v1, Le/m/d/b0/k;->f:Le/m/d/b0/r/j;

    invoke-virtual {v2, v7}, Le/m/d/b0/r/j;->c(Le/m/d/b0/r/k;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 183
    sget-object v3, Le/m/d/b0/c;->a:Le/m/d/b0/c;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->t(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    goto :goto_4

    .line 184
    :catch_1
    invoke-static {v3}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :goto_4
    return-object v1

    .line 185
    :pswitch_31
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 186
    new-instance v2, Le/a/l/p2/a1;

    invoke-virtual {v1}, Le/a/r1;->Pb()Le/a/l/p2/c1;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->x1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/p2/v0;

    invoke-direct {v2, v3, v1}, Le/a/l/p2/a1;-><init>(Le/a/l/p2/b1;Le/a/l/p2/v0;)V

    return-object v2

    .line 187
    :pswitch_32
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 188
    new-instance v2, Le/a/s2/i/b;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/s2/i/b;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 189
    :pswitch_33
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 190
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 191
    sget v2, Le/a/s2/e;->a:I

    .line 192
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v2, Le/a/s2/h/j;

    invoke-direct {v2, v1}, Le/a/s2/h/j;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v2, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-object v2

    .line 195
    :pswitch_34
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 196
    new-instance v2, Le/a/s2/d;

    iget-object v3, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->Db:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->qb:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->Eb:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/s2/d;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 197
    :pswitch_35
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 198
    iget-object v2, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v1

    .line 199
    sget v3, Le/a/x/y;->a:I

    .line 200
    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "resourceProvider"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    new-instance v3, Le/a/x/x;

    invoke-direct {v3, v2, v1}, Le/a/x/x;-><init>(Landroid/content/Context;Le/a/p5/c0;)V

    .line 202
    invoke-virtual {v3, v2}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-object v3

    .line 203
    :pswitch_36
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 204
    new-instance v8, Le/a/x/m;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/u3/g;

    iget-object v2, v1, Le/a/r1;->qb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/l/p2/d2/b;

    iget-object v2, v1, Le/a/r1;->Ab:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/x/w;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/x/m;-><init>(Le/a/u3/g;Le/a/l/p2/d2/b;Le/a/x/w;Landroid/content/Context;Le/a/p5/a0;)V

    return-object v8

    .line 205
    :pswitch_37
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 206
    new-instance v15, Le/a/l/p2/e1;

    iget-object v2, v1, Le/a/r1;->sb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/l/p2/r0;

    invoke-virtual {v1}, Le/a/r1;->Mb()Le/a/l/p2/l0;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->Qb()Le/a/l/p2/i1;

    move-result-object v5

    .line 207
    new-instance v6, Le/a/l/p2/g1;

    invoke-virtual {v1}, Le/a/r1;->Nb()Le/a/l/u2/b;

    move-result-object v2

    iget-object v7, v1, Le/a/r1;->ub:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/l/n2/e;

    invoke-virtual {v1}, Le/a/r1;->Zc()Le/a/l/n2/h;

    move-result-object v8

    invoke-direct {v6, v2, v7, v8}, Le/a/l/p2/g1;-><init>(Le/a/l/u2/a;Le/a/l/n2/e;Le/a/l/n2/g;)V

    .line 208
    invoke-virtual {v1}, Le/a/r1;->Nb()Le/a/l/u2/b;

    move-result-object v7

    invoke-virtual {v1}, Le/a/r1;->ad()Le/a/l/p2/t1;

    move-result-object v8

    iget-object v2, v1, Le/a/r1;->ub:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/l/n2/e;

    iget-object v2, v1, Le/a/r1;->yb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/l/p2/a;

    invoke-virtual {v1}, Le/a/r1;->Pb()Le/a/l/p2/c1;

    move-result-object v11

    invoke-virtual {v1}, Le/a/r1;->da()Le/a/l/a/g;

    move-result-object v12

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v13

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v14

    move-object v2, v15

    invoke-direct/range {v2 .. v14}, Le/a/l/p2/e1;-><init>(Le/a/l/p2/r0;Le/a/l/p2/k0;Le/a/l/p2/i1;Le/a/l/p2/f1;Le/a/l/u2/a;Le/a/l/p2/t1;Le/a/l/n2/e;Le/a/l/p2/a;Le/a/l/p2/b1;Le/a/l/a/g;Ls1/w/f;Ls1/w/f;)V

    return-object v15

    .line 209
    :pswitch_38
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 210
    new-instance v2, Le/a/l/p2/r1;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/l/p2/r1;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 211
    :pswitch_39
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 212
    new-instance v9, Le/a/l/p2/b;

    iget-object v2, v1, Le/a/r1;->ub:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/l/n2/e;

    iget-object v2, v1, Le/a/r1;->sb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/l/p2/r0;

    invoke-virtual {v1}, Le/a/r1;->Fb()Le/a/l/o0;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->wb:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->x1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/l/p2/v0;

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/l/p2/b;-><init>(Le/a/l/n2/e;Le/a/l/p2/r0;Le/a/l/n0;Lo3/a;Le/a/l/p2/v0;Ls1/w/f;)V

    return-object v9

    .line 213
    :pswitch_3a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 214
    new-instance v9, Le/a/l/p2/s;

    iget-object v2, v1, Le/a/r1;->ub:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->x1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v5

    invoke-virtual {v1}, Le/a/r1;->Q6()Le/a/o5/x1;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->yb:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/l/p2/s;-><init>(Lo3/a;Lo3/a;Le/a/o5/f0;Le/a/o5/x1;Lo3/a;Ls1/w/f;)V

    return-object v9

    .line 215
    :pswitch_3b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 216
    new-instance v2, Le/a/l/n2/a;

    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/o/a;

    iget-object v5, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v5}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/l/n2/a;-><init>(Landroid/content/Context;Le/a/b0/o/a;Ls1/w/f;Ls1/w/f;)V

    return-object v2

    .line 217
    :pswitch_3c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 218
    new-instance v2, Le/a/l/p2/d2/e;

    iget-object v3, v1, Le/a/r1;->x1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l/p2/v0;

    .line 219
    new-instance v4, Le/a/l/p2/d2/g;

    iget-object v5, v1, Le/a/r1;->H0:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/p4/b;

    invoke-direct {v4, v5}, Le/a/l/p2/d2/g;-><init>(Le/a/p4/b;)V

    .line 220
    invoke-virtual {v1}, Le/a/r1;->Bc()Le/a/t3/b;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/l/p2/d2/e;-><init>(Le/a/l/p2/v0;Le/a/l/p2/d2/g;Le/a/u3/a;Ls1/w/f;)V

    return-object v2

    .line 221
    :pswitch_3d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 222
    new-instance v2, Le/a/l/p2/n0;

    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/l/p2/n0;-><init>(Landroid/content/Context;Le/a/b0/q/l0;)V

    return-object v2

    .line 223
    :pswitch_3e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 224
    new-instance v2, Le/a/l/p2/p0;

    invoke-virtual {v1}, Le/a/r1;->Ib()Le/a/l/p2/j0;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->mb:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/l/p2/m0;

    invoke-virtual {v1}, Le/a/r1;->Nb()Le/a/l/u2/b;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/l/p2/p0;-><init>(Le/a/l/p2/i0;Le/a/l/p2/m0;Le/a/l/u2/a;Ls1/w/f;)V

    return-object v2

    .line 225
    :pswitch_3f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 226
    new-instance v2, Le/a/d3/i;

    invoke-virtual {v1}, Le/a/r1;->E3()Le/a/u3/g;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->p5:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d3/b;

    new-instance v4, Le/a/p5/d;

    invoke-direct {v4}, Le/a/p5/d;-><init>()V

    invoke-direct {v2, v3, v1, v4}, Le/a/d3/i;-><init>(Le/a/u3/g;Le/a/d3/b;Le/a/p5/c;)V

    return-object v2

    .line 227
    :pswitch_40
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 228
    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 229
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance v2, Le/a/r5/q0;

    invoke-direct {v2, v1}, Le/a/r5/q0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-object v2

    .line 231
    :pswitch_41
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 232
    new-instance v6, Le/a/l/p2/e2/g;

    iget-object v3, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/o/a;

    invoke-direct {v6, v3}, Le/a/l/p2/e2/g;-><init>(Le/a/b0/o/a;)V

    .line 233
    new-instance v7, Le/a/l/p2/e2/a;

    iget-object v3, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    iget-object v8, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/b0/o/a;

    iget-object v9, v1, Le/a/r1;->w1:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/h0/m;

    invoke-direct {v7, v3, v8, v9}, Le/a/l/p2/e2/a;-><init>(Le/a/u3/g;Le/a/b0/o/a;Le/a/h0/m;)V

    .line 234
    new-instance v8, Le/a/l/p2/e2/i;

    iget-object v3, v1, Le/a/r1;->ib:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r5/p0;

    invoke-direct {v8, v3}, Le/a/l/p2/e2/i;-><init>(Le/a/r5/p0;)V

    .line 235
    new-instance v9, Le/a/l/p2/e2/f;

    .line 236
    new-instance v3, Le/a/l/a/b0;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Le/a/l/b2;

    invoke-direct {v11}, Le/a/l/b2;-><init>()V

    invoke-direct {v3, v10, v11}, Le/a/l/a/b0;-><init>(Landroid/content/Context;Le/a/l/a2;)V

    .line 237
    iget-object v10, v1, Le/a/r1;->hb:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/l/a/y;

    invoke-direct {v9, v3, v10}, Le/a/l/p2/e2/f;-><init>(Le/a/l/a/b0;Le/a/l/a/y;)V

    .line 238
    new-instance v10, Le/a/l/p2/e2/c;

    invoke-virtual {v1}, Le/a/r1;->y1()Le/a/l/p2/f;

    move-result-object v3

    invoke-direct {v10, v3}, Le/a/l/p2/e2/c;-><init>(Le/a/l/p2/f;)V

    .line 239
    new-instance v11, Le/a/l/p2/e2/b;

    iget-object v3, v1, Le/a/r1;->kb:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/d3/h;

    iget-object v12, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/u3/g;

    invoke-direct {v11, v3, v12}, Le/a/l/p2/e2/b;-><init>(Le/a/d3/h;Le/a/u3/g;)V

    new-array v12, v2, [Le/a/l/p2/z0;

    .line 240
    new-instance v2, Le/a/l/p2/e2/e;

    iget-object v3, v1, Le/a/r1;->ob:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l/p2/o0;

    invoke-direct {v2, v3}, Le/a/l/p2/e2/e;-><init>(Le/a/l/p2/o0;)V

    aput-object v2, v12, v4

    .line 241
    new-instance v2, Le/a/l/p2/e2/h;

    invoke-virtual {v1}, Le/a/r1;->ad()Le/a/l/p2/t1;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/l/p2/e2/h;-><init>(Le/a/l/p2/t1;)V

    aput-object v2, v12, v5

    .line 242
    invoke-static/range {v6 .. v12}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 243
    :pswitch_42
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 244
    new-instance v2, Le/a/l/a/y;

    invoke-virtual {v1}, Le/a/r1;->lb()Le/a/d4/d;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    invoke-direct {v2, v3, v1}, Le/a/l/a/y;-><init>(Le/a/d4/c;Le/a/u3/g;)V

    return-object v2

    .line 245
    :pswitch_43
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 246
    new-instance v9, Le/a/l/p2/s0;

    invoke-virtual {v1}, Le/a/r1;->Ib()Le/a/l/p2/j0;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->Pb()Le/a/l/p2/c1;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->x1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/l/p2/v0;

    .line 247
    new-instance v6, Le/a/l/p2/e2/d;

    iget-object v2, v1, Le/a/r1;->pb:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v2

    invoke-direct {v6, v2}, Le/a/l/p2/e2/d;-><init>(Lo3/a;)V

    .line 248
    iget-object v2, v1, Le/a/r1;->qb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/l/p2/d2/f;

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/l/p2/s0;-><init>(Le/a/l/p2/i0;Le/a/l/p2/b1;Le/a/l/p2/v0;Le/a/l/p2/e2/d;Le/a/l/p2/d2/f;Ls1/w/f;)V

    return-object v9

    .line 249
    :pswitch_44
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 250
    new-instance v2, Le/a/q2/l;

    new-instance v3, Le/a/p5/d;

    invoke-direct {v3}, Le/a/p5/d;-><init>()V

    iget-object v4, v1, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/q2/l;-><init>(Le/a/p5/c;Lo3/a;Lo3/a;)V

    return-object v2

    .line 251
    :pswitch_45
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 252
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 253
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v2, Le/a/h/q0/c;

    invoke-direct {v2, v1}, Le/a/h/q0/c;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 255
    :pswitch_46
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 256
    new-instance v2, Le/a/a4/s;

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/a4/s;-><init>(Ls1/w/f;)V

    return-object v2

    .line 257
    :pswitch_47
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 258
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    iget-object v1, v1, Le/a/r1;->cb:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    .line 259
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v2, Le/a/o5/k;

    invoke-direct {v2, v1}, Le/a/o5/k;-><init>(Lo3/a;)V

    return-object v2

    .line 261
    :pswitch_48
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 262
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    invoke-virtual {v1}, Le/a/r1;->Q6()Le/a/o5/x1;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->y1:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/settings/CallingSettings;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v1

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    .line 263
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v2, Le/a/p2/j;

    invoke-direct {v2, v3, v4, v1, v5}, Le/a/p2/j;-><init>(Le/a/o5/x1;Lcom/truecaller/settings/CallingSettings;Le/a/o5/f0;Le/a/p5/c;)V

    return-object v2

    .line 265
    :pswitch_49
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 266
    iget-object v2, v1, Le/a/r1;->n:Le/a/h0/l;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v1, Le/a/r1;->a2:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Le/a/h0/j;

    iget-object v3, v1, Le/a/r1;->V1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/r2/f;

    iget-object v3, v1, Le/a/r1;->k3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/c/h/e;

    invoke-virtual {v1}, Le/a/r1;->R6()Le/a/k3/j/b;

    move-result-object v8

    .line 267
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    new-instance v1, Le/a/h0/s;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Le/a/h0/s;-><init>(Landroid/content/Context;Le/a/h0/j;Le/a/r2/f;Le/a/c/h/e;Le/a/k3/j/b;)V

    return-object v1

    .line 269
    :pswitch_4a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 270
    iget-object v2, v1, Le/a/r1;->n:Le/a/h0/l;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/l;

    .line 271
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-class v2, Lcom/truecaller/filters/FilterManagerService;

    const/16 v4, 0x2723

    invoke-interface {v1, v3, v2, v4}, Le/a/r2/l;->a(Landroid/content/Context;Ljava/lang/Class;I)Le/a/r2/j;

    move-result-object v1

    .line 273
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 274
    :pswitch_4b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 275
    iget-object v2, v1, Le/a/r1;->n:Le/a/h0/l;

    iget-object v3, v1, Le/a/r1;->Xa:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/j;

    iget-object v1, v1, Le/a/r1;->Ya:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h0/r;

    .line 276
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-class v2, Le/a/h0/r;

    invoke-interface {v3, v2, v1}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 278
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 279
    :pswitch_4c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 280
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    invoke-virtual {v1}, Le/a/r1;->q9()Le/a/w4/t/b/a;

    move-result-object v1

    .line 281
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 282
    :pswitch_4d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 283
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    invoke-virtual {v1}, Le/a/r1;->q9()Le/a/w4/t/b/a;

    move-result-object v1

    .line 284
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 285
    :pswitch_4e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 286
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 287
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v2, Lcom/truecaller/network/search/BulkSearcherImpl;

    const/16 v4, 0x14

    const-string v5, "inbox"

    invoke-direct {v2, v1, v4, v5, v3}, Lcom/truecaller/network/search/BulkSearcherImpl;-><init>(Landroid/content/Context;ILjava/lang/String;Le/a/f4/g/j$a;)V

    return-object v2

    .line 289
    :pswitch_4f
    new-instance v1, Le/a/y3/b;

    invoke-direct {v1}, Le/a/y3/b;-><init>()V

    return-object v1

    .line 290
    :pswitch_50
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 291
    new-instance v9, Le/a/y3/d;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->x1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v1, v1, Le/a/r1;->Ra:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/y3/d;-><init>(Landroid/content/Context;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v9

    .line 292
    :pswitch_51
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 293
    iget-object v2, v1, Le/a/r1;->p:Le/a/z4/g;

    iget-object v1, v1, Le/a/r1;->y1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/settings/CallingSettings;

    .line 294
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "callingSettings"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    new-instance v2, Le/a/h/c/d;

    invoke-direct {v2, v1}, Le/a/h/c/d;-><init>(Lcom/truecaller/settings/CallingSettings;)V

    return-object v2

    .line 296
    :pswitch_52
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 297
    iget-object v2, v1, Le/a/r1;->p:Le/a/z4/g;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 298
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    new-instance v2, Le/a/z4/e;

    invoke-direct {v2, v1}, Le/a/z4/e;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 300
    :pswitch_53
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 301
    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 302
    sget v2, Le/a/l/p1;->a:I

    .line 303
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    new-instance v2, Le/a/l/d2;

    invoke-direct {v2, v1}, Le/a/l/d2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-object v2

    .line 305
    :pswitch_54
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 306
    new-instance v2, Le/a/i1;

    invoke-direct {v2, v1}, Le/a/i1;-><init>(Le/a/r1;)V

    .line 307
    new-instance v3, Le/a/c0/e;

    invoke-virtual {v1}, Le/a/r1;->K0()Le/a/s4/a;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->h0:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/q2/d1/d;

    invoke-virtual {v1}, Le/a/r1;->Bc()Le/a/t3/b;

    move-result-object v1

    invoke-direct {v3, v4, v5, v1}, Le/a/c0/e;-><init>(Le/a/s4/a;Le/a/q2/d1/d;Le/a/u3/a;)V

    .line 308
    sget v1, Le/a/c0/i;->a:I

    const-string v1, "stringExperimentFactory"

    .line 309
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enumExperimentFactory"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    new-instance v1, Le/a/c0/h;

    invoke-direct {v1, v2, v3}, Le/a/c0/h;-><init>(Le/a/c0/p;Le/a/c0/e;)V

    return-object v1

    .line 311
    :pswitch_55
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 312
    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 313
    sget v2, Le/a/q5/g;->a:I

    .line 314
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    new-instance v2, Le/a/q5/j;

    invoke-direct {v2, v1}, Le/a/q5/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-object v2

    .line 316
    :pswitch_56
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 317
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    invoke-virtual {v1}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v3, v1, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Le/a/b0/q/z;

    invoke-virtual {v1}, Le/a/r1;->R6()Le/a/k3/j/b;

    move-result-object v6

    iget-object v3, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v7

    iget-object v3, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->U(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v8

    iget-object v1, v1, Le/a/r1;->J1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Le/a/k3/d;

    .line 318
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v1, Le/a/k3/j/h;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Le/a/k3/j/h;-><init>(Landroid/content/ContentResolver;Le/a/b0/q/z;Le/a/k3/j/b;Ls1/w/f;Ls1/w/f;Le/a/k3/d;)V

    return-object v1

    .line 320
    :pswitch_57
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 321
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 322
    new-instance v2, Le/a/o5/a0;

    invoke-direct {v2, v1}, Le/a/o5/a0;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 323
    :pswitch_58
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 324
    iget-object v2, v1, Le/a/r1;->Z4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/j;

    invoke-virtual {v1}, Le/a/r1;->fb()Le/a/o5/r0;

    move-result-object v1

    .line 325
    const-class v3, Le/a/o5/q0;

    invoke-interface {v2, v3, v1}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 326
    invoke-static {v1, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 327
    :pswitch_59
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 328
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 329
    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    const-class v2, Lcom/truecaller/background_work/persistence/WorkActionDatabase;

    const-string v3, "work_actions"

    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v1

    new-array v2, v5, [Ln3/c0/f0/a;

    .line 331
    sget-object v3, Le/a/y2/p/a;->a:Ln3/c0/f0/a;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    .line 332
    invoke-virtual {v1}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v1

    const-string v2, "Room.databaseBuilder(con\u2026\n                .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/background_work/persistence/WorkActionDatabase;

    return-object v1

    .line 333
    :pswitch_5a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 334
    invoke-virtual {v1}, Le/a/r1;->f4()Ljava/util/Map;

    move-result-object v1

    const-string v2, "actions"

    .line 335
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    new-instance v2, Le/a/y2/m;

    invoke-direct {v2, v1}, Le/a/y2/m;-><init>(Ljava/util/Map;)V

    return-object v2

    .line 337
    :pswitch_5b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 338
    new-instance v2, Le/a/q2/d1/b;

    iget-object v1, v1, Le/a/r1;->Z:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/b1/a;

    invoke-direct {v2, v1}, Le/a/q2/d1/b;-><init>(Le/a/q2/b1/a;)V

    return-object v2

    .line 339
    :pswitch_5c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 340
    invoke-virtual {v1}, Le/a/r1;->gc()Le/a/h/c0;

    move-result-object v1

    return-object v1

    .line 341
    :pswitch_5d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 342
    new-instance v18, Le/a/q2/z0/c;

    iget-object v2, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/e/l;

    iget-object v6, v1, Le/a/r1;->g0:Ljavax/inject/Provider;

    iget-object v7, v1, Le/a/r1;->Ba:Ljavax/inject/Provider;

    invoke-virtual {v1}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v8

    iget-object v2, v1, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v2, v1, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v2, v1, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/b0/e/f;

    invoke-virtual {v1}, Le/a/r1;->x9()Le/a/c3/b;

    move-result-object v12

    iget-object v2, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    new-instance v14, Le/a/p5/d;

    invoke-direct {v14}, Le/a/p5/d;-><init>()V

    iget-object v2, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Le/a/q2/a;

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Le/a/u3/g;

    invoke-static {}, Le/m/d/y/n;->S0()Lu3/e0;

    move-result-object v17

    move-object/from16 v2, v18

    invoke-direct/range {v2 .. v17}, Le/a/q2/z0/c;-><init>(Landroid/content/Context;Ls1/w/f;Le/a/b0/e/l;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/p5/u;Lo3/a;Lo3/a;Le/a/b0/e/f;Le/a/c3/a;Lo3/a;Le/a/p5/c;Le/a/q2/a;Le/a/u3/g;Lu3/e0;)V

    return-object v18

    .line 343
    :pswitch_5e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 344
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v2, Le/a/g1;

    invoke-direct {v2, v1}, Le/a/g1;-><init>(Le/a/r1;)V

    return-object v2

    .line 346
    :pswitch_5f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 347
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v2, Le/a/f1;

    invoke-direct {v2, v1}, Le/a/f1;-><init>(Le/a/r1;)V

    return-object v2

    .line 349
    :pswitch_60
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 350
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v2, Le/a/e1;

    invoke-direct {v2, v1}, Le/a/e1;-><init>(Le/a/r1;)V

    return-object v2

    .line 352
    :pswitch_61
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 353
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v2, Le/a/d1;

    invoke-direct {v2, v1}, Le/a/d1;-><init>(Le/a/r1;)V

    return-object v2

    .line 355
    :pswitch_62
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 356
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v2, Le/a/c1;

    invoke-direct {v2, v1}, Le/a/c1;-><init>(Le/a/r1;)V

    return-object v2

    .line 358
    :pswitch_63
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 359
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance v2, Le/a/b1;

    invoke-direct {v2, v1}, Le/a/b1;-><init>(Le/a/r1;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public final e()Ljava/lang/Object;
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/r1$q;->b:I

    const/4 v2, 0x0

    const-string v3, "db"

    const-string v4, "insightsDb"

    const-string v5, "prefs"

    const/4 v6, 0x0

    const-string v7, "Cannot return null from a non-@Nullable @Provides method"

    const-string v8, "context"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/r1$q;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 4
    new-instance v8, Le/a/f5/b;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/u3/g;

    .line 5
    new-instance v4, Le/a/f5/i/b;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v5, v1, Le/a/r1;->o2:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b0/q/h0;

    invoke-direct {v4, v2, v5}, Le/a/f5/i/b;-><init>(Landroid/content/Context;Le/a/b0/q/h0;)V

    .line 6
    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/e/l;

    iget-object v2, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/b0/o/a;

    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/f5/b;-><init>(Le/a/u3/g;Le/a/f5/i/b;Le/a/b0/e/l;Le/a/b0/o/a;Le/a/p5/c0;)V

    return-object v8

    .line 7
    :pswitch_1
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 8
    new-instance v2, Le/a/b0/q/r;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/b0/q/r;-><init>(Landroid/content/Context;Ls1/w/f;Ls1/w/f;)V

    return-object v2

    .line 9
    :pswitch_2
    sget-object v1, Le/a/b/f;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/e;

    .line 10
    invoke-static {v1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 11
    :pswitch_3
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 12
    new-instance v2, Le/a/b/d;

    iget-object v1, v1, Le/a/r1;->Nf:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/e;

    invoke-direct {v2, v1}, Le/a/b/d;-><init>(Le/a/b/e;)V

    return-object v2

    .line 13
    :pswitch_4
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 14
    new-instance v2, Le/a/a/s0/e;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->l1:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/h5/w;

    iget-object v1, v1, Le/a/r1;->p1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h5/y;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/s0/e;-><init>(Landroid/content/Context;Le/a/p5/g;Le/a/h5/w;Le/a/h5/y;)V

    return-object v2

    .line 15
    :pswitch_5
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Le/a/p5/d;

    invoke-direct {v1}, Le/a/p5/d;-><init>()V

    .line 18
    new-instance v2, Le/a/f4/g/v;

    invoke-direct {v2, v1}, Le/a/f4/g/v;-><init>(Le/a/p5/c;)V

    return-object v2

    .line 19
    :pswitch_6
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 20
    new-instance v2, Le/a/i4/j;

    invoke-direct {v2}, Le/a/i4/j;-><init>()V

    .line 21
    iget-object v3, v1, Le/a/r1;->Hd:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/n/e;

    .line 22
    iput-object v3, v2, Le/a/i4/j;->a:Le/a/b0/n/e;

    .line 23
    iget-object v1, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/o/a;

    .line 24
    iput-object v1, v2, Le/a/i4/j;->b:Le/a/b0/o/a;

    return-object v2

    .line 25
    :pswitch_7
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 26
    new-instance v2, Le/a/i4/h;

    invoke-direct {v2}, Le/a/i4/h;-><init>()V

    .line 27
    iget-object v1, v1, Le/a/r1;->Hf:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i4/i;

    .line 28
    iput-object v1, v2, Le/a/i4/h;->a:Le/a/i4/i;

    return-object v2

    .line 29
    :pswitch_8
    new-instance v1, Le/a/g/j/f;

    invoke-direct {v1}, Le/a/g/j/f;-><init>()V

    return-object v1

    .line 30
    :pswitch_9
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 31
    new-instance v10, Le/a/i/v/b;

    iget-object v2, v1, Le/a/r1;->Vc:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/i/f0/d;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/u3/g;

    iget-object v2, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/o/a;

    iget-object v2, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/b0/e/r/a;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v7

    iget-object v2, v1, Le/a/r1;->Dc:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/i/f0/j/c;

    iget-object v1, v1, Le/a/r1;->Df:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/i/v/b;-><init>(Le/a/i/f0/d;Le/a/u3/g;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/p5/g;Le/a/i/f0/j/c;Lo3/a;)V

    return-object v10

    .line 32
    :pswitch_a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 33
    new-instance v8, Le/a/a/c/i7;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->c9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/a/g1/b;

    invoke-virtual {v1}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/r2/f;

    invoke-virtual {v1}, Le/a/r1;->gb()Le/a/q2/o0;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/a/c/i7;-><init>(Le/a/o5/f0;Le/a/a/g1/b;Landroid/content/ContentResolver;Le/a/r2/f;Le/a/q2/i0;)V

    return-object v8

    .line 34
    :pswitch_b
    new-instance v1, Le/a/l/a/d0;

    invoke-direct {v1}, Le/a/l/a/d0;-><init>()V

    return-object v1

    .line 35
    :pswitch_c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 36
    new-instance v2, Le/a/g0/i;

    invoke-virtual {v1}, Le/a/r1;->pc()Le/a/g0/e;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->qc()Le/a/g0/n/a;

    move-result-object v1

    new-instance v4, Le/a/p5/d;

    invoke-direct {v4}, Le/a/p5/d;-><init>()V

    invoke-direct {v2, v3, v1, v4}, Le/a/g0/i;-><init>(Le/a/g0/d;Le/a/g0/n/a;Le/a/p5/c;)V

    return-object v2

    .line 37
    :pswitch_d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 38
    new-instance v2, Le/a/a/o0/b;

    invoke-virtual {v1}, Le/a/r1;->v9()Le/a/a3/b;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->R6()Le/a/k3/j/b;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/a/o0/b;-><init>(Le/a/a3/a;Ls1/w/f;Le/a/k3/j/b;)V

    return-object v2

    .line 39
    :pswitch_e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 40
    new-instance v2, Le/a/f4/b/d;

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/f4/b/d;-><init>(Lo3/a;)V

    return-object v2

    .line 41
    :pswitch_f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 42
    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v1

    return-object v1

    .line 43
    :pswitch_10
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->p6()Landroid/content/ClipboardManager;

    move-result-object v1

    return-object v1

    .line 44
    :pswitch_11
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 45
    iget-object v3, v1, Le/a/r1;->pf:Ljavax/inject/Provider;

    iget-object v2, v1, Le/a/r1;->qf:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->db:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->Md:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->u1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v2, v1, Le/a/r1;->a2:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v2, v1, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v2, v1, Le/a/r1;->fc:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v2, v1, Le/a/r1;->rf:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v12

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->U(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v13

    .line 46
    new-instance v1, Le/a/i0;

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Le/a/i0;-><init>(Ljavax/inject/Provider;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Ls1/w/f;Ls1/w/f;)V

    return-object v1

    .line 47
    :pswitch_12
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 48
    new-instance v9, Le/a/h3/b/c;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->y1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/truecaller/settings/CallingSettings;

    iget-object v5, v1, Le/a/r1;->sf:Ljavax/inject/Provider;

    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/b0/e/l;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v7

    .line 49
    new-instance v8, Le/a/c/z/c;

    invoke-virtual {v1}, Le/a/r1;->sb()Le/a/c/w/d0;

    move-result-object v1

    invoke-direct {v8, v1}, Le/a/c/z/c;-><init>(Le/a/c/w/b0;)V

    move-object v2, v9

    .line 50
    invoke-direct/range {v2 .. v8}, Le/a/h3/b/c;-><init>(Landroid/content/Context;Lcom/truecaller/settings/CallingSettings;Ljavax/inject/Provider;Le/a/b0/e/l;Le/a/o5/f0;Le/a/c/z/c;)V

    return-object v9

    .line 51
    :pswitch_13
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 52
    new-instance v2, Le/a/q2/x0/c;

    iget-object v1, v1, Le/a/r1;->k6:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/o/c;

    invoke-direct {v2, v1}, Le/a/q2/x0/c;-><init>(Le/a/o/c;)V

    return-object v2

    .line 53
    :pswitch_14
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 54
    new-instance v10, Le/a/q2/x0/b;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->k5:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/o5/r;

    invoke-virtual {v1}, Le/a/r1;->R6()Le/a/k3/j/b;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/b0/q/z;

    .line 55
    new-instance v7, Le/a/q2/x0/f;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v8, v1, Le/a/r1;->a2:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/h0/j;

    invoke-direct {v7, v2, v8}, Le/a/q2/x0/f;-><init>(Landroid/content/Context;Le/a/h0/j;)V

    .line 56
    iget-object v2, v1, Le/a/r1;->y1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/truecaller/settings/CallingSettings;

    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/q2/x0/b;-><init>(Ls1/w/f;Le/a/o5/r;Le/a/k3/j/b;Le/a/b0/q/z;Le/a/q2/x0/f;Lcom/truecaller/settings/CallingSettings;Le/a/p5/a0;)V

    return-object v10

    .line 57
    :pswitch_15
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 58
    new-instance v10, Le/a/q2/x0/a;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/u3/g;

    iget-object v2, v1, Le/a/r1;->y1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/truecaller/settings/CallingSettings;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v6

    invoke-virtual {v1}, Le/a/r1;->Q6()Le/a/o5/x1;

    move-result-object v7

    iget-object v2, v1, Le/a/r1;->k5:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/o5/r;

    .line 59
    new-instance v9, Le/a/q2/x0/f;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Le/a/r1;->a2:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h0/j;

    invoke-direct {v9, v2, v1}, Le/a/q2/x0/f;-><init>(Landroid/content/Context;Le/a/h0/j;)V

    move-object v2, v10

    .line 60
    invoke-direct/range {v2 .. v9}, Le/a/q2/x0/a;-><init>(Ls1/w/f;Le/a/u3/g;Lcom/truecaller/settings/CallingSettings;Le/a/o5/f0;Le/a/o5/x1;Le/a/o5/r;Le/a/q2/x0/f;)V

    return-object v10

    .line 61
    :pswitch_16
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 62
    new-instance v2, Le/a/q2/x0/d;

    iget-object v1, v1, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/q/z;

    invoke-direct {v2, v1}, Le/a/q2/x0/d;-><init>(Le/a/b0/q/z;)V

    return-object v2

    .line 63
    :pswitch_17
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 64
    new-instance v3, Le/a/v2/e;

    new-instance v10, Le/a/p5/d;

    invoke-direct {v10}, Le/a/p5/d;-><init>()V

    invoke-virtual {v1}, Le/a/r1;->Tb()Le/a/p5/q0/e;

    move-result-object v11

    .line 65
    new-instance v12, Le/a/v2/b;

    invoke-virtual {v1}, Le/a/r1;->lb()Le/a/d4/d;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/u3/g;

    invoke-direct {v12, v4, v5}, Le/a/v2/b;-><init>(Le/a/d4/c;Le/a/u3/g;)V

    .line 66
    new-instance v13, Le/a/v2/v/b;

    iget-object v4, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q2/a;

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    invoke-direct {v13, v4, v5}, Le/a/v2/v/b;-><init>(Le/a/q2/a;Le/a/p5/c;)V

    .line 67
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    .line 68
    sget v5, Le/a/v2/h;->a:I

    .line 69
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "attestation"

    .line 70
    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 71
    new-instance v14, Le/a/v2/n;

    const-string v5, "sharedPreferences"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v14, v2}, Le/a/v2/n;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v14, v4}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    .line 72
    new-instance v15, Le/a/v2/w/b;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v2

    invoke-direct {v15, v2}, Le/a/v2/w/b;-><init>(Le/a/p5/g;)V

    .line 73
    new-instance v2, Le/a/v2/j;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Le/a/v2/p;

    invoke-direct {v5}, Le/a/v2/p;-><init>()V

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v2, v4, v5, v1}, Le/a/v2/j;-><init>(Landroid/content/Context;Le/a/v2/p;Ls1/w/f;)V

    const-wide/16 v17, 0x7d0

    move-object v9, v3

    move-object/from16 v16, v2

    .line 74
    invoke-direct/range {v9 .. v18}, Le/a/v2/e;-><init>(Le/a/p5/c;Le/a/p5/q0/e;Le/a/v2/a;Le/a/v2/v/a;Le/a/v2/m;Le/a/v2/w/a;Le/a/v2/i;J)V

    return-object v3

    .line 75
    :pswitch_18
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 76
    new-instance v2, Le/a/o4/f;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->gd:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/o4/f;-><init>(Lo3/a;Ls1/w/f;Lo3/a;Lo3/a;)V

    return-object v2

    .line 77
    :pswitch_19
    new-instance v1, Lcom/truecaller/service/SyncPhoneBookService$a;

    invoke-direct {v1}, Lcom/truecaller/service/SyncPhoneBookService$a;-><init>()V

    return-object v1

    .line 78
    :pswitch_1a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 79
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v2, Le/a/a4/j0;

    iget-object v3, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->hd()Le/a/r/o;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/a4/j0;-><init>(Ls1/w/f;Le/a/r/v/a;)V

    return-object v2

    .line 81
    :pswitch_1b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 82
    new-instance v9, Le/a/n/k;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->w1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/h0/m;

    iget-object v2, v1, Le/a/r1;->V1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/r2/f;

    iget-object v2, v1, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->n8:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v1, v1, Le/a/r1;->a5:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/n/k;-><init>(Landroid/content/Context;Le/a/h0/m;Le/a/r2/f;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v9

    .line 83
    :pswitch_1c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 84
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/e/f;

    .line 85
    new-instance v3, Le/a/t/a/a/u;

    invoke-interface {v1}, Le/a/b0/e/f;->d()Z

    move-result v1

    invoke-direct {v3, v2, v1}, Le/a/t/a/a/u;-><init>(Landroid/content/Context;Z)V

    return-object v3

    .line 86
    :pswitch_1d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 87
    new-instance v2, Le/a/a0/w;

    invoke-virtual {v1}, Le/a/r1;->jc()Le/a/a0/q;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/a0/w;-><init>(Le/a/a0/p;)V

    return-object v2

    .line 88
    :pswitch_1e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 89
    invoke-virtual {v1}, Le/a/r1;->gb()Le/a/q2/o0;

    move-result-object v1

    return-object v1

    .line 90
    :pswitch_1f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 91
    new-instance v2, Le/a/a/u0/f;

    iget-object v3, v1, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->M4:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->K4:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->Ye:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/u0/f;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 92
    :pswitch_20
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 93
    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    .line 94
    new-instance v4, Le/a/c/s/a/f;

    iget-object v6, v1, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/c/b/e;

    invoke-direct {v4, v6}, Le/a/c/s/a/f;-><init>(Le/a/c/b/e;)V

    .line 95
    iget-object v1, v1, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/b/e;

    .line 96
    sget v6, Le/a/c/l/b/b;->a:I

    sget-object v6, Ls1/u/s;->a:Ls1/u/s;

    .line 97
    sget v7, Le/a/c/l/b/f;->a:I

    .line 98
    invoke-static {v3, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "featureControlRestAdapter"

    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "insightsEnvironmentHelper"

    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "insightsRemoteKeys"

    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "insights_feature_settings"

    .line 99
    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 100
    new-instance v3, Le/a/c/b/c;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2, v4, v1, v6}, Le/a/c/b/c;-><init>(Landroid/content/SharedPreferences;Le/a/c/s/a/e;Le/a/c/b/e;Ljava/util/List;)V

    return-object v3

    .line 101
    :pswitch_21
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 102
    new-instance v13, Le/a/c/t/b;

    invoke-virtual {v1}, Le/a/r1;->d9()Le/a/c/c/d/g;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->wb()Le/a/c/c/d/d0;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->ic()Le/a/c/c/d/j0;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/c0/o;

    iget-object v2, v1, Le/a/r1;->L3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    invoke-virtual {v1}, Le/a/r1;->cc()Le/a/c/a0/a0;

    move-result-object v8

    invoke-virtual {v1}, Le/a/r1;->w9()Le/a/c/w/l;

    move-result-object v9

    invoke-virtual {v1}, Le/a/r1;->l9()Le/a/c/g/y/a;

    move-result-object v10

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v11

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v12

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Le/a/c/t/b;-><init>(Le/a/c/c/d/g;Le/a/c/c/d/d0;Le/a/c/c/d/j0;Le/a/c/c0/o;Lo3/a;Le/a/c/a0/z;Le/a/c/w/k;Le/a/c/g/y/a;Ls1/w/f;Ls1/w/f;)V

    return-object v13

    .line 103
    :pswitch_22
    new-instance v1, Le/a/c/w/a0;

    invoke-direct {v1}, Le/a/c/w/a0;-><init>()V

    return-object v1

    .line 104
    :pswitch_23
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 105
    new-instance v2, Le/a/c/a0/q;

    .line 106
    iget-object v4, v1, Le/a/r1;->M3:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/insights/database/InsightsDb;

    .line 107
    sget v5, Le/a/c/l/b/c;->a:I

    .line 108
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v4}, Lcom/truecaller/insights/database/InsightsDb;->f()Le/a/c/c/d/k;

    move-result-object v3

    .line 110
    invoke-static {v3, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    invoke-virtual {v1}, Le/a/r1;->d9()Le/a/c/c/d/g;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/w/o0/g;

    invoke-direct {v2, v3, v4, v1}, Le/a/c/a0/q;-><init>(Le/a/c/c/d/k;Le/a/c/c/d/g;Le/a/c/w/o0/g;)V

    return-object v2

    .line 112
    :pswitch_24
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 113
    new-instance v2, Le/a/c/w/n;

    .line 114
    iget-object v5, v1, Le/a/r1;->M3:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/insights/database/InsightsDb;

    .line 115
    sget v6, Le/a/c/l/b/c;->a:I

    .line 116
    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v5}, Lcom/truecaller/insights/database/InsightsDb;->k()Le/a/c/c/d/m;

    move-result-object v10

    .line 118
    invoke-static {v10, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    new-instance v11, Le/a/c/w/i;

    iget-object v4, v1, Le/a/r1;->Qe:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/a0/p;

    invoke-direct {v11, v4}, Le/a/c/w/i;-><init>(Le/a/c/a0/p;)V

    .line 120
    invoke-virtual {v1}, Le/a/r1;->c9()Le/a/c/a0/f;

    move-result-object v12

    .line 121
    new-instance v13, Le/a/c/f/j/a;

    .line 122
    iget-object v4, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/b/j;

    invoke-virtual {v1}, Le/a/r1;->vb()Le/a/c/j/g;

    move-result-object v5

    .line 123
    sget v6, Le/a/c/l/b/b;->a:I

    const-string v6, "statusProvider"

    .line 124
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "payBillDeepLinkFactory"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v6, Le/a/c/f/j/b;

    invoke-direct {v6, v4, v5}, Le/a/c/f/j/b;-><init>(Le/a/c/b/j;Le/a/c/j/e;)V

    .line 126
    iget-object v4, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v4}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v4

    .line 127
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v5, Le/a/c/f/j/d;

    invoke-direct {v5, v4}, Le/a/c/f/j/d;-><init>(Landroid/content/Context;)V

    .line 129
    iget-object v4, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v4}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v4

    .line 130
    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v8, Le/a/c/f/j/c;

    invoke-direct {v8, v4}, Le/a/c/f/j/c;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-direct {v13, v6, v5, v8}, Le/a/c/f/j/a;-><init>(Le/a/c/f/j/b;Le/a/c/f/j/d;Le/a/c/f/j/c;)V

    .line 133
    invoke-virtual {v1}, Le/a/r1;->Dc()Le/a/c/f/i;

    move-result-object v14

    iget-object v4, v1, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Le/a/c/w/o0/g;

    .line 134
    new-instance v4, Le/a/c/w/n0;

    .line 135
    new-instance v5, Le/a/c/a0/d0;

    .line 136
    iget-object v6, v1, Le/a/r1;->M3:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/insights/database/InsightsDb;

    .line 137
    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v6}, Lcom/truecaller/insights/database/InsightsDb;->s()Le/a/c/c/d/o0;

    move-result-object v3

    .line 139
    invoke-static {v3, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v1}, Le/a/r1;->d9()Le/a/c/c/d/g;

    move-result-object v6

    iget-object v7, v1, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/c/w/o0/g;

    invoke-direct {v5, v3, v6, v7}, Le/a/c/a0/d0;-><init>(Le/a/c/c/d/o0;Le/a/c/c/d/g;Le/a/c/w/o0/g;)V

    .line 141
    invoke-direct {v4, v5}, Le/a/c/w/n0;-><init>(Le/a/c/a0/c0;)V

    .line 142
    iget-object v3, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Le/a/c/b/j;

    iget-object v3, v1, Le/a/r1;->k3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Le/a/c/h/e;

    invoke-virtual {v1}, Le/a/r1;->sb()Le/a/c/w/d0;

    move-result-object v19

    move-object v9, v2

    move-object/from16 v16, v4

    invoke-direct/range {v9 .. v19}, Le/a/c/w/n;-><init>(Le/a/c/c/d/m;Le/a/c/w/i;Le/a/c/a0/e;Le/a/c/f/j/a;Le/a/c/f/h;Le/a/c/w/o0/g;Le/a/c/w/n0;Le/a/c/b/j;Le/a/c/h/e;Le/a/c/w/b0;)V

    return-object v2

    .line 143
    :pswitch_25
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 144
    new-instance v9, Le/a/c/y/n/d;

    .line 145
    new-instance v3, Le/a/c/y/n/b;

    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v2

    invoke-virtual {v1}, Le/a/r1;->vb()Le/a/c/j/g;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/b/e;

    invoke-virtual {v1}, Le/a/r1;->hc()Le/a/c/y/k;

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Le/a/c/y/n/b;-><init>(Le/a/p5/c0;Le/a/c/j/e;Le/a/c/b/e;Le/a/c/y/k;)V

    .line 146
    new-instance v4, Le/a/c/y/n/a;

    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v2

    iget-object v5, v1, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/b/e;

    invoke-virtual {v1}, Le/a/r1;->hc()Le/a/c/y/k;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6}, Le/a/c/y/n/a;-><init>(Le/a/p5/c0;Le/a/c/b/e;Le/a/c/y/k;)V

    .line 147
    new-instance v5, Le/a/c/y/n/f;

    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v2

    invoke-virtual {v1}, Le/a/r1;->hc()Le/a/c/y/k;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Le/a/c/y/n/f;-><init>(Le/a/p5/c0;Le/a/c/y/k;)V

    .line 148
    new-instance v6, Le/a/c/y/n/c;

    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v2

    iget-object v7, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/c/b/j;

    invoke-virtual {v1}, Le/a/r1;->hc()Le/a/c/y/k;

    move-result-object v8

    invoke-direct {v6, v2, v7, v8}, Le/a/c/y/n/c;-><init>(Le/a/p5/c0;Le/a/c/b/j;Le/a/c/y/k;)V

    .line 149
    new-instance v7, Le/a/c/y/n/e;

    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v2

    invoke-virtual {v1}, Le/a/r1;->hc()Le/a/c/y/k;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Le/a/c/y/n/e;-><init>(Le/a/p5/c0;Le/a/c/y/k;)V

    .line 150
    new-instance v8, Le/a/c/y/n/g;

    invoke-virtual {v1}, Le/a/r1;->hc()Le/a/c/y/k;

    move-result-object v1

    invoke-direct {v8, v1}, Le/a/c/y/n/g;-><init>(Le/a/c/y/k;)V

    move-object v2, v9

    .line 151
    invoke-direct/range {v2 .. v8}, Le/a/c/y/n/d;-><init>(Le/a/c/y/n/b;Le/a/c/y/n/a;Le/a/c/y/n/f;Le/a/c/y/n/c;Le/a/c/y/n/e;Le/a/c/y/n/g;)V

    return-object v9

    .line 152
    :pswitch_26
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 153
    new-instance v2, Le/a/c/p/e;

    iget-object v3, v1, Le/a/r1;->ve:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/n/d;

    iget-object v4, v1, Le/a/r1;->Ke:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/y/n/d;

    .line 154
    new-instance v5, Le/a/c/a0/t;

    invoke-virtual {v1}, Le/a/r1;->wb()Le/a/c/c/d/d0;

    move-result-object v6

    iget-object v1, v1, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/w/o0/g;

    invoke-direct {v5, v6, v1}, Le/a/c/a0/t;-><init>(Le/a/c/c/d/d0;Le/a/c/w/o0/g;)V

    .line 155
    invoke-direct {v2, v3, v4, v5}, Le/a/c/p/e;-><init>(Le/a/c/n/d;Le/a/c/y/n/d;Le/a/c/a0/s;)V

    return-object v2

    .line 156
    :pswitch_27
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 157
    new-instance v2, Le/a/c/e/b;

    iget-object v1, v1, Le/a/r1;->k4:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/e/c;

    invoke-direct {v2, v1}, Le/a/c/e/b;-><init>(Le/a/c/e/c;)V

    return-object v2

    .line 158
    :pswitch_28
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 159
    new-instance v10, Le/a/a/c/a/e;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->Je:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/e/a;

    iget-object v2, v1, Le/a/r1;->Be:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/i/e/c;

    iget-object v2, v1, Le/a/r1;->Me:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/c/p/d;

    iget-object v2, v1, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/c/w/o0/g;

    invoke-virtual {v1}, Le/a/r1;->c9()Le/a/c/a0/f;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/a/c/a/e;-><init>(Ls1/w/f;Ls1/w/f;Le/a/c/e/a;Le/a/c/i/e/c;Le/a/c/p/d;Le/a/c/w/o0/g;Le/a/c/a0/e;)V

    return-object v10

    .line 160
    :pswitch_29
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 161
    new-instance v2, Le/a/c/i/j/c/b;

    iget-object v3, v1, Le/a/r1;->J3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/i/b/a;

    iget-object v4, v1, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/b/e;

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/c/i/j/c/b;-><init>(Le/a/c/i/b/a;Le/a/c/b/e;Ls1/w/f;)V

    return-object v2

    .line 162
    :pswitch_2a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 163
    new-instance v2, Le/a/a/c/a/p;

    iget-object v3, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->Fc()Le/a/c/b0/f;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/a/c/a/p;-><init>(Ls1/w/f;Ls1/w/f;Le/a/c/b0/d;)V

    return-object v2

    .line 164
    :pswitch_2b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 165
    new-instance v2, Le/a/c/i/e/d;

    iget-object v3, v1, Le/a/r1;->ve:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/n/d;

    iget-object v4, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    new-instance v5, Le/a/c/a/i/f;

    invoke-direct {v5}, Le/a/c/a/i/f;-><init>()V

    iget-object v1, v1, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/w/o0/g;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/c/i/e/d;-><init>(Le/a/c/n/d;Ls1/w/f;Le/a/c/a/i/f;Le/a/c/w/o0/g;)V

    return-object v2

    .line 166
    :pswitch_2c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 167
    new-instance v2, Le/a/c/e/f;

    iget-object v1, v1, Le/a/r1;->k4:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/e/c;

    invoke-direct {v2, v1}, Le/a/c/e/f;-><init>(Le/a/c/e/c;)V

    return-object v2

    .line 168
    :pswitch_2d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 169
    new-instance v2, Le/a/c/n/b;

    invoke-virtual {v1}, Le/a/r1;->J9()Le/a/c/c/d/p;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->wb()Le/a/c/c/d/d0;

    move-result-object v5

    .line 170
    iget-object v6, v1, Le/a/r1;->M3:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/insights/database/InsightsDb;

    .line 171
    sget v8, Le/a/c/l/b/c;->a:I

    .line 172
    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v6}, Lcom/truecaller/insights/database/InsightsDb;->i()Le/a/c/c/d/u;

    move-result-object v4

    .line 174
    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v1}, Le/a/r1;->ic()Le/a/c/c/d/j0;

    move-result-object v1

    invoke-direct {v2, v3, v5, v4, v1}, Le/a/c/n/b;-><init>(Le/a/c/c/d/p;Le/a/c/c/d/d0;Le/a/c/c/d/u;Le/a/c/c/d/j0;)V

    return-object v2

    .line 176
    :pswitch_2e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 177
    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/c0/o;

    .line 178
    sget v4, Le/a/c/l/b/f;->a:I

    .line 179
    invoke-static {v3, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "insightConfig"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "insights_settings"

    .line 180
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 181
    new-instance v3, Le/a/c/c0/l;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2, v1}, Le/a/c/c0/l;-><init>(Landroid/content/SharedPreferences;Le/a/c/c0/o;)V

    return-object v3

    .line 182
    :pswitch_2f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 183
    new-instance v8, Le/a/c/n/e;

    iget-object v2, v1, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/r2/f;

    iget-object v2, v1, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/c/c0/o;

    iget-object v2, v1, Le/a/r1;->re:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/c0/k;

    iget-object v2, v1, Le/a/r1;->c4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/i/i/a;

    iget-object v1, v1, Le/a/r1;->te:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Le/a/c/n/a;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/c/n/e;-><init>(Le/a/r2/f;Le/a/c/c0/o;Le/a/c/c0/k;Le/a/c/i/i/a;Le/a/c/n/a;)V

    return-object v8

    .line 184
    :pswitch_30
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 185
    new-instance v10, Le/a/c/p/c;

    iget-object v2, v1, Le/a/r1;->ve:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/c/n/d;

    invoke-virtual {v1}, Le/a/r1;->Dc()Le/a/c/f/i;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->Y3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/m/d/a;

    iget-object v2, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/b/j;

    invoke-virtual {v1}, Le/a/r1;->xb()Le/a/c/a0/y;

    move-result-object v7

    iget-object v2, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v2}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v1}, Le/a/r1;->vb()Le/a/c/j/g;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/c/p/c;-><init>(Le/a/c/n/d;Le/a/c/f/h;Le/a/b0/m/d/a;Le/a/c/b/j;Le/a/c/a0/x;Landroid/content/Context;Le/a/c/j/e;)V

    return-object v10

    .line 186
    :pswitch_31
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 187
    new-instance v11, Le/a/a/c/a/h;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    .line 188
    new-instance v5, Le/a/c/i/g/b;

    iget-object v2, v1, Le/a/r1;->xe:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/p/b;

    iget-object v6, v1, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/c/w/o0/g;

    invoke-direct {v5, v2, v6}, Le/a/c/i/g/b;-><init>(Le/a/c/p/b;Le/a/c/w/o0/g;)V

    .line 189
    iget-object v2, v1, Le/a/r1;->ze:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/e/e;

    iget-object v2, v1, Le/a/r1;->Be:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/c/i/e/c;

    iget-object v2, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/c/b/j;

    iget-object v2, v1, Le/a/r1;->De:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/a/c/a/o;

    iget-object v1, v1, Le/a/r1;->Fe:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Le/a/c/i/j/c/a;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/a/c/a/h;-><init>(Ls1/w/f;Ls1/w/f;Le/a/c/i/g/a;Le/a/c/e/e;Le/a/c/i/e/c;Le/a/c/b/j;Le/a/a/c/a/o;Le/a/c/i/j/c/a;)V

    return-object v11

    .line 190
    :pswitch_32
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 191
    new-instance v2, Le/a/a/f1/a;

    iget-object v1, v1, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/a/f1/a;-><init>(Lo3/a;)V

    return-object v2

    .line 192
    :pswitch_33
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 193
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 194
    invoke-static {v1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    new-instance v2, Le/a/o5/a2/c;

    invoke-direct {v2, v1}, Le/a/o5/a2/c;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v2, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-object v2

    .line 197
    :pswitch_34
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 198
    new-instance v2, Le/a/o5/a2/e;

    invoke-virtual {v1}, Le/a/r1;->f4()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/o5/a2/e;-><init>(Ljava/util/Map;)V

    return-object v2

    .line 199
    :pswitch_35
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 200
    new-instance v8, Le/a/o5/a2/h;

    iget-object v2, v1, Le/a/r1;->le:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->a5:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->me:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    invoke-virtual {v1}, Le/a/r1;->fa()Le/a/y2/q/b;

    move-result-object v6

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/o5/a2/h;-><init>(Lo3/a;Lo3/a;Lo3/a;Le/a/y2/q/a;Landroid/content/Context;)V

    return-object v8

    .line 201
    :pswitch_36
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 202
    new-instance v2, Le/a/d0/h0;

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    new-instance v3, Le/a/p5/k;

    invoke-direct {v3}, Le/a/p5/k;-><init>()V

    invoke-direct {v2, v1, v3}, Le/a/d0/h0;-><init>(Le/a/u3/g;Le/a/p5/m0;)V

    return-object v2

    .line 203
    :pswitch_37
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 204
    new-instance v11, Le/a/a/g/h0;

    invoke-virtual {v1}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->M4:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v5

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->Ua:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/f4/g/j;

    iget-object v2, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/a/i0;

    invoke-virtual {v1}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v9

    invoke-virtual {v1}, Le/a/r1;->Ka()Le/a/a/x;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/a/g/h0;-><init>(Landroid/content/ContentResolver;Lo3/a;Ls1/w/f;Le/a/o5/f0;Le/a/f4/g/j;Le/a/a/i0;Le/a/b0/q/l0;Le/a/a/w;)V

    return-object v11

    .line 205
    :pswitch_38
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 206
    iget-object v1, v1, Le/a/r1;->h:Le/a/w0;

    .line 207
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Le/a/u4/n;

    invoke-direct {v1}, Le/a/u4/n;-><init>()V

    return-object v1

    .line 209
    :pswitch_39
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 210
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/i0;

    .line 211
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v2, Le/a/a/l0;

    invoke-direct {v2, v3, v1}, Le/a/a/l0;-><init>(Le/a/p5/g;Le/a/a/i0;)V

    return-object v2

    .line 213
    :pswitch_3a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 214
    new-instance v2, Le/a/b0/q/k0;

    iget-object v1, v1, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/q/z;

    invoke-direct {v2, v1}, Le/a/b0/q/k0;-><init>(Le/a/b0/q/z;)V

    return-object v2

    .line 215
    :pswitch_3b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 216
    new-instance v2, Le/a/h5/q;

    iget-object v3, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/h5/q;-><init>(Ls1/w/f;Landroid/content/Context;Le/a/p5/g;)V

    return-object v2

    .line 217
    :pswitch_3c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 218
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Le/a/r1;->c3:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v3, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    iget-object v14, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    .line 219
    invoke-static {v2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callHistoryManager"

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "coreSettings"

    invoke-static {v13, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "accountSettings"

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v1, Le/a/w3/d;

    .line 221
    invoke-static {v2}, Le/a/b0/q/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 222
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v11

    const-string v2, "TrueApp.getApp()"

    invoke-static {v11, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v1

    .line 223
    invoke-direct/range {v9 .. v14}, Le/a/w3/d;-><init>(Ljava/lang/String;Le/a/y/c/i;Lo3/a;Lo3/a;Ljavax/inject/Provider;)V

    return-object v1

    .line 224
    :pswitch_3d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 225
    iget-object v1, v1, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/l;

    const-string v2, "actors"

    .line 226
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 228
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 229
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-wide/16 v6, 0x3c

    move-object v3, v2

    .line 230
    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 231
    invoke-interface {v1, v2}, Le/a/r2/l;->b(Ljava/util/concurrent/Executor;)Le/a/r2/j;

    move-result-object v1

    const-string v2, "actors.createThread(\n   \u2026          )\n            )"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 232
    :pswitch_3e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 233
    iget-object v2, v1, Le/a/r1;->Xd:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/j;

    .line 234
    new-instance v10, Le/a/f4/a/c;

    iget-object v3, v1, Le/a/r1;->e0:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v3, v1, Le/a/r1;->K8:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v3, v1, Le/a/r1;->e1:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v3, v1, Le/a/r1;->Ga:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    iget-object v1, v1, Le/a/r1;->Da:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Le/a/f4/a/c;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    const-string v1, "networkThread"

    .line 235
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "accountNetworkManager"

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    const-class v1, Le/a/f4/a/b;

    invoke-interface {v2, v1, v10}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    const-string v2, "networkThread.bind(Accou\u2026a, accountNetworkManager)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 237
    :pswitch_3f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 238
    new-instance v2, Le/a/q2/u;

    new-instance v3, Le/a/p5/d;

    invoke-direct {v3}, Le/a/p5/d;-><init>()V

    iget-object v4, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q2/a;

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    invoke-direct {v2, v3, v4, v1}, Le/a/q2/u;-><init>(Le/a/p5/c;Le/a/q2/a;Le/a/u3/g;)V

    return-object v2

    .line 239
    :pswitch_40
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 240
    iget-object v1, v1, Le/a/r1;->h:Le/a/w0;

    .line 241
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v1, Le/a/u4/p;

    invoke-direct {v1}, Le/a/u4/p;-><init>()V

    return-object v1

    .line 243
    :pswitch_41
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 244
    invoke-virtual {v1}, Le/a/r1;->ma()Le/a/x3/d;

    move-result-object v1

    return-object v1

    .line 245
    :pswitch_42
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 246
    iget-object v2, v1, Le/a/r1;->E:Le/a/c/a/c/e/d;

    iget-object v3, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/c0/o;

    invoke-virtual {v1}, Le/a/r1;->ab()Le/a/c/q/e;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/b/j;

    invoke-static {v2, v3, v4, v5, v1}, Le/a/c/p/a;->d2(Le/a/c/a/c/e/d;Ls1/w/f;Le/a/c/c0/o;Le/a/c/q/d;Le/a/c/b/j;)Le/a/c/a/i/d;

    move-result-object v1

    return-object v1

    .line 247
    :pswitch_43
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 248
    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v1

    return-object v1

    .line 249
    :pswitch_44
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 250
    iget-object v1, v1, Le/a/r1;->Fa:Ljavax/inject/Provider;

    const-string v2, "analyticsRepository"

    .line 251
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    new-instance v2, Le/a/s3/b/b;

    invoke-direct {v2, v1}, Le/a/s3/b/b;-><init>(Ljavax/inject/Provider;)V

    return-object v2

    .line 253
    :pswitch_45
    new-instance v1, Le/a/b0/l/b;

    invoke-direct {v1}, Le/a/b0/l/b;-><init>()V

    return-object v1

    .line 254
    :pswitch_46
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 255
    new-instance v2, Le/a/b0/n/f;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/b0/n/f;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 256
    :pswitch_47
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 257
    invoke-virtual {v1}, Le/a/r1;->Rb()Le/a/m4/c/e;

    move-result-object v1

    return-object v1

    .line 258
    :pswitch_48
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 259
    new-instance v10, Le/a/a/k/a/f2/c;

    invoke-virtual {v1}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v2}, Le/a/c/p/a;->b2(Le/a/a/g/i;)Le/a/a/g/g;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->Y4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/q/b;

    iget-object v2, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/i0;

    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v7

    iget-object v2, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/q2/a;

    invoke-virtual {v1}, Le/a/r1;->fa()Le/a/y2/q/b;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/a/k/a/f2/c;-><init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/b0/q/b;Le/a/a/i0;Le/a/p5/a0;Le/a/q2/a;Le/a/y2/q/a;)V

    return-object v10

    .line 260
    :pswitch_49
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 261
    new-instance v2, Le/a/w3/a;

    iget-object v1, v1, Le/a/r1;->kd:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/w3/a;-><init>(Lo3/a;)V

    return-object v2

    .line 262
    :pswitch_4a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 263
    new-instance v2, Le/a/a/c0;

    iget-object v3, v1, Le/a/r1;->o3:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/a/c0;-><init>(Lo3/a;Ls1/w/f;)V

    return-object v2

    .line 264
    :pswitch_4b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v1

    return-object v1

    .line 265
    :pswitch_4c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 266
    new-instance v2, Le/a/l0/w/b;

    iget-object v3, v1, Le/a/r1;->y1:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->Q1:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->Ad:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/l0/w/b;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 267
    :pswitch_4d
    new-instance v1, Le/a/m/d0;

    invoke-direct {v1}, Le/a/m/d0;-><init>()V

    return-object v1

    .line 268
    :pswitch_4e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 269
    new-instance v2, Le/a/f/d;

    iget-object v3, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->s2:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/f/d;-><init>(Ls1/w/f;Lo3/a;)V

    return-object v2

    .line 270
    :pswitch_4f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 271
    new-instance v2, Le/a/o4/m;

    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/o4/m;-><init>(Landroid/content/Context;Lo3/a;Lo3/a;)V

    return-object v2

    .line 272
    :pswitch_50
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 273
    new-instance v2, Le/a/w3/b;

    iget-object v3, v1, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/w3/b;-><init>(Lo3/a;Lo3/a;)V

    return-object v2

    .line 274
    :pswitch_51
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 275
    new-instance v2, Le/a/w3/j;

    iget-object v1, v1, Le/a/r1;->kd:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/y/c/b;

    invoke-direct {v2, v1}, Le/a/w3/j;-><init>(Le/a/y/c/b;)V

    return-object v2

    .line 276
    :pswitch_52
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 277
    new-instance v2, Le/a/l/p2/m;

    iget-object v3, v1, Le/a/r1;->ub:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l/n2/e;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->Q6()Le/a/o5/x1;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->yb:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/l/p2/m;-><init>(Le/a/l/n2/e;Le/a/o5/f0;Le/a/o5/x1;Lo3/a;)V

    return-object v2

    .line 278
    :pswitch_53
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 279
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 280
    invoke-static {v1}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    return-object v1

    .line 281
    :pswitch_54
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 282
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 283
    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    return-object v1

    .line 284
    :pswitch_55
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 285
    new-instance v49, Le/a/a4/i0;

    move-object/from16 v3, v49

    iget-object v4, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->y1:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v6, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v6}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v7, v1, Le/a/r1;->qd:Ljavax/inject/Provider;

    iget-object v8, v1, Le/a/r1;->vc:Ljavax/inject/Provider;

    iget-object v9, v1, Le/a/r1;->rd:Ljavax/inject/Provider;

    iget-object v10, v1, Le/a/r1;->d:Le/a/b0/g/a$a;

    invoke-static {v10}, Le/a/n/g0;->j(Le/a/b0/g/a$a;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Le/a/r1;->db:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/o5/j;

    iget-object v12, v1, Le/a/r1;->R:Ljavax/inject/Provider;

    invoke-static {v12}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    iget-object v13, v1, Le/a/r1;->r1:Ljavax/inject/Provider;

    invoke-static {v13}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    iget-object v14, v1, Le/a/r1;->Fa:Ljavax/inject/Provider;

    invoke-static {v14}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v14

    iget-object v15, v1, Le/a/r1;->gb:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/q2/j;

    iget-object v2, v1, Le/a/r1;->P8:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Le/a/q2/s;

    .line 286
    iget-object v2, v1, Le/a/r1;->C:Le/a/o5/i;

    iget-object v0, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    .line 287
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "uiContext"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    new-instance v2, Le/a/o5/e;

    move-object/from16 v17, v2

    move-object/from16 v50, v3

    .line 289
    sget-object v3, Le/a/o5/f;->h:Ls1/a/g;

    move-object/from16 v51, v4

    .line 290
    sget-object v4, Le/a/o5/g;->b:Le/a/o5/g;

    move-object/from16 v52, v5

    .line 291
    sget-object v5, Le/a/o5/h;->b:Le/a/o5/h;

    .line 292
    invoke-direct {v2, v0, v3, v4, v5}, Le/a/o5/e;-><init>(Ls1/w/f;Ls1/z/b/a;Ls1/z/b/q;Ls1/z/b/a;)V

    .line 293
    iget-object v0, v1, Le/a/r1;->zb:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v18

    iget-object v0, v1, Le/a/r1;->td:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v19

    iget-object v0, v1, Le/a/r1;->x9:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v20

    iget-object v0, v1, Le/a/r1;->ud:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v21

    iget-object v0, v1, Le/a/r1;->kd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v22

    iget-object v0, v1, Le/a/r1;->vd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v23

    iget-object v0, v1, Le/a/r1;->e1:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v24

    iget-object v0, v1, Le/a/r1;->g3:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v25

    iget-object v0, v1, Le/a/r1;->A1:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v26

    iget-object v0, v1, Le/a/r1;->s2:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v27

    iget-object v0, v1, Le/a/r1;->kb:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v28

    iget-object v0, v1, Le/a/r1;->xd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v29

    iget-object v0, v1, Le/a/r1;->yd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v30

    iget-object v0, v1, Le/a/r1;->E5:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v31

    iget-object v0, v1, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v32

    iget-object v0, v1, Le/a/r1;->zd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v33

    iget-object v0, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v34

    iget-object v0, v1, Le/a/r1;->Bd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v35

    iget-object v0, v1, Le/a/r1;->Cd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v36

    iget-object v0, v1, Le/a/r1;->Dd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v37

    iget-object v0, v1, Le/a/r1;->s1:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v38

    iget-object v0, v1, Le/a/r1;->Fd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v39

    iget-object v0, v1, Le/a/r1;->i2:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v40

    iget-object v0, v1, Le/a/r1;->bc:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v41

    iget-object v0, v1, Le/a/r1;->Id:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v42

    iget-object v0, v1, Le/a/r1;->Kd:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v43, v0

    check-cast v43, Le/a/b0/l/a;

    .line 294
    new-instance v0, Le/a/c4/e;

    move-object/from16 v44, v0

    .line 295
    new-instance v2, Le/a/s3/b/d;

    iget-object v3, v1, Le/a/r1;->M8:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->Ld:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le/a/s3/b/d;-><init>(Lo3/a;Lo3/a;)V

    const-string v3, "remoteExceptionFilter"

    .line 296
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xc

    new-array v3, v3, [Le/a/c4/c;

    .line 297
    sget-object v4, Le/a/c4/h;->a:Le/a/c4/h;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 298
    sget-object v4, Le/a/c4/b;->a:Le/a/c4/b;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 299
    sget-object v4, Le/a/c4/g;->a:Le/a/c4/g;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 300
    sget-object v4, Le/a/c4/k;->a:Le/a/c4/k;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 301
    sget-object v4, Le/a/c4/l;->a:Le/a/c4/l;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 302
    sget-object v4, Le/a/c4/a;->a:Le/a/c4/a;

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 303
    sget-object v4, Le/a/c4/j;->a:Le/a/c4/j;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 304
    sget-object v4, Le/a/c4/n;->a:Le/a/c4/n;

    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 305
    sget-object v4, Le/a/c4/i;->a:Le/a/c4/i;

    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 306
    sget-object v4, Le/a/c4/f;->a:Le/a/c4/f;

    const/16 v5, 0x9

    aput-object v4, v3, v5

    .line 307
    sget-object v4, Le/a/c4/o;->a:Le/a/c4/o;

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const/16 v4, 0xb

    aput-object v2, v3, v4

    .line 308
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 309
    invoke-direct {v0, v2}, Le/a/c4/e;-><init>(Ljava/util/List;)V

    .line 310
    iget-object v0, v1, Le/a/r1;->Md:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v45

    iget-object v0, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v46

    iget-object v0, v1, Le/a/r1;->Nd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v47

    iget-object v0, v1, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v48, v0

    check-cast v48, Le/a/c/c0/o;

    move-object/from16 v3, v50

    move-object/from16 v4, v51

    move-object/from16 v5, v52

    invoke-direct/range {v3 .. v48}, Le/a/a4/i0;-><init>(Lo3/a;Lo3/a;Lo3/a;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/lang/String;Le/a/o5/j;Lo3/a;Lo3/a;Lo3/a;Le/a/q2/j;Le/a/q2/s;Le/a/o5/d;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/b0/l/a;Le/a/c4/d;Lo3/a;Lo3/a;Lo3/a;Le/a/c/c0/o;)V

    return-object v49

    .line 311
    :pswitch_56
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 312
    new-instance v20, Le/a/i3/c;

    move-object/from16 v2, v20

    iget-object v3, v1, Le/a/r1;->d:Le/a/b0/g/a$a;

    invoke-static {v3}, Le/a/n/g0;->i(Le/a/b0/g/a$a;)I

    move-result v3

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b0/o/a;

    iget-object v6, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b0/e/r/a;

    iget-object v7, v1, Le/a/r1;->Mb:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/z4/a;

    iget-object v8, v1, Le/a/r1;->Oa:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/z4/d;

    invoke-virtual {v1}, Le/a/r1;->Z1()Le/a/w/b/b;

    move-result-object v9

    iget-object v10, v1, Le/a/r1;->Z:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/q2/b1/a;

    iget-object v11, v1, Le/a/r1;->w1:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/h0/m;

    iget-object v12, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/u3/g;

    iget-object v13, v1, Le/a/r1;->db:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/o5/j;

    iget-object v14, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/a/a/i0;

    iget-object v15, v1, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/c/c0/o;

    invoke-virtual {v1}, Le/a/r1;->cb()Le/a/b0/b/f/a;

    move-result-object v16

    iget-object v0, v1, Le/a/r1;->Pd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v17

    iget-object v0, v1, Le/a/r1;->Qd:Ljavax/inject/Provider;

    invoke-static {v0}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v18

    invoke-virtual {v1}, Le/a/r1;->ca()Le/a/o5/c0;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Le/a/i3/c;-><init>(ILandroid/content/Context;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/z4/a;Le/a/z4/d;Le/a/w/b/b;Le/a/q2/b1/a;Le/a/h0/m;Le/a/u3/g;Le/a/o5/j;Le/a/a/i0;Le/a/c/c0/o;Le/a/b0/b/f/a;Lo3/a;Lo3/a;Le/a/o5/b0;)V

    return-object v20

    .line 313
    :pswitch_57
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 314
    iget-object v2, v1, Le/a/r1;->B:Le/a/i3/d;

    iget-object v3, v1, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/l;

    iget-object v1, v1, Le/a/r1;->Sd:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i3/b;

    .line 315
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "actorsThreads"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "configManager"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "config_thread"

    .line 316
    invoke-interface {v3, v2}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v2

    .line 317
    const-class v3, Le/a/i3/b;

    invoke-interface {v2, v3, v1}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    const-string v2, "actorsThreads.createThre\u2026lass.java, configManager)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 318
    :pswitch_58
    new-instance v1, Le/a/j3/e;

    invoke-direct {v1}, Le/a/j3/e;-><init>()V

    return-object v1

    .line 319
    :pswitch_59
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 320
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v2, Le/a/r2/n;

    invoke-direct {v2}, Le/a/r2/n;-><init>()V

    .line 322
    new-instance v3, Le/a/j3/b;

    invoke-direct {v3, v6}, Le/a/j3/b;-><init>(Le/a/j3/a;)V

    .line 323
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v13, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v13}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x4

    const-wide/16 v10, 0x3c

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 324
    iget-object v1, v1, Le/a/r1;->md:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/j3/d;

    .line 325
    const-class v5, Le/a/j3/d;

    .line 326
    new-instance v7, Le/a/r2/q$c;

    invoke-direct {v7, v1, v4, v2, v6}, Le/a/r2/q$c;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Le/a/r2/n;Le/a/r2/q$a;)V

    .line 327
    invoke-virtual {v3, v5, v7}, Le/a/j3/b;->a(Ljava/lang/Class;Le/a/r2/w;)Ljava/lang/Object;

    move-result-object v1

    .line 328
    new-instance v2, Le/a/r2/g;

    invoke-direct {v2, v1}, Le/a/r2/g;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 329
    :pswitch_5a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 330
    new-instance v2, Le/a/j3/g;

    iget-object v3, v1, Le/a/r1;->nd:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/f;

    iget-object v1, v1, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/l;

    invoke-direct {v2, v3, v1}, Le/a/j3/g;-><init>(Le/a/r2/f;Le/a/r2/l;)V

    return-object v2

    .line 331
    :pswitch_5b
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v1

    .line 332
    invoke-static {v1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 333
    :pswitch_5c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 334
    iget-object v1, v1, Le/a/r1;->h:Le/a/w0;

    .line 335
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v1, Le/a/n4/b;

    invoke-direct {v1}, Le/a/n4/b;-><init>()V

    return-object v1

    .line 337
    :pswitch_5d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 338
    new-instance v2, Le/a/i4/p;

    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/i4/p;-><init>(Le/a/p5/a0;)V

    return-object v2

    .line 339
    :pswitch_5e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 340
    new-instance v2, Le/a/o4/h;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->lb()Le/a/d4/d;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->Oa:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/z4/d;

    invoke-direct {v2, v3, v4, v1}, Le/a/o4/h;-><init>(Landroid/content/Context;Le/a/d4/c;Le/a/z4/d;)V

    return-object v2

    .line 341
    :pswitch_5f
    new-instance v1, Le/a/b0/k/f;

    invoke-direct {v1}, Le/a/b0/k/f;-><init>()V

    return-object v1

    .line 342
    :pswitch_60
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 343
    new-instance v2, Le/a/i4/t;

    iget-object v1, v1, Le/a/r1;->y3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i4/e;

    invoke-direct {v2, v1}, Le/a/i4/t;-><init>(Le/a/i4/e;)V

    return-object v2

    .line 344
    :pswitch_61
    sget v1, Le/a/g5/r;->a:I

    .line 345
    new-instance v1, Le/a/r2/n;

    invoke-direct {v1}, Le/a/r2/n;-><init>()V

    .line 346
    new-instance v2, Le/a/g5/z;

    invoke-direct {v2, v6}, Le/a/g5/z;-><init>(Le/a/g5/x;)V

    .line 347
    new-instance v3, Le/a/g5/y;

    invoke-direct {v3, v2, v1}, Le/a/g5/y;-><init>(Le/a/r2/b0;Le/a/r2/n;)V

    const-string v1, "TaggerActorsBuilder().build()"

    .line 348
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    .line 349
    :pswitch_62
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 350
    iget-object v2, v1, Le/a/r1;->ad:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/l;

    .line 351
    sget v3, Le/a/g5/r;->a:I

    const-string v3, "factory"

    .line 352
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "tags"

    .line 353
    invoke-interface {v2, v3}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v2

    const-string v3, "factory.createThread(TAG_THREAD)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->c2:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/p/d;

    .line 355
    new-instance v4, Le/a/g5/o;

    invoke-direct {v4, v3, v1}, Le/a/g5/o;-><init>(Landroid/content/Context;Le/a/b0/p/d;)V

    const-string v1, "thread"

    .line 356
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "impl"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    const-class v1, Le/a/g5/n;

    invoke-interface {v2, v1, v4}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    const-string v2, "thread.bind(TagDataSaver::class.java, impl)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 358
    :pswitch_63
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 359
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 360
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v2, Le/a/o5/e2/b;

    invoke-direct {v2, v1}, Le/a/o5/e2/b;-><init>(Landroid/content/Context;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public final f()Ljava/lang/Object;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/r1$q;->b:I

    const/4 v2, 0x0

    const-string v3, "Cannot return null from a non-@Nullable @Provides method"

    const-string v4, "context"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/r1$q;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    new-instance v1, Le/a/p5/o;

    invoke-direct {v1}, Le/a/p5/o;-><init>()V

    return-object v1

    .line 4
    :pswitch_1
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->J2()Le/a/t/a/e;

    move-result-object v1

    return-object v1

    .line 5
    :pswitch_2
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 6
    iget-object v2, v1, Le/a/r1;->L:Le/a/t/a/l;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v2, Le/a/t/a/k;

    invoke-direct {v2, v1}, Le/a/t/a/k;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 9
    :pswitch_3
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 10
    iget-object v2, v1, Le/a/r1;->L:Le/a/t/a/l;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-class v2, Lcom/truecaller/android/truemoji/EmojiDatabase;

    const-string v3, "emojis.db"

    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v1

    .line 13
    iput-object v3, v1, Ln3/c0/q$a;->m:Ljava/lang/String;

    .line 14
    invoke-virtual {v1}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 15
    invoke-virtual {v1}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v1

    const-string v2, "Room.databaseBuilder(con\u2026on()\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/android/truemoji/EmojiDatabase;

    return-object v1

    .line 16
    :pswitch_4
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 17
    new-instance v2, Le/a/i/d0/d0/e;

    .line 18
    new-instance v3, Le/a/i/d0/d0/g;

    iget-object v4, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->Bc:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v6, v1, Le/a/r1;->Zb:Ljavax/inject/Provider;

    invoke-static {v6}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v1, v1, Le/a/r1;->Df:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v3, v4, v5, v6, v1}, Le/a/i/d0/d0/g;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    .line 19
    invoke-direct {v2, v3}, Le/a/i/d0/d0/e;-><init>(Le/a/i/d0/d0/f;)V

    return-object v2

    .line 20
    :pswitch_5
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 21
    new-instance v2, Le/a/a/e/q;

    invoke-virtual {v1}, Le/a/r1;->Ia()Le/a/a/e/n;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/a/e/q;-><init>(Le/a/a/e/m;)V

    return-object v2

    .line 22
    :pswitch_6
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 23
    new-instance v2, Le/a/a/e/l;

    invoke-virtual {v1}, Le/a/r1;->Ia()Le/a/a/e/n;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/i0;

    invoke-direct {v2, v3, v1}, Le/a/a/e/l;-><init>(Le/a/a/e/m;Le/a/a/i0;)V

    return-object v2

    .line 24
    :pswitch_7
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 25
    new-instance v2, Le/a/h4/m;

    invoke-virtual {v1}, Le/a/r1;->rc()Le/a/h4/o;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->Y9()Le/a/h4/d;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/h4/m;-><init>(Le/a/h4/n;Le/a/h4/a;)V

    return-object v2

    .line 26
    :pswitch_8
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 27
    new-instance v2, Le/a/c/d0/c;

    iget-object v3, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/b/j;

    iget-object v1, v1, Le/a/r1;->k4:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/e/c;

    invoke-direct {v2, v3, v1}, Le/a/c/d0/c;-><init>(Le/a/c/b/j;Le/a/c/e/c;)V

    return-object v2

    .line 28
    :pswitch_9
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 29
    new-instance v2, Le/a/c/d0/f;

    iget-object v3, v1, Le/a/r1;->U3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/i/k/a;

    iget-object v1, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/b/j;

    invoke-direct {v2, v3, v1}, Le/a/c/d0/f;-><init>(Le/a/c/i/k/a;Le/a/c/b/j;)V

    return-object v2

    .line 30
    :pswitch_a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 31
    new-instance v2, Le/a/c/b/g;

    iget-object v3, v1, Le/a/r1;->Xe:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/b/b;

    invoke-direct {v2, v3}, Le/a/c/b/g;-><init>(Le/a/c/b/b;)V

    .line 32
    new-instance v3, Le/a/c/d0/d;

    invoke-direct {v3, v2}, Le/a/c/d0/d;-><init>(Le/a/c/b/f;)V

    .line 33
    iget-object v1, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/b/j;

    .line 34
    iput-object v1, v3, Le/a/c/d0/d;->b:Le/a/c/b/j;

    return-object v3

    .line 35
    :pswitch_b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 36
    new-instance v2, Le/a/c/d0/a;

    iget-object v3, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/b/j;

    .line 37
    new-instance v4, Le/a/c/z/b;

    iget-object v5, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/q2/a;

    invoke-virtual {v1}, Le/a/r1;->w9()Le/a/c/w/l;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Le/a/c/z/b;-><init>(Le/a/q2/a;Le/a/c/w/k;)V

    .line 38
    invoke-direct {v2, v3, v4}, Le/a/c/d0/a;-><init>(Le/a/c/b/j;Le/a/c/z/a;)V

    return-object v2

    .line 39
    :pswitch_c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 40
    new-instance v2, Le/a/c/d0/b;

    iget-object v3, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/b/j;

    iget-object v1, v1, Le/a/r1;->k4:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/e/c;

    invoke-direct {v2, v3, v1}, Le/a/c/d0/b;-><init>(Le/a/c/b/j;Le/a/c/e/c;)V

    return-object v2

    .line 41
    :pswitch_d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 42
    new-instance v2, Le/a/c/e0/b;

    iget-object v3, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/b/j;

    iget-object v4, v1, Le/a/r1;->A9:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/g/y/k;

    invoke-virtual {v1}, Le/a/r1;->Ec()Le/a/c/g/x;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/c/e0/b;-><init>(Le/a/c/b/j;Le/a/c/g/y/k;Le/a/c/g/w;)V

    return-object v2

    .line 43
    :pswitch_e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 44
    new-instance v2, Le/a/c/e0/a;

    iget-object v3, v1, Le/a/r1;->x4:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/b/j;

    invoke-direct {v2, v3, v1}, Le/a/c/e0/a;-><init>(Lo3/a;Le/a/c/b/j;)V

    return-object v2

    .line 45
    :pswitch_f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 46
    new-instance v2, Le/a/o4/i;

    iget-object v1, v1, Le/a/r1;->if:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/o4/e;

    invoke-direct {v2, v1}, Le/a/o4/i;-><init>(Le/a/o4/e;)V

    return-object v2

    .line 47
    :pswitch_10
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 48
    new-instance v2, Le/a/i3/f;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->Sd:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/i3/f;-><init>(Lo3/a;Lo3/a;)V

    return-object v2

    .line 49
    :pswitch_11
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 50
    new-instance v2, Le/a/i3/e;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->Sd:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/i3/e;-><init>(Lo3/a;Lo3/a;)V

    return-object v2

    .line 51
    :pswitch_12
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 52
    new-instance v8, Le/a/o/b/h;

    iget-object v2, v1, Le/a/r1;->n5:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/d3/j;

    invoke-virtual {v1}, Le/a/r1;->Db()Le/a/o/p/e/g/d;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->P5:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/o/b/o;

    invoke-virtual {v1}, Le/a/r1;->U9()Le/a/o/b/g;

    move-result-object v6

    new-instance v7, Le/a/p5/d;

    invoke-direct {v7}, Le/a/p5/d;-><init>()V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/o/b/h;-><init>(Le/a/d3/j;Le/a/o/p/e/g/c;Le/a/o/b/o;Le/a/o/b/f;Le/a/p5/c;)V

    return-object v8

    .line 53
    :pswitch_13
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 54
    new-instance v9, Le/a/i4/m;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/a/i0;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/u3/g;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->fg:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/j4/b/a/f;

    invoke-virtual {v1}, Le/a/r1;->gb()Le/a/q2/o0;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/i4/m;-><init>(Landroid/content/Context;Le/a/a/i0;Le/a/u3/g;Le/a/p5/g;Le/a/j4/b/a/f;Le/a/q2/i0;)V

    return-object v9

    .line 55
    :pswitch_14
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 56
    new-instance v2, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->K0()Le/a/s4/a;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/q2/a;

    iget-object v1, v1, Le/a/r1;->dd:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i4/s;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/truecaller/notifications/RegistrationNudgeWorkAction;-><init>(Landroid/content/Context;Le/a/s4/a;Le/a/q2/a;Le/a/i4/s;)V

    return-object v2

    .line 57
    :pswitch_15
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 58
    new-instance v2, Le/a/i4/r;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/i4/r;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 59
    :pswitch_16
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 60
    new-instance v2, Le/a/a/k/a/f;

    iget-object v1, v1, Le/a/r1;->c5:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/l;

    invoke-direct {v2, v1}, Le/a/a/k/a/f;-><init>(Le/a/a/k/a/l;)V

    return-object v2

    .line 61
    :pswitch_17
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 62
    new-instance v14, Le/a/a/k/a/v0;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/u3/g;

    iget-object v2, v1, Le/a/r1;->M4:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->ca()Le/a/o5/c0;

    move-result-object v5

    invoke-virtual {v1}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v6

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v7

    iget-object v2, v1, Le/a/r1;->y3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/i4/e;

    iget-object v2, v1, Le/a/r1;->p0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/i4/q;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v10

    iget-object v2, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/a/i0;

    iget-object v2, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/q2/a;

    iget-object v1, v1, Le/a/r1;->A4:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v13

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Le/a/a/k/a/v0;-><init>(Le/a/u3/g;Lo3/a;Le/a/o5/b0;Le/a/b0/q/l0;Landroid/content/Context;Le/a/i4/e;Le/a/i4/q;Le/a/o5/f0;Le/a/a/i0;Le/a/q2/a;Lo3/a;)V

    return-object v14

    .line 63
    :pswitch_18
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 64
    new-instance v13, Le/a/a/k/a/n1;

    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/b0/e/l;

    iget-object v2, v1, Le/a/r1;->j1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/r2/f;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/i0;

    invoke-virtual {v1}, Le/a/r1;->ca()Le/a/o5/c0;

    move-result-object v7

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v8

    iget-object v2, v1, Le/a/r1;->y3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/i4/e;

    iget-object v2, v1, Le/a/r1;->p0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/i4/q;

    iget-object v2, v1, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/b0/q/z;

    invoke-virtual {v1}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v12

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Le/a/a/k/a/n1;-><init>(Le/a/b0/e/l;Le/a/r2/f;Le/a/o5/f0;Le/a/a/i0;Le/a/o5/b0;Landroid/content/Context;Le/a/i4/e;Le/a/i4/q;Le/a/b0/q/z;Le/a/b0/q/l0;)V

    return-object v13

    .line 65
    :pswitch_19
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 66
    new-instance v2, Le/a/a/k/a/a0;

    iget-object v3, v1, Le/a/r1;->Eh:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/k/a/l1;

    iget-object v4, v1, Le/a/r1;->n8:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/r2/f;

    iget-object v5, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b0/e/l;

    iget-object v1, v1, Le/a/r1;->Gh:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/r0;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/k/a/a0;-><init>(Le/a/a/k/a/l1;Le/a/r2/f;Le/a/b0/e/l;Le/a/a/k/a/r0;)V

    return-object v2

    .line 67
    :pswitch_1a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 68
    iget-object v3, v1, Le/a/r1;->J:Le/a/s/h;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 69
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3, v1}, Le/a/s/h;->a(Landroid/content/Context;)Le/a/s/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/s/e;->d()Le/a/s/p/b;

    move-result-object v2

    :cond_0
    return-object v2

    .line 71
    :pswitch_1b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 72
    new-instance v2, Le/a/s/p/a;

    iget-object v1, v1, Le/a/r1;->Bh:Ljavax/inject/Provider;

    invoke-direct {v2, v1}, Le/a/s/p/a;-><init>(Ljavax/inject/Provider;)V

    return-object v2

    .line 73
    :pswitch_1c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 74
    new-instance v2, Le/a/l4/t;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->e1:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/l4/t;-><init>(Lo3/a;Lo3/a;)V

    return-object v2

    .line 75
    :pswitch_1d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 76
    new-instance v2, Le/a/c/v/f/b/a;

    invoke-virtual {v1}, Le/a/r1;->ea()Le/a/c/j/d;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->vb()Le/a/c/j/g;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/c/v/f/b/a;-><init>(Le/a/c/j/b;Le/a/c/j/e;)V

    .line 77
    sget v1, Lcom/google/common/collect/ImmutableSet;->a:I

    .line 78
    new-instance v1, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v1, v2}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 79
    :pswitch_1e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 80
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v1, Le/a/c/v/e;

    new-instance v2, Le/a/a/z;

    invoke-direct {v2}, Le/a/a/z;-><init>()V

    invoke-direct {v1, v2}, Le/a/c/v/e;-><init>(Le/a/c/h/f;)V

    return-object v1

    .line 82
    :pswitch_1f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 83
    new-instance v2, Le/a/c/v/f/a/a;

    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->wh:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->k4:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/e/c;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/c/v/f/a/a;-><init>(Landroid/content/Context;Le/a/p5/c0;Lo3/a;Le/a/c/e/c;)V

    .line 84
    sget v1, Lcom/google/common/collect/ImmutableSet;->a:I

    .line 85
    new-instance v1, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v1, v2}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 86
    :pswitch_20
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 87
    new-instance v2, Le/a/o5/a2/j/a;

    iget-object v3, v1, Le/a/r1;->S3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/c/f/n;

    invoke-virtual {v1}, Le/a/r1;->Xa()Le/a/c/v/b;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/b/j;

    invoke-direct {v2, v3, v4, v1}, Le/a/o5/a2/j/a;-><init>(Le/a/c/c/f/n;Le/a/c/v/a;Le/a/c/b/j;)V

    return-object v2

    .line 88
    :pswitch_21
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 89
    new-instance v11, Le/a/d0/x0;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->Ag:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/r2/f;

    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/e/l;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v6

    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v7

    iget-object v2, v1, Le/a/r1;->l1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/h5/w;

    iget-object v2, v1, Le/a/r1;->Oa:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/z4/d;

    invoke-virtual {v1}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/d0/x0;-><init>(Lo3/a;Le/a/r2/f;Le/a/b0/e/l;Le/a/p5/g;Le/a/p5/a0;Le/a/h5/w;Le/a/z4/d;Le/a/b0/q/l0;)V

    return-object v11

    .line 90
    :pswitch_22
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 91
    new-instance v2, Le/a/j/c/a;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->sa:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/j/c/a;-><init>(Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 92
    :pswitch_23
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 93
    new-instance v2, Le/a/a0/c;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/e/l;

    iget-object v1, v1, Le/a/r1;->F1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a0/i;

    invoke-direct {v2, v3, v1}, Le/a/a0/c;-><init>(Le/a/b0/e/l;Le/a/a0/i;)V

    return-object v2

    .line 94
    :pswitch_24
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 95
    new-instance v9, Le/a/q2/q0;

    iget-object v2, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/b0/e/l;

    invoke-virtual {v1}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v2}, Le/a/c/p/a;->b2(Le/a/a/g/i;)Le/a/a/g/g;

    move-result-object v6

    iget-object v1, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Le/a/a/i0;

    new-instance v8, Le/a/p5/d;

    invoke-direct {v8}, Le/a/p5/d;-><init>()V

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/q2/q0;-><init>(Lo3/a;Le/a/b0/e/l;Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/i0;Le/a/p5/c;)V

    return-object v9

    .line 96
    :pswitch_25
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 97
    new-instance v2, Le/a/i/e/m/a;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->bc:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/i/e/m/a;-><init>(Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 98
    :pswitch_26
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 99
    new-instance v2, Le/a/o5/a2/a;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/e/l;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-direct {v2, v3, v4, v1}, Le/a/o5/a2/a;-><init>(Le/a/b0/e/l;Le/a/p5/g;Le/a/r2/f;)V

    return-object v2

    .line 100
    :pswitch_27
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 101
    new-instance v2, Le/a/i/d0/g0/e/a;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->yc:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/i/d0/g0/e/a;-><init>(Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 102
    :pswitch_28
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 103
    new-instance v2, Le/a/i/e/m/b;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->bc:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/i/e/m/b;-><init>(Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 104
    :pswitch_29
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 105
    invoke-virtual {v1}, Le/a/r1;->Yb()Le/a/x4/j/b;

    move-result-object v1

    return-object v1

    .line 106
    :pswitch_2a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 107
    new-instance v2, Le/a/x4/d;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->mh:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/x4/d;-><init>(Lo3/a;Lo3/a;)V

    return-object v2

    .line 108
    :pswitch_2b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 109
    new-instance v2, Le/a/v2/q;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->jf:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/v2/q;-><init>(Lo3/a;Lo3/a;)V

    return-object v2

    .line 110
    :pswitch_2c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 111
    new-instance v2, Le/a/n2/c/b/a;

    invoke-virtual {v1}, Le/a/r1;->a9()Le/a/n2/c/b/b;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/n2/c/b/a;-><init>(Le/a/n2/c/b/b;)V

    return-object v2

    .line 112
    :pswitch_2d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 113
    new-instance v2, Le/a/q2/a1/c;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-direct {v2, v3, v1}, Le/a/q2/a1/c;-><init>(Landroid/content/Context;Le/a/r2/f;)V

    return-object v2

    .line 114
    :pswitch_2e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 115
    new-instance v2, Le/a/q2/a1/a;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/e/l;

    iget-object v1, v1, Le/a/r1;->ih:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a1/b;

    invoke-direct {v2, v3, v1}, Le/a/q2/a1/a;-><init>(Le/a/b0/e/l;Le/a/q2/a1/b;)V

    return-object v2

    .line 116
    :pswitch_2f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 117
    new-instance v13, Le/a/y4/e;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/u3/g;

    invoke-virtual {v1}, Le/a/r1;->x9()Le/a/c3/b;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/o/a;

    iget-object v2, v1, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/b0/e/f;

    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v7

    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/b0/e/l;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v9

    iget-object v2, v1, Le/a/r1;->Oa:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/z4/d;

    iget-object v2, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/q2/a;

    invoke-virtual {v1}, Le/a/r1;->Cc()Le/a/n5/d;

    move-result-object v12

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Le/a/y4/e;-><init>(Le/a/u3/g;Le/a/c3/a;Le/a/b0/o/a;Le/a/b0/e/f;Le/a/p5/a0;Le/a/b0/e/l;Landroid/content/Context;Le/a/z4/d;Le/a/q2/a;Le/a/n5/c;)V

    return-object v13

    .line 118
    :pswitch_30
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 119
    new-instance v2, Le/a/b0/p/h/b;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->c2:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/b0/p/h/b;-><init>(Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 120
    :pswitch_31
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 121
    new-instance v2, Le/a/b0/p/h/a;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->c2:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/b0/p/h/a;-><init>(Lo3/a;Lo3/a;)V

    return-object v2

    .line 122
    :pswitch_32
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 123
    invoke-virtual {v1}, Le/a/r1;->g9()Le/a/i/f0/l/g;

    move-result-object v1

    return-object v1

    .line 124
    :pswitch_33
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 125
    new-instance v2, Le/a/i/f0/l/h;

    iget-object v1, v1, Le/a/r1;->ch:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/i/f0/l/h;-><init>(Lo3/a;)V

    return-object v2

    .line 126
    :pswitch_34
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 127
    new-instance v2, Le/a/d0/t0;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->Oa:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/z4/d;

    invoke-virtual {v1}, Le/a/r1;->F9()Le/a/d0/u;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/d0/t0;-><init>(Le/a/o5/f0;Le/a/p5/g;Le/a/z4/d;Le/a/d0/t;)V

    return-object v2

    .line 128
    :pswitch_35
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 129
    new-instance v2, Le/a/l/p2/c;

    .line 130
    new-instance v11, Le/a/l/p2/d;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v3, v1, Le/a/r1;->e1:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/r2/f;

    iget-object v3, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/a/u3/g;

    invoke-virtual {v1}, Le/a/r1;->K0()Le/a/s4/a;

    move-result-object v8

    invoke-virtual {v1}, Le/a/r1;->na()Le/a/l/p2/h;

    move-result-object v9

    .line 131
    new-instance v10, Le/a/l/p2/k;

    iget-object v3, v1, Le/a/r1;->Ka:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/k3/j/g;

    iget-object v12, v1, Le/a/r1;->Na:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/a/l/c2;

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v10, v3, v12, v1}, Le/a/l/p2/k;-><init>(Le/a/k3/j/g;Le/a/l/c2;Ls1/w/f;)V

    move-object v3, v11

    .line 132
    invoke-direct/range {v3 .. v10}, Le/a/l/p2/d;-><init>(Le/a/o5/f0;Landroid/content/ContentResolver;Le/a/r2/f;Le/a/u3/g;Le/a/s4/a;Le/a/l/p2/h;Le/a/l/p2/k;)V

    .line 133
    invoke-direct {v2, v11}, Le/a/l/p2/c;-><init>(Le/a/l/p2/d;)V

    return-object v2

    .line 134
    :pswitch_36
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 135
    new-instance v8, Le/a/r5/r0;

    invoke-virtual {v1}, Le/a/r1;->ed()Le/a/r5/j0;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/u3/g;

    iget-object v2, v1, Le/a/r1;->x1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/l/p2/v0;

    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v6

    invoke-virtual {v1}, Le/a/r1;->fd()Le/a/r5/l0;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/r5/r0;-><init>(Le/a/r5/i0;Le/a/u3/g;Le/a/l/p2/v0;Le/a/p5/c0;Le/a/r5/l0;)V

    return-object v8

    .line 136
    :pswitch_37
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 137
    new-instance v11, Le/a/l/e2;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->sb:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/l/p2/r0;

    invoke-virtual {v1}, Le/a/r1;->Mb()Le/a/l/p2/l0;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->ub:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/l/n2/e;

    invoke-virtual {v1}, Le/a/r1;->Q6()Le/a/o5/x1;

    move-result-object v7

    invoke-virtual {v1}, Le/a/r1;->d4()Le/a/l/o2/d;

    move-result-object v8

    invoke-virtual {v1}, Le/a/r1;->y1()Le/a/l/p2/f;

    move-result-object v9

    iget-object v1, v1, Le/a/r1;->x1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Le/a/l/p2/v0;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Le/a/l/e2;-><init>(Le/a/o5/f0;Le/a/l/p2/r0;Le/a/l/p2/k0;Le/a/l/n2/e;Le/a/o5/x1;Le/a/l/o2/d;Le/a/l/p2/f;Le/a/l/p2/v0;)V

    return-object v11

    .line 138
    :pswitch_38
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 139
    new-instance v32, Le/a/q2/m;

    move-object/from16 v2, v32

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/e/l;

    iget-object v5, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b0/o/a;

    iget-object v6, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b0/e/r/a;

    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v7

    iget-object v8, v1, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/b0/e/f;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v9

    iget-object v10, v1, Le/a/r1;->s2:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/f/b;

    iget-object v11, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/q2/a;

    iget-object v12, v1, Le/a/r1;->y1:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/truecaller/settings/CallingSettings;

    iget-object v13, v1, Le/a/r1;->w1:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/h0/m;

    invoke-virtual {v1}, Le/a/r1;->dd()Le/a/h/t0/c;

    move-result-object v14

    iget-object v15, v1, Le/a/r1;->rf:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/h3/b/a;

    iget-object v0, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Le/a/a/i0;

    invoke-virtual {v1}, Le/a/r1;->Cc()Le/a/n5/d;

    move-result-object v17

    invoke-virtual {v1}, Le/a/r1;->o9()Le/a/w2/a;

    move-result-object v18

    iget-object v0, v1, Le/a/r1;->id:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Le/a/i4/o;

    iget-object v0, v1, Le/a/r1;->q0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ln3/k/a/x;

    iget-object v0, v1, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Le/a/e4/p;

    iget-object v0, v1, Le/a/r1;->I0:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Le/a/f4/b/f/b;

    invoke-virtual {v1}, Le/a/r1;->lb()Le/a/d4/d;

    move-result-object v23

    iget-object v0, v1, Le/a/r1;->Ya:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Le/a/h0/r;

    iget-object v0, v1, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Le/a/b0/q/z;

    .line 140
    new-instance v0, Le/a/l/a/i0;

    move-object/from16 v26, v0

    move-object/from16 v33, v2

    iget-object v2, v1, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/f;

    move-object/from16 v34, v3

    iget-object v3, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/o/a;

    move-object/from16 v35, v4

    invoke-virtual {v1}, Le/a/r1;->K0()Le/a/s4/a;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Le/a/l/a/i0;-><init>(Le/a/r2/f;Le/a/b0/o/a;Le/a/s4/a;)V

    .line 141
    iget-object v0, v1, Le/a/r1;->k6:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Le/a/o/c;

    .line 142
    new-instance v0, Le/a/o5/a2/f;

    move-object/from16 v28, v0

    invoke-direct {v0}, Le/a/o5/a2/f;-><init>()V

    .line 143
    iget-object v0, v1, Le/a/r1;->i2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-virtual {v1}, Le/a/r1;->Ic()Le/a/k/i;

    move-result-object v30

    iget-object v0, v1, Le/a/r1;->r3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-direct/range {v2 .. v31}, Le/a/q2/m;-><init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/p5/a0;Le/a/b0/e/f;Le/a/p5/g;Le/a/f/b;Le/a/q2/a;Lcom/truecaller/settings/CallingSettings;Le/a/h0/m;Le/a/h/t0/b;Le/a/h3/b/a;Le/a/a/i0;Le/a/n5/c;Le/a/w2/a;Le/a/i4/o;Ln3/k/a/x;Le/a/e4/p;Le/a/f4/b/f/b;Le/a/d4/c;Le/a/h0/r;Le/a/b0/q/z;Le/a/l/a/i0;Le/a/o/c;Le/a/q2/m$a;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k/h;Z)V

    return-object v32

    .line 144
    :pswitch_39
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 145
    new-instance v2, Le/a/a/p0/l;

    iget-object v3, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    iget-object v1, v1, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/a/p0/l;-><init>(Le/a/u3/g;Lo3/a;)V

    return-object v2

    .line 146
    :pswitch_3a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 147
    invoke-virtual {v1}, Le/a/r1;->L9()Le/a/g3/k;

    move-result-object v1

    return-object v1

    .line 148
    :pswitch_3b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 149
    new-instance v2, Le/a/g3/l;

    iget-object v1, v1, Le/a/r1;->Ug:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/g3/l;-><init>(Lo3/a;)V

    return-object v2

    .line 150
    :pswitch_3c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 151
    new-instance v2, Le/a/q2/c1/a;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->e0:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->K8:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/q2/c1/a;-><init>(Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 152
    :pswitch_3d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 153
    new-instance v2, Le/a/f4/d/b;

    iget-object v3, v1, Le/a/r1;->m0:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->l0:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/f4/d/b;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 154
    :pswitch_3e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 155
    iget-object v2, v1, Le/a/r1;->K:Le/a/i/a0/a;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 156
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    const-class v2, Lcom/truecaller/ads/installedapps/InstalledAppsDatabase;

    const-string v3, "installed_apps.db"

    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v1

    invoke-virtual {v1}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v1

    const-string v2, "Room.databaseBuilder(con\u2026ED_APPS_DATABASE).build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/ads/installedapps/InstalledAppsDatabase;

    return-object v1

    .line 158
    :pswitch_3f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 159
    iget-object v2, v1, Le/a/r1;->K:Le/a/i/a0/a;

    iget-object v1, v1, Le/a/r1;->Pg:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/ads/installedapps/InstalledAppsDatabase;

    .line 160
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "database"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Lcom/truecaller/ads/installedapps/InstalledAppsDatabase;->a()Le/a/i/a0/c;

    move-result-object v1

    .line 162
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 163
    :pswitch_40
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 164
    new-instance v2, Le/a/q2/f0;

    iget-object v3, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->Qg:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->e0:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/q2/f0;-><init>(Lo3/a;Lo3/a;Lo3/a;Landroid/content/Context;)V

    return-object v2

    .line 165
    :pswitch_41
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 166
    new-instance v2, Le/a/n/l;

    iget-object v3, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/n/l;-><init>(Lo3/a;Lo3/a;)V

    return-object v2

    .line 167
    :pswitch_42
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 168
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v8, Le/a/h0/x/i;

    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->D4:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/o/a;

    iget-object v1, v1, Le/a/r1;->w1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Le/a/h0/m;

    new-instance v7, Le/a/p5/d;

    invoke-direct {v7}, Le/a/p5/d;-><init>()V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/h0/x/i;-><init>(Lo3/a;Lo3/a;Le/a/b0/o/a;Le/a/h0/m;Le/a/p5/c;)V

    return-object v8

    .line 170
    :pswitch_43
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 171
    new-instance v2, Le/a/o5/a2/d;

    iget-object v1, v1, Le/a/r1;->z2:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/o5/a2/d;-><init>(Lo3/a;)V

    return-object v2

    .line 172
    :pswitch_44
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 173
    new-instance v2, Le/a/q2/z0/a;

    iget-object v1, v1, Le/a/r1;->Da:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/z0/b;

    invoke-direct {v2, v1}, Le/a/q2/z0/a;-><init>(Le/a/q2/z0/b;)V

    return-object v2

    .line 174
    :pswitch_45
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 175
    iget-object v3, v1, Le/a/r1;->J:Le/a/s/h;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 176
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v3, v1}, Le/a/s/h;->a(Landroid/content/Context;)Le/a/s/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/s/e;->h()Le/a/s/r/a;

    move-result-object v2

    :cond_1
    return-object v2

    .line 178
    :pswitch_46
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 179
    new-instance v8, Le/a/a/k/a/z;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/a/i0;

    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/b0/e/l;

    iget-object v2, v1, Le/a/r1;->S6:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/k/a/p;

    invoke-virtual {v1}, Le/a/r1;->Aa()Le/a/a/k/a/j1;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/a/k/a/z;-><init>(Landroid/content/Context;Le/a/a/i0;Le/a/b0/e/l;Le/a/a/k/a/p;Le/a/a/k/a/i1;)V

    return-object v8

    .line 180
    :pswitch_47
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 181
    new-instance v2, Le/a/g3/f;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/o/a;

    iget-object v5, v1, Le/a/r1;->g3:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v1, v1, Le/a/r1;->q1:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/g3/f;-><init>(Landroid/content/Context;Le/a/b0/o/a;Lo3/a;Lo3/a;)V

    return-object v2

    .line 182
    :pswitch_48
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 183
    iget-object v2, v1, Le/a/r1;->I:Le/a/o4/k;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 184
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget-object v2, Le/a/y/c/c;->b:Le/a/y/c/c;

    invoke-static {}, Le/a/y/c/c;->a()Le/a/y/c/x/a/a;

    move-result-object v2

    .line 186
    new-instance v3, Le/a/y/f/a;

    invoke-interface {v2}, Le/a/y/c/x/a/a;->u()Le/m/e/k;

    move-result-object v4

    invoke-interface {v2}, Le/a/y/c/x/a/a;->l()Le/a/y/h/a;

    move-result-object v2

    invoke-direct {v3, v1, v4, v2}, Le/a/y/f/a;-><init>(Landroid/content/Context;Le/m/e/k;Le/a/y/h/a;)V

    return-object v3

    .line 187
    :pswitch_49
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 188
    new-instance v10, Le/a/o4/c;

    iget-object v2, v1, Le/a/r1;->Eg:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->Fg:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->Hg:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->xd:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v8, v1, Le/a/r1;->Ig:Ljavax/inject/Provider;

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Le/a/o4/c;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Ljavax/inject/Provider;Lo3/a;)V

    return-object v10

    .line 189
    :pswitch_4a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 190
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 191
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    const-class v2, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb;

    const-string v3, "bizmon_call_me_back"

    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 194
    invoke-virtual {v1}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v1

    const-string v2, "Room.databaseBuilder(con\u2026\n                .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/bizmon/callMeBack/db/CallMeBackDb;

    return-object v1

    .line 195
    :pswitch_4b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 196
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 197
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v2, Le/a/d0/r;

    invoke-direct {v2, v1}, Le/a/d0/r;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 199
    :pswitch_4c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 200
    iget-object v1, v1, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/l;

    const-string v2, "call_notifications"

    .line 201
    invoke-interface {v1, v2}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v1

    .line 202
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 203
    :pswitch_4d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 204
    iget-object v2, v1, Le/a/r1;->zg:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/j;

    invoke-virtual {v1}, Le/a/r1;->F9()Le/a/d0/u;

    move-result-object v1

    .line 205
    const-class v4, Le/a/d0/t;

    invoke-interface {v2, v4, v1}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 206
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 207
    :pswitch_4e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 208
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    iget-object v3, v1, Le/a/r1;->Ag:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/f;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v1

    .line 209
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v2, Le/a/d0/p;

    invoke-direct {v2, v3, v1}, Le/a/d0/p;-><init>(Le/a/r2/f;Le/a/p5/g;)V

    return-object v2

    .line 211
    :pswitch_4f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 212
    new-instance v2, Le/a/s2/b;

    iget-object v3, v1, Le/a/r1;->Gb:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/s2/c;

    invoke-virtual {v1}, Le/a/r1;->m9()Le/a/s2/g/b;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/s2/b;-><init>(Le/a/s2/c;Le/a/s2/g/a;Landroid/content/Context;)V

    return-object v2

    .line 213
    :pswitch_50
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 214
    invoke-virtual {v1}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contentResolver"

    .line 215
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    new-instance v2, Le/a/k0/a/s;

    invoke-direct {v2, v1}, Le/a/k0/a/s;-><init>(Landroid/content/ContentResolver;)V

    return-object v2

    .line 217
    :pswitch_51
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 218
    new-instance v9, Le/a/k0/n/b/k;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v5

    iget-object v2, v1, Le/a/r1;->i2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/truecaller/callrecording/CallRecordingManager;

    iget-object v2, v1, Le/a/r1;->u2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/k0/a/j;

    iget-object v1, v1, Le/a/r1;->c0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/telephony/TelephonyManager;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/k0/n/b/k;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k0/a/j;Landroid/telephony/TelephonyManager;)V

    return-object v9

    .line 219
    :pswitch_52
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 220
    new-instance v2, Le/a/b/q/b;

    iget-object v1, v1, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-direct {v2, v1}, Le/a/b/q/b;-><init>(Le/a/r2/f;)V

    return-object v2

    .line 221
    :pswitch_53
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 222
    new-instance v2, Le/a/b/q/d;

    iget-object v3, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    invoke-virtual {v1}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/b/q/d;-><init>(Le/a/u3/g;Le/a/p5/c0;)V

    return-object v2

    .line 223
    :pswitch_54
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 224
    new-instance v2, Le/a/j/e/b;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->sa:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/j/c/b;

    .line 225
    new-instance v5, Le/a/j/e/g;

    iget-object v6, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/q2/a;

    invoke-direct {v5, v6}, Le/a/j/e/g;-><init>(Le/a/q2/a;)V

    .line 226
    new-instance v6, Le/a/j/e/i;

    iget-object v7, v1, Le/a/r1;->sa:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/j/c/b;

    invoke-virtual {v1}, Le/a/r1;->E()Le/a/b0/q/l0;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Le/a/j/e/i;-><init>(Le/a/j/c/b;Le/a/b0/q/l0;)V

    .line 227
    invoke-direct {v2, v3, v4, v5, v6}, Le/a/j/e/b;-><init>(Landroid/content/Context;Le/a/j/c/b;Le/a/j/e/g;Le/a/j/e/h;)V

    return-object v2

    .line 228
    :pswitch_55
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->i7()Le/a/k3/j/j;

    move-result-object v1

    return-object v1

    .line 229
    :pswitch_56
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 230
    new-instance v8, Le/a/q/h/e;

    invoke-virtual {v1}, Le/a/r1;->M9()Le/a/q/f/g;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/b0/o/a;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/u3/g;

    .line 231
    new-instance v2, Le/a/q/i/c;

    iget-object v6, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v6}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Le/a/q/i/c;-><init>(Landroid/content/Context;)V

    const-string v6, "timeFormatter"

    .line 232
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v6, Le/a/q/h/a;

    invoke-direct {v6, v2}, Le/a/q/h/a;-><init>(Le/a/q/i/c;)V

    .line 234
    new-instance v7, Le/a/q/h/h;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v7, v1}, Le/a/q/h/h;-><init>(Landroid/content/Context;)V

    move-object v2, v8

    .line 235
    invoke-direct/range {v2 .. v7}, Le/a/q/h/e;-><init>(Le/a/q/f/a;Le/a/b0/o/a;Le/a/u3/g;Le/a/q/h/a;Le/a/q/h/h;)V

    return-object v8

    .line 236
    :pswitch_57
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 237
    new-instance v2, Le/a/b0/f/b;

    iget-object v3, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/q2/a;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/b0/f/b;-><init>(Le/a/q2/a;Le/a/p5/g;)V

    return-object v2

    .line 238
    :pswitch_58
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 239
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Le/a/r1;->jg:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/f/a;

    .line 240
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v3, v4, :cond_2

    .line 241
    new-instance v3, Le/a/b0/q/f;

    invoke-direct {v3, v2, v1}, Le/a/b0/q/f;-><init>(Landroid/content/Context;Le/a/b0/f/a;)V

    goto :goto_0

    .line 242
    :cond_2
    new-instance v3, Le/a/b0/q/g;

    invoke-direct {v3, v2, v1}, Le/a/b0/q/g;-><init>(Landroid/content/Context;Le/a/b0/f/a;)V

    :goto_0
    return-object v3

    .line 243
    :pswitch_59
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 244
    new-instance v2, Le/a/c/m/a;

    iget-object v3, v1, Le/a/r1;->F3:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/b/e;

    iget-object v4, v1, Le/a/r1;->J3:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/i/b/a;

    iget-object v1, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/b/j;

    invoke-direct {v2, v3, v4, v1}, Le/a/c/m/a;-><init>(Le/a/c/b/e;Le/a/c/i/b/a;Le/a/c/b/j;)V

    return-object v2

    .line 245
    :pswitch_5a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 246
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 247
    new-instance v2, Le/a/j4/b/a/f;

    invoke-direct {v2, v1}, Le/a/j4/b/a/f;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 248
    :pswitch_5b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 249
    iget-object v1, v1, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/l;

    const-string v2, "ringer"

    .line 250
    invoke-interface {v1, v2}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v1

    .line 251
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 252
    :pswitch_5c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 253
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 254
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "audio"

    .line 255
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 256
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 257
    :pswitch_5d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 258
    new-instance v2, Le/a/t4/d;

    .line 259
    new-instance v3, Le/a/t4/a;

    iget-object v4, v1, Le/a/r1;->ag:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    invoke-direct {v3, v4}, Le/a/t4/a;-><init>(Lo3/a;)V

    .line 260
    invoke-virtual {v1}, Le/a/r1;->yb()Le/a/p5/b0;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/t4/d;-><init>(Le/a/t4/a;Le/a/p5/a0;)V

    return-object v2

    .line 261
    :pswitch_5e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 262
    iget-object v2, v1, Le/a/r1;->cg:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/t4/c;

    iget-object v1, v1, Le/a/r1;->dg:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/j;

    .line 263
    const-class v4, Le/a/t4/c;

    invoke-interface {v1, v4, v2}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 264
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    .line 265
    :pswitch_5f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 266
    invoke-virtual {v1}, Le/a/r1;->b9()Le/a/g/j/i0;

    move-result-object v1

    return-object v1

    .line 267
    :pswitch_60
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 268
    invoke-virtual {v1}, Le/a/r1;->k9()Le/a/g/d;

    move-result-object v1

    return-object v1

    .line 269
    :pswitch_61
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 270
    invoke-virtual {v1}, Le/a/r1;->yc()Le/a/k5/b;

    move-result-object v1

    return-object v1

    .line 271
    :pswitch_62
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 272
    invoke-virtual {v1}, Le/a/r1;->I9()Le/a/i/f0/k/d;

    move-result-object v1

    return-object v1

    .line 273
    :pswitch_63
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 274
    new-instance v2, Le/a/a/r0/i;

    iget-object v1, v1, Le/a/r1;->he:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/a/r0/i;-><init>(Lo3/a;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public final g()Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/r1$q;->b:I

    const-string v2, "Room.databaseBuilder(con\u2026on()\n            .build()"

    const-string v3, "context"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/r1$q;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    new-instance v1, Le/a/r4/b/a;

    invoke-direct {v1}, Le/a/r4/b/a;-><init>()V

    return-object v1

    .line 4
    :pswitch_1
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 5
    invoke-virtual {v1}, Le/a/r1;->m9()Le/a/s2/g/b;

    move-result-object v1

    return-object v1

    .line 6
    :pswitch_2
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 7
    invoke-virtual {v1}, Le/a/r1;->T9()Le/a/o/b/e;

    move-result-object v1

    return-object v1

    .line 8
    :pswitch_3
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 9
    iget-object v2, v1, Le/a/r1;->J:Le/a/s/h;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 10
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v1}, Le/a/s/h;->a(Landroid/content/Context;)Le/a/s/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/s/e;->g()Landroidx/fragment/app/Fragment;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 12
    :pswitch_4
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 13
    iget-object v4, v1, Le/a/r1;->O:Le/a/b/o/d/a;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 14
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const-class v3, Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb;

    const-string v4, "government_service"

    invoke-static {v1, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 17
    invoke-virtual {v1}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/bizmon/governmentServices/db/GovernmentServicesDb;

    return-object v1

    .line 18
    :pswitch_5
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 19
    iget-object v4, v1, Le/a/r1;->O:Le/a/b/o/d/a;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 20
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const-class v3, Lcom/truecaller/bizmon/covidDirectory/db/CovidDirectoryDb;

    const-string v4, "covid_directory"

    invoke-static {v1, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 23
    invoke-virtual {v1}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/bizmon/covidDirectory/db/CovidDirectoryDb;

    return-object v1

    .line 24
    :pswitch_6
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->D9()Le/a/o/a/j/b;

    move-result-object v1

    return-object v1

    .line 25
    :pswitch_7
    new-instance v1, Le/a/k/p/j;

    invoke-direct {v1}, Le/a/k/p/j;-><init>()V

    return-object v1

    .line 26
    :pswitch_8
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 27
    invoke-virtual {v1}, Le/a/r1;->zb()Le/a/z/g;

    move-result-object v1

    return-object v1

    .line 28
    :pswitch_9
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 29
    invoke-virtual {v1}, Le/a/r1;->ed()Le/a/r5/j0;

    move-result-object v1

    return-object v1

    .line 30
    :pswitch_a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 31
    invoke-virtual {v1}, Le/a/r1;->Ia()Le/a/a/e/n;

    move-result-object v1

    return-object v1

    .line 32
    :pswitch_b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 33
    new-instance v2, Le/a/m/p;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/e/f;

    iget-object v1, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/m/p;-><init>(Landroid/content/Context;Le/a/b0/e/f;Lo3/a;)V

    return-object v2

    .line 34
    :pswitch_c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 35
    new-instance v2, Le/a/b0/a/q;

    iget-object v3, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/e/l;

    invoke-direct {v2, v3, v4, v1}, Le/a/b0/a/q;-><init>(Ls1/w/f;Ls1/w/f;Le/a/b0/e/l;)V

    return-object v2

    .line 36
    :pswitch_d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 37
    invoke-virtual {v1}, Le/a/r1;->Z9()Le/a/a/r0/b;

    move-result-object v1

    return-object v1

    .line 38
    :pswitch_e
    new-instance v1, Le/a/m4/a;

    invoke-direct {v1}, Le/a/m4/a;-><init>()V

    return-object v1

    .line 39
    :pswitch_f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->Z1()Le/a/w/b/b;

    move-result-object v1

    return-object v1

    .line 40
    :pswitch_10
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 41
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v2, Le/a/r3/h;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/r3/h;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 43
    :pswitch_11
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 44
    new-instance v2, Le/a/j/e/d;

    iget-object v3, v1, Le/a/r1;->pg:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/j/e/a;

    iget-object v1, v1, Le/a/r1;->bd:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-direct {v2, v3, v1}, Le/a/j/e/d;-><init>(Le/a/j/e/a;Le/a/r2/f;)V

    return-object v2

    .line 45
    :pswitch_12
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 46
    new-instance v2, Le/a/c/x/b;

    iget-object v3, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v4}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v4

    .line 47
    new-instance v5, Le/a/c/c/f/j;

    invoke-virtual {v1}, Le/a/r1;->wb()Le/a/c/c/d/d0;

    move-result-object v1

    invoke-direct {v5, v1}, Le/a/c/c/f/j;-><init>(Le/a/c/c/d/d0;)V

    .line 48
    invoke-direct {v2, v3, v4, v5}, Le/a/c/x/b;-><init>(Ls1/w/f;Ls1/w/f;Le/a/c/c/f/j;)V

    return-object v2

    .line 49
    :pswitch_13
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 50
    new-instance v2, Le/a/c/u/b;

    invoke-virtual {v1}, Le/a/r1;->wb()Le/a/c/c/d/d0;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->c9()Le/a/c/a0/f;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Le/a/c/u/b;-><init>(Le/a/c/c/d/d0;Le/a/c/a0/e;)V

    return-object v2

    .line 51
    :pswitch_14
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 52
    new-instance v15, Le/a/c/i/c/b;

    invoke-virtual {v1}, Le/a/r1;->wb()Le/a/c/c/d/d0;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->dc()Le/a/c/c/d/h0;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/q2/a;

    invoke-virtual {v1}, Le/a/r1;->oa()Le/a/c/r/h/b;

    move-result-object v6

    iget-object v2, v1, Le/a/r1;->m9:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    invoke-virtual {v1}, Le/a/r1;->bb()Le/a/c/b0/a;

    move-result-object v8

    iget-object v2, v1, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/c/w/o0/g;

    iget-object v2, v1, Le/a/r1;->k4:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/c/e/c;

    iget-object v2, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/c/b/j;

    iget-object v2, v1, Le/a/r1;->e9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/c/b/l;

    .line 53
    new-instance v13, Le/a/c/u/c;

    iget-object v2, v1, Le/a/r1;->ni:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/u/a;

    iget-object v14, v1, Le/a/r1;->a4:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/a/c/w/o0/g;

    iget-object v0, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/b/j;

    invoke-direct {v13, v2, v14, v0}, Le/a/c/u/c;-><init>(Le/a/c/u/a;Le/a/c/w/o0/g;Le/a/c/b/j;)V

    .line 54
    iget-object v0, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v14

    move-object v2, v15

    invoke-direct/range {v2 .. v14}, Le/a/c/i/c/b;-><init>(Le/a/c/c/d/d0;Le/a/c/c/d/h0;Le/a/q2/a;Le/a/c/r/h/b;Lo3/a;Le/a/c/b0/a;Le/a/c/w/o0/g;Le/a/c/e/c;Le/a/c/b/j;Le/a/c/b/l;Le/a/c/u/c;Ls1/w/f;)V

    return-object v15

    .line 55
    :pswitch_15
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 56
    new-instance v8, Le/a/f/z/m0/b;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/q2/a;

    iget-object v2, v1, Le/a/r1;->h2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/f/w/c;

    iget-object v2, v1, Le/a/r1;->k2:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/f/y/c;

    iget-object v1, v1, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Le/a/r2/f;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/f/z/m0/b;-><init>(Ls1/w/f;Le/a/q2/a;Le/a/f/w/c;Le/a/f/y/c;Le/a/r2/f;)V

    return-object v8

    .line 57
    :pswitch_16
    new-instance v1, Le/a/f/y/w;

    invoke-direct {v1}, Le/a/f/y/w;-><init>()V

    return-object v1

    .line 58
    :pswitch_17
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 59
    iget-object v2, v1, Le/a/r1;->M:Le/a/m0/b;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b0/q/z;

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    new-instance v6, Le/a/p5/k;

    invoke-direct {v6}, Le/a/p5/k;-><init>()V

    .line 60
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "phoneNumberHelper"

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "asyncContext"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "traceUtil"

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v2, Le/a/m0/z0;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "context.contentResolver"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v5, v1, v6}, Le/a/m0/z0;-><init>(Landroid/content/ContentResolver;Le/a/b0/q/z;Ls1/w/f;Le/a/p5/m0;)V

    return-object v2

    .line 62
    :pswitch_18
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 63
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Le/a/b0/q/d0;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 65
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public get()Ljava/lang/Object;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/r1$q;->b:I

    div-int/lit8 v2, v1, 0x64

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/r1$q;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Le/a/r1$q;->g()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 4
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Le/a/r1$q;->f()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 5
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Le/a/r1$q;->e()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 6
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Le/a/r1$q;->d()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 7
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Le/a/r1$q;->c()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 8
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Le/a/r1$q;->b()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 9
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Le/a/r1$q;->a()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :pswitch_7
    const-string v2, "observer"

    const-string v3, "telephonyManager"

    const-string v4, "accountSettings"

    const-string v5, "phone"

    const-string v6, "settings"

    const-string v7, "thread"

    const-string v8, "featuresRegistry"

    const/4 v9, 0x3

    const/4 v10, 0x0

    const-string v11, "calls"

    const-string v12, "Cannot return null from a non-@Nullable @Provides method"

    const/4 v13, 0x0

    const-string v14, "context"

    const/4 v15, 0x1

    packed-switch v1, :pswitch_data_1

    .line 10
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/r1$q;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 11
    :pswitch_8
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->P8(Le/a/r1;)Le/a/l0/m;

    move-result-object v1

    goto/16 :goto_5

    .line 12
    :pswitch_9
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->O8(Le/a/r1;)Le/a/a0/l;

    move-result-object v1

    goto/16 :goto_5

    .line 13
    :pswitch_a
    invoke-static {}, Le/a/l4/k;->g0()Le/a/a0/k;

    move-result-object v1

    goto/16 :goto_5

    .line 14
    :pswitch_b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->N8(Le/a/r1;)Le/a/a0/x/a;

    move-result-object v1

    goto/16 :goto_5

    .line 15
    :pswitch_c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->M8(Le/a/r1;)Le/a/a0/j;

    move-result-object v1

    goto/16 :goto_5

    .line 16
    :pswitch_d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->L8(Le/a/r1;)Le/a/a0/o;

    move-result-object v1

    goto/16 :goto_5

    .line 17
    :pswitch_e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->K8(Le/a/r1;)Le/a/k3/d;

    move-result-object v1

    goto/16 :goto_5

    .line 18
    :pswitch_f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->J8(Le/a/r1;)Le/a/k3/d;

    move-result-object v1

    goto/16 :goto_5

    .line 19
    :pswitch_10
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->I8(Le/a/r1;)Le/a/l0/f;

    move-result-object v1

    goto/16 :goto_5

    .line 20
    :pswitch_11
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->H8(Le/a/r1;)Lcom/truecaller/settings/CallingSettings;

    move-result-object v1

    goto/16 :goto_5

    .line 21
    :pswitch_12
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->G8(Le/a/r1;)Le/a/l0/a;

    move-result-object v1

    goto/16 :goto_5

    .line 22
    :pswitch_13
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->F8(Le/a/r1;)Le/a/l0/d;

    move-result-object v1

    goto/16 :goto_5

    .line 23
    :pswitch_14
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->E8(Le/a/r1;)Le/a/r2/f;

    move-result-object v1

    goto/16 :goto_5

    .line 24
    :pswitch_15
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->D8(Le/a/r1;)Le/a/l/p2/v0;

    move-result-object v1

    goto/16 :goto_5

    .line 25
    :pswitch_16
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->C8(Le/a/r1;)Le/a/h0/p;

    move-result-object v1

    goto/16 :goto_5

    .line 26
    :pswitch_17
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->B8(Le/a/r1;)Le/a/h0/m;

    move-result-object v1

    goto/16 :goto_5

    .line 27
    :pswitch_18
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->A8(Le/a/r1;)Le/a/h0/j;

    move-result-object v1

    goto/16 :goto_5

    .line 28
    :pswitch_19
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->z8(Le/a/r1;)Le/a/f4/g/s;

    move-result-object v1

    goto/16 :goto_5

    .line 29
    :pswitch_1a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->r8(Le/a/r1;)Le/a/d/c0/h1;

    move-result-object v1

    goto/16 :goto_5

    .line 30
    :pswitch_1b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->y8(Le/a/r1;)Le/a/d/x/o;

    move-result-object v1

    goto/16 :goto_5

    .line 31
    :pswitch_1c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->p8(Le/a/r1;)Le/a/d4/d;

    move-result-object v1

    goto/16 :goto_5

    .line 32
    :pswitch_1d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 33
    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v1

    goto/16 :goto_5

    .line 34
    :pswitch_1e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->E3()Le/a/u3/g;

    move-result-object v1

    goto/16 :goto_5

    .line 35
    :pswitch_1f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->x8(Le/a/r1;)Le/a/n5/g;

    move-result-object v1

    goto/16 :goto_5

    .line 36
    :pswitch_20
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->w8(Le/a/r1;)Le/a/h5/z;

    move-result-object v1

    goto/16 :goto_5

    .line 37
    :pswitch_21
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->v8(Le/a/r1;)Le/a/h5/x;

    move-result-object v1

    goto/16 :goto_5

    .line 38
    :pswitch_22
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-static {v1}, Le/a/r1;->u8(Le/a/r1;)Le/a/d/j;

    move-result-object v1

    goto/16 :goto_5

    .line 39
    :pswitch_23
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 40
    iget-object v1, v1, Le/a/r1;->h:Le/a/w0;

    .line 41
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Le/a/r2/n;

    invoke-direct {v1}, Le/a/r2/n;-><init>()V

    .line 43
    new-instance v2, Le/a/u0;

    invoke-direct {v2, v10}, Le/a/u0;-><init>(Le/a/s0;)V

    .line 44
    new-instance v3, Le/a/t0;

    invoke-direct {v3, v2, v1}, Le/a/t0;-><init>(Le/a/r2/b0;Le/a/r2/n;)V

    goto/16 :goto_4

    .line 45
    :pswitch_24
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 46
    iget-object v1, v1, Le/a/r1;->h1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/l;

    const-string v2, "im-user-manager"

    .line 47
    invoke-interface {v1, v2}, Le/a/r2/l;->e(Ljava/lang/String;)Le/a/r2/j;

    move-result-object v1

    .line 48
    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 49
    :pswitch_25
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 50
    new-instance v14, Le/a/a/k/a/f1;

    new-instance v5, Le/a/p5/d;

    invoke-direct {v5}, Le/a/p5/d;-><init>()V

    iget-object v2, v1, Le/a/r1;->d1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/k/a/s1;

    invoke-virtual {v1}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/b0/e/l;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v9

    iget-object v2, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/a/a/i0;

    invoke-virtual {v1}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v11

    iget-object v2, v1, Le/a/r1;->e1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    invoke-virtual {v1}, Le/a/r1;->ya()Le/a/a/k/a/a/r;

    move-result-object v13

    const/16 v3, 0x32

    const/16 v4, 0x1f4

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Le/a/a/k/a/f1;-><init>(IILe/a/p5/c;Le/a/a/k/a/s1;Landroid/content/ContentResolver;Le/a/b0/e/l;Le/a/o5/f0;Le/a/a/i0;Le/a/p5/u;Lo3/a;Le/a/a/k/a/a/q;)V

    move-object v1, v14

    goto/16 :goto_5

    .line 51
    :pswitch_26
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 52
    iget-object v2, v1, Le/a/r1;->g1:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/e1;

    iget-object v1, v1, Le/a/r1;->i1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/j;

    .line 53
    const-class v3, Le/a/a/k/a/e1;

    invoke-interface {v1, v3, v2}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 54
    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 55
    :pswitch_27
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 56
    invoke-virtual {v1}, Le/a/r1;->Bb()Le/a/b0/q/x;

    move-result-object v1

    goto/16 :goto_5

    .line 57
    :pswitch_28
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 58
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    .line 59
    invoke-static {v1, v14, v5, v2}, Le/d/c/a/a;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 60
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 61
    invoke-static {v1, v2}, Le/a/e4/r;->B(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Le/a/e4/p;

    move-result-object v1

    const-string v2, "MultiSimManagerBase.crea\u2026ontext, telephonyManager)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 62
    :pswitch_29
    sget-object v1, Le/m/f/a/p;->c:Le/m/f/a/p;

    const-string v2, "ShortNumberInfo.getInstance()"

    .line 63
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 64
    :pswitch_2a
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v1

    const-string v2, "PhoneNumberUtil.getInstance()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 65
    :pswitch_2b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 66
    new-instance v2, Le/a/b0/q/a0;

    iget-object v3, v1, Le/a/r1;->X0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/f/a/j;

    iget-object v4, v1, Le/a/r1;->Y0:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/f/a/p;

    iget-object v5, v1, Le/a/r1;->Z0:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/e4/p;

    iget-object v1, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/e/l;

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/b0/q/a0;-><init>(Le/m/f/a/j;Le/m/f/a/p;Le/a/e4/p;Le/a/b0/e/l;)V

    goto/16 :goto_1

    .line 67
    :pswitch_2c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    invoke-virtual {v1}, Le/a/r1;->d0()Le/a/w4/t/b/b;

    move-result-object v1

    goto/16 :goto_5

    .line 68
    :pswitch_2d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 69
    new-instance v2, Le/a/l4/m;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/l4/m;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 70
    :pswitch_2e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 71
    new-instance v2, Le/a/l4/o;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v10

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Le/a/b0/e/l;

    iget-object v3, v1, Le/a/r1;->k0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Le/a/b0/e/h;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v13

    iget-object v3, v1, Le/a/r1;->m0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Le/a/f4/b/g/b;

    iget-object v3, v1, Le/a/r1;->F0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Le/a/f4/b/b;

    invoke-virtual {v1}, Le/a/r1;->H6()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v1, Le/a/r1;->G0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Le/a/f4/b/h/c;

    iget-object v3, v1, Le/a/r1;->I0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Le/a/f4/b/f/b;

    .line 72
    iget-object v3, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    .line 73
    invoke-static {v3, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v4, Le/a/f4/b/a;

    new-instance v5, Le/a/l4/j;

    invoke-direct {v5, v3}, Le/a/l4/j;-><init>(Lo3/a;)V

    invoke-direct {v4, v5}, Le/a/f4/b/a;-><init>(Ls1/z/b/a;)V

    .line 75
    invoke-virtual {v1}, Le/a/r1;->ma()Le/a/x3/d;

    move-result-object v20

    move-object v9, v2

    move-object/from16 v19, v4

    invoke-direct/range {v9 .. v20}, Le/a/l4/o;-><init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/f/b;Le/a/f4/b/a;Le/a/x3/c;)V

    goto/16 :goto_1

    .line 76
    :pswitch_2f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 77
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v2, Le/a/r2/n;

    invoke-direct {v2}, Le/a/r2/n;-><init>()V

    .line 79
    new-instance v3, Le/a/l4/b;

    invoke-direct {v3, v10}, Le/a/l4/b;-><init>(Le/a/l4/a;)V

    .line 80
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/u3/g;

    .line 81
    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v6, v5, Le/a/u3/g;->g:Le/a/u3/g$a;

    sget-object v8, Le/a/u3/g;->p6:[Ls1/a/l;

    aget-object v8, v8, v9

    invoke-virtual {v6, v5, v8}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v5

    .line 83
    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    new-instance v4, Le/a/r2/o;

    const-string v5, "presence"

    invoke-direct {v4, v3, v2, v5}, Le/a/r2/o;-><init>(Le/a/r2/a0;Le/a/r2/n;Ljava/lang/String;)V

    const-string v2, "actors.createThread(\"presence\")"

    .line 85
    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    const-class v19, Lcom/truecaller/presence/PresenceService;

    const/16 v20, 0x2724

    .line 87
    new-instance v5, Le/a/r2/g0;

    move-object v15, v5

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v20}, Le/a/r2/g0;-><init>(Landroid/content/Context;Le/a/r2/a0;Le/a/r2/n;Ljava/lang/Class;I)V

    const-string v2, "actors.createThread(cont\u2026asks.TASK_PRESENCE_ACTOR)"

    .line 88
    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    .line 89
    :goto_0
    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    iget-object v2, v1, Le/a/r1;->U0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v2, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v2, v1, Le/a/r1;->V0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v12

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v13

    invoke-virtual {v1}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v14

    iget-object v2, v1, Le/a/r1;->W0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v15

    iget-object v2, v1, Le/a/r1;->b1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v16

    iget-object v2, v1, Le/a/r1;->c1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v17

    invoke-virtual {v1}, Le/a/r1;->ca()Le/a/o5/c0;

    move-result-object v18

    .line 90
    new-instance v2, Le/a/l4/q;

    move-object/from16 v19, v2

    iget-object v3, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    invoke-direct {v2, v3}, Le/a/l4/q;-><init>(Lo3/a;)V

    .line 91
    iget-object v2, v1, Le/a/r1;->j1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v20

    iget-object v2, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v21

    iget-object v2, v1, Le/a/r1;->A1:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v22

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v23

    iget-object v2, v1, Le/a/r1;->k6:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v24

    iget-object v1, v1, Le/a/r1;->q5:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v25

    .line 92
    new-instance v1, Le/a/l4/i;

    move-object v8, v1

    invoke-direct/range {v8 .. v25}, Le/a/l4/i;-><init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/o5/f0;Le/a/p5/u;Lo3/a;Lo3/a;Lo3/a;Le/a/o5/b0;Le/a/l4/q;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V

    .line 93
    invoke-static {v4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "presenceManager"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const-class v2, Le/a/l4/h;

    invoke-interface {v4, v2, v1}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    const-string v2, "thread.bind(PresenceMana\u2026ss.java, presenceManager)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 95
    :pswitch_30
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 96
    new-instance v2, Le/a/f4/a/e;

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/e/l;

    iget-object v4, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/o/a;

    iget-object v1, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/e/r/a;

    new-instance v5, Le/a/n2/a/b;

    invoke-direct {v5}, Le/a/n2/a/b;-><init>()V

    invoke-direct {v2, v3, v4, v1, v5}, Le/a/f4/a/e;-><init>(Le/a/b0/e/l;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/n2/a/a;)V

    goto/16 :goto_1

    .line 97
    :pswitch_31
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 98
    new-instance v2, Le/a/a/k/a/t1;

    move-object v14, v2

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v15

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Le/a/b0/e/l;

    iget-object v3, v1, Le/a/r1;->k0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Le/a/b0/e/h;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v18

    invoke-virtual {v1}, Le/a/r1;->H6()Ljava/lang/String;

    move-result-object v19

    iget-object v3, v1, Le/a/r1;->G0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Le/a/f4/b/h/c;

    iget-object v3, v1, Le/a/r1;->m0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Le/a/f4/b/g/b;

    iget-object v3, v1, Le/a/r1;->F0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Le/a/f4/b/b;

    iget-object v3, v1, Le/a/r1;->I0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Le/a/f4/b/f/b;

    .line 99
    new-instance v3, Le/a/f4/b/e;

    move-object/from16 v24, v3

    invoke-direct {v3, v13}, Le/a/f4/b/e;-><init>(Z)V

    .line 100
    iget-object v3, v1, Le/a/r1;->R0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Le/a/f4/a/d;

    iget-object v3, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Le/a/a/i0;

    iget-object v3, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Le/a/q2/a;

    invoke-virtual {v1}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v28

    iget-object v3, v1, Le/a/r1;->e1:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v29

    invoke-virtual {v1}, Le/a/r1;->Aa()Le/a/a/k/a/j1;

    move-result-object v30

    iget-object v3, v1, Le/a/r1;->H0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Le/a/p4/b;

    iget-object v3, v1, Le/a/r1;->n8:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v32

    invoke-virtual {v1}, Le/a/r1;->ma()Le/a/x3/d;

    move-result-object v33

    invoke-direct/range {v14 .. v33}, Le/a/a/k/a/t1;-><init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/g/b;Le/a/f4/b/b;Le/a/f4/b/f/b;Le/a/f4/b/a;Le/a/f4/a/d;Le/a/a/i0;Le/a/q2/a;Le/a/p5/u;Lo3/a;Le/a/a/k/a/i1;Le/a/p4/b;Lo3/a;Le/a/x3/c;)V

    goto/16 :goto_1

    .line 101
    :pswitch_32
    new-instance v1, Le/a/b0/b/g/b;

    invoke-direct {v1}, Le/a/b0/b/g/b;-><init>()V

    .line 102
    invoke-virtual {v1, v13}, Le/a/b0/b/g/b;->e(Z)Le/a/b0/b/g/b;

    .line 103
    invoke-virtual {v1, v13}, Le/a/b0/b/g/b;->d(Z)Le/a/b0/b/g/b;

    .line 104
    invoke-static {v1}, Le/a/b0/b/a/a;->b(Le/a/b0/b/g/b;)Lu3/e0$a;

    move-result-object v1

    const-string v2, "ImClient"

    .line 105
    invoke-static {v2}, Le/a/n/g0;->F(Ljava/lang/String;)Ljava/util/List;

    .line 106
    new-instance v2, Lu3/e0;

    invoke-direct {v2, v1}, Lu3/e0;-><init>(Lu3/e0$a;)V

    goto/16 :goto_1

    .line 107
    :pswitch_33
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 108
    new-instance v2, Le/a/x3/f;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/x3/f;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 109
    :pswitch_34
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 110
    iget-object v2, v1, Le/a/r1;->m:Le/a/p4/d;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 111
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v2, Le/a/p4/c;

    const-string v3, "qa-menu"

    invoke-virtual {v1, v3, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "context.getSharedPrefere\u2026LE, Context.MODE_PRIVATE)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Le/a/p4/c;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 113
    :pswitch_35
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 114
    invoke-virtual {v1}, Le/a/r1;->E3()Le/a/u3/g;

    move-result-object v2

    iget-object v5, v1, Le/a/r1;->H0:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/p4/b;

    iget-object v6, v1, Le/a/r1;->c0:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iget-object v1, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/e/r/a;

    .line 115
    invoke-static {v2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "qaMenuSettings"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v3, Le/a/f4/b/f/e;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 117
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v13

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v15

    invoke-static {v4}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 118
    invoke-direct {v3, v2, v4, v5, v1}, Le/a/f4/b/f/e;-><init>(Le/a/u3/g;Ljava/util/List;Le/a/p4/b;Le/a/b0/e/r/a;)V

    goto/16 :goto_4

    .line 119
    :pswitch_36
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 120
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v1

    .line 121
    invoke-static {v2, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "networkUtil"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 123
    new-instance v1, Le/a/f4/b/h/e;

    invoke-direct {v1, v2}, Le/a/f4/b/h/e;-><init>(Landroid/content/Context;)V

    goto/16 :goto_5

    .line 124
    :cond_1
    new-instance v3, Le/a/f4/b/h/d;

    invoke-direct {v3, v2, v1}, Le/a/f4/b/h/d;-><init>(Landroid/content/Context;Le/a/p5/u;)V

    goto/16 :goto_4

    .line 125
    :pswitch_37
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 126
    new-instance v2, Le/a/a/k/a/g2/d;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v15

    iget-object v3, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Le/a/b0/e/l;

    iget-object v3, v1, Le/a/r1;->k0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Le/a/b0/e/h;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v18

    iget-object v3, v1, Le/a/r1;->m0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Le/a/f4/b/g/b;

    iget-object v3, v1, Le/a/r1;->F0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Le/a/f4/b/b;

    invoke-virtual {v1}, Le/a/r1;->H6()Ljava/lang/String;

    move-result-object v21

    iget-object v3, v1, Le/a/r1;->G0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Le/a/f4/b/h/c;

    iget-object v3, v1, Le/a/r1;->I0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Le/a/f4/b/f/b;

    .line 127
    new-instance v3, Le/a/f4/b/e;

    invoke-direct {v3, v13}, Le/a/f4/b/e;-><init>(Z)V

    .line 128
    invoke-virtual {v1}, Le/a/r1;->ma()Le/a/x3/d;

    move-result-object v25

    move-object v14, v2

    move-object/from16 v24, v3

    invoke-direct/range {v14 .. v25}, Le/a/a/k/a/g2/d;-><init>(Landroid/content/Context;Le/a/b0/e/l;Le/a/b0/e/h;Le/a/p5/g;Le/a/f4/b/g/b;Le/a/f4/b/b;Ljava/lang/String;Le/a/f4/b/h/c;Le/a/f4/b/f/b;Le/a/f4/b/a;Le/a/x3/c;)V

    :goto_1
    move-object v1, v2

    goto/16 :goto_5

    .line 129
    :pswitch_38
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 130
    new-instance v2, Le/a/a/k/a/g2/b;

    iget-object v1, v1, Le/a/r1;->M0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/g2/c;

    invoke-direct {v2, v1}, Le/a/a/k/a/g2/b;-><init>(Le/a/a/k/a/g2/c;)V

    goto :goto_1

    .line 131
    :pswitch_39
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 132
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Le/a/r1;->jb()Le/a/h4/h;

    move-result-object v1

    .line 133
    sget-object v15, Le/a/h4/q/f;->a:Le/a/h4/q/f$a;

    .line 134
    invoke-static {v2, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Le/a/h4/h;->q()Ljava/lang/String;

    move-result-object v18

    .line 136
    sget v19, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_personal_chats:I

    .line 137
    sget v20, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_personal_chats:I

    .line 138
    invoke-virtual {v1}, Le/a/h4/h;->l()Z

    move-result v23

    .line 139
    invoke-virtual {v1}, Le/a/h4/h;->h()Landroid/net/Uri;

    move-result-object v26

    const/16 v21, 0x5

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x140

    const-string v25, "im"

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    .line 140
    invoke-static/range {v15 .. v27}, Le/a/h4/q/f$a;->a(Le/a/h4/q/f$a;Landroid/content/Context;Le/a/h4/g;Ljava/lang/String;IIIZZ[JLjava/lang/String;Landroid/net/Uri;I)Landroid/app/NotificationChannel;

    move-result-object v1

    goto/16 :goto_5

    .line 141
    :pswitch_3a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 142
    iget-object v2, v1, Le/a/r1;->l:Le/a/h4/q/e;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->f0(Le/a/r1;Le/a/h4/q/e;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 143
    new-instance v3, Landroid/app/NotificationChannel;

    .line 144
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_profile_views:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "profile_views"

    const/4 v6, 0x4

    .line 145
    invoke-direct {v3, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 146
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_profile_views:I

    invoke-static {v1, v4, v3, v15}, Le/d/c/a/a;->l0(Landroid/content/Context;ILandroid/app/NotificationChannel;Z)V

    .line 147
    invoke-virtual {v2, v1}, Le/a/h4/q/e;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 148
    invoke-virtual {v3, v15}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v1, v9, [J

    .line 149
    fill-array-data v1, :array_0

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    goto/16 :goto_4

    .line 150
    :pswitch_3b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 151
    iget-object v2, v1, Le/a/r1;->l:Le/a/h4/q/e;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->f0(Le/a/r1;Le/a/h4/q/e;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 152
    new-instance v3, Landroid/app/NotificationChannel;

    .line 153
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_profile_share:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "profile_share"

    const/4 v6, 0x4

    .line 154
    invoke-direct {v3, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 155
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_profile_share:I

    invoke-static {v1, v4, v3, v15}, Le/d/c/a/a;->l0(Landroid/content/Context;ILandroid/app/NotificationChannel;Z)V

    .line 156
    invoke-virtual {v2, v1}, Le/a/h4/q/e;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 157
    invoke-virtual {v3, v15}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v1, v9, [J

    .line 158
    fill-array-data v1, :array_1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    goto/16 :goto_4

    .line 159
    :pswitch_3c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 160
    iget-object v2, v1, Le/a/r1;->l:Le/a/h4/q/e;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->f0(Le/a/r1;Le/a/h4/q/e;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 161
    new-instance v3, Landroid/app/NotificationChannel;

    .line 162
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_truecaller_pay:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "truecaller_pay_v2"

    const/4 v6, 0x4

    .line 163
    invoke-direct {v3, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 164
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_truecaller_pay:I

    invoke-static {v1, v4, v3, v15}, Le/d/c/a/a;->l0(Landroid/content/Context;ILandroid/app/NotificationChannel;Z)V

    .line 165
    invoke-virtual {v2, v1}, Le/a/h4/q/e;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    goto/16 :goto_4

    .line 166
    :pswitch_3d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 167
    iget-object v2, v1, Le/a/r1;->l:Le/a/h4/q/e;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->f0(Le/a/r1;Le/a/h4/q/e;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 168
    new-instance v3, Landroid/app/NotificationChannel;

    .line 169
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_backup:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "backup"

    const/4 v6, 0x2

    .line 170
    invoke-direct {v3, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 171
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_backup:I

    invoke-static {v1, v4, v3, v15}, Le/d/c/a/a;->l0(Landroid/content/Context;ILandroid/app/NotificationChannel;Z)V

    .line 172
    invoke-virtual {v2, v1}, Le/a/h4/q/e;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    goto/16 :goto_4

    .line 173
    :pswitch_3e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 174
    iget-object v2, v1, Le/a/r1;->l:Le/a/h4/q/e;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->f0(Le/a/r1;Le/a/h4/q/e;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 175
    new-instance v2, Landroid/app/NotificationChannel;

    .line 176
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_caller_id:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "caller_id"

    .line 177
    invoke-direct {v2, v4, v3, v15}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 178
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_caller_id:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 179
    :pswitch_3f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 180
    iget-object v2, v1, Le/a/r1;->l:Le/a/h4/q/e;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->f0(Le/a/r1;Le/a/h4/q/e;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 181
    new-instance v3, Landroid/app/NotificationChannel;

    .line 182
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_miscellaneous:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "miscellaneous_channel"

    const/4 v6, 0x2

    .line 183
    invoke-direct {v3, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 184
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_miscellaneous:I

    invoke-static {v1, v4, v3, v15}, Le/d/c/a/a;->l0(Landroid/content/Context;ILandroid/app/NotificationChannel;Z)V

    .line 185
    invoke-virtual {v2, v1}, Le/a/h4/q/e;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    goto/16 :goto_4

    .line 186
    :pswitch_40
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 187
    iget-object v2, v1, Le/a/r1;->k:Le/a/h4/q/d;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->U(Le/a/r1;Le/a/h4/q/d;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 188
    new-instance v2, Landroid/app/NotificationChannel;

    .line 189
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_recorded_calls:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "recorded_calls"

    const/4 v6, 0x4

    .line 190
    invoke-direct {v2, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 191
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2, v11}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :pswitch_41
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 194
    iget-object v2, v1, Le/a/r1;->k:Le/a/h4/q/d;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->U(Le/a/r1;Le/a/h4/q/d;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 195
    invoke-virtual {v2, v1}, Le/a/h4/q/d;->a(Landroid/content/Context;)I

    move-result v2

    .line 196
    new-instance v3, Landroid/app/NotificationChannel;

    .line 197
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_incoming_calls:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "incoming_calls"

    const/4 v6, 0x4

    .line 198
    invoke-direct {v3, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 199
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_incoming_calls:I

    invoke-static {v1, v4, v3, v15, v2}, Le/d/c/a/a;->m0(Landroid/content/Context;ILandroid/app/NotificationChannel;ZI)V

    .line 200
    invoke-virtual {v3, v11}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v3, v15}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    goto/16 :goto_4

    .line 202
    :pswitch_42
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 203
    iget-object v2, v1, Le/a/r1;->k:Le/a/h4/q/d;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->U(Le/a/r1;Le/a/h4/q/d;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 204
    invoke-virtual {v2, v1}, Le/a/h4/q/d;->a(Landroid/content/Context;)I

    move-result v2

    .line 205
    new-instance v3, Landroid/app/NotificationChannel;

    .line 206
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_phone_calls:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "phone_calls"

    const/4 v6, 0x2

    .line 207
    invoke-direct {v3, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 208
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_phone_calls:I

    invoke-static {v1, v4, v3, v15, v2}, Le/d/c/a/a;->m0(Landroid/content/Context;ILandroid/app/NotificationChannel;ZI)V

    .line 209
    invoke-virtual {v3, v11}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v3, v15}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    goto/16 :goto_4

    .line 211
    :pswitch_43
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 212
    iget-object v2, v1, Le/a/r1;->k:Le/a/h4/q/d;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->U(Le/a/r1;Le/a/h4/q/d;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 213
    new-instance v2, Landroid/app/NotificationChannel;

    .line 214
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_push_caller_id:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "push_caller_id"

    const/4 v5, 0x4

    .line 215
    invoke-direct {v2, v4, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 216
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_push_caller_id:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2, v11}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v2, v15}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    goto/16 :goto_1

    .line 219
    :pswitch_44
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 220
    iget-object v2, v1, Le/a/r1;->k:Le/a/h4/q/d;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->U(Le/a/r1;Le/a/h4/q/d;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 221
    new-instance v2, Landroid/app/NotificationChannel;

    .line 222
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_voip:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "voip_v1"

    .line 223
    invoke-direct {v2, v4, v3, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 224
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_voip:I

    new-array v4, v15, [Ljava/lang/Object;

    .line 225
    sget v5, Lcom/truecaller/notificationchannels/R$string;->voip_text:I

    .line 226
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    .line 227
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2, v11}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2, v10, v10}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 230
    invoke-virtual {v2, v13}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 231
    invoke-virtual {v2, v13}, Landroid/app/NotificationChannel;->enableLights(Z)V

    goto/16 :goto_1

    .line 232
    :pswitch_45
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 233
    iget-object v2, v1, Le/a/r1;->k:Le/a/h4/q/d;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->U(Le/a/r1;Le/a/h4/q/d;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 234
    new-instance v2, Landroid/app/NotificationChannel;

    .line 235
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_blocked_calls:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blocked_calls"

    const/4 v5, 0x2

    .line 236
    invoke-direct {v2, v4, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 237
    sget v3, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_blocked_calls:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v2, v11}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 239
    :pswitch_46
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 240
    iget-object v2, v1, Le/a/r1;->k:Le/a/h4/q/d;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->U(Le/a/r1;Le/a/h4/q/d;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 241
    invoke-virtual {v2, v1}, Le/a/h4/q/d;->a(Landroid/content/Context;)I

    move-result v2

    .line 242
    new-instance v3, Landroid/app/NotificationChannel;

    .line 243
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_missed_calls_reminder:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "missed_calls_reminder"

    .line 244
    invoke-direct {v3, v5, v4, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 245
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_missed_calls_reminder:I

    invoke-static {v1, v4, v3, v15, v2}, Le/d/c/a/a;->m0(Landroid/content/Context;ILandroid/app/NotificationChannel;ZI)V

    .line 246
    invoke-virtual {v3, v11}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 247
    :pswitch_47
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 248
    iget-object v2, v1, Le/a/r1;->k:Le/a/h4/q/d;

    invoke-static {v1, v2, v14}, Le/d/c/a/a;->U(Le/a/r1;Le/a/h4/q/d;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    .line 249
    invoke-virtual {v2, v1}, Le/a/h4/q/d;->a(Landroid/content/Context;)I

    move-result v2

    .line 250
    new-instance v3, Landroid/app/NotificationChannel;

    .line 251
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_missed_calls:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "missed_calls"

    const/4 v6, 0x2

    .line 252
    invoke-direct {v3, v5, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 253
    sget v4, Lcom/truecaller/notificationchannels/R$string;->notification_channels_channel_description_missed_calls:I

    invoke-static {v1, v4, v3, v15, v2}, Le/d/c/a/a;->m0(Landroid/content/Context;ILandroid/app/NotificationChannel;ZI)V

    .line 254
    invoke-virtual {v3, v11}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 255
    :pswitch_48
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 256
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 257
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v2, Ln3/k/a/x;

    invoke-direct {v2, v1}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 259
    :pswitch_49
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 260
    new-instance v2, Le/a/i4/f;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->rc()Le/a/h4/o;

    move-result-object v4

    iget-object v1, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a;

    invoke-direct {v2, v3, v4, v1}, Le/a/i4/f;-><init>(Landroid/content/Context;Le/a/h4/n;Le/a/q2/a;)V

    goto/16 :goto_1

    .line 261
    :pswitch_4a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 262
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 263
    invoke-static {}, Le/a/p5/p;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    new-instance v2, Le/a/a/y0/j0;

    invoke-direct {v2, v1}, Le/a/a/y0/j0;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 265
    :cond_2
    new-instance v1, Le/a/i4/k;

    invoke-direct {v1}, Le/a/i4/k;-><init>()V

    goto/16 :goto_5

    .line 266
    :pswitch_4b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 267
    new-instance v2, Le/a/a/y0/x;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->p0:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/i4/q;

    iget-object v5, v1, Le/a/r1;->y3:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/i4/e;

    invoke-virtual {v1}, Le/a/r1;->ha()Le/a/o5/g0;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/y0/x;-><init>(Landroid/content/Context;Le/a/i4/q;Le/a/i4/e;Le/a/o5/f0;)V

    goto/16 :goto_1

    .line 268
    :pswitch_4c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 269
    new-instance v9, Le/a/a/k/a/d0;

    invoke-virtual {v1}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v2}, Le/a/c/p/a;->b2(Le/a/a/g/i;)Le/a/a/g/g;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/a/i0;

    iget-object v2, v1, Le/a/r1;->S8:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/a/y0/u;

    iget-object v2, v1, Le/a/r1;->w3:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v7

    iget-object v1, v1, Le/a/r1;->o3:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/a/k/a/d0;-><init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/i0;Le/a/a/y0/u;Lo3/a;Lo3/a;)V

    goto/16 :goto_3

    .line 270
    :pswitch_4d
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 271
    iget-object v2, v1, Le/a/r1;->U8:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/c0;

    iget-object v1, v1, Le/a/r1;->V8:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/j;

    .line 272
    const-class v3, Le/a/a/k/a/c0;

    invoke-interface {v1, v3, v2}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 273
    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 274
    :pswitch_4e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 275
    iget-object v2, v1, Le/a/r1;->g:Le/a/b0/o/c;

    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/o/a;

    .line 276
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tc.settings"

    .line 277
    invoke-virtual {v3, v2, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 278
    new-instance v3, Le/a/a/j0;

    invoke-direct {v3, v2, v1}, Le/a/a/j0;-><init>(Landroid/content/SharedPreferences;Le/a/b0/o/a;)V

    goto/16 :goto_4

    .line 279
    :pswitch_4f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 280
    iget-object v2, v1, Le/a/r1;->j:Le/a/a/g/i;

    .line 281
    new-instance v3, Le/a/a/g/n;

    invoke-virtual {v1}, Le/a/r1;->Z()Landroid/content/ContentResolver;

    move-result-object v17

    .line 282
    iget-object v4, v1, Le/a/r1;->j:Le/a/a/g/i;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v5

    .line 283
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "context.cacheDir"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v5, v1, Le/a/r1;->j:Le/a/a/g/i;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v6

    .line 286
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v7, "mounted"

    invoke-static {v5, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "mounted_ro"

    invoke-static {v5, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v15

    if-eqz v5, :cond_3

    move v13, v15

    :cond_3
    if-eqz v13, :cond_4

    .line 288
    invoke-virtual {v6, v10}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v10

    :cond_4
    move-object/from16 v19, v10

    .line 289
    iget-object v5, v1, Le/a/r1;->o0:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Le/a/a/i0;

    iget-object v5, v1, Le/a/r1;->j:Le/a/a/g/i;

    invoke-static {v5}, Le/a/c/p/a;->b2(Le/a/a/g/i;)Le/a/a/g/g;

    move-result-object v21

    iget-object v5, v1, Le/a/r1;->q7:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v22

    iget-object v5, v1, Le/a/r1;->o3:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v23

    iget-object v5, v1, Le/a/r1;->W8:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v24

    iget-object v5, v1, Le/a/r1;->V4:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v25

    iget-object v5, v1, Le/a/r1;->X8:Ljavax/inject/Provider;

    move-object/from16 v26, v5

    iget-object v5, v1, Le/a/r1;->Y8:Ljavax/inject/Provider;

    move-object/from16 v27, v5

    .line 290
    iget-object v5, v1, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    .line 291
    new-instance v6, Le/a/a/g/c0;

    move-object/from16 v28, v6

    invoke-direct {v6, v5}, Le/a/a/g/c0;-><init>(Lo3/a;)V

    .line 292
    invoke-virtual {v1}, Le/a/r1;->Z9()Le/a/a/r0/b;

    move-result-object v29

    invoke-virtual {v1}, Le/a/r1;->uc()Le/a/o5/v1;

    move-result-object v30

    new-instance v5, Le/a/p5/k;

    move-object/from16 v31, v5

    invoke-direct {v5}, Le/a/p5/k;-><init>()V

    iget-object v5, v1, Le/a/r1;->t3:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v32

    iget-object v5, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v33

    iget-object v5, v1, Le/a/r1;->a9:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v34

    iget-object v5, v1, Le/a/r1;->f9:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v35

    iget-object v5, v1, Le/a/r1;->g9:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v36

    iget-object v5, v1, Le/a/r1;->e4:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v37, v5

    check-cast v37, Le/a/a/g/p;

    iget-object v5, v1, Le/a/r1;->h9:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v38

    iget-object v5, v1, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v39

    iget-object v5, v1, Le/a/r1;->r1:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v40

    iget-object v5, v1, Le/a/r1;->W4:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v41

    iget-object v5, v1, Le/a/r1;->m9:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v42

    iget-object v5, v1, Le/a/r1;->n9:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v43

    invoke-virtual {v1}, Le/a/r1;->ca()Le/a/o5/c0;

    move-result-object v44

    iget-object v5, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v45

    invoke-virtual {v1}, Le/a/r1;->gb()Le/a/q2/o0;

    move-result-object v46

    iget-object v5, v1, Le/a/r1;->p9:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v47

    new-instance v5, Le/a/p5/j;

    move-object/from16 v48, v5

    invoke-direct {v5}, Le/a/p5/j;-><init>()V

    invoke-virtual {v1}, Le/a/r1;->Va()Le/a/a/p0/e;

    move-result-object v49

    iget-object v5, v1, Le/a/r1;->x9:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v50, v5

    check-cast v50, Le/a/c/i/h/a;

    iget-object v5, v1, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v51, v5

    check-cast v51, Le/a/c/c0/o;

    iget-object v5, v1, Le/a/r1;->r3:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    iget-object v5, v1, Le/a/r1;->Y6:Ljavax/inject/Provider;

    invoke-static {v5}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v53

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v16 .. v53}, Le/a/a/g/n;-><init>(Landroid/content/ContentResolver;Ljava/io/File;[Ljava/io/File;Le/a/a/i0;Le/a/a/g/g;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/a/g/b0;Le/a/a/r0/a;Le/a/o5/u1;Le/a/p5/m0;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/a/g/p;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/o5/b0;Lo3/a;Le/a/q2/i0;Lo3/a;Le/a/p5/j;Le/a/a/p0/e;Le/a/c/i/h/a;Le/a/c/c0/o;ZLo3/a;)V

    .line 293
    iget-object v1, v1, Le/a/r1;->y9:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/j;

    .line 294
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "storage"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "storageThread"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    const-class v2, Le/a/a/g/m;

    invoke-interface {v1, v2, v3}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    const-string v2, "storageThread.bind(Messa\u2026age::class.java, storage)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 296
    :pswitch_50
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 297
    new-instance v2, Le/a/a/p0/m/a;

    iget-object v3, v1, Le/a/r1;->l3:Ljavax/inject/Provider;

    invoke-static {v3}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v4, v1, Le/a/r1;->A9:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/g/y/k;

    iget-object v5, v1, Le/a/r1;->i3:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/c0/o;

    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v1}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Le/a/a/p0/m/a;-><init>(Lo3/a;Le/a/c/g/y/k;Le/a/c/c0/o;Ls1/w/f;)V

    goto/16 :goto_1

    .line 298
    :pswitch_51
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 299
    new-instance v2, Le/a/a/p0/m/c;

    iget-object v1, v1, Le/a/r1;->B9:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v2, v1}, Le/a/a/p0/m/c;-><init>(Lo3/a;)V

    goto/16 :goto_1

    .line 300
    :pswitch_52
    new-instance v1, Le/a/r5/u;

    invoke-direct {v1}, Le/a/r5/u;-><init>()V

    goto/16 :goto_5

    .line 301
    :pswitch_53
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 302
    iget-object v3, v1, Le/a/r1;->i:Le/a/t3/a;

    iget-object v4, v1, Le/a/r1;->n0:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/r5/u;

    iget-object v5, v1, Le/a/r1;->C9:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/p0/m/c;

    .line 303
    new-instance v6, Le/a/f/z/p;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v1, Le/a/r1;->s2:Ljavax/inject/Provider;

    invoke-static {v8}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Le/a/f/z/p;-><init>(Landroid/content/Context;Lo3/a;)V

    .line 304
    new-instance v7, Le/a/f/z/u;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v1, Le/a/r1;->s2:Ljavax/inject/Provider;

    invoke-static {v9}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Le/a/f/z/u;-><init>(Landroid/content/Context;Lo3/a;)V

    .line 305
    iget-object v8, v1, Le/a/r1;->D9:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/a/y;

    iget-object v9, v1, Le/a/r1;->E9:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/g/u;

    .line 306
    new-instance v11, Le/a/a/h1/m;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/b0/o/a;

    iget-object v1, v1, Le/a/r1;->F9:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    invoke-direct {v11, v12, v13, v1}, Le/a/a/h1/m;-><init>(Landroid/content/Context;Le/a/b0/o/a;Lo3/a;)V

    .line 307
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "whoViewedMeFeatureObserver"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "categorizerFeatureObserver"

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inCallUIFeatureObserver"

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "inCallUIOptInFeatureObserver"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "indianShortcodesRemoteFeatureObserver"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "promotionalCategoryFeatureObserver"

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "urgentMessagesFeatureObserver"

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 309
    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "featureWhoViewedMe"

    .line 310
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "featureSmsCategorizer"

    .line 312
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v6}, Le/a/f/z/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v7}, Le/a/f/z/u;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v8}, Le/a/a/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "featurePromotionalMessageCategory"

    .line 320
    invoke-interface {v1, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-static {v11, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "featureUrgentMessages"

    .line 322
    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v2, Le/a/u3/f;

    invoke-direct {v2, v1, v10}, Le/a/u3/f;-><init>(Ljava/util/Map;Ls1/z/c/f;)V

    goto/16 :goto_1

    .line 324
    :pswitch_54
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 325
    invoke-virtual {v1}, Le/a/r1;->Bc()Le/a/t3/b;

    move-result-object v3

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v5

    invoke-virtual {v1}, Le/a/r1;->K0()Le/a/s4/a;

    move-result-object v6

    iget-object v1, v1, Le/a/r1;->G9:Ljavax/inject/Provider;

    const-string v7, "environment"

    .line 326
    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "deviceInfoUtil"

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "remoteConfig"

    invoke-static {v6, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v3}, Le/a/t3/b;->a()Z

    move-result v8

    const-string v9, "context.getSharedPrefere\u2026s\", Context.MODE_PRIVATE)"

    const-string v10, "features"

    const-string v11, "valueProvider"

    if-nez v8, :cond_6

    invoke-virtual {v5}, Le/a/p5/h;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 328
    :cond_5
    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "featuresObserver"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    new-instance v2, Le/a/u3/g;

    .line 330
    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    new-instance v5, Le/a/u3/e;

    invoke-virtual {v4, v10, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Le/a/u3/e;-><init>(Landroid/content/SharedPreferences;)V

    .line 332
    invoke-virtual {v5, v4}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    .line 333
    invoke-direct {v2, v3, v5, v6, v1}, Le/a/u3/g;-><init>(Le/a/u3/a;Le/a/u3/d;Le/a/s4/a;Ljavax/inject/Provider;)V

    goto/16 :goto_1

    .line 334
    :cond_6
    :goto_2
    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    new-instance v2, Le/a/u3/n;

    .line 336
    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    new-instance v5, Le/a/u3/e;

    invoke-virtual {v4, v10, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Le/a/u3/e;-><init>(Landroid/content/SharedPreferences;)V

    .line 338
    invoke-virtual {v5, v4}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    .line 339
    invoke-direct {v2, v3, v5, v6, v1}, Le/a/u3/n;-><init>(Le/a/u3/a;Le/a/u3/d;Le/a/s4/a;Ljavax/inject/Provider;)V

    goto/16 :goto_1

    .line 340
    :pswitch_55
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 341
    iget-object v2, v1, Le/a/r1;->d:Le/a/b0/g/a$a;

    iget-object v1, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 342
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->S()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 344
    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 345
    :pswitch_56
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 346
    new-instance v9, Le/a/b0/e/g;

    iget-object v2, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v1, Le/a/r1;->R:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v4

    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v5

    iget-object v6, v1, Le/a/r1;->H9:Ljavax/inject/Provider;

    iget-object v7, v1, Le/a/r1;->I9:Ljavax/inject/Provider;

    iget-object v8, v1, Le/a/r1;->J9:Ljavax/inject/Provider;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Le/a/b0/e/g;-><init>(Lo3/a;Lo3/a;Lo3/a;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    :goto_3
    move-object v1, v9

    goto/16 :goto_5

    .line 347
    :pswitch_57
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 348
    new-instance v2, Le/a/f4/b/c;

    iget-object v3, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/e/r/a;

    iget-object v1, v1, Le/a/r1;->n1:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/e/f;

    invoke-direct {v2, v3, v1}, Le/a/f4/b/c;-><init>(Le/a/b0/e/r/a;Le/a/b0/e/f;)V

    goto/16 :goto_1

    .line 349
    :pswitch_58
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 350
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 351
    invoke-static {v1, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "network-advanced"

    .line 352
    invoke-virtual {v1, v2, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 353
    new-instance v3, Le/a/f4/b/i/b;

    const-string v4, "sharedPreferences"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Le/a/f4/b/i/b;-><init>(Landroid/content/SharedPreferences;)V

    .line 354
    invoke-virtual {v3, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 355
    :pswitch_59
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 356
    iget-object v2, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/b0/e/l;

    iget-object v2, v1, Le/a/r1;->l0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/f4/b/i/a;

    iget-object v2, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/b0/e/r/a;

    iget-object v2, v1, Le/a/r1;->c0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accountManager"

    .line 357
    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "networkAdvancedSettings"

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    new-instance v2, Le/a/f4/b/g/c;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v1, "context.filesDir"

    invoke-static {v10, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Le/a/f4/b/g/c;-><init>(Le/a/b0/e/l;Le/a/f4/b/i/a;Le/a/b0/e/r/a;Landroid/telephony/TelephonyManager;Ljava/io/File;)V

    goto/16 :goto_1

    .line 359
    :pswitch_5a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 360
    new-instance v2, Le/a/b0/e/i;

    iget-object v1, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/e/r/a;

    new-instance v3, Le/a/n2/a/b;

    invoke-direct {v3}, Le/a/n2/a/b;-><init>()V

    new-instance v4, Le/a/p5/d;

    invoke-direct {v4}, Le/a/p5/d;-><init>()V

    invoke-direct {v2, v1, v3, v4}, Le/a/b0/e/i;-><init>(Le/a/b0/e/r/a;Le/a/n2/a/a;Le/a/p5/c;)V

    goto/16 :goto_1

    .line 361
    :pswitch_5b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 362
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v2, Le/a/h1;

    invoke-direct {v2, v1}, Le/a/h1;-><init>(Le/a/r1;)V

    goto/16 :goto_1

    .line 364
    :pswitch_5c
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 365
    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 366
    invoke-static {v1, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    new-instance v2, Le/a/q2/d1/e;

    invoke-static {v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    const-string v3, "FirebaseAnalytics.getInstance(context)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Le/a/q2/d1/e;-><init>(Lcom/google/firebase/analytics/FirebaseAnalytics;)V

    goto/16 :goto_1

    .line 368
    :pswitch_5d
    new-instance v1, Le/a/r2/n;

    invoke-direct {v1}, Le/a/r2/n;-><init>()V

    .line 369
    new-instance v2, Le/a/q2/d;

    invoke-direct {v2, v10}, Le/a/q2/d;-><init>(Le/a/q2/b;)V

    .line 370
    new-instance v3, Le/a/q2/c;

    invoke-direct {v3, v2, v1}, Le/a/q2/c;-><init>(Le/a/r2/b0;Le/a/r2/n;)V

    const-string v1, "AnalyticsActorsBuilder().build()"

    .line 371
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 372
    :pswitch_5e
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 373
    iget-object v2, v1, Le/a/r1;->h:Le/a/w0;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 374
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 376
    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 377
    :pswitch_5f
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 378
    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 379
    invoke-static {v1, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    const-class v2, Lcom/truecaller/analytics/storage/AnalyticsDatabase;

    const-string v3, "analytics.db"

    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v2

    .line 381
    new-instance v3, Le/a/q2/b1/f/a;

    invoke-direct {v3, v1}, Le/a/q2/b1/f/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ln3/c0/q$a;->a(Ln3/c0/q$b;)Ln3/c0/q$a;

    .line 382
    invoke-virtual {v2}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 383
    invoke-virtual {v2}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v1

    const-string v2, "Room.databaseBuilder(con\u2026\n                .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/analytics/storage/AnalyticsDatabase;

    goto/16 :goto_5

    .line 384
    :pswitch_60
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 385
    iget-object v1, v1, Le/a/r1;->a0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/analytics/storage/AnalyticsDatabase;

    const-string v2, "database"

    .line 386
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1}, Lcom/truecaller/analytics/storage/AnalyticsDatabase;->a()Le/a/q2/b1/d;

    move-result-object v1

    .line 388
    invoke-static {v1, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 389
    :pswitch_61
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 390
    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 391
    invoke-static {v1, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    new-instance v2, Le/a/q2/b1/b;

    const-string v3, "analytics"

    invoke-virtual {v1, v3, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Le/a/q2/b1/b;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 393
    :pswitch_62
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 394
    iget-object v2, v1, Le/a/r1;->g:Le/a/b0/o/c;

    iget-object v1, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v1}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v1

    .line 395
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v2, Le/a/b0/o/b;

    invoke-direct {v2, v1}, Le/a/b0/o/b;-><init>(Landroid/content/Context;)V

    .line 397
    invoke-virtual {v2, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 398
    :pswitch_63
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 399
    invoke-virtual {v1}, Le/a/r1;->Z8()Le/a/g0/b;

    move-result-object v1

    goto/16 :goto_5

    .line 400
    :pswitch_64
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 401
    invoke-virtual {v1}, Le/a/r1;->pc()Le/a/g0/e;

    move-result-object v1

    goto/16 :goto_5

    .line 402
    :pswitch_65
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 403
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/a/n/g0;->l0(Landroid/content/Context;)Le/a/b0/e/r/a;

    move-result-object v1

    goto/16 :goto_5

    .line 404
    :pswitch_66
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 405
    new-instance v11, Le/a/b0/e/n;

    iget-object v2, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/b0/e/r/a;

    new-instance v4, Le/a/p5/d;

    invoke-direct {v4}, Le/a/p5/d;-><init>()V

    .line 406
    new-instance v5, Le/a/b0/e/k;

    .line 407
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    .line 408
    sget v6, Lcom/truecaller/common/account/R$string;->authenticator_account_name:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 409
    invoke-static {v14, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    .line 411
    sget v6, Lcom/truecaller/common/account/R$string;->authenticator_account_type:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 412
    invoke-static {v15, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 413
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    const-string v7, "account.v2.bak"

    .line 414
    invoke-virtual {v2, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 415
    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 416
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v7

    const-string v8, "account"

    .line 417
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/accounts/AccountManager;

    .line 418
    invoke-static {v7, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 419
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v9

    .line 420
    new-instance v10, Landroid/app/backup/BackupManager;

    invoke-direct {v10, v9}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 421
    iget-object v9, v1, Le/a/r1;->S:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Le/a/b0/e/r/a;

    move-object v13, v5

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    invoke-direct/range {v13 .. v19}, Le/a/b0/e/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/accounts/AccountManager;Landroid/app/backup/BackupManager;Le/a/b0/e/r/a;)V

    .line 422
    iget-object v2, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/q2/a;

    .line 423
    new-instance v9, Le/a/b0/e/q/a;

    .line 424
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    .line 425
    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 426
    invoke-static {v2, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 427
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v8

    .line 428
    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 429
    invoke-static {v6, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 430
    invoke-direct {v9, v2, v6}, Le/a/b0/e/q/a;-><init>(Landroid/accounts/AccountManager;Ljava/lang/String;)V

    .line 431
    new-instance v8, Le/a/n2/a/b;

    invoke-direct {v8}, Le/a/n2/a/b;-><init>()V

    iget-object v2, v1, Le/a/r1;->U:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v10

    iget-object v1, v1, Le/a/r1;->V:Ljavax/inject/Provider;

    invoke-static {v1}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v1

    move-object v2, v11

    move-object v6, v7

    move-object v7, v9

    move-object v9, v10

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Le/a/b0/e/n;-><init>(Le/a/b0/e/r/a;Le/a/p5/c;Le/a/b0/e/k;Le/a/q2/a;Le/a/b0/e/q/a;Le/a/n2/a/a;Lo3/a;Lo3/a;)V

    move-object v1, v11

    goto/16 :goto_5

    .line 432
    :pswitch_67
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 433
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v1

    .line 434
    invoke-static {v1, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "buildinfo"

    .line 435
    invoke-virtual {v1, v2, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 436
    new-instance v3, Le/a/c3/e;

    const-string v4, "prefs"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Le/a/c3/e;-><init>(Landroid/content/SharedPreferences;)V

    .line 437
    invoke-virtual {v3, v1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    :goto_4
    move-object v1, v3

    goto/16 :goto_5

    .line 438
    :pswitch_68
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 439
    invoke-virtual {v1}, Le/a/r1;->x9()Le/a/c3/b;

    move-result-object v1

    goto/16 :goto_5

    .line 440
    :pswitch_69
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 441
    new-instance v2, Le/a/q2/i;

    iget-object v3, v1, Le/a/r1;->d:Le/a/b0/g/a$a;

    invoke-static {v3}, Le/a/n/g0;->h(Le/a/b0/g/a$a;)Ljava/lang/String;

    move-result-object v16

    iget-object v3, v1, Le/a/r1;->d:Le/a/b0/g/a$a;

    invoke-static {v3}, Le/a/n/g0;->j(Le/a/b0/g/a$a;)Ljava/lang/String;

    move-result-object v17

    iget-object v3, v1, Le/a/r1;->d:Le/a/b0/g/a$a;

    .line 442
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v3

    invoke-virtual {v3}, Le/a/b0/g/a;->G()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-static {v3, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 445
    iget-object v4, v1, Le/a/r1;->R:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v19

    iget-object v4, v1, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v20

    iget-object v4, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-static {v4}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v21

    move-object v15, v2

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v21}, Le/a/q2/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo3/a;Lo3/a;Lo3/a;)V

    .line 446
    iget-object v3, v1, Le/a/r1;->Z:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Le/a/q2/b1/a;

    iget-object v3, v1, Le/a/r1;->b0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Le/a/q2/b1/d;

    .line 447
    iget-object v3, v1, Le/a/r1;->Z:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/q2/b1/a;

    iget-object v4, v1, Le/a/r1;->b0:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q2/b1/d;

    .line 448
    new-instance v5, Le/a/q2/d0;

    invoke-direct {v5, v3, v4}, Le/a/q2/d0;-><init>(Le/a/q2/b1/a;Le/a/q2/b1/d;)V

    .line 449
    invoke-virtual {v1}, Le/a/r1;->pb()Le/a/p5/w;

    move-result-object v20

    .line 450
    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    .line 451
    iget-object v4, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v4}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v4

    .line 452
    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "location"

    .line 453
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Landroid/location/LocationManager;

    .line 454
    new-instance v7, Le/a/q2/h0;

    invoke-direct {v7, v3, v4}, Le/a/q2/h0;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 455
    iget-object v3, v1, Le/a/r1;->Z:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/q2/b1/a;

    iget-object v4, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v4}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v4

    .line 456
    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    new-instance v6, Le/a/q2/d1/c;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "context.contentResolver"

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v3, v4}, Le/a/q2/d1/c;-><init>(Le/a/q2/b1/a;Landroid/content/ContentResolver;)V

    .line 458
    iget-object v1, v1, Le/a/r1;->c0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Landroid/telephony/TelephonyManager;

    .line 459
    new-instance v1, Le/a/q2/b0;

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v19, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v6

    invoke-direct/range {v15 .. v23}, Le/a/q2/b0;-><init>(Le/a/q2/i;Le/a/q2/b1/a;Le/a/q2/b1/d;Le/a/q2/c0;Le/a/p5/u;Le/a/q2/g0;Le/a/q2/d1/c;Landroid/telephony/TelephonyManager;)V

    goto :goto_5

    .line 460
    :pswitch_6a
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 461
    iget-object v2, v1, Le/a/r1;->e0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a0;

    .line 462
    iget-object v3, v1, Le/a/r1;->e:Lo3/b/a/c/d/a;

    invoke-static {v3}, Le/q/f/a/d/a;->s2(Lo3/b/a/c/d/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, v1, Le/a/r1;->f0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/l;

    .line 463
    invoke-static {v3, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actors"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    const-class v4, Lcom/truecaller/analytics/EventsTrackerService;

    const/16 v5, 0x9

    invoke-interface {v1, v3, v4, v5}, Le/a/r2/l;->a(Landroid/content/Context;Ljava/lang/Class;I)Le/a/r2/j;

    move-result-object v1

    const-string v3, "actors.createThread(cont\u2026::class.java, actorJobId)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "tracker"

    .line 465
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    const-class v3, Le/a/q2/a0;

    invoke-interface {v1, v3, v2}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    const-string v2, "thread.bind(EventsTracker::class.java, tracker)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 467
    :pswitch_6b
    iget-object v1, v0, Le/a/r1$q;->a:Le/a/r1;

    .line 468
    new-instance v2, Le/a/q2/f;

    iget-object v3, v1, Le/a/r1;->g0:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/f;

    iget-object v4, v1, Le/a/r1;->h0:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q2/d1/d;

    invoke-virtual {v1}, Le/a/r1;->ga()Le/a/p5/h;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Le/a/q2/f;-><init>(Le/a/r2/f;Le/a/q2/d1/d;Le/a/p5/g;)V

    goto/16 :goto_1

    :goto_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
    .end packed-switch

    :array_0
    .array-data 8
        0x1f4
        0x64
        0x1f4
    .end array-data

    :array_1
    .array-data 8
        0x1f4
        0x64
        0x1f4
    .end array-data
.end method
