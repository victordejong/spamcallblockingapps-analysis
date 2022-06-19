.class public Lio/realm/y;
.super Lio/realm/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/y$b;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/Object;

.field private static q:Lio/realm/b0;


# instance fields
.field private final o:Lio/realm/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/realm/y;->p:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 3

    .line 14
    invoke-direct {p0, p1}, Lio/realm/a;-><init>(Lio/realm/internal/OsSharedRealm;)V

    .line 15
    new-instance v0, Lio/realm/m;

    new-instance v1, Lio/realm/internal/b;

    iget-object v2, p0, Lio/realm/a;->h:Lio/realm/b0;

    .line 16
    invoke-virtual {v2}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object v2

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lio/realm/internal/b;-><init>(Lio/realm/internal/n;Lio/realm/internal/OsSchemaInfo;)V

    invoke-direct {v0, p0, v1}, Lio/realm/m;-><init>(Lio/realm/a;Lio/realm/internal/b;)V

    iput-object v0, p0, Lio/realm/y;->o:Lio/realm/j0;

    return-void
.end method

.method private constructor <init>(Lio/realm/z;Lio/realm/internal/OsSharedRealm$a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lio/realm/z;->i()Lio/realm/b0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object v0

    invoke-static {v0}, Lio/realm/y;->O0(Lio/realm/internal/n;)Lio/realm/internal/OsSchemaInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lio/realm/a;-><init>(Lio/realm/z;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/OsSharedRealm$a;)V

    .line 2
    new-instance p1, Lio/realm/m;

    new-instance p2, Lio/realm/internal/b;

    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/b0;

    .line 3
    invoke-virtual {v0}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object v0

    iget-object v1, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lio/realm/internal/b;-><init>(Lio/realm/internal/n;Lio/realm/internal/OsSchemaInfo;)V

    invoke-direct {p1, p0, p2}, Lio/realm/m;-><init>(Lio/realm/a;Lio/realm/internal/b;)V

    iput-object p1, p0, Lio/realm/y;->o:Lio/realm/j0;

    .line 4
    iget-object p1, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {p1}, Lio/realm/b0;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {p1}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lio/realm/internal/n;->g()Ljava/util/Set;

    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 8
    invoke-virtual {p1, v0}, Lio/realm/internal/n;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Table;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->close()V

    .line 11
    new-instance p1, Lio/realm/exceptions/RealmMigrationNeededException;

    iget-object p2, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {p2}, Lio/realm/b0;->k()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 12
    invoke-static {v0}, Lio/realm/internal/Table;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Cannot open the read only Realm. \'%s\' is missing."

    .line 13
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lio/realm/exceptions/RealmMigrationNeededException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private G0(Lio/realm/e0;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/e0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;Z",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/n;",
            ">;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 2
    invoke-virtual {p0}, Lio/realm/y;->M()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {v0}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/realm/internal/Util;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/internal/n;->k(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {v0}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/n;->b(Lio/realm/y;Lio/realm/e0;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/e0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Attempting to create an object of type"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    new-instance p2, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_0
    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "`copyOrUpdate` can only be called inside a write transaction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private N0(Lio/realm/e0;ILjava/util/Map;)Lio/realm/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;I",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m$a<",
            "Lio/realm/e0;",
            ">;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {v0}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/realm/internal/n;->d(Lio/realm/e0;ILjava/util/Map;)Lio/realm/e0;

    move-result-object p1

    return-object p1
.end method

.method private static O0(Lio/realm/internal/n;)Lio/realm/internal/OsSchemaInfo;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {p0}, Lio/realm/internal/n;->e()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/realm/internal/OsSchemaInfo;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static T0(Lio/realm/z;Lio/realm/internal/OsSharedRealm$a;)Lio/realm/y;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/y;

    invoke-direct {v0, p0, p1}, Lio/realm/y;-><init>(Lio/realm/z;Lio/realm/internal/OsSharedRealm$a;)V

    return-object v0
.end method

.method static U0(Lio/realm/internal/OsSharedRealm;)Lio/realm/y;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/y;

    invoke-direct {v0, p0}, Lio/realm/y;-><init>(Lio/realm/internal/OsSharedRealm;)V

    return-object v0
.end method

.method private static X(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 5
    fill-array-data v0, :array_0

    const-wide/16 v1, 0xc8

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x4

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    aget-wide v6, v0, v6

    .line 8
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    add-long/2addr v3, v6

    cmp-long v6, v3, v1

    if-lez v6, :cond_3

    .line 9
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 10
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context.getFilesDir() returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " which is not an existing directory. See https://issuetracker.google.com/issues/36918154"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 8
        0x1
        0x2
        0x5
        0xa
        0x10
    .end array-data
.end method

.method private Y(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {v0}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/n;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSchemaInfo;->b(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/realm/internal/OsObjectSchemaInfo;->c()Lio/realm/internal/Property;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A RealmObject with no @PrimaryKey cannot be updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b1()Lio/realm/b0;
    .locals 2

    .line 1
    sget-object v0, Lio/realm/y;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lio/realm/y;->q:Lio/realm/b0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c1()Lio/realm/y;
    .locals 2

    .line 1
    invoke-static {}, Lio/realm/y;->b1()Lio/realm/b0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lio/realm/a;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call `Realm.init(Context)` before calling this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set default configuration by using `Realm.setDefaultConfiguration(RealmConfiguration)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    const-class v1, Lio/realm/y;

    invoke-static {v0, v1}, Lio/realm/z;->e(Lio/realm/b0;Ljava/lang/Class;)Lio/realm/a;

    move-result-object v0

    check-cast v0, Lio/realm/y;

    return-object v0
.end method

.method public static g1()Ljava/lang/Object;
    .locals 5

    const-string v0, "Could not create an instance of "

    const-string v1, "io.realm.DefaultRealmModule"

    const-string v2, "io.realm.DefaultRealmModule"

    .line 1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x1

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 5
    new-instance v3, Lio/realm/exceptions/RealmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    .line 6
    new-instance v3, Lio/realm/exceptions/RealmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    .line 7
    new-instance v3, Lio/realm/exceptions/RealmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static h1(Lio/realm/b0;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2
    new-instance v1, Lio/realm/y$a;

    invoke-direct {v1, v0}, Lio/realm/y$a;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-static {p0, v1}, Lio/realm/z;->m(Lio/realm/b0;Lio/realm/z$b;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method private k0(I)V
    .locals 3

    if-ltz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxDepth must be > 0. It was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l0(Lio/realm/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null objects cannot be copied into Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized n1(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lio/realm/y;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    .line 1
    invoke-static {p0, v1}, Lio/realm/y;->s1(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static o(Lio/realm/b0;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/realm/a;->o(Lio/realm/b0;)Z

    move-result p0

    return p0
.end method

.method private p0(Lio/realm/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p1}, Lio/realm/f0;->L0(Lio/realm/e0;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lio/realm/f0;->N0(Lio/realm/e0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    instance-of p1, p1, Lio/realm/i;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DynamicRealmObject cannot be copied from Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only valid managed objects can be copied from Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null objects cannot be copied from Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static s1(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lio/realm/a;->m:Landroid/content/Context;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p0}, Lio/realm/y;->X(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lio/realm/internal/l;->a(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lio/realm/b0$a;

    invoke-direct {v0, p0}, Lio/realm/b0$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/realm/b0$a;->c()Lio/realm/b0;

    move-result-object v0

    invoke-static {v0}, Lio/realm/y;->z1(Lio/realm/b0;)V

    .line 5
    invoke-static {}, Lio/realm/internal/i;->d()Lio/realm/internal/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/i;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lio/realm/a;->m:Landroid/content/Context;

    goto :goto_0

    .line 8
    :cond_0
    sput-object p0, Lio/realm/a;->m:Landroid/content/Context;

    .line 9
    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v0, ".realm.temp"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lio/realm/internal/OsSharedRealm;->initialize(Ljava/io/File;)V

    goto :goto_1

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-null context required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public static z1(Lio/realm/b0;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lio/realm/y;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sput-object p0, Lio/realm/y;->q:Lio/realm/b0;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null RealmConfiguration must be provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A1(Ljava/lang/Class;)Lio/realm/RealmQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 2
    invoke-static {p0, p1}, Lio/realm/RealmQuery;->d(Lio/realm/y;Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    return-object p1
.end method

.method public C()Lio/realm/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/y;->o:Lio/realm/j0;

    return-object v0
.end method

.method public varargs I0(Lio/realm/e0;[Lio/realm/n;)Lio/realm/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;[",
            "Lio/realm/n;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/realm/y;->l0(Lio/realm/e0;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Lio/realm/internal/Util;->f([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lio/realm/y;->G0(Lio/realm/e0;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/e0;

    move-result-object p1

    return-object p1
.end method

.method public varargs J0(Lio/realm/e0;[Lio/realm/n;)Lio/realm/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;[",
            "Lio/realm/n;",
            ")TE;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/realm/y;->l0(Lio/realm/e0;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/realm/y;->Y(Ljava/lang/Class;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Lio/realm/internal/Util;->f([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0, p2}, Lio/realm/y;->G0(Lio/realm/e0;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/e0;

    move-result-object p1

    return-object p1
.end method

.method public varargs K0(Ljava/lang/Iterable;[Lio/realm/n;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;[",
            "Lio/realm/n;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p2}, Lio/realm/internal/Util;->f([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/e0;

    .line 8
    invoke-direct {p0, v2}, Lio/realm/y;->l0(Lio/realm/e0;)V

    const/4 v3, 0x1

    .line 9
    invoke-direct {p0, v2, v3, v1, p2}, Lio/realm/y;->G0(Lio/realm/e0;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/e0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public X0(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/y;->o:Lio/realm/j0;

    invoke-virtual {v0, p1}, Lio/realm/j0;->i(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/internal/Table;->d()V

    return-void
.end method

.method public Z0(Lio/realm/y$b;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->c()V

    .line 2
    invoke-virtual {p0}, Lio/realm/y;->beginTransaction()V

    .line 3
    :try_start_0
    invoke-interface {p1, p0}, Lio/realm/y$b;->a(Lio/realm/y;)V

    .line 4
    invoke-virtual {p0}, Lio/realm/y;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p0}, Lio/realm/y;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lio/realm/y;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not cancel transaction, not currently in a transaction."

    .line 7
    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_0
    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transaction should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method k1(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;)",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/y;->o:Lio/realm/j0;

    invoke-virtual {v0, p1}, Lio/realm/j0;->i(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p1

    return-object p1
.end method

.method public q0(Lio/realm/e0;)Lio/realm/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;)TE;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/realm/y;->s0(Lio/realm/e0;I)Lio/realm/e0;

    move-result-object p1

    return-object p1
.end method

.method public s0(Lio/realm/e0;I)Lio/realm/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;I)TE;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lio/realm/y;->k0(I)V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/y;->p0(Lio/realm/e0;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/y;->N0(Lio/realm/e0;ILjava/util/Map;)Lio/realm/e0;

    move-result-object p1

    return-object p1
.end method

.method public u0(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/realm/y;->y0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public y0(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lio/realm/y;->k0(I)V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/e0;

    .line 8
    invoke-direct {p0, v2}, Lio/realm/y;->p0(Lio/realm/e0;)V

    .line 9
    invoke-direct {p0, v2, p2, v1}, Lio/realm/y;->N0(Lio/realm/e0;ILjava/util/Map;)Lio/realm/e0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public y1(Lio/realm/e0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/a;->g()V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {v1}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lio/realm/internal/n;->j(Lio/realm/y;Lio/realm/e0;Ljava/util/Map;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null object cannot be inserted into Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
