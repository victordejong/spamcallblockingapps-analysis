.class public final Lcom/google/android/gms/measurement/internal/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/n5;


# static fields
.field private static volatile I:Lcom/google/android/gms/measurement/internal/r4;


# instance fields
.field private A:J

.field private volatile B:Ljava/lang/Boolean;

.field protected C:Ljava/lang/Boolean;

.field protected D:Ljava/lang/Boolean;

.field private volatile E:Z

.field private F:I

.field private final G:Ljava/util/concurrent/atomic/AtomicInteger;

.field final H:J

.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Lcom/google/android/gms/measurement/internal/ka;

.field private final g:Lcom/google/android/gms/measurement/internal/f;

.field private final h:Lcom/google/android/gms/measurement/internal/c4;

.field private final i:Lcom/google/android/gms/measurement/internal/n3;

.field private final j:Lcom/google/android/gms/measurement/internal/o4;

.field private final k:Lcom/google/android/gms/measurement/internal/y8;

.field private final l:Lcom/google/android/gms/measurement/internal/t9;

.field private final m:Lcom/google/android/gms/measurement/internal/i3;

.field private final n:Lcom/google/android/gms/common/util/f;

.field private final o:Lcom/google/android/gms/measurement/internal/j7;

.field private final p:Lcom/google/android/gms/measurement/internal/u6;

.field private final q:Lcom/google/android/gms/measurement/internal/d2;

.field private final r:Lcom/google/android/gms/measurement/internal/y6;

.field private final s:Ljava/lang/String;

.field private t:Lcom/google/android/gms/measurement/internal/h3;

.field private u:Lcom/google/android/gms/measurement/internal/j8;

.field private v:Lcom/google/android/gms/measurement/internal/n;

.field private w:Lcom/google/android/gms/measurement/internal/f3;

.field private x:Lcom/google/android/gms/measurement/internal/g4;

.field private y:Z

