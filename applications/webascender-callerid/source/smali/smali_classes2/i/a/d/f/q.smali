.class public final Li/a/d/f/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/f/z;
.implements Ljava/io/Closeable;


# static fields
.field private static final h:Ljava/util/logging/Logger;


# instance fields
.field private final f:Li/a/d/f/x;

.field private final g:Li/a/d/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/d/d/a<",
            "Li/a/d/f/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Li/a/d/f/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Li/a/d/f/q;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Li/a/d/c/d;Li/a/d/f/h;Li/a/d/e/d;Ljava/util/function/Supplier;Li/a/d/f/b0/h;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/d/c/d;",
            "Li/a/d/f/h;",
            "Li/a/d/e/d;",
            "Ljava/util/function/Supplier<",
            "Li/a/d/f/s;",
            ">;",
            "Li/a/d/f/b0/h;",
            "Ljava/util/List<",
            "Li/a/d/f/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v7, Li/a/d/f/x;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Li/a/d/f/x;-><init>(Li/a/d/c/d;Li/a/d/f/h;Li/a/d/e/d;Ljava/util/function/Supplier;Li/a/d/f/b0/h;Ljava/util/List;)V

    iput-object v7, p0, Li/a/d/f/q;->f:Li/a/d/f/x;

    .line 3
    new-instance p1, Li/a/d/d/a;

    new-instance p2, Li/a/d/f/b;

    invoke-direct {p2, p0}, Li/a/d/f/b;-><init>(Li/a/d/f/q;)V

    invoke-direct {p1, p2}, Li/a/d/d/a;-><init>(Ljava/util/function/Function;)V

    iput-object p1, p0, Li/a/d/f/q;->g:Li/a/d/d/a;

    return-void
.end method

.method public static b()Li/a/d/f/r;
    .locals 1

    .line 1
    new-instance v0, Li/a/d/f/r;

    invoke-direct {v0}, Li/a/d/f/r;-><init>()V

    return-object v0
.end method

.method private synthetic c(Li/a/d/c/f;)Li/a/d/f/p;
    .locals 2

    .line 1
    new-instance v0, Li/a/d/f/p;

    iget-object v1, p0, Li/a/d/f/q;->f:Li/a/d/f/x;

    invoke-direct {v0, v1, p1}, Li/a/d/f/p;-><init>(Li/a/d/f/x;Li/a/d/c/f;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/x;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    sget-object p1, Li/a/d/f/q;->h:Ljava/util/logging/Logger;

    const-string v0, "Tracer requested without instrumentation name."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string p1, "unknown"

    .line 3
    :cond_1
    iget-object v0, p0, Li/a/d/f/q;->g:Li/a/d/d/a;

    invoke-virtual {v0, p1, p2}, Li/a/d/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/a/a/f/x;

    return-object p1
.end method

.method public close()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Li/a/d/f/q;->shutdown()Li/a/d/c/e;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Li/a/d/c/e;->d(JLjava/util/concurrent/TimeUnit;)Li/a/d/c/e;

    return-void
.end method

.method public synthetic e(Li/a/d/c/f;)Li/a/d/f/p;
    .locals 0

    invoke-direct {p0, p1}, Li/a/d/f/q;->c(Li/a/d/c/f;)Li/a/d/f/p;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Li/a/a/f/x;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Li/a/d/f/q;->a(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/x;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()Li/a/d/c/e;
    .locals 3

    .line 1
    iget-object v0, p0, Li/a/d/f/q;->f:Li/a/d/f/x;

    invoke-virtual {v0}, Li/a/d/f/x;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Li/a/d/f/q;->h:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Calling shutdown() multiple times."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Li/a/d/c/e;->g()Li/a/d/c/e;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Li/a/d/f/q;->f:Li/a/d/f/x;

    invoke-virtual {v0}, Li/a/d/f/x;->h()Li/a/d/c/e;

    move-result-object v0

    return-object v0
.end method
