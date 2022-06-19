.class public final Lcom/google/android/gms/measurement/internal/y8;
.super Lcom/google/android/gms/measurement/internal/f4;
.source "SourceFile"


# instance fields
.field private c:Landroid/os/Handler;

.field protected final d:Lcom/google/android/gms/measurement/internal/x8;

.field protected final e:Lcom/google/android/gms/measurement/internal/w8;

.field protected final f:Lcom/google/android/gms/measurement/internal/u8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/r4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/f4;-><init>(Lcom/google/android/gms/measurement/internal/r4;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/x8;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/x8;-><init>(Lcom/google/android/gms/measurement/internal/y8;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y8;->d:Lcom/google/android/gms/measurement/internal/x8;

    new-instance p1, Lcom/google/android/gms/measurement/internal/w8;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/w8;-><init>(Lcom/google/android/gms/measurement/internal/y8;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y8;->e:Lcom/google/android/gms/measurement/internal/w8;

    new-instance p1, Lcom/google/android/gms/measurement/internal/u8;

    .line 4
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/u8;-><init>(Lcom/google/android/gms/measurement/internal/y8;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y8;->f:Lcom/google/android/gms/measurement/internal/u8;

    return-void
.end method

.method static synthetic o(Lcom/google/android/gms/measurement/internal/y8;J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/y8;->s()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n3;->w()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/l3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->z()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/a3;->u0:Lcom/google/android/gms/measurement/internal/z2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->z()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f;->C()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c4;->v:Lcom/google/android/gms/measurement/internal/x3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/x3;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->e:Lcom/google/android/gms/measurement/internal/w8;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/w8;->a(J)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/y8;->f:Lcom/google/android/gms/measurement/internal/u8;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/u8;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->f:Lcom/google/android/gms/measurement/internal/u8;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u8;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->z()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->e:Lcom/google/android/gms/measurement/internal/w8;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/w8;->a(J)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/y8;->d:Lcom/google/android/gms/measurement/internal/x8;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/x8;->a:Lcom/google/android/gms/measurement/internal/y8;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/x8;->a:Lcom/google/android/gms/measurement/internal/y8;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r4;->k()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/x8;->a:Lcom/google/android/gms/measurement/internal/y8;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r4;->z()Lcom/google/android/gms/measurement/internal/f;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/x8;->a:Lcom/google/android/gms/measurement/internal/y8;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/c4;->v:Lcom/google/android/gms/measurement/internal/x3;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/x3;->b(Z)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/x8;->a:Lcom/google/android/gms/measurement/internal/y8;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r4;->a()Lcom/google/android/gms/common/util/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/measurement/internal/x8;->b(JZ)V

    return-void
.end method

.method static synthetic p(Lcom/google/android/gms/measurement/internal/y8;J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/y8;->s()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n3;->w()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/l3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->f:Lcom/google/android/gms/measurement/internal/u8;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/u8;->b(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->z()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->e:Lcom/google/android/gms/measurement/internal/w8;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/w8;->b(J)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/y8;->d:Lcom/google/android/gms/measurement/internal/x8;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/x8;->a:Lcom/google/android/gms/measurement/internal/y8;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r4;->z()Lcom/google/android/gms/measurement/internal/f;

    move-result-object p1

    const/4 p2, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/a3;->u0:Lcom/google/android/gms/measurement/internal/z2;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/f;->w(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/z2;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x8;->a:Lcom/google/android/gms/measurement/internal/y8;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c4;->v:Lcom/google/android/gms/measurement/internal/x3;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/x3;->b(Z)V

    :cond_1
    return-void
.end method

.method static synthetic q(Lcom/google/android/gms/measurement/internal/y8;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/y8;->s()V

    return-void
.end method

.method static synthetic r(Lcom/google/android/gms/measurement/internal/y8;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/y8;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private final s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/l5;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/s9;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s9;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/y8;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
