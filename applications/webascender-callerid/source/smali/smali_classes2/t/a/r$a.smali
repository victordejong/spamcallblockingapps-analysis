.class public Lt/a/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lt/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lt/a/o;

.field private c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lt/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lt/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt/a/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lt/a/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/a/r$a;->c:Ljava/util/Collection;

    .line 3
    sget-object v0, Lt/a/i;->a:Lt/a/h;

    iput-object v0, p0, Lt/a/r$a;->d:Lt/a/h;

    .line 4
    iput-object p1, p0, Lt/a/r$a;->a:Ljava/util/Collection;

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lt/a/r$a;->e:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lt/a/r;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lt/a/g;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Lt/a/g;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lt/a/q;
    .locals 7

    .line 1
    new-instance v2, Lt/a/c;

    iget-object v0, p0, Lt/a/r$a;->a:Ljava/util/Collection;

    invoke-direct {v2, v0}, Lt/a/c;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v3, Lt/a/b;

    iget-object v0, p0, Lt/a/r$a;->c:Ljava/util/Collection;

    invoke-direct {v3, v0}, Lt/a/b;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {v2}, Lt/a/c;->c()Lt/a/o;

    move-result-object v0

    iget-object v1, p0, Lt/a/r$a;->b:Lt/a/o;

    invoke-static {v0, v1}, Lt/a/o;->f(Lt/a/o;Lt/a/o;)Lt/a/o;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lt/a/r$a;->c()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 5
    new-instance v6, Lt/a/s;

    iget-object v4, p0, Lt/a/r$a;->d:Lt/a/h;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lt/a/s;-><init>(Lt/a/o;Lt/a/c;Lt/a/b;Lt/a/h;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method public d(Lt/a/h;)Lt/a/r$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt/a/h<",
            "Ljava/lang/Object;",
            ">;)",
            "Lt/a/r$a;"
        }
    .end annotation

    const-string v0, "Notifier must not be null"

    .line 1
    invoke-direct {p0, p1, v0}, Lt/a/r$a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lt/a/r$a;->d:Lt/a/h;

    return-object p0
.end method

.method public varargs e([Lt/a/m;)Lt/a/r$a;
    .locals 1

    const-string v0, "Middleware must not be null"

    .line 1
    invoke-direct {p0, p1, v0}, Lt/a/r$a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lt/a/r$a;->c:Ljava/util/Collection;

    return-object p0
.end method
