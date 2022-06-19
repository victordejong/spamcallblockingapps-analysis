.class final Lio/grpc/f1/n;
.super Lio/grpc/f;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/f1/o;

.field private final b:Lio/grpc/f1/h2;


# direct methods
.method constructor <init>(Lio/grpc/f1/o;Lio/grpc/f1/h2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/f;-><init>()V

    const-string v0, "tracer"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/f1/o;

    iput-object p1, p0, Lio/grpc/f1/n;->a:Lio/grpc/f1/o;

    const-string p1, "time"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/f1/h2;

    iput-object p2, p0, Lio/grpc/f1/n;->b:Lio/grpc/f1/h2;

    return-void
.end method

.method private c(Lio/grpc/f$a;)Z
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/f$a;->DEBUG:Lio/grpc/f$a;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lio/grpc/f1/n;->a:Lio/grpc/f1/o;

    invoke-virtual {p1}, Lio/grpc/f1/o;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static d(Lio/grpc/f0;Lio/grpc/f$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/grpc/f1/n;->f(Lio/grpc/f$a;)Ljava/util/logging/Level;

    move-result-object p1

    .line 2
    sget-object v0, Lio/grpc/f1/o;->e:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1, p2}, Lio/grpc/f1/o;->d(Lio/grpc/f0;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static varargs e(Lio/grpc/f0;Lio/grpc/f$a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/grpc/f1/n;->f(Lio/grpc/f$a;)Ljava/util/logging/Level;

    move-result-object p1

    .line 2
    sget-object v0, Lio/grpc/f1/o;->e:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p0, p1, p2}, Lio/grpc/f1/o;->d(Lio/grpc/f0;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static f(Lio/grpc/f$a;)Ljava/util/logging/Level;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/f1/n$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object p0
.end method

.method private static g(Lio/grpc/f$a;)Lio/grpc/c0$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/f1/n$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lio/grpc/c0$b;->CT_INFO:Lio/grpc/c0$b;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lio/grpc/c0$b;->CT_WARNING:Lio/grpc/c0$b;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lio/grpc/c0$b;->CT_ERROR:Lio/grpc/c0$b;

    return-object p0
.end method

.method private h(Lio/grpc/f$a;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/f$a;->DEBUG:Lio/grpc/f$a;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/n;->a:Lio/grpc/f1/o;

    new-instance v1, Lio/grpc/c0$a;

    invoke-direct {v1}, Lio/grpc/c0$a;-><init>()V

    .line 3
    invoke-virtual {v1, p2}, Lio/grpc/c0$a;->b(Ljava/lang/String;)Lio/grpc/c0$a;

    .line 4
    invoke-static {p1}, Lio/grpc/f1/n;->g(Lio/grpc/f$a;)Lio/grpc/c0$b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/grpc/c0$a;->c(Lio/grpc/c0$b;)Lio/grpc/c0$a;

    iget-object p1, p0, Lio/grpc/f1/n;->b:Lio/grpc/f1/h2;

    .line 5
    invoke-interface {p1}, Lio/grpc/f1/h2;->a()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lio/grpc/c0$a;->e(J)Lio/grpc/c0$a;

    .line 6
    invoke-virtual {v1}, Lio/grpc/c0$a;->a()Lio/grpc/c0;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lio/grpc/f1/o;->f(Lio/grpc/c0;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/f$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/n;->a:Lio/grpc/f1/o;

    invoke-virtual {v0}, Lio/grpc/f1/o;->b()Lio/grpc/f0;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/grpc/f1/n;->d(Lio/grpc/f0;Lio/grpc/f$a;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/f1/n;->c(Lio/grpc/f$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lio/grpc/f1/n;->h(Lio/grpc/f$a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs b(Lio/grpc/f$a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lio/grpc/f1/n;->f(Lio/grpc/f$a;)Ljava/util/logging/Level;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/f1/n;->c(Lio/grpc/f$a;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lio/grpc/f1/o;->e:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    :goto_1
    invoke-virtual {p0, p1, p2}, Lio/grpc/f1/n;->a(Lio/grpc/f$a;Ljava/lang/String;)V

    return-void
.end method
