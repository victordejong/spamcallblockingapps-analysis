.class public Lio/realm/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:J

.field private f:Lio/realm/d0;

.field private g:Z

.field private h:Lio/realm/internal/OsRealmConfig$c;

.field private i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Lio/realm/d1/b;

.field private l:Lio/realm/y$b;

.field private m:Z

.field private n:Lio/realm/CompactOnLaunchCallback;

.field private o:J

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/realm/a;->m:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/realm/b0$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/b0$a;->i:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/b0$a;->j:Ljava/util/HashSet;

    const-wide v0, 0x7fffffffffffffffL

    .line 5
    iput-wide v0, p0, Lio/realm/b0$a;->o:J

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1}, Lio/realm/internal/l;->a(Landroid/content/Context;)V

    .line 7
    invoke-direct {p0, p1}, Lio/realm/b0$a;->d(Landroid/content/Context;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call `Realm.init(Context)` before creating a RealmConfiguration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lio/realm/b0$a;->a:Ljava/io/File;

    const-string p1, "default.realm"

    .line 2
    iput-object p1, p0, Lio/realm/b0$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/realm/b0$a;->d:[B

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lio/realm/b0$a;->e:J

    .line 5
    iput-object p1, p0, Lio/realm/b0$a;->f:Lio/realm/d0;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/realm/b0$a;->g:Z

    .line 7
    sget-object v1, Lio/realm/internal/OsRealmConfig$c;->FULL:Lio/realm/internal/OsRealmConfig$c;

    iput-object v1, p0, Lio/realm/b0$a;->h:Lio/realm/internal/OsRealmConfig$c;

    .line 8
    iput-boolean v0, p0, Lio/realm/b0$a;->m:Z

    .line 9
    iput-object p1, p0, Lio/realm/b0$a;->n:Lio/realm/CompactOnLaunchCallback;

    .line 10
    invoke-static {}, Lio/realm/b0;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lio/realm/b0$a;->i:Ljava/util/HashSet;

    invoke-static {}, Lio/realm/b0;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    iput-boolean v0, p0, Lio/realm/b0$a;->p:Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lio/realm/b0$a;->q:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lio/realm/b0$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/realm/b0$a;->q:Z

    return-object p0
.end method

.method public b(Z)Lio/realm/b0$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/realm/b0$a;->p:Z

    return-object p0
.end method

.method public c()Lio/realm/b0;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lio/realm/b0$a;->m:Z

    if-eqz v1, :cond_4

    .line 2
    iget-object v1, v0, Lio/realm/b0$a;->l:Lio/realm/y$b;

    if-nez v1, :cond_3

    .line 3
    iget-object v1, v0, Lio/realm/b0$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4
    iget-boolean v1, v0, Lio/realm/b0$a;->g:Z

    if-nez v1, :cond_1

    .line 5
    iget-object v1, v0, Lio/realm/b0$a;->n:Lio/realm/CompactOnLaunchCallback;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\'compactOnLaunch()\' and read-only Realms cannot be combined"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\'deleteRealmIfMigrationNeeded()\' and read-only Realms cannot be combined"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only Realms provided using \'assetFile(path)\' can be marked read-only. No such Realm was provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Realm is marked as read-only. Read-only Realms cannot use initialData(Realm.Transaction)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_4
    :goto_0
    iget-object v1, v0, Lio/realm/b0$a;->k:Lio/realm/d1/b;

    if-nez v1, :cond_5

    invoke-static {}, Lio/realm/internal/Util;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    new-instance v1, Lio/realm/d1/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lio/realm/d1/a;-><init>(Z)V

    iput-object v1, v0, Lio/realm/b0$a;->k:Lio/realm/d1/b;

    .line 12
    :cond_5
    new-instance v1, Lio/realm/b0;

    move-object v3, v1

    new-instance v2, Ljava/io/File;

    move-object v4, v2

    iget-object v5, v0, Lio/realm/b0$a;->a:Ljava/io/File;

    iget-object v6, v0, Lio/realm/b0$a;->b:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, v0, Lio/realm/b0$a;->c:Ljava/lang/String;

    iget-object v6, v0, Lio/realm/b0$a;->d:[B

    iget-wide v7, v0, Lio/realm/b0$a;->e:J

    iget-object v9, v0, Lio/realm/b0$a;->f:Lio/realm/d0;

    iget-boolean v10, v0, Lio/realm/b0$a;->g:Z

    iget-object v11, v0, Lio/realm/b0$a;->h:Lio/realm/internal/OsRealmConfig$c;

    iget-object v2, v0, Lio/realm/b0$a;->i:Ljava/util/HashSet;

    iget-object v12, v0, Lio/realm/b0$a;->j:Ljava/util/HashSet;

    .line 13
    invoke-static {v2, v12}, Lio/realm/b0;->b(Ljava/util/Set;Ljava/util/Set;)Lio/realm/internal/n;

    move-result-object v12

    iget-object v13, v0, Lio/realm/b0$a;->k:Lio/realm/d1/b;

    iget-object v14, v0, Lio/realm/b0$a;->l:Lio/realm/y$b;

    iget-boolean v15, v0, Lio/realm/b0$a;->m:Z

    iget-object v2, v0, Lio/realm/b0$a;->n:Lio/realm/CompactOnLaunchCallback;

    move-object/from16 v16, v2

    const/16 v17, 0x0

    move-object/from16 v22, v1

    iget-wide v1, v0, Lio/realm/b0$a;->o:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Lio/realm/b0$a;->p:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lio/realm/b0$a;->q:Z

    move/from16 v21, v1

    invoke-direct/range {v3 .. v21}, Lio/realm/b0;-><init>(Ljava/io/File;Ljava/lang/String;[BJLio/realm/d0;ZLio/realm/internal/OsRealmConfig$c;Lio/realm/internal/n;Lio/realm/d1/b;Lio/realm/y$b;ZLio/realm/CompactOnLaunchCallback;ZJZZ)V

    return-object v22
.end method

.method public e(Lio/realm/d0;)Lio/realm/b0$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lio/realm/b0$a;->f:Lio/realm/d0;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null migration must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(J)Lio/realm/b0$a;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    iput-wide p1, p0, Lio/realm/b0$a;->e:J

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Realm schema version numbers must be 0 (zero) or higher. Yours was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
