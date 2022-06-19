.class Lcom/google/firebase/crashlytics/d/g/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final s:Ljava/io/FilenameFilter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/crashlytics/d/g/r;

.field private final c:Lcom/google/firebase/crashlytics/d/g/m;

.field private final d:Lcom/google/firebase/crashlytics/d/g/f0;

.field private final e:Lcom/google/firebase/crashlytics/d/g/h;

.field private final f:Lcom/google/firebase/crashlytics/d/g/v;

.field private final g:Lcom/google/firebase/crashlytics/d/k/h;

.field private final h:Lcom/google/firebase/crashlytics/d/g/a;

.field private final i:Lcom/google/firebase/crashlytics/d/h/b$b;

.field private final j:Lcom/google/firebase/crashlytics/d/h/b;

.field private final k:Lcom/google/firebase/crashlytics/d/a;

.field private final l:Ljava/lang/String;

.field private final m:Lcom/google/firebase/crashlytics/d/e/a;

.field private final n:Lcom/google/firebase/crashlytics/d/g/d0;

.field private o:Lcom/google/firebase/crashlytics/d/g/p;

.field final p:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final q:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final r:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/g/i;->a()Ljava/io/FilenameFilter;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/d/g/j;->s:Ljava/io/FilenameFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/g/h;Lcom/google/firebase/crashlytics/d/g/v;Lcom/google/firebase/crashlytics/d/g/r;Lcom/google/firebase/crashlytics/d/k/h;Lcom/google/firebase/crashlytics/d/g/m;Lcom/google/firebase/crashlytics/d/g/a;Lcom/google/firebase/crashlytics/d/g/f0;Lcom/google/firebase/crashlytics/d/h/b;Lcom/google/firebase/crashlytics/d/h/b$b;Lcom/google/firebase/crashlytics/d/g/d0;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/crashlytics/d/e/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/h;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->p:Lcom/google/android/gms/tasks/h;

    .line 3
    new-instance v0, Lcom/google/android/gms/tasks/h;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->q:Lcom/google/android/gms/tasks/h;

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/h;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->r:Lcom/google/android/gms/tasks/h;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 6
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/g/j;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/g/j;->e:Lcom/google/firebase/crashlytics/d/g/h;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/g/j;->f:Lcom/google/firebase/crashlytics/d/g/v;

    .line 9
    iput-object p4, p0, Lcom/google/firebase/crashlytics/d/g/j;->b:Lcom/google/firebase/crashlytics/d/g/r;

    .line 10
    iput-object p5, p0, Lcom/google/firebase/crashlytics/d/g/j;->g:Lcom/google/firebase/crashlytics/d/k/h;

    .line 11
    iput-object p6, p0, Lcom/google/firebase/crashlytics/d/g/j;->c:Lcom/google/firebase/crashlytics/d/g/m;

    .line 12
    iput-object p7, p0, Lcom/google/firebase/crashlytics/d/g/j;->h:Lcom/google/firebase/crashlytics/d/g/a;

    .line 13
    iput-object p8, p0, Lcom/google/firebase/crashlytics/d/g/j;->d:Lcom/google/firebase/crashlytics/d/g/f0;

    .line 14
    iput-object p9, p0, Lcom/google/firebase/crashlytics/d/g/j;->j:Lcom/google/firebase/crashlytics/d/h/b;

    .line 15
    iput-object p10, p0, Lcom/google/firebase/crashlytics/d/g/j;->i:Lcom/google/firebase/crashlytics/d/h/b$b;

    .line 16
    iput-object p12, p0, Lcom/google/firebase/crashlytics/d/g/j;->k:Lcom/google/firebase/crashlytics/d/a;

    .line 17
    iget-object p1, p7, Lcom/google/firebase/crashlytics/d/g/a;->g:Lcom/google/firebase/crashlytics/d/o/b;

    invoke-interface {p1}, Lcom/google/firebase/crashlytics/d/o/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/g/j;->l:Ljava/lang/String;

    .line 18
    iput-object p13, p0, Lcom/google/firebase/crashlytics/d/g/j;->m:Lcom/google/firebase/crashlytics/d/e/a;

    .line 19
    iput-object p11, p0, Lcom/google/firebase/crashlytics/d/g/j;->n:Lcom/google/firebase/crashlytics/d/g/d0;

    return-void
