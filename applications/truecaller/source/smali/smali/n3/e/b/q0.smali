.class public final Ln3/e/b/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/k1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/q0$a;,
        Ln3/e/b/q0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/k1/f<",
        "Ln3/e/b/p0;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/j1/y$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/j1/x$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/j1/s1$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Ln3/e/b/j1/j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/j0$a<",
            "Ln3/e/b/m0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final q:Ln3/e/b/j1/d1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ln3/e/b/j1/y$a;

    .line 2
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.appConfig.cameraFactoryProvider"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Ln3/e/b/q0;->r:Ln3/e/b/j1/j0$a;

    .line 4
    const-class v0, Ln3/e/b/j1/x$a;

    .line 5
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.appConfig.deviceSurfaceManagerProvider"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Ln3/e/b/q0;->s:Ln3/e/b/j1/j0$a;

    .line 7
    const-class v0, Ln3/e/b/j1/s1$b;

    .line 8
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.appConfig.useCaseConfigFactoryProvider"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 9
    sput-object v1, Ln3/e/b/q0;->t:Ln3/e/b/j1/j0$a;

    .line 10
    const-class v0, Ljava/util/concurrent/Executor;

    .line 11
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.appConfig.cameraExecutor"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 12
    sput-object v1, Ln3/e/b/q0;->u:Ln3/e/b/j1/j0$a;

    .line 13
    const-class v0, Landroid/os/Handler;

    .line 14
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.appConfig.schedulerHandler"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    sput-object v1, Ln3/e/b/q0;->v:Ln3/e/b/j1/j0$a;

    .line 16
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.appConfig.minimumLoggingLevel"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 18
    sput-object v1, Ln3/e/b/q0;->w:Ln3/e/b/j1/j0$a;

    .line 19
    const-class v0, Ln3/e/b/m0;

    .line 20
    new-instance v1, Ln3/e/b/j1/n;

    const-string v2, "camerax.core.appConfig.availableCamerasLimiter"

    invoke-direct {v1, v2, v0, v3}, Ln3/e/b/j1/n;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 21
    sput-object v1, Ln3/e/b/q0;->x:Ln3/e/b/j1/j0$a;

    return-void
.end method

.method public constructor <init>(Ln3/e/b/j1/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/b/q0;->q:Ln3/e/b/j1/d1;

    return-void
.end method


# virtual methods
.method public synthetic a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->f(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ln3/e/b/j1/h1;->g(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ln3/e/b/j1/j0$a;)Z
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->a(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Z

    move-result p1

    return p1
.end method

.method public synthetic d()Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Ln3/e/b/j1/h1;->e(Ln3/e/b/j1/i1;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->c(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Ln3/e/b/j1/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/q0;->q:Ln3/e/b/j1/d1;

    return-object v0
.end method

.method public synthetic j(Ljava/lang/String;Ln3/e/b/j1/j0$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ln3/e/b/j1/h1;->b(Ln3/e/b/j1/i1;Ljava/lang/String;Ln3/e/b/j1/j0$b;)V

    return-void
.end method

.method public synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/k1/e;->a(Ln3/e/b/k1/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Ln3/e/b/j1/j0$a;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Ln3/e/b/j1/h1;->d(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public synthetic p(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ln3/e/b/j1/h1;->h(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
