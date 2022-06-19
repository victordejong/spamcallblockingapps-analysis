.class public Le/a/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/s/a/b;


# instance fields
.field public final synthetic a:Le/a/r1;


# direct methods
.method public constructor <init>(Le/a/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/j1;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/j1;->a:Le/a/r1;

    .line 2
    iget-object v1, v1, Le/a/r1;->P:Le/a/r1;

    .line 3
    new-instance v9, Lcom/truecaller/backup/worker/BackupWorker;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/u3/g;

    iget-object v2, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/q2/a;

    iget-object v7, v1, Le/a/r1;->N9:Ljavax/inject/Provider;

    .line 4
    new-instance v8, Le/a/n/l2/c;

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v11

    iget-object v2, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v12

    iget-object v2, v1, Le/a/r1;->Y9:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Le/a/n/m;

    iget-object v2, v1, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Le/a/u3/g;

    .line 5
    invoke-virtual {v1}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    .line 6
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this$backupSupport"

    .line 7
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.truecaller.backup.BackupSupport"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Le/a/n/e0;

    .line 9
    invoke-interface {v2}, Le/a/n/e0;->e()Le/a/n/d2;

    move-result-object v15

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 10
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iget-object v3, v1, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Le/a/b0/o/a;

    new-instance v17, Le/a/p5/d;

    invoke-direct/range {v17 .. v17}, Le/a/p5/d;-><init>()V

    .line 12
    sget-object v3, Lcom/truecaller/common/network/util/KnownEndpoints;->BACKUP:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v4, Le/a/n/u;

    invoke-static {v3, v4}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/n/u;

    .line 13
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v1, v1, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Le/a/q2/a;

    const-wide/16 v20, 0x1388

    move-object v10, v8

    move-object/from16 v18, v3

    invoke-direct/range {v10 .. v21}, Le/a/n/l2/c;-><init>(Ls1/w/f;Ls1/w/f;Le/a/n/m;Le/a/u3/g;Le/a/n/d2;Le/a/b0/o/a;Le/a/p5/c;Le/a/n/u;Le/a/q2/a;J)V

    move-object v2, v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 15
    invoke-direct/range {v2 .. v8}, Lcom/truecaller/backup/worker/BackupWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/u3/g;Le/a/q2/a;Ljavax/inject/Provider;Le/a/n/l2/a;)V

    return-object v9
.end method