.end method

.method private static A()J
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/g/j;->E(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method static C(Lcom/google/firebase/crashlytics/d/d;Ljava/lang/String;Ljava/io/File;[B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/d;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "[B)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/d/g/z;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/d/g/y;

    invoke-direct {v0, p2}, Lcom/google/firebase/crashlytics/d/g/y;-><init>(Ljava/io/File;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/g/y;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/g/y;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Lcom/google/firebase/crashlytics/d/g/e;

    const-string v2, "logs_file"

    const-string v3, "logs"

    invoke-direct {v1, v2, v3, p3}, Lcom/google/firebase/crashlytics/d/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p3, Lcom/google/firebase/crashlytics/d/g/u;

    .line 7
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->f()Ljava/io/File;

    move-result-object v1

    const-string v2, "crash_meta_file"

    const-string v3, "metadata"

    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/d/g/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 8
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p3, Lcom/google/firebase/crashlytics/d/g/u;

    .line 10
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->e()Ljava/io/File;

    move-result-object v1

    const-string v2, "session_meta_file"

    const-string v3, "session"

    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/d/g/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 11
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance p3, Lcom/google/firebase/crashlytics/d/g/u;

    .line 13
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "app_meta_file"

    const-string v3, "app"

    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/d/g/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 14
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p3, Lcom/google/firebase/crashlytics/d/g/u;

    .line 16
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_meta_file"

    const-string v3, "device"

    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/d/g/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 17
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance p3, Lcom/google/firebase/crashlytics/d/g/u;

    .line 19
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "os_meta_file"

    const-string v3, "os"

    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/d/g/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 20
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance p3, Lcom/google/firebase/crashlytics/d/g/u;

    .line 22
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->d()Ljava/io/File;

    move-result-object p0

    const-string v1, "minidump_file"

    const-string v2, "minidump"

    invoke-direct {p3, v1, v2, p0}, Lcom/google/firebase/crashlytics/d/g/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 23
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance p0, Lcom/google/firebase/crashlytics/d/g/u;

    const-string p3, "user_meta_file"

    const-string v1, "user"

    invoke-direct {p0, p3, v1, p2}, Lcom/google/firebase/crashlytics/d/g/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance p0, Lcom/google/firebase/crashlytics/d/g/u;

    const-string p2, "keys_file"

    const-string p3, "keys"

    invoke-direct {p0, p2, p3, p1}, Lcom/google/firebase/crashlytics/d/g/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static E(Ljava/util/Date;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic H(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".ae"

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static J(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/g/j;->u([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private K(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/g/j;->B()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/d/g/j;->J(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private L(J)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/g/j;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 5
    new-instance v1, Lcom/google/firebase/crashlytics/d/g/j$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/crashlytics/d/g/j$a;-><init>(Lcom/google/firebase/crashlytics/d/g/j;J)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/j;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method private M()Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/g/j;->I()[Ljava/io/File;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 5
    invoke-direct {p0, v5, v6}, Lcom/google/firebase/crashlytics/d/g/j;->L(J)Lcom/google/android/gms/tasks/g;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse timestamp from file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 7
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->f(Ljava/util/Collection;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method private Q()Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->b:Lcom/google/firebase/crashlytics/d/g/r;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/r;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Automatic data collection is enabled. Allowing upload."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->p:Lcom/google/android/gms/tasks/h;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Automatic data collection is disabled."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Notifying that unsent reports are available."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->p:Lcom/google/android/gms/tasks/h;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->b:Lcom/google/firebase/crashlytics/d/g/r;

    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/r;->g()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/d/g/j$d;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/d/g/j$d;-><init>(Lcom/google/firebase/crashlytics/d/g/j;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->t(Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const-string v2, "Waiting for send/deleteUnsentReports to be called."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j;->q:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/g/h0;->d(Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method private R(Ljava/lang/String;J)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/g/l;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Crashlytics Android SDK/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v1, p1, v0, p2, p3}, Lcom/google/firebase/crashlytics/d/a;->d(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private T(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->f:Lcom/google/firebase/crashlytics/d/g/v;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/v;->d()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->h:Lcom/google/firebase/crashlytics/d/g/a;

    iget-object v4, v0, Lcom/google/firebase/crashlytics/d/g/a;->e:Ljava/lang/String;

    .line 3
    iget-object v5, v0, Lcom/google/firebase/crashlytics/d/g/a;->f:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->f:Lcom/google/firebase/crashlytics/d/g/v;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/v;->a()Ljava/lang/String;

    move-result-object v6

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->h:Lcom/google/firebase/crashlytics/d/g/a;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/d/g/a;->c:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/g/s;->determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/g/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/s;->getId()I

    move-result v7

    .line 7
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j;->k:Lcom/google/firebase/crashlytics/d/a;

    iget-object v8, p0, Lcom/google/firebase/crashlytics/d/g/j;->l:Ljava/lang/String;

    move-object v2, p1

    invoke-interface/range {v1 .. v8}, Lcom/google/firebase/crashlytics/d/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private U(Ljava/lang/String;)V
    .locals 16

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/crashlytics/d/g/j;->y()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/g/g;->l()I

    move-result v5

    .line 4
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/d/g/g;->t()J

    move-result-wide v8

    .line 7
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v10, v1

    mul-long v10, v10, v2

    .line 8
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/g/g;->y(Landroid/content/Context;)Z

    move-result v12

    .line 9
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/g/g;->m(Landroid/content/Context;)I

    move-result v13

    .line 10
    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 11
    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object/from16 v0, p0

    .line 12
    iget-object v3, v0, Lcom/google/firebase/crashlytics/d/g/j;->k:Lcom/google/firebase/crashlytics/d/a;

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v15}, Lcom/google/firebase/crashlytics/d/a;->c(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private V(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/g/j;->y()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/g/g;->z(Landroid/content/Context;)Z

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/g/j;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v3, p1, v0, v1, v2}, Lcom/google/firebase/crashlytics/d/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Ljava/util/Date;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/g/j;->E(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/google/firebase/crashlytics/d/g/j;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/g/j;->z()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/firebase/crashlytics/d/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/g/j;->j:Lcom/google/firebase/crashlytics/d/h/b;

    return-object p0
.end method

.method static synthetic d(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/firebase/crashlytics/d/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/g/j;->m:Lcom/google/firebase/crashlytics/d/e/a;

    return-object p0
.end method

.method static synthetic e(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/firebase/crashlytics/d/g/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/g/j;->c:Lcom/google/firebase/crashlytics/d/g/m;

    return-object p0
.end method

.method static synthetic f(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/firebase/crashlytics/d/g/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/g/j;->n:Lcom/google/firebase/crashlytics/d/g/d0;

    return-object p0
.end method

.method static synthetic g(Lcom/google/firebase/crashlytics/d/g/j;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/d/g/j;->s(J)V

    return-void
.end method

.method static synthetic h(Lcom/google/firebase/crashlytics/d/g/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/g/j;->r()V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/firebase/crashlytics/d/g/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/g/j;->b:Lcom/google/firebase/crashlytics/d/g/r;

    return-object p0
.end method

.method static synthetic j(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/firebase/crashlytics/d/g/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/g/j;->e:Lcom/google/firebase/crashlytics/d/g/h;

    return-object p0
.end method

.method static synthetic k(Lcom/google/firebase/crashlytics/d/g/j;)Lcom/google/android/gms/tasks/g;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/g/j;->M()Lcom/google/android/gms/tasks/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l([Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/g/j;->n([Ljava/io/File;)V

    return-void
.end method

.method private m(Lcom/google/firebase/crashlytics/d/g/f0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->e:Lcom/google/firebase/crashlytics/d/g/h;

    new-instance v1, Lcom/google/firebase/crashlytics/d/g/j$h;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/d/g/j$h;-><init>(Lcom/google/firebase/crashlytics/d/g/j;Lcom/google/firebase/crashlytics/d/g/f0;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/g/h;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method private static n([Ljava/io/File;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private q(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->n:Lcom/google/firebase/crashlytics/d/g/d0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/d0;->h()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "No open sessions to be closed."

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/g/j;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v2, v1}, Lcom/google/firebase/crashlytics/d/a;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/d/g/j;->v(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/g/j;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v2, v1}, Lcom/google/firebase/crashlytics/d/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not finalize native session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/g/j;->n:Lcom/google/firebase/crashlytics/d/g/d0;

    invoke-static {}, Lcom/google/firebase/crashlytics/d/g/j;->A()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/firebase/crashlytics/d/g/d0;->d(JLjava/lang/String;)V

    return-void
.end method

.method private r()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/g/j;->A()J

    move-result-wide v0

    .line 2
    new-instance v2, Lcom/google/firebase/crashlytics/d/g/f;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/g/j;->f:Lcom/google/firebase/crashlytics/d/g/v;

    invoke-direct {v2, v3}, Lcom/google/firebase/crashlytics/d/g/f;-><init>(Lcom/google/firebase/crashlytics/d/g/v;)V

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/g/f;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening a new session with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/g/j;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v3, v2}, Lcom/google/firebase/crashlytics/d/a;->h(Ljava/lang/String;)Z

    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/google/firebase/crashlytics/d/g/j;->R(Ljava/lang/String;J)V

    .line 6
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/d/g/j;->T(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/d/g/j;->V(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/d/g/j;->U(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/g/j;->j:Lcom/google/firebase/crashlytics/d/h/b;

    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/d/h/b;->e(Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/g/j;->n:Lcom/google/firebase/crashlytics/d/g/d0;

    invoke-virtual {v3, v2, v0, v1}, Lcom/google/firebase/crashlytics/d/g/d0;->i(Ljava/lang/String;J)V

    return-void
.end method

.method private s(J)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/g/j;->B()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".ae"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Could not write app exception marker."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static u([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    :cond_0
    return-object p0
.end method

.method private v(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing native report for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->k:Lcom/google/firebase/crashlytics/d/a;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/d/a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/d;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/d;->d()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 7
    new-instance v3, Lcom/google/firebase/crashlytics/d/h/b;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/d/g/j;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/firebase/crashlytics/d/g/j;->i:Lcom/google/firebase/crashlytics/d/h/b$b;

    invoke-direct {v3, v4, v5, p1}, Lcom/google/firebase/crashlytics/d/h/b;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/h/b$b;Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/g/j;->D()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Couldn\'t create native sessions directory"

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/crashlytics/d/g/j;->s(J)V

    .line 12
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/g/j;->B()Ljava/io/File;

    move-result-object v1

    .line 13
    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/d/h/b;->b()[B

    move-result-object v2

    .line 14
    invoke-static {v0, p1, v1, v2}, Lcom/google/firebase/crashlytics/d/g/j;->C(Lcom/google/firebase/crashlytics/d/d;Ljava/lang/String;Ljava/io/File;[B)Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-static {v4, v0}, Lcom/google/firebase/crashlytics/d/g/a0;->b(Ljava/io/File;Ljava/util/List;)V

    .line 16
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j;->n:Lcom/google/firebase/crashlytics/d/g/d0;

    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/crashlytics/d/g/d0;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 17
    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/d/h/b;->a()V

    return-void

    .line 18
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No minidump data found for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method private static x()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.firebase.crash.FirebaseCrash"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private y()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method private z()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->n:Lcom/google/firebase/crashlytics/d/g/d0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/d0;->h()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method B()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->g:Lcom/google/firebase/crashlytics/d/k/h;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/k/h;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method D()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/g/j;->B()Ljava/io/File;

    move-result-object v1

    const-string v2, "native-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method declared-synchronized F(Lcom/google/firebase/crashlytics/d/m/e;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics is handling uncaught exception \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 4
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->e:Lcom/google/firebase/crashlytics/d/g/h;

    new-instance v1, Lcom/google/firebase/crashlytics/d/g/j$c;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/crashlytics/d/g/j$c;-><init>(Lcom/google/firebase/crashlytics/d/g/j;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Lcom/google/firebase/crashlytics/d/m/e;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/g/h;->i(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/g/h0;->a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "WILLIS"

    const-string p3, "ERROR"

    .line 8
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method G()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->o:Lcom/google/firebase/crashlytics/d/g/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method I()[Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/d/g/j;->s:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/d/g/j;->K(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->e:Lcom/google/firebase/crashlytics/d/g/h;

    new-instance v1, Lcom/google/firebase/crashlytics/d/g/j$i;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/d/g/j$i;-><init>(Lcom/google/firebase/crashlytics/d/g/j;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/g/h;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method O(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->d:Lcom/google/firebase/crashlytics/d/g/f0;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/g/f0;->d(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/g/j;->d:Lcom/google/firebase/crashlytics/d/g/f0;

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/g/j;->m(Lcom/google/firebase/crashlytics/d/g/f0;)V

    return-void
.end method

.method P(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/firebase/crashlytics/d/m/i/a;",
            ">;)",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->n:Lcom/google/firebase/crashlytics/d/g/d0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/d0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "No reports are available."

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/g/j;->p:Lcom/google/android/gms/tasks/h;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Unsent reports are available."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/g/j;->Q()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/d/g/j$e;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/d/g/j$e;-><init>(Lcom/google/firebase/crashlytics/d/g/j;Lcom/google/android/gms/tasks/g;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->t(Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method S(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j;->e:Lcom/google/firebase/crashlytics/d/g/h;

    new-instance v2, Lcom/google/firebase/crashlytics/d/g/j$g;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/google/firebase/crashlytics/d/g/j$g;-><init>(Lcom/google/firebase/crashlytics/d/g/j;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/g/h;->g(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method W(JLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->e:Lcom/google/firebase/crashlytics/d/g/h;

    new-instance v1, Lcom/google/firebase/crashlytics/d/g/j$f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/d/g/j$f;-><init>(Lcom/google/firebase/crashlytics/d/g/j;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/g/h;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method o()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->c:Lcom/google/firebase/crashlytics/d/g/m;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/m;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/g/j;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/g/j;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v2, v0}, Lcom/google/firebase/crashlytics/d/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Found previous crash marker."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->c:Lcom/google/firebase/crashlytics/d/g/m;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/m;->d()Z

    return v1
.end method

.method p()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/d/g/j;->q(Z)V

    return-void
.end method

.method t(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crashlytics/d/m/e;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/g/j;->N()V

    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/d/g/j$b;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/d/g/j$b;-><init>(Lcom/google/firebase/crashlytics/d/g/j;)V

    .line 3
    new-instance v1, Lcom/google/firebase/crashlytics/d/g/p;

    invoke-direct {v1, v0, p2, p1}, Lcom/google/firebase/crashlytics/d/g/p;-><init>(Lcom/google/firebase/crashlytics/d/g/p$a;Lcom/google/firebase/crashlytics/d/m/e;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/g/j;->o:Lcom/google/firebase/crashlytics/d/g/p;

    .line 4
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method w()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/j;->e:Lcom/google/firebase/crashlytics/d/g/h;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/h;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/g/j;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Skipping session finalization because a crash has already occurred."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Finalizing previously open sessions."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/d/g/j;->q(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const-string v2, "Closed all previously open sessions"

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    const-string v3, "Unable to finalize previously open sessions."

    invoke-virtual {v2, v3, v0}, Lcom/google/firebase/crashlytics/d/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
