.class public final Lcom/google/firebase/auth/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:Lcom/google/android/gms/common/l/a;


# instance fields
.field private final a:Lcom/google/firebase/c;

.field volatile b:J

.field volatile c:J

.field final d:J

.field final e:Landroid/os/HandlerThread;

.field final f:Landroid/os/Handler;

.field final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/l/a;

    const-string v1, "FirebaseAuth:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "TokenRefresher"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/l/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/auth/internal/m;->h:Lcom/google/android/gms/common/l/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/firebase/auth/internal/m;->h:Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Initializing TokenRefresher"

    .line 1
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/l/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/c;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/m;->a:Lcom/google/firebase/c;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TokenRefresher"

    const/16 v2, 0xa

    .line 3
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/m;->e:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/da;

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/da;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/firebase/auth/internal/m;->f:Landroid/os/Handler;

    new-instance v0, Lcom/google/firebase/auth/internal/l;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/c;->k()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/auth/internal/l;-><init>(Lcom/google/firebase/auth/internal/m;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/m;->g:Ljava/lang/Runnable;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/firebase/auth/internal/m;->d:J

    return-void
.end method

.method static synthetic d()Lcom/google/android/gms/common/l/a;
    .locals 1

    sget-object v0, Lcom/google/firebase/auth/internal/m;->h:Lcom/google/android/gms/common/l/a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    sget-object v0, Lcom/google/firebase/auth/internal/m;->h:Lcom/google/android/gms/common/l/a;

    iget-wide v1, p0, Lcom/google/firebase/auth/internal/m;->b:J

    iget-wide v3, p0, Lcom/google/firebase/auth/internal/m;->d:J

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2b

    .line 1
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Scheduling refresh for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/l/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/m;->c()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/i;->d()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/m;->b:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/google/firebase/auth/internal/m;->d:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    .line 4
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/auth/internal/m;->c:J

    iget-object v0, p0, Lcom/google/firebase/auth/internal/m;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/m;->g:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/google/firebase/auth/internal/m;->c:J

    mul-long v4, v4, v2

    .line 5
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final b()V
    .locals 7

    iget-wide v0, p0, Lcom/google/firebase/auth/internal/m;->c:J

    long-to-int v1, v0

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq v1, v0, :cond_1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_1

    const/16 v0, 0xf0

    if-eq v1, v0, :cond_1

    const/16 v0, 0x1e0

    if-eq v1, v0, :cond_1

    const/16 v0, 0x3c0

    if-eq v1, v0, :cond_0

    const-wide/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3c0

    goto :goto_0

    .line 1
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/auth/internal/m;->c:J

    add-long/2addr v0, v0

    .line 2
    :goto_0
    iput-wide v0, p0, Lcom/google/firebase/auth/internal/m;->c:J

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/i;->d()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/m;->c:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/auth/internal/m;->b:J

    sget-object v0, Lcom/google/firebase/auth/internal/m;->h:Lcom/google/android/gms/common/l/a;

    iget-wide v1, p0, Lcom/google/firebase/auth/internal/m;->b:J

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x2b

    .line 4
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Scheduling refresh for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/l/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/auth/internal/m;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/m;->g:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/m;->c:J

    mul-long v2, v2, v4

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/internal/m;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/m;->g:Ljava/lang/Runnable;

    .line 1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
