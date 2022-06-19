.class abstract Lio/realm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/a$f;,
        Lio/realm/a$e;
    }
.end annotation


# static fields
.field static volatile m:Landroid/content/Context;

.field public static final n:Lio/realm/a$f;


# instance fields
.field final f:Z

.field final g:J

.field protected final h:Lio/realm/b0;

.field private i:Lio/realm/z;

.field public j:Lio/realm/internal/OsSharedRealm;

.field private k:Z

.field private l:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/realm/internal/async/a;->c()Lio/realm/internal/async/a;

    .line 2
    invoke-static {}, Lio/realm/internal/async/a;->d()Lio/realm/internal/async/a;

    .line 3
    new-instance v0, Lio/realm/a$f;

    invoke-direct {v0}, Lio/realm/a$f;-><init>()V

    sput-object v0, Lio/realm/a;->n:Lio/realm/a$f;

    return-void
.end method

.method constructor <init>(Lio/realm/b0;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$a;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lio/realm/a$a;

    invoke-direct {v0, p0}, Lio/realm/a$a;-><init>(Lio/realm/a;)V

    iput-object v0, p0, Lio/realm/a;->l:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/a;->g:J

    .line 6
    iput-object p1, p0, Lio/realm/a;->h:Lio/realm/b0;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/realm/a;->i:Lio/realm/z;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1}, Lio/realm/b0;->i()Lio/realm/d0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p1}, Lio/realm/b0;->i()Lio/realm/d0;

    move-result-object v1

    invoke-static {v1}, Lio/realm/a;->l(Lio/realm/d0;)Lio/realm/internal/OsSharedRealm$MigrationCallback;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lio/realm/b0;->g()Lio/realm/y$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    new-instance v0, Lio/realm/a$b;

    invoke-direct {v0, p0, v2}, Lio/realm/a$b;-><init>(Lio/realm/a;Lio/realm/y$b;)V

    .line 12
    :cond_1
    new-instance v2, Lio/realm/internal/OsRealmConfig$b;

    invoke-direct {v2, p1}, Lio/realm/internal/OsRealmConfig$b;-><init>(Lio/realm/b0;)V

    new-instance p1, Ljava/io/File;

    sget-object v3, Lio/realm/a;->m:Landroid/content/Context;

    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, ".realm.temp"

    invoke-direct {p1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lio/realm/internal/OsRealmConfig$b;->c(Ljava/io/File;)Lio/realm/internal/OsRealmConfig$b;

    const/4 p1, 0x1

    .line 14
    invoke-virtual {v2, p1}, Lio/realm/internal/OsRealmConfig$b;->a(Z)Lio/realm/internal/OsRealmConfig$b;

    .line 15
    invoke-virtual {v2, v1}, Lio/realm/internal/OsRealmConfig$b;->e(Lio/realm/internal/OsSharedRealm$MigrationCallback;)Lio/realm/internal/OsRealmConfig$b;

    .line 16
    invoke-virtual {v2, p2}, Lio/realm/internal/OsRealmConfig$b;->f(Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/OsRealmConfig$b;

    .line 17
    invoke-virtual {v2, v0}, Lio/realm/internal/OsRealmConfig$b;->d(Lio/realm/internal/OsSharedRealm$InitializationCallback;)Lio/realm/internal/OsRealmConfig$b;

    .line 18
    invoke-static {v2, p3}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/internal/OsRealmConfig$b;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/internal/OsSharedRealm;

    move-result-object p2

    iput-object p2, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    .line 19
    invoke-virtual {p2}, Lio/realm/internal/OsSharedRealm;->isFrozen()Z

    move-result p2

    iput-boolean p2, p0, Lio/realm/a;->f:Z

    .line 20
    iput-boolean p1, p0, Lio/realm/a;->k:Z

    .line 21
    iget-object p1, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    iget-object p2, p0, Lio/realm/a;->l:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    invoke-virtual {p1, p2}, Lio/realm/internal/OsSharedRealm;->registerSchemaChangedCallback(Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lio/realm/a$a;

    invoke-direct {v0, p0}, Lio/realm/a$a;-><init>(Lio/realm/a;)V

    iput-object v0, p0, Lio/realm/a;->l:Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/a;->g:J

    .line 25
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getConfiguration()Lio/realm/b0;

    move-result-object v0

    iput-object v0, p0, Lio/realm/a;->h:Lio/realm/b0;

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lio/realm/a;->i:Lio/realm/z;

    .line 27
    iput-object p1, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    .line 28
    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->isFrozen()Z

    move-result p1

    iput-boolean p1, p0, Lio/realm/a;->f:Z

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lio/realm/a;->k:Z

    return-void
.end method

.method constructor <init>(Lio/realm/z;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/realm/z;->i()Lio/realm/b0;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/realm/a;-><init>(Lio/realm/b0;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$a;)V

    .line 2
    iput-object p1, p0, Lio/realm/a;->i:Lio/realm/z;

    return-void
.end method

.method private static l(Lio/realm/d0;)Lio/realm/internal/OsSharedRealm$MigrationCallback;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/a$d;

    invoke-direct {v0, p0}, Lio/realm/a$d;-><init>(Lio/realm/d0;)V

    return-object v0
.end method

.method static o(Lio/realm/b0;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2
    new-instance v1, Lio/realm/a$c;

    invoke-direct {v1, p0, v0}, Lio/realm/a$c;-><init>(Lio/realm/b0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {p0, v1}, Lio/realm/internal/OsObjectStore;->a(Lio/realm/b0;Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lio/realm/b0;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Lio/realm/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/b0;

    return-object v0
.end method

.method public abstract C()Lio/realm/j0;
.end method

.method D()Lio/realm/internal/OsSharedRealm;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    return-object v0
.end method

.method public K()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/realm/a;->f:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/realm/a;->g:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public L()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lio/realm/a;->f:Z

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public M()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method

.method public N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 2
    invoke-virtual {p0}, Lio/realm/a;->b()V

    .line 3
    invoke-virtual {p0}, Lio/realm/a;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->refresh()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refresh a Realm instance inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->cancelTransaction()V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->D()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/a;

    invoke-interface {v0}, Lio/realm/internal/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/realm/a;->A()Lio/realm/b0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b0;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Queries on the UI thread have been disabled. They can be enabled by setting \'RealmConfiguration.Builder.allowQueriesOnUiThread(true)\'."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public beginTransaction()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->beginTransaction()V

    return-void
.end method

.method protected c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->D()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/a;

    invoke-interface {v0}, Lio/realm/internal/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/realm/a;->A()Lio/realm/b0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b0;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Running transactions on the UI thread has been disabled. It can be enabled by setting \'RealmConfiguration.Builder.allowWritesOnUiThread(true)\'."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/realm/a;->f:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/realm/a;->g:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/realm/a;->i:Lio/realm/z;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, p0}, Lio/realm/z;->o(Lio/realm/a;)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/realm/a;->r()V

    :goto_1
    return-void
.end method

.method protected e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing Realm data can only be done from inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lio/realm/a;->f:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/realm/a;->g:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/realm/a;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lio/realm/a;->h:Lio/realm/b0;

    .line 3
    invoke-virtual {v2}, Lio/realm/b0;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory."

    .line 4
    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/realm/a;->i:Lio/realm/z;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lio/realm/z;->n()V

    .line 7
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Changing Realm data can only be done from inside a transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {v0}, Lio/realm/b0;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {v0}, Lio/realm/b0;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You cannot perform destructive changes to a schema of a synced Realm"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->commitTransaction()V

    return-void
.end method

.method r()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/realm/a;->i:Lio/realm/z;

    .line 2
    iget-object v1, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lio/realm/a;->k:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 4
    iput-object v0, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    :cond_0
    return-void
.end method

.method y(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/e0;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "J)TE;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/realm/j0;->j(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/j0;->i(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p2

    :goto_1
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    .line 2
    new-instance p1, Lio/realm/i;

    cmp-long v0, p3, v1

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p2, p3, p4}, Lio/realm/internal/Table;->j(J)Lio/realm/internal/CheckedRow;

    move-result-object p2

    goto :goto_2

    :cond_2
    sget-object p2, Lio/realm/internal/f;->INSTANCE:Lio/realm/internal/f;

    :goto_2
    invoke-direct {p1, p0, p2}, Lio/realm/i;-><init>(Lio/realm/a;Lio/realm/internal/o;)V

    goto :goto_4

    .line 4
    :cond_3
    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {v0}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object v3

    cmp-long v0, p3, v1

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p2, p3, p4}, Lio/realm/internal/Table;->v(J)Lio/realm/internal/UncheckedRow;

    move-result-object p2

    goto :goto_3

    :cond_4
    sget-object p2, Lio/realm/internal/f;->INSTANCE:Lio/realm/internal/f;

    :goto_3
    move-object v6, p2

    .line 6
    invoke-virtual {p0}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    move-object v4, p1

    move-object v5, p0

    .line 7
    invoke-virtual/range {v3 .. v9}, Lio/realm/internal/n;->l(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/o;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/e0;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method z(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/e0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "Lio/realm/internal/UncheckedRow;",
            ")TE;"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1
    new-instance p1, Lio/realm/i;

    invoke-static {p3}, Lio/realm/internal/CheckedRow;->d(Lio/realm/internal/UncheckedRow;)Lio/realm/internal/CheckedRow;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/realm/i;-><init>(Lio/realm/a;Lio/realm/internal/o;)V

    goto :goto_1

    .line 2
    :cond_1
    iget-object p2, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {p2}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move-object v2, p0

    move-object v3, p3

    .line 4
    invoke-virtual/range {v0 .. v6}, Lio/realm/internal/n;->l(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/o;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/e0;

    move-result-object p1

    :goto_1
    return-object p1
.end method
