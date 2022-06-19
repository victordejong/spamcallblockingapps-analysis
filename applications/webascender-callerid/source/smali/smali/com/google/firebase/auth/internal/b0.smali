.class public final Lcom/google/firebase/auth/internal/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:I

.field private final b:Lcom/google/firebase/auth/internal/m;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/c;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/internal/m;

    invoke-direct {v1, p1}, Lcom/google/firebase/auth/internal/m;-><init>(Lcom/google/firebase/c;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/b0;->c:Z

    iput p1, p0, Lcom/google/firebase/auth/internal/b0;->a:I

    iput-object v1, p0, Lcom/google/firebase/auth/internal/b0;->b:Lcom/google/firebase/auth/internal/m;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/c;->c(Landroid/app/Application;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->b()Lcom/google/android/gms/common/api/internal/c;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/auth/internal/a0;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/internal/a0;-><init>(Lcom/google/firebase/auth/internal/b0;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/c;->a(Lcom/google/android/gms/common/api/internal/c$a;)V

    return-void
.end method

.method static synthetic c(Lcom/google/firebase/auth/internal/b0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/b0;->c:Z

    return p1
.end method

.method static synthetic d(Lcom/google/firebase/auth/internal/b0;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/b0;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/google/firebase/auth/internal/b0;)Lcom/google/firebase/auth/internal/m;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/internal/b0;->b:Lcom/google/firebase/auth/internal/m;

    return-object p0
.end method

.method private final f()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/auth/internal/b0;->a:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/b0;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase-auth-api/en;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/en;->C1()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const-wide/16 v0, 0xe10

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/en;->E1()J

    move-result-wide v2

    iget-object p1, p0, Lcom/google/firebase/auth/internal/b0;->b:Lcom/google/firebase/auth/internal/m;

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/google/firebase/auth/internal/m;->b:J

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/google/firebase/auth/internal/m;->c:J

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/b0;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/auth/internal/b0;->b:Lcom/google/firebase/auth/internal/m;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/m;->a()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/b0;->b:Lcom/google/firebase/auth/internal/m;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/m;->c()V

    return-void
.end method
