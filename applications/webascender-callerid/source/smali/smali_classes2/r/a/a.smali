.class public final Lr/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr/a/a$b;,
        Lr/a/a$c;
    }
.end annotation


# static fields
.field private static final a:[Lr/a/a$c;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field static volatile c:[Lr/a/a$c;

.field private static final d:Lr/a/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lr/a/a$c;

    .line 1
    sput-object v0, Lr/a/a;->a:[Lr/a/a$c;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lr/a/a;->b:Ljava/util/List;

    .line 3
    sput-object v0, Lr/a/a;->c:[Lr/a/a$c;

    .line 4
    new-instance v0, Lr/a/a$a;

    invoke-direct {v0}, Lr/a/a$a;-><init>()V

    sput-object v0, Lr/a/a;->d:Lr/a/a$c;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lr/a/a;->d:Lr/a/a$c;

    invoke-virtual {v0, p0, p1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lr/a/a;->d:Lr/a/a$c;

    invoke-virtual {v0, p0}, Lr/a/a$c;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lr/a/a;->d:Lr/a/a$c;

    invoke-virtual {v0, p0, p1, p2}, Lr/a/a$c;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lr/a/a;->d:Lr/a/a$c;

    invoke-virtual {v0, p0, p1}, Lr/a/a$c;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lr/a/a;->d:Lr/a/a$c;

    invoke-virtual {v0, p0}, Lr/a/a$c;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lr/a/a;->d:Lr/a/a$c;

    invoke-virtual {v0, p0, p1, p2}, Lr/a/a$c;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr/a/a$c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lr/a/a;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

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

.method public static varargs h(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lr/a/a;->d:Lr/a/a$c;

    invoke-virtual {v0, p0, p1}, Lr/a/a$c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Lr/a/a$c;)V
    .locals 1

    const-string v0, "tree == null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lr/a/a;->d:Lr/a/a$c;

    if-eq p0, v0, :cond_0

    .line 3
    sget-object v0, Lr/a/a;->b:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lr/a/a$c;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lr/a/a$c;

    sput-object p0, Lr/a/a;->c:[Lr/a/a$c;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot plant Timber into itself."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/lang/String;)Lr/a/a$c;
    .locals 4

    .line 1
    sget-object v0, Lr/a/a;->c:[Lr/a/a$c;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    iget-object v3, v3, Lr/a/a$c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lr/a/a;->d:Lr/a/a$c;

    return-object p0
.end method

.method public static k()V
    .locals 2

    .line 1
    sget-object v0, Lr/a/a;->b:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    sget-object v1, Lr/a/a;->a:[Lr/a/a$c;

    sput-object v1, Lr/a/a;->c:[Lr/a/a$c;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs l(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lr/a/a;->d:Lr/a/a$c;

    invoke-virtual {v0, p0, p1}, Lr/a/a$c;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
