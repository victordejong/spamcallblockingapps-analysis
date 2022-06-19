.class public Le/m/a/b/j/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/u;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static volatile e:Le/m/a/b/j/w;


# instance fields
.field public final a:Le/m/a/b/j/e0/a;

.field public final b:Le/m/a/b/j/e0/a;

.field public final c:Le/m/a/b/j/c0/e;

.field public final d:Le/m/a/b/j/c0/h/t;


# direct methods
.method public constructor <init>(Le/m/a/b/j/e0/a;Le/m/a/b/j/e0/a;Le/m/a/b/j/c0/e;Le/m/a/b/j/c0/h/t;Le/m/a/b/j/c0/h/v;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/j/v;->a:Le/m/a/b/j/e0/a;

    .line 3
    iput-object p2, p0, Le/m/a/b/j/v;->b:Le/m/a/b/j/e0/a;

    .line 4
    iput-object p3, p0, Le/m/a/b/j/v;->c:Le/m/a/b/j/c0/e;

    .line 5
    iput-object p4, p0, Le/m/a/b/j/v;->d:Le/m/a/b/j/c0/h/t;

    .line 6
    iget-object p1, p5, Le/m/a/b/j/c0/h/v;->a:Ljava/util/concurrent/Executor;

    new-instance p2, Le/m/a/b/j/c0/h/n;

    invoke-direct {p2, p5}, Le/m/a/b/j/c0/h/n;-><init>(Le/m/a/b/j/c0/h/v;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()Le/m/a/b/j/v;
    .locals 2

    .line 1
    sget-object v0, Le/m/a/b/j/v;->e:Le/m/a/b/j/w;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/m/a/b/j/k;

    .line 3
    iget-object v0, v0, Le/m/a/b/j/k;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/b/j/v;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Le/m/a/b/j/l;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/b/j/l;",
            ")",
            "Ljava/util/Set<",
            "Le/m/a/b/b;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Le/m/a/b/j/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Le/m/a/b/j/l;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Le/m/a/b/b;

    const-string v0, "proto"

    invoke-direct {p0, v0}, Le/m/a/b/b;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Le/m/a/b/j/v;->e:Le/m/a/b/j/w;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/m/a/b/j/v;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/m/a/b/j/v;->e:Le/m/a/b/j/w;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Landroid/content/Context;

    .line 6
    new-instance v1, Le/m/a/b/j/k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/m/a/b/j/k;-><init>(Landroid/content/Context;Le/m/a/b/j/k$a;)V

    .line 7
    sput-object v1, Le/m/a/b/j/v;->e:Le/m/a/b/j/w;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public d(Le/m/a/b/j/l;)Le/m/a/b/g;
    .locals 4

    .line 1
    new-instance v0, Le/m/a/b/j/s;

    .line 2
    invoke-static {p1}, Le/m/a/b/j/v;->b(Le/m/a/b/j/l;)Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-static {}, Le/m/a/b/j/r;->a()Le/m/a/b/j/r$a;

    move-result-object v2

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cct"

    invoke-virtual {v2, v3}, Le/m/a/b/j/r$a;->b(Ljava/lang/String;)Le/m/a/b/j/r$a;

    .line 5
    check-cast p1, Le/m/a/b/i/c;

    invoke-virtual {p1}, Le/m/a/b/i/c;->c()[B

    move-result-object p1

    check-cast v2, Le/m/a/b/j/j$b;

    .line 6
    iput-object p1, v2, Le/m/a/b/j/j$b;->b:[B

    .line 7
    invoke-virtual {v2}, Le/m/a/b/j/j$b;->a()Le/m/a/b/j/r;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Le/m/a/b/j/s;-><init>(Ljava/util/Set;Le/m/a/b/j/r;Le/m/a/b/j/u;)V

    return-object v0
.end method
