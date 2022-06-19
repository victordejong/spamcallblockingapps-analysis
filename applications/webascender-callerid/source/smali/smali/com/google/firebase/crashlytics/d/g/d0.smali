.class public Lcom/google/firebase/crashlytics/d/g/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/d/g/n;

.field private final b:Lcom/google/firebase/crashlytics/d/k/g;

.field private final c:Lcom/google/firebase/crashlytics/d/l/c;

.field private final d:Lcom/google/firebase/crashlytics/d/h/b;

.field private final e:Lcom/google/firebase/crashlytics/d/g/f0;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/g/n;Lcom/google/firebase/crashlytics/d/k/g;Lcom/google/firebase/crashlytics/d/l/c;Lcom/google/firebase/crashlytics/d/h/b;Lcom/google/firebase/crashlytics/d/g/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/g/d0;->a:Lcom/google/firebase/crashlytics/d/g/n;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/g/d0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/g/d0;->c:Lcom/google/firebase/crashlytics/d/l/c;

    .line 5
    iput-object p4, p0, Lcom/google/firebase/crashlytics/d/g/d0;->d:Lcom/google/firebase/crashlytics/d/h/b;

    .line 6
    iput-object p5, p0, Lcom/google/firebase/crashlytics/d/g/d0;->e:Lcom/google/firebase/crashlytics/d/g/f0;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/g/d0;Lcom/google/android/gms/tasks/g;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/g/d0;->j(Lcom/google/android/gms/tasks/g;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/g/v;Lcom/google/firebase/crashlytics/d/k/h;Lcom/google/firebase/crashlytics/d/g/a;Lcom/google/firebase/crashlytics/d/h/b;Lcom/google/firebase/crashlytics/d/g/f0;Lcom/google/firebase/crashlytics/d/n/d;Lcom/google/firebase/crashlytics/d/m/e;)Lcom/google/firebase/crashlytics/d/g/d0;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-interface {p2}, Lcom/google/firebase/crashlytics/d/k/h;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/google/firebase/crashlytics/d/g/n;

    invoke-direct {v2, p0, p1, p3, p6}, Lcom/google/firebase/crashlytics/d/g/n;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/g/v;Lcom/google/firebase/crashlytics/d/g/a;Lcom/google/firebase/crashlytics/d/n/d;)V

    .line 3
    new-instance v3, Lcom/google/firebase/crashlytics/d/k/g;

    invoke-direct {v3, v0, p7}, Lcom/google/firebase/crashlytics/d/k/g;-><init>(Ljava/io/File;Lcom/google/firebase/crashlytics/d/m/e;)V

    .line 4
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->a(Landroid/content/Context;)Lcom/google/firebase/crashlytics/d/l/c;

    move-result-object v4

    .line 5
    new-instance p0, Lcom/google/firebase/crashlytics/d/g/d0;

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/crashlytics/d/g/d0;-><init>(Lcom/google/firebase/crashlytics/d/g/n;Lcom/google/firebase/crashlytics/d/k/g;Lcom/google/firebase/crashlytics/d/l/c;Lcom/google/firebase/crashlytics/d/h/b;Lcom/google/firebase/crashlytics/d/g/f0;)V

    return-object p0
.end method

