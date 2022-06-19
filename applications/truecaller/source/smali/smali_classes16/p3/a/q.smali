.class public Lp3/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/q$c;,
        Lp3/a/q$d;,
        Lp3/a/q$g;,
        Lp3/a/q$e;,
        Lp3/a/q$b;,
        Lp3/a/q$a;,
        Lp3/a/q$f;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/logging/Logger;

.field public static final e:Lp3/a/q;


# instance fields
.field public final a:Lp3/a/q$a;

.field public final b:Lp3/a/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/a1<",
            "Lp3/a/q$e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp3/a/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/q;->d:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lp3/a/q;

    invoke-direct {v0}, Lp3/a/q;-><init>()V

    sput-object v0, Lp3/a/q;->e:Lp3/a/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lp3/a/q;->a:Lp3/a/q$a;

    .line 11
    iput-object v0, p0, Lp3/a/q;->b:Lp3/a/a1;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lp3/a/q;->c:I

    return-void
.end method

.method public constructor <init>(Lp3/a/q;Lp3/a/a1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/q;",
            "Lp3/a/a1<",
            "Lp3/a/q$e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lp3/a/q$a;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lp3/a/q$a;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lp3/a/q;->a:Lp3/a/q$a;

    .line 5
    :goto_0
    iput-object v0, p0, Lp3/a/q;->a:Lp3/a/q$a;

    .line 6
    iput-object p2, p0, Lp3/a/q;->b:Lp3/a/a1;

    .line 7
    iget p1, p1, Lp3/a/q;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp3/a/q;->c:I

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_1

    .line 8
    sget-object p1, Lp3/a/q;->d:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000"

    invoke-virtual {p1, p2, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l()Lp3/a/q;
    .locals 1

    .line 1
    sget-object v0, Lp3/a/q$f;->a:Lp3/a/q$g;

    .line 2
    invoke-virtual {v0}, Lp3/a/q$g;->a()Lp3/a/q;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lp3/a/q;->e:Lp3/a/q;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public E()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/q;->a:Lp3/a/q$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lp3/a/q$a;->E()Z

    move-result v0

    return v0
.end method

.method public I(Lp3/a/q$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/q;->a:Lp3/a/q$a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p0}, Lp3/a/q$a;->P(Lp3/a/q$b;Lp3/a/q;)V

    return-void
.end method

.method public b(Lp3/a/q$b;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "cancellationListener"

    .line 1
    invoke-static {p1, v0}, Lp3/a/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executor"

    .line 2
    invoke-static {p2, v0}, Lp3/a/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lp3/a/q;->a:Lp3/a/q$a;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lp3/a/q$d;

    invoke-direct {v1, p2, p1, p0}, Lp3/a/q$d;-><init>(Ljava/util/concurrent/Executor;Lp3/a/q$b;Lp3/a/q;)V

    .line 5
    invoke-virtual {v0, v1}, Lp3/a/q$a;->J(Lp3/a/q$d;)V

    return-void
.end method

.method public d()Lp3/a/q;
    .locals 1

    .line 1
    sget-object v0, Lp3/a/q$f;->a:Lp3/a/q$g;

    .line 2
    invoke-virtual {v0, p0}, Lp3/a/q$g;->c(Lp3/a/q;)Lp3/a/q;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lp3/a/q;->e:Lp3/a/q;

    :cond_0
    return-object v0
.end method

.method public j()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/q;->a:Lp3/a/q$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lp3/a/q$a;->j()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public q(Lp3/a/q;)V
    .locals 1

    const-string v0, "toAttach"

    .line 1
    invoke-static {p1, v0}, Lp3/a/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lp3/a/q$f;->a:Lp3/a/q$g;

    .line 3
    invoke-virtual {v0, p0, p1}, Lp3/a/q$g;->b(Lp3/a/q;Lp3/a/q;)V

    return-void
.end method

.method public s()Lp3/a/r;
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/q;->a:Lp3/a/q$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
