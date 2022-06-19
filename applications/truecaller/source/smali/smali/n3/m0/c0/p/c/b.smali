.class public Ln3/m0/c0/p/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m0/c0/e;


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/job/JobScheduler;

.field public final c:Ln3/m0/c0/l;

.field public final d:Ln3/m0/c0/p/c/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobScheduler"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/p/c/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln3/m0/c0/l;)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Ln3/m0/c0/p/c/a;

    invoke-direct {v1, p1}, Ln3/m0/c0/p/c/a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ln3/m0/c0/p/c/b;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Ln3/m0/c0/p/c/b;->c:Ln3/m0/c0/l;

    .line 5
    iput-object v0, p0, Ln3/m0/c0/p/c/b;->b:Landroid/app/job/JobScheduler;

    .line 6
    iput-object v1, p0, Ln3/m0/c0/p/c/b;->d:Ln3/m0/c0/p/c/a;

    return-void
.end method

.method public static b(Landroid/app/job/JobScheduler;I)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/p/c/b;->e:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "Exception while trying to cancel job (%d)"

    .line 5
    invoke-static {v2, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    aput-object p0, v2, v5

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ln3/m0/c0/p/c/b;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 4
    invoke-static {v0}, Ln3/m0/c0/p/c/b;->g(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v1

    sget-object v2, Ln3/m0/c0/p/c/b;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v1, v2, p1, v3}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    .line 6
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static g(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 1
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/m0/c0/p/c/b;->a:Landroid/content/Context;

    iget-object v1, p0, Ln3/m0/c0/p/c/b;->b:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Ln3/m0/c0/p/c/b;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    iget-object v2, p0, Ln3/m0/c0/p/c/b;->b:Landroid/app/job/JobScheduler;

    invoke-static {v2, v1}, Ln3/m0/c0/p/c/b;->b(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/m0/c0/p/c/b;->c:Ln3/m0/c0/l;

    .line 6
    iget-object v0, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 7
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()Ln3/m0/c0/s/h;

    move-result-object v0

    .line 8
    check-cast v0, Ln3/m0/c0/s/i;

    invoke-virtual {v0, p1}, Ln3/m0/c0/s/i;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public varargs e([Ln3/m0/c0/s/p;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ln3/m0/c0/p/c/b;->c:Ln3/m0/c0/l;

    .line 2
    iget-object v0, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    new-instance v1, Ln3/m0/c0/t/f;

    invoke-direct {v1, v0}, Ln3/m0/c0/t/f;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 4
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, p1, v4

    .line 5
    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v6

    iget-object v7, v5, Ln3/m0/c0/s/p;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v6, Ln3/m0/c0/s/t;

    :try_start_1
    invoke-virtual {v6, v7}, Ln3/m0/c0/s/t;->k(Ljava/lang/String;)Ln3/m0/c0/s/p;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "Skipping scheduling "

    if-nez v6, :cond_0

    .line 7
    :try_start_2
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v6

    sget-object v8, Ln3/m0/c0/p/c/b;->e:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it\'s no longer in the DB"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-virtual {v6, v8, v5, v7}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V

    goto/16 :goto_3

    .line 9
    :cond_0
    iget-object v6, v6, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    sget-object v8, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    if-eq v6, v8, :cond_1

    .line 10
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v6

    sget-object v8, Ln3/m0/c0/p/c/b;->e:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because it is no longer enqueued"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Throwable;

    invoke-virtual {v6, v8, v5, v7}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V

    goto/16 :goto_3

    .line 12
    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()Ln3/m0/c0/s/h;

    move-result-object v6

    iget-object v7, v5, Ln3/m0/c0/s/p;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    check-cast v6, Ln3/m0/c0/s/i;

    :try_start_3
    invoke-virtual {v6, v7}, Ln3/m0/c0/s/i;->a(Ljava/lang/String;)Ln3/m0/c0/s/g;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 14
    iget v7, v6, Ln3/m0/c0/s/g;->b:I

    goto :goto_1

    :cond_2
    iget-object v7, p0, Ln3/m0/c0/p/c/b;->c:Ln3/m0/c0/l;

    .line 15
    iget-object v7, v7, Ln3/m0/c0/l;->b:Ln3/m0/c;

    .line 16
    iget v8, v7, Ln3/m0/c;->g:I

    .line 17
    iget v7, v7, Ln3/m0/c;->h:I

    .line 18
    invoke-virtual {v1, v8, v7}, Ln3/m0/c0/t/f;->b(II)I

    move-result v7

    :goto_1
    if-nez v6, :cond_3

    .line 19
    new-instance v6, Ln3/m0/c0/s/g;

    iget-object v8, v5, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Ln3/m0/c0/s/g;-><init>(Ljava/lang/String;I)V

    .line 20
    iget-object v8, p0, Ln3/m0/c0/p/c/b;->c:Ln3/m0/c0/l;

    .line 21
    iget-object v8, v8, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 22
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->c()Ln3/m0/c0/s/h;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    check-cast v8, Ln3/m0/c0/s/i;

    :try_start_4
    invoke-virtual {v8, v6}, Ln3/m0/c0/s/i;->b(Ln3/m0/c0/s/g;)V

    .line 24
    :cond_3
    invoke-virtual {p0, v5, v7}, Ln3/m0/c0/p/c/b;->h(Ln3/m0/c0/s/p;I)V

    .line 25
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-ne v6, v8, :cond_6

    .line 26
    iget-object v6, p0, Ln3/m0/c0/p/c/b;->a:Landroid/content/Context;

    iget-object v8, p0, Ln3/m0/c0/p/c/b;->b:Landroid/app/job/JobScheduler;

    iget-object v9, v5, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Ln3/m0/c0/p/c/b;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 27
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 28
    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 30
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    .line 31
    :cond_5
    iget-object v6, p0, Ln3/m0/c0/p/c/b;->c:Ln3/m0/c0/l;

    .line 32
    iget-object v6, v6, Ln3/m0/c0/l;->b:Ln3/m0/c;

    .line 33
    iget v7, v6, Ln3/m0/c;->g:I

    .line 34
    iget v6, v6, Ln3/m0/c;->h:I

    .line 35
    invoke-virtual {v1, v7, v6}, Ln3/m0/c0/t/f;->b(II)I

    move-result v6

    .line 36
    :goto_2
    invoke-virtual {p0, v5, v6}, Ln3/m0/c0/p/c/b;->h(Ln3/m0/c0/s/p;I)V

    .line 37
    :cond_6
    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 38
    :goto_3
    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 39
    throw p1

    :cond_7
    return-void
.end method

.method public h(Ln3/m0/c0/s/p;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, v1, Ln3/m0/c0/p/c/b;->d:Ln3/m0/c0/p/c/a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v4, v2, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 4
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    .line 5
    iget-object v6, v2, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    const-string v7, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v5, v7, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Ln3/m0/c0/s/p;->c()Z

    move-result v6

    const-string v7, "EXTRA_IS_PERIODIC"

    invoke-virtual {v5, v7, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    new-instance v6, Landroid/app/job/JobInfo$Builder;

    iget-object v0, v0, Ln3/m0/c0/p/c/a;->a:Landroid/content/ComponentName;

    move/from16 v7, p2

    invoke-direct {v6, v7, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 8
    iget-boolean v0, v4, Ln3/m0/d;->b:Z

    .line 9
    invoke-virtual {v6, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 10
    iget-boolean v6, v4, Ln3/m0/d;->c:Z

    .line 11
    invoke-virtual {v0, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 13
    iget-object v5, v4, Ln3/m0/d;->a:Ln3/m0/q;

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/16 v10, 0x1e

    const/16 v11, 0x1a

    const/16 v12, 0x18

    const/4 v13, 0x0

    if-lt v3, v10, :cond_0

    .line 14
    sget-object v10, Ln3/m0/q;->f:Ln3/m0/q;

    if-ne v5, v10, :cond_0

    .line 15
    new-instance v5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v10, 0x19

    .line 16
    invoke-virtual {v5, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    .line 17
    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    .line 18
    invoke-virtual {v0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_3

    .line 19
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-eqz v10, :cond_6

    if-eq v10, v9, :cond_5

    if-eq v10, v8, :cond_4

    if-eq v10, v6, :cond_2

    const/4 v14, 0x4

    if-eq v10, v14, :cond_1

    goto :goto_0

    :cond_1
    if-lt v3, v11, :cond_3

    goto :goto_2

    :cond_2
    if-lt v3, v12, :cond_3

    move v14, v6

    goto :goto_2

    .line 20
    :cond_3
    :goto_0
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v10

    sget-object v14, Ln3/m0/c0/p/c/a;->b:Ljava/lang/String;

    new-array v15, v9, [Ljava/lang/Object;

    aput-object v5, v15, v13

    const-string v5, "API version too low. Cannot convert network type value %s"

    invoke-static {v5, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v15, v13, [Ljava/lang/Throwable;

    invoke-virtual {v10, v14, v5, v15}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move v14, v8

    goto :goto_2

    :cond_5
    :goto_1
    move v14, v9

    goto :goto_2

    :cond_6
    move v14, v13

    .line 21
    :goto_2
    invoke-virtual {v0, v14}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 22
    :goto_3
    iget-boolean v5, v4, Ln3/m0/d;->c:Z

    if-nez v5, :cond_8

    .line 23
    iget-object v5, v2, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    sget-object v10, Ln3/m0/a;->b:Ln3/m0/a;

    if-ne v5, v10, :cond_7

    move v5, v13

    goto :goto_4

    :cond_7
    move v5, v9

    .line 24
    :goto_4
    iget-wide v14, v2, Ln3/m0/c0/s/p;->m:J

    invoke-virtual {v0, v14, v15, v5}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 25
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ln3/m0/c0/s/p;->a()J

    move-result-wide v14

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v6, 0x0

    .line 27
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    const/16 v10, 0x1c

    if-gt v3, v10, :cond_9

    .line 28
    invoke-virtual {v0, v14, v15}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_5

    :cond_9
    cmp-long v10, v14, v6

    if-lez v10, :cond_a

    .line 29
    invoke-virtual {v0, v14, v15}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_5

    .line 30
    :cond_a
    iget-boolean v10, v2, Ln3/m0/c0/s/p;->q:Z

    if-nez v10, :cond_b

    .line 31
    invoke-virtual {v0, v9}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    :cond_b
    :goto_5
    if-lt v3, v12, :cond_d

    .line 32
    invoke-virtual {v4}, Ln3/m0/d;->a()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 33
    iget-object v10, v4, Ln3/m0/d;->h:Ln3/m0/e;

    .line 34
    iget-object v10, v10, Ln3/m0/e;->a:Ljava/util/Set;

    .line 35
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln3/m0/e$a;

    .line 36
    iget-boolean v5, v12, Ln3/m0/e$a;->b:Z

    .line 37
    new-instance v8, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 38
    iget-object v12, v12, Ln3/m0/e$a;->a:Landroid/net/Uri;

    .line 39
    invoke-direct {v8, v12, v5}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 40
    invoke-virtual {v0, v8}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    const/4 v8, 0x2

    goto :goto_6

    .line 41
    :cond_c
    iget-wide v9, v4, Ln3/m0/d;->f:J

    .line 42
    invoke-virtual {v0, v9, v10}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 43
    iget-wide v8, v4, Ln3/m0/d;->g:J

    .line 44
    invoke-virtual {v0, v8, v9}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 45
    :cond_d
    invoke-virtual {v0, v13}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    if-lt v3, v11, :cond_e

    .line 46
    iget-boolean v8, v4, Ln3/m0/d;->d:Z

    .line 47
    invoke-virtual {v0, v8}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 48
    iget-boolean v4, v4, Ln3/m0/d;->e:Z

    .line 49
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 50
    :cond_e
    iget v4, v2, Ln3/m0/c0/s/p;->k:I

    if-lez v4, :cond_f

    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    move v4, v13

    :goto_7
    cmp-long v6, v14, v6

    if-lez v6, :cond_10

    const/4 v6, 0x1

    goto :goto_8

    :cond_10
    move v6, v13

    .line 51
    :goto_8
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->I0()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-boolean v7, v2, Ln3/m0/c0/s/p;->q:Z

    if-eqz v7, :cond_11

    if-nez v4, :cond_11

    if-nez v6, :cond_11

    const/4 v4, 0x1

    .line 52
    invoke-virtual {v0, v4}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 53
    :cond_11
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 54
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v4

    sget-object v6, Ln3/m0/c0/p/c/b;->e:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v7, v2, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    aput-object v7, v8, v13

    .line 55
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v5, 0x1

    aput-object v7, v8, v5

    const-string v7, "Scheduling work ID %s Job ID %s"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Throwable;

    .line 56
    invoke-virtual {v4, v6, v7, v8}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 57
    :try_start_0
    iget-object v4, v1, Ln3/m0/c0/p/c/b;->b:Landroid/app/job/JobScheduler;

    invoke-virtual {v4, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-nez v0, :cond_12

    .line 58
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    const-string v4, "Unable to schedule work ID %s"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, v2, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    aput-object v8, v7, v13

    .line 59
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v13, [Ljava/lang/Throwable;

    invoke-virtual {v0, v6, v4, v7}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 60
    iget-boolean v0, v2, Ln3/m0/c0/s/p;->q:Z

    if-eqz v0, :cond_12

    iget-object v0, v2, Ln3/m0/c0/s/p;->r:Ln3/m0/t;

    sget-object v4, Ln3/m0/t;->a:Ln3/m0/t;

    if-ne v0, v4, :cond_12

    .line 61
    iput-boolean v13, v2, Ln3/m0/c0/s/p;->q:Z

    const-string v0, "Scheduling a non-expedited job (work ID %s)"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    .line 62
    iget-object v4, v2, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    aput-object v4, v7, v13

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v4

    new-array v7, v13, [Ljava/lang/Throwable;

    invoke-virtual {v4, v6, v0, v7}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 64
    invoke-virtual/range {p0 .. p2}, Ln3/m0/c0/p/c/b;->h(Ln3/m0/c0/s/p;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 65
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v3

    sget-object v4, Ln3/m0/c0/p/c/b;->e:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v13

    const-string v2, "Unable to schedule %s"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v0, v5, v13

    invoke-virtual {v3, v4, v2, v5}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_12
    :goto_9
    return-void

    :catch_0
    move-exception v0

    .line 66
    iget-object v2, v1, Ln3/m0/c0/p/c/b;->a:Landroid/content/Context;

    iget-object v4, v1, Ln3/m0/c0/p/c/b;->b:Landroid/app/job/JobScheduler;

    invoke-static {v2, v4}, Ln3/m0/c0/p/c/b;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_a

    :cond_13
    move v2, v13

    .line 68
    :goto_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v13

    iget-object v2, v1, Ln3/m0/c0/p/c/b;->c:Ln3/m0/c0/l;

    .line 70
    iget-object v2, v2, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 71
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v2

    check-cast v2, Ln3/m0/c0/s/t;

    invoke-virtual {v2}, Ln3/m0/c0/s/t;->g()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v6, v5

    iget-object v2, v1, Ln3/m0/c0/p/c/b;->c:Ln3/m0/c0/l;

    .line 72
    iget-object v2, v2, Ln3/m0/c0/l;->b:Ln3/m0/c;

    const/16 v5, 0x17

    if-ne v3, v5, :cond_14

    .line 73
    iget v2, v2, Ln3/m0/c;->i:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    goto :goto_b

    :cond_14
    const/4 v3, 0x2

    .line 74
    iget v2, v2, Ln3/m0/c;->i:I

    .line 75
    :goto_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    const-string v2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 76
    invoke-static {v4, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v3

    sget-object v4, Ln3/m0/c0/p/c/b;->e:Ljava/lang/String;

    new-array v5, v13, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v2, v5}, Ln3/m0/p;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 78
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