.method private static e(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/d/i/v$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/d/i/v$b;->a()Lcom/google/firebase/crashlytics/d/i/v$b$a;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/d/i/v$b$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/i/v$b$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/d/i/v$b$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/i/v$b$a;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/i/v$b$a;->a()Lcom/google/firebase/crashlytics/d/i/v$b;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/g/c0;->a()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic g(Lcom/google/firebase/crashlytics/d/i/v$b;Lcom/google/firebase/crashlytics/d/i/v$b;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/i/v$b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/i/v$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private j(Lcom/google/android/gms/tasks/g;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/firebase/crashlytics/d/g/o;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/crashlytics/d/g/o;

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics report successfully enqueued to DataTransport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/g/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/d0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/g/o;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/k/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->n()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "Crashlytics report could not be enqueued to DataTransport"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private k(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 11

    move-object v0, p0

    const-string v1, "crash"

    move-object v5, p4

    .line 1
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2
    iget-object v2, v0, Lcom/google/firebase/crashlytics/d/g/d0;->a:Lcom/google/firebase/crashlytics/d/g/n;

    const/4 v8, 0x4

    const/16 v9, 0x8

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v6, p5

    move/from16 v10, p7

    .line 3
    invoke-virtual/range {v2 .. v10}, Lcom/google/firebase/crashlytics/d/g/n;->b(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Lcom/google/firebase/crashlytics/d/i/v$d$d;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/i/v$d$d;->g()Lcom/google/firebase/crashlytics/d/i/v$d$d$b;

    move-result-object v3

    .line 5
    iget-object v4, v0, Lcom/google/firebase/crashlytics/d/g/d0;->d:Lcom/google/firebase/crashlytics/d/h/b;

    invoke-virtual {v4}, Lcom/google/firebase/crashlytics/d/h/b;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/d/i/v$d$d$d;->a()Lcom/google/firebase/crashlytics/d/i/v$d$d$d$a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/firebase/crashlytics/d/i/v$d$d$d$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/i/v$d$d$d$a;

    invoke-virtual {v5}, Lcom/google/firebase/crashlytics/d/i/v$d$d$d$a;->a()Lcom/google/firebase/crashlytics/d/i/v$d$d$d;

    move-result-object v4

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/d/i/v$d$d$b;->d(Lcom/google/firebase/crashlytics/d/i/v$d$d$d;)Lcom/google/firebase/crashlytics/d/i/v$d$d$b;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v4

    const-string v5, "No log data to include with this event."

    invoke-virtual {v4, v5}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v4, v0, Lcom/google/firebase/crashlytics/d/g/d0;->e:Lcom/google/firebase/crashlytics/d/g/f0;

    .line 10
    invoke-virtual {v4}, Lcom/google/firebase/crashlytics/d/g/f0;->a()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/crashlytics/d/g/d0;->e(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    .line 11
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/i/v$d$d;->b()Lcom/google/firebase/crashlytics/d/i/v$d$d$a;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/i/v$d$d$a;->f()Lcom/google/firebase/crashlytics/d/i/v$d$d$a$a;

    move-result-object v2

    .line 14
    invoke-static {v4}, Lcom/google/firebase/crashlytics/d/i/w;->c(Ljava/util/List;)Lcom/google/firebase/crashlytics/d/i/w;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/crashlytics/d/i/v$d$d$a$a;->c(Lcom/google/firebase/crashlytics/d/i/w;)Lcom/google/firebase/crashlytics/d/i/v$d$d$a$a;

    .line 15
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/i/v$d$d$a$a;->a()Lcom/google/firebase/crashlytics/d/i/v$d$d$a;

    move-result-object v2

    .line 16
    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/d/i/v$d$d$b;->b(Lcom/google/firebase/crashlytics/d/i/v$d$d$a;)Lcom/google/firebase/crashlytics/d/i/v$d$d$b;

    .line 17
    :cond_1
    iget-object v2, v0, Lcom/google/firebase/crashlytics/d/g/d0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/d/i/v$d$d$b;->a()Lcom/google/firebase/crashlytics/d/i/v$d$d;

    move-result-object v3

    move-object v4, p3

    invoke-virtual {v2, v3, p3, v1}, Lcom/google/firebase/crashlytics/d/k/g;->C(Lcom/google/firebase/crashlytics/d/i/v$d$d;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/d/g/z;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/crashlytics/d/g/z;

    .line 3
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/d/g/z;->c()Lcom/google/firebase/crashlytics/d/i/v$c$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/crashlytics/d/g/d0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/d/i/v$c;->a()Lcom/google/firebase/crashlytics/d/i/v$c$a;

    move-result-object v1

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/i/w;->c(Ljava/util/List;)Lcom/google/firebase/crashlytics/d/i/w;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/d/i/v$c$a;->b(Lcom/google/firebase/crashlytics/d/i/w;)Lcom/google/firebase/crashlytics/d/i/v$c$a;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/i/v$c$a;->a()Lcom/google/firebase/crashlytics/d/i/v$c;

    move-result-object v0

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/crashlytics/d/k/g;->j(Ljava/lang/String;Lcom/google/firebase/crashlytics/d/i/v$c;)V

    return-void
.end method

.method public d(JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/d0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {v0, p3, p1, p2}, Lcom/google/firebase/crashlytics/d/k/g;->i(Ljava/lang/String;J)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/d0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/k/g;->r()Z

    move-result v0

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/d0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/k/g;->y()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/d0;->a:Lcom/google/firebase/crashlytics/d/g/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/d/g/n;->c(Ljava/lang/String;J)Lcom/google/firebase/crashlytics/d/i/v;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/google/firebase/crashlytics/d/g/d0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/d/k/g;->D(Lcom/google/firebase/crashlytics/d/i/v;)V

    return-void
.end method

.method public l(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    const-string v6, "crash"

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    .line 2
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/d/g/d0;->k(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public m(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting non-fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    const-string v6, "error"

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    .line 2
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/d/g/d0;->k(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/d0;->e:Lcom/google/firebase/crashlytics/d/g/f0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/g/f0;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Could not persist user ID; no user ID available"

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/g/d0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {v1, v0, p1}, Lcom/google/firebase/crashlytics/d/k/g;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/d0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/k/g;->g()V

    return-void
.end method

.method public p(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/g/d0;->b:Lcom/google/firebase/crashlytics/d/k/g;

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/k/g;->z()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/crashlytics/d/g/o;

    .line 5
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/g/d0;->c:Lcom/google/firebase/crashlytics/d/l/c;

    .line 6
    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/d/l/c;->e(Lcom/google/firebase/crashlytics/d/g/o;)Lcom/google/android/gms/tasks/g;

    move-result-object v2

    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/g/b0;->b(Lcom/google/firebase/crashlytics/d/g/d0;)Lcom/google/android/gms/tasks/a;

    move-result-object v3

    .line 7
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/tasks/g;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object v2

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/tasks/j;->f(Ljava/util/Collection;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
