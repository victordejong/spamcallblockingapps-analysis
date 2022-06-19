.class public final Lio/grpc/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/b0$c;,
        Lio/grpc/b0$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/logging/Logger;

.field private static final e:Lio/grpc/b0;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/e0<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/e0<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/e0<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/b0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/b0;->d:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lio/grpc/b0;

    invoke-direct {v0}, Lio/grpc/b0;-><init>()V

    sput-object v0, Lio/grpc/b0;->e:Lio/grpc/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lio/grpc/b0;->a:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/b0;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/b0;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/b0;->d:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static b(Ljava/util/Map;Lio/grpc/e0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/grpc/e0<",
            "*>;>(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/grpc/j0;->e()Lio/grpc/f0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/f0;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/e0;

    return-void
.end method

.method public static f(Lio/grpc/j0;)J
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/grpc/j0;->e()Lio/grpc/f0;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/f0;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()Lio/grpc/b0;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/b0;->e:Lio/grpc/b0;

    return-object v0
.end method

.method private static h(Ljava/util/Map;Lio/grpc/e0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/grpc/e0<",
            "*>;>(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/grpc/b0;->f(Lio/grpc/j0;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/e0;

    return-void
.end method


# virtual methods
.method public c(Lio/grpc/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/e0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/b0;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/b0;->b(Ljava/util/Map;Lio/grpc/e0;)V

    return-void
.end method

.method public d(Lio/grpc/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/e0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/b0;->a:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, p1}, Lio/grpc/b0;->b(Ljava/util/Map;Lio/grpc/e0;)V

    return-void
.end method

.method public e(Lio/grpc/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/e0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/b0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/b0;->b(Ljava/util/Map;Lio/grpc/e0;)V

    return-void
.end method

.method public i(Lio/grpc/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/e0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/b0;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/b0;->h(Ljava/util/Map;Lio/grpc/e0;)V

    return-void
.end method

.method public j(Lio/grpc/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/e0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/b0;->a:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, p1}, Lio/grpc/b0;->h(Ljava/util/Map;Lio/grpc/e0;)V

    return-void
.end method

.method public k(Lio/grpc/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/e0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/b0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/b0;->h(Ljava/util/Map;Lio/grpc/e0;)V

    return-void
.end method