.field private z:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/u5;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/r4;->y:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/r4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/u5;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/measurement/internal/ka;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/ka;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/r4;->f:Lcom/google/android/gms/measurement/internal/ka;

    sput-object v2, Lcom/google/android/gms/measurement/internal/y2;->a:Lcom/google/android/gms/measurement/internal/ka;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/u5;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/u5;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/r4;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/u5;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/r4;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/u5;->h:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/r4;->e:Z

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/u5;->e:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/r4;->B:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/u5;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/r4;->s:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/r4;->E:Z

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/u5;->g:Lcom/google/android/gms/internal/measurement/bd;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/bd;->l:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 5
    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/r4;->C:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/bd;->l:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    .line 6
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->D:Ljava/lang/Boolean;

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/a4;->b(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/util/i;->d()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->n:Lcom/google/android/gms/common/util/f;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/u5;->i:Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v3

    .line 13
    :goto_0
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/r4;->H:J

    new-instance v3, Lcom/google/android/gms/measurement/internal/f;

    .line 14
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/f;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    .line 15
    new-instance v3, Lcom/google/android/gms/measurement/internal/c4;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/c4;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m5;->m()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->h:Lcom/google/android/gms/measurement/internal/c4;

    new-instance v3, Lcom/google/android/gms/measurement/internal/n3;

    .line 17
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/n3;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m5;->m()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->i:Lcom/google/android/gms/measurement/internal/n3;

    .line 19
    new-instance v3, Lcom/google/android/gms/measurement/internal/t9;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/t9;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m5;->m()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->l:Lcom/google/android/gms/measurement/internal/t9;

    .line 21
    new-instance v3, Lcom/google/android/gms/measurement/internal/i3;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/i3;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m5;->m()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->m:Lcom/google/android/gms/measurement/internal/i3;

    new-instance v3, Lcom/google/android/gms/measurement/internal/d2;

    .line 23
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/d2;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->q:Lcom/google/android/gms/measurement/internal/d2;

    new-instance v3, Lcom/google/android/gms/measurement/internal/j7;

    .line 24
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/j7;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f4;->k()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->o:Lcom/google/android/gms/measurement/internal/j7;

    new-instance v3, Lcom/google/android/gms/measurement/internal/u6;

    .line 26
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/u6;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f4;->k()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->p:Lcom/google/android/gms/measurement/internal/u6;

    new-instance v3, Lcom/google/android/gms/measurement/internal/y8;

    .line 28
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/y8;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f4;->k()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->k:Lcom/google/android/gms/measurement/internal/y8;

    new-instance v3, Lcom/google/android/gms/measurement/internal/y6;

    .line 30
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/y6;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m5;->m()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->r:Lcom/google/android/gms/measurement/internal/y6;

    .line 32
    new-instance v3, Lcom/google/android/gms/measurement/internal/o4;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/o4;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m5;->m()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/r4;->j:Lcom/google/android/gms/measurement/internal/o4;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/u5;->g:Lcom/google/android/gms/internal/measurement/bd;

    if-eqz v4, :cond_3

    iget-wide v4, v4, Lcom/google/android/gms/internal/measurement/bd;->g:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 34
    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_5

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->F()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/u6;->c:Lcom/google/android/gms/measurement/internal/t6;

    if-nez v4, :cond_4

    .line 38
    new-instance v4, Lcom/google/android/gms/measurement/internal/t6;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/measurement/internal/t6;-><init>(Lcom/google/android/gms/measurement/internal/u6;Lcom/google/android/gms/measurement/internal/f6;)V

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/u6;->c:Lcom/google/android/gms/measurement/internal/t6;

    :cond_4
    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/u6;->c:Lcom/google/android/gms/measurement/internal/t6;

    .line 39
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/u6;->c:Lcom/google/android/gms/measurement/internal/t6;

    .line 40
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n3;->w()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n3;->r()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    .line 44
    :cond_6
    :goto_2
    new-instance v0, Lcom/google/android/gms/measurement/internal/q4;

    .line 45
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/q4;-><init>(Lcom/google/android/gms/measurement/internal/r4;Lcom/google/android/gms/measurement/internal/u5;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/o4;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/bd;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/r4;
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/bd;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/bd;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/bd;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/bd;->f:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/bd;->g:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/bd;->h:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/bd;->i:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/bd;->l:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    .line 1
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/bd;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    .line 2
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/r4;->I:Lcom/google/android/gms/measurement/internal/r4;

    if-nez v0, :cond_3

    const-class v0, Lcom/google/android/gms/measurement/internal/r4;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/r4;->I:Lcom/google/android/gms/measurement/internal/r4;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/measurement/internal/u5;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/u5;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/bd;Ljava/lang/Long;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/r4;

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/r4;-><init>(Lcom/google/android/gms/measurement/internal/u5;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/r4;->I:Lcom/google/android/gms/measurement/internal/r4;

    .line 6
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 7
    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/bd;->l:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    .line 8
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/gms/measurement/internal/r4;->I:Lcom/google/android/gms/measurement/internal/r4;

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/measurement/internal/r4;->I:Lcom/google/android/gms/measurement/internal/r4;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/bd;->l:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->B:Ljava/lang/Boolean;

    .line 12
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/r4;->I:Lcom/google/android/gms/measurement/internal/r4;

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/google/android/gms/measurement/internal/r4;->I:Lcom/google/android/gms/measurement/internal/r4;

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/gms/measurement/internal/r4;Lcom/google/android/gms/measurement/internal/u5;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->e()Lcom/google/android/gms/measurement/internal/o4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f;->l()Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/measurement/internal/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/n;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->m()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->v:Lcom/google/android/gms/measurement/internal/n;

    new-instance v0, Lcom/google/android/gms/measurement/internal/f3;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/u5;->f:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/f3;-><init>(Lcom/google/android/gms/measurement/internal/r4;J)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f4;->k()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->w:Lcom/google/android/gms/measurement/internal/f3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/h3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/h3;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f4;->k()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->t:Lcom/google/android/gms/measurement/internal/h3;

    new-instance p1, Lcom/google/android/gms/measurement/internal/j8;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/j8;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f4;->k()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->u:Lcom/google/android/gms/measurement/internal/j8;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->l:Lcom/google/android/gms/measurement/internal/t9;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/m5;->n()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->h:Lcom/google/android/gms/measurement/internal/c4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/m5;->n()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/g4;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/g4;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->x:Lcom/google/android/gms/measurement/internal/g4;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->w:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f4;->l()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->u()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->p()J

    const-wide/32 v1, 0x9858

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "App measurement initialized, version"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/l3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->u()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->p()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/t9;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->u()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n3;->u()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->v()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    iget p1, p0, Lcom/google/android/gms/measurement/internal/r4;->F:I

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->o()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/r4;->F:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/r4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all components initialized"

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/l3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/r4;->y:Z

    return-void
.end method

.method static final u()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final v(Lcom/google/android/gms/measurement/internal/l5;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final w(Lcom/google/android/gms/measurement/internal/f4;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/f4;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final x(Lcom/google/android/gms/measurement/internal/m5;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m5;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/measurement/internal/c4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->h:Lcom/google/android/gms/measurement/internal/c4;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->v(Lcom/google/android/gms/measurement/internal/l5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->h:Lcom/google/android/gms/measurement/internal/c4;

    return-object v0
.end method

.method public final B()Lcom/google/android/gms/measurement/internal/n3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->i:Lcom/google/android/gms/measurement/internal/n3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->i:Lcom/google/android/gms/measurement/internal/n3;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final C()Lcom/google/android/gms/measurement/internal/y8;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->k:Lcom/google/android/gms/measurement/internal/y8;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->w(Lcom/google/android/gms/measurement/internal/f4;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->k:Lcom/google/android/gms/measurement/internal/y8;

    return-object v0
.end method

.method public final D()Lcom/google/android/gms/measurement/internal/g4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->x:Lcom/google/android/gms/measurement/internal/g4;

    return-object v0
.end method

.method final E()Lcom/google/android/gms/measurement/internal/o4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->j:Lcom/google/android/gms/measurement/internal/o4;

    return-object v0
.end method

.method public final F()Lcom/google/android/gms/measurement/internal/u6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->p:Lcom/google/android/gms/measurement/internal/u6;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->w(Lcom/google/android/gms/measurement/internal/f4;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->p:Lcom/google/android/gms/measurement/internal/u6;

    return-object v0
.end method

.method public final G()Lcom/google/android/gms/measurement/internal/t9;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->l:Lcom/google/android/gms/measurement/internal/t9;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->v(Lcom/google/android/gms/measurement/internal/l5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->l:Lcom/google/android/gms/measurement/internal/t9;

    return-object v0
.end method

.method public final H()Lcom/google/android/gms/measurement/internal/i3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->m:Lcom/google/android/gms/measurement/internal/i3;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->v(Lcom/google/android/gms/measurement/internal/l5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->m:Lcom/google/android/gms/measurement/internal/i3;

    return-object v0
.end method

.method public final I()Lcom/google/android/gms/measurement/internal/h3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->t:Lcom/google/android/gms/measurement/internal/h3;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->w(Lcom/google/android/gms/measurement/internal/f4;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->t:Lcom/google/android/gms/measurement/internal/h3;

    return-object v0
.end method

.method public final J()Lcom/google/android/gms/measurement/internal/y6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->r:Lcom/google/android/gms/measurement/internal/y6;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->x(Lcom/google/android/gms/measurement/internal/m5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->r:Lcom/google/android/gms/measurement/internal/y6;

    return-object v0
.end method

.method public final K()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/r4;->e:Z

    return v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()Lcom/google/android/gms/measurement/internal/j7;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->o:Lcom/google/android/gms/measurement/internal/j7;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->w(Lcom/google/android/gms/measurement/internal/f4;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->o:Lcom/google/android/gms/measurement/internal/j7;

    return-object v0
.end method

.method public final R()Lcom/google/android/gms/measurement/internal/j8;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->u:Lcom/google/android/gms/measurement/internal/j8;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->w(Lcom/google/android/gms/measurement/internal/f4;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->u:Lcom/google/android/gms/measurement/internal/j8;

    return-object v0
.end method

.method public final S()Lcom/google/android/gms/measurement/internal/n;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->v:Lcom/google/android/gms/measurement/internal/n;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->x(Lcom/google/android/gms/measurement/internal/m5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->v:Lcom/google/android/gms/measurement/internal/n;

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/common/util/f;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->n:Lcom/google/android/gms/common/util/f;

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/n3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->i:Lcom/google/android/gms/measurement/internal/n3;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->x(Lcom/google/android/gms/measurement/internal/m5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->i:Lcom/google/android/gms/measurement/internal/n3;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/f3;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->w:Lcom/google/android/gms/measurement/internal/f3;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->w(Lcom/google/android/gms/measurement/internal/f4;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->w:Lcom/google/android/gms/measurement/internal/f3;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/measurement/internal/o4;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->j:Lcom/google/android/gms/measurement/internal/o4;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->x(Lcom/google/android/gms/measurement/internal/m5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->j:Lcom/google/android/gms/measurement/internal/o4;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/internal/ka;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->f:Lcom/google/android/gms/measurement/internal/ka;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/measurement/internal/d2;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->q:Lcom/google/android/gms/measurement/internal/d2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final i(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->B:Ljava/lang/Boolean;

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->B:Ljava/lang/Boolean;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->l()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->e()Lcom/google/android/gms/measurement/internal/o4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->D:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    return v0

    .line 4
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v9;->a()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/a3;->w0:Lcom/google/android/gms/measurement/internal/z2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->e()Lcom/google/android/gms/measurement/internal/o4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/r4;->E:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    return v0

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c4;->r()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x3

    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/r4;->f:Lcom/google/android/gms/measurement/internal/ka;

    const-string v3, "firebase_analytics_collection_enabled"

    .line 9
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/f;->y(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x4

    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x5

    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    sget-object v3, Lcom/google/android/gms/measurement/internal/a3;->T:Lcom/google/android/gms/measurement/internal/z2;

    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->B:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x7

    return v0

    :cond_c
    return v1
.end method

.method public final m(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->e()Lcom/google/android/gms/measurement/internal/o4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/r4;->E:Z

    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->e()Lcom/google/android/gms/measurement/internal/o4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/r4;->E:Z

    return v0
.end method

.method final o()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/r4;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/r4;->F:I

    return-void
.end method

.method final p()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method protected final q()Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/r4;->y:Z

    if-eqz v0, :cond_6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->e()Lcom/google/android/gms/measurement/internal/o4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/r4;->A:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->n:Lcom/google/android/gms/common/util/f;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/r4;->A:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->n:Lcom/google/android/gms/common/util/f;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/r4;->A:J

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/t9;->E(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/t9;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/n/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/n/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/n/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f;->H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/i4;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/t9;->D(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->z:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f3;->q()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->r()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f3;->s()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/t9;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 19
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->z:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->z:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->e()Lcom/google/android/gms/measurement/internal/o4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->J()Lcom/google/android/gms/measurement/internal/y6;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/r4;->x(Lcom/google/android/gms/measurement/internal/m5;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->p()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c4;->o(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->B()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->J()Lcom/google/android/gms/measurement/internal/y6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m5;->l()V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 10
    :try_start_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f;->p()J

    const-wide/32 v3, 0x9858

    .line 15
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c4;->x:Lcom/google/android/gms/measurement/internal/z3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/z3;->a()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    add-long/2addr v6, v8

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v0

    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/t9;->Z(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->J()Lcom/google/android/gms/measurement/internal/y6;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/measurement/internal/p4;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/p4;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m5;->l()V

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v7}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r4;->e()Lcom/google/android/gms/measurement/internal/o4;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/measurement/internal/x6;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object v3, v0

    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/x6;-><init>(Lcom/google/android/gms/measurement/internal/y6;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/p4;[B)V

    .line 24
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/o4;->u(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    .line 25
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n3;->r()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v0

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n3;->v()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v0

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic s(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    const-string p1, "timestamp"

    const-string p5, "gclid"

    const-string v0, ""

    const-string v1, "deeplink"

    const/16 v2, 0x130

    const/16 v3, 0xc8

    if-eq p2, v3, :cond_0

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_0

    if-ne p2, v2, :cond_8

    const/16 p2, 0x130

    :cond_0
    if-nez p3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/c4;->w:Lcom/google/android/gms/measurement/internal/x3;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/x3;->b(Z)V

    if-eqz p4, :cond_7

    array-length p2, p4

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p4}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-wide/16 v2, 0x0

    invoke-virtual {p3, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->v()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string p2, "Deferred Deep Link is empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object p3

    iget-object v0, p3, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x0

    invoke-virtual {p3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3, p5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "_cis"

    const-string p5, "ddp"

    invoke-virtual {p3, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/r4;->p:Lcom/google/android/gms/measurement/internal/u6;

    const-string p5, "auto"

    const-string v0, "_cmp"

    invoke-virtual {p4, p5, v0, p3}, Lcom/google/android/gms/measurement/internal/u6;->X(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object p3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p4, :cond_4

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object p4, p3, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    const-string p5, "google.analytics.deferred.deeplink.prefs"

    invoke-virtual {p4, p5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p4

    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p4

    invoke-interface {p4, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-interface {p4, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_5

    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception p1

    iget-object p2, p3, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n3;->o()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p2

    const-string p3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/l3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->r()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string p3, "Deferred Deep Link validation failed. gclid, deep link"

    invoke-virtual {p1, p3, p4, p2}, Lcom/google/android/gms/measurement/internal/l3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n3;->o()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p2

    const-string p3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/l3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->v()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string p2, "Deferred Deep Link response empty."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->r()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "Network Request for Deferred Deep Link failed. response, exception"

    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/measurement/internal/l3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected final y(Lcom/google/android/gms/internal/measurement/bd;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->e()Lcom/google/android/gms/measurement/internal/o4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v9;->a()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    .line 3
    sget-object v1, Lcom/google/android/gms/measurement/internal/a3;->w0:Lcom/google/android/gms/measurement/internal/z2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c4;->t()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "consent_source"

    const/16 v5, 0x64

    .line 6
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    sget-object v6, Lcom/google/android/gms/measurement/internal/a3;->x0:Lcom/google/android/gms/measurement/internal/z2;

    .line 7
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result v4

    const/16 v7, 0x28

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v9;->a()Z

    .line 9
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    const-string v8, "google_analytics_default_allow_ad_storage"

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/f;->y(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v9;->a()Z

    .line 11
    invoke-virtual {v8, v2, v6}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    const-string v6, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/f;->y(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    :goto_1
    const/16 v8, 0x14

    if-nez v4, :cond_2

    if-eqz v6, :cond_3

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v9

    .line 13
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/c4;->s(I)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance p1, Lcom/google/android/gms/measurement/internal/g;

    .line 14
    invoke-direct {p1, v4, v6}, Lcom/google/android/gms/measurement/internal/g;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const/16 v5, 0x14

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/f3;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_4

    if-ne v3, v7, :cond_5

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->F()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/measurement/internal/g;->c:Lcom/google/android/gms/measurement/internal/g;

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/r4;->H:J

    .line 17
    invoke-virtual {p1, v3, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/u6;->V(Lcom/google/android/gms/measurement/internal/g;IJ)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/bd;->l:Landroid/os/Bundle;

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v3

    .line 19
    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/c4;->s(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/bd;->l:Landroid/os/Bundle;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/g;->b(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/g;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/measurement/internal/g;->c:Lcom/google/android/gms/measurement/internal/g;

    .line 21
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/g;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v5, 0x28

    goto :goto_3

    :cond_6
    :goto_2
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_8

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->F()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/r4;->H:J

    invoke-virtual {v0, p1, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/u6;->V(Lcom/google/android/gms/measurement/internal/g;IJ)V

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    .line 23
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/bd;->l:Landroid/os/Bundle;

    if-eqz v3, :cond_8

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v3

    .line 25
    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/c4;->s(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/bd;->l:Landroid/os/Bundle;

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/g;->b(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/g;

    move-result-object p1

    sget-object v3, Lcom/google/android/gms/measurement/internal/g;->c:Lcom/google/android/gms/measurement/internal/g;

    .line 27
    invoke-virtual {p1, v3}, Lcom/google/android/gms/measurement/internal/g;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->F()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object v0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/r4;->H:J

    .line 29
    invoke-virtual {v0, p1, v7, v3, v4}, Lcom/google/android/gms/measurement/internal/u6;->V(Lcom/google/android/gms/measurement/internal/g;IJ)V

    :goto_4
    move-object v0, p1

    .line 30
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->F()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/u6;->W(Lcom/google/android/gms/measurement/internal/g;)V

    .line 31
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c4;->e:Lcom/google/android/gms/measurement/internal/z3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/z3;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_a

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c4;->e:Lcom/google/android/gms/measurement/internal/z3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->n:Lcom/google/android/gms/common/util/f;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/measurement/internal/z3;->b(J)V

    .line 33
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c4;->j:Lcom/google/android/gms/measurement/internal/z3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/z3;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v5

    if-nez p1, :cond_b

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->w()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/r4;->H:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "Persisting first open"

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/measurement/internal/l3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c4;->j:Lcom/google/android/gms/measurement/internal/z3;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/r4;->H:J

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/measurement/internal/z3;->b(J)V

    .line 37
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->F()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/u6;->n:Lcom/google/android/gms/measurement/internal/ca;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ca;->c()V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->q()Z

    move-result p1

    if-nez p1, :cond_10

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->k()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object p1

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/t9;->E(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->o()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string v0, "App is missing INTERNET permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    .line 42
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/t9;->E(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->o()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/common/n/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/n/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/n/b;->f()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f;->H()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/i4;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->o()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string v0, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 48
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/t9;->D(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_f

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->o()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    .line 50
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->o()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 51
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->r()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 53
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "gmp_app_id"

    .line 56
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f3;->r()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "admob_app_id"

    .line 59
    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {p1, v0, v3, v5, v6}, Lcom/google/android/gms/measurement/internal/t9;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->u()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string v0, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 63
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 64
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_12

    .line 66
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/c4;->q(Ljava/lang/Boolean;)V

    .line 67
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->I()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/h3;->o()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->u:Lcom/google/android/gms/measurement/internal/j8;

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j8;->t()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->u:Lcom/google/android/gms/measurement/internal/j8;

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j8;->p()V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c4;->j:Lcom/google/android/gms/measurement/internal/z3;

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/r4;->H:J

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/measurement/internal/z3;->b(J)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c4;->l:Lcom/google/android/gms/measurement/internal/b4;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/b4;->b(Ljava/lang/String;)V

    .line 72
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 74
    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->p()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 78
    invoke-interface {p1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v9;->a()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    .line 81
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c4;->t()Lcom/google/android/gms/measurement/internal/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/g;->h()Z

    move-result p1

    if-nez p1, :cond_15

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c4;->l:Lcom/google/android/gms/measurement/internal/b4;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/b4;->b(Ljava/lang/String;)V

    .line 84
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->F()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c4;->l:Lcom/google/android/gms/measurement/internal/b4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b4;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/u6;->r(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ea;->a()Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    sget-object v0, Lcom/google/android/gms/measurement/internal/a3;->o0:Lcom/google/android/gms/measurement/internal/z2;

    .line 86
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object p1

    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/r4;->a:Landroid/content/Context;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c4;->y:Lcom/google/android/gms/measurement/internal/b4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/b4;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n3;->r()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object p1

    const-string v0, "Remote config removed with active feature rollouts"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c4;->y:Lcom/google/android/gms/measurement/internal/b4;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/b4;->b(Ljava/lang/String;)V

    .line 93
    :cond_16
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->d()Lcom/google/android/gms/measurement/internal/f3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f3;->r()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 95
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->k()Z

    move-result p1

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c4;->v()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f;->A()Z

    move-result v0

    if-nez v0, :cond_18

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c4;->u(Z)V

    :cond_18
    if-eqz p1, :cond_19

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->F()Lcom/google/android/gms/measurement/internal/u6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/u6;->u()V

    .line 100
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->C()Lcom/google/android/gms/measurement/internal/y8;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y8;->d:Lcom/google/android/gms/measurement/internal/x8;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/x8;->a()V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->R()Lcom/google/android/gms/measurement/internal/j8;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/j8;->T(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->R()Lcom/google/android/gms/measurement/internal/j8;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c4;->B:Lcom/google/android/gms/measurement/internal/y3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y3;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/j8;->o(Landroid/os/Bundle;)V

    .line 104
    :cond_1a
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c4;->s:Lcom/google/android/gms/measurement/internal/x3;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    sget-object v1, Lcom/google/android/gms/measurement/internal/a3;->X:Lcom/google/android/gms/measurement/internal/z2;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/x3;->b(Z)V

    return-void
.end method

.method public final z()Lcom/google/android/gms/measurement/internal/f;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Lcom/google/android/gms/measurement/internal/f;

    return-object v0
.end method
