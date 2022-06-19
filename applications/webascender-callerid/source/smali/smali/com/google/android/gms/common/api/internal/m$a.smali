.class public Lcom/google/android/gms/common/api/internal/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/a$b;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/n<",
            "TA;",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/common/api/internal/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/n<",
            "TA;",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Runnable;

.field private d:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Lcom/google/android/gms/common/d;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/common/api/internal/j1;->f:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/m$a;->c:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/m$a;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/i1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/m$a;-><init>()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/internal/m$a;)Lcom/google/android/gms/common/api/internal/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/m$a;->a:Lcom/google/android/gms/common/api/internal/n;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/internal/m$a;)Lcom/google/android/gms/common/api/internal/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/m$a;->b:Lcom/google/android/gms/common/api/internal/n;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/internal/m;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/m<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m$a;->a:Lcom/google/android/gms/common/api/internal/n;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Must set register function"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/r;->b(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m$a;->b:Lcom/google/android/gms/common/api/internal/n;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "Must set unregister function"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/r;->b(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m$a;->d:Lcom/google/android/gms/common/api/internal/i;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v0, "Must set holder"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/r;->b(ZLjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m$a;->d:Lcom/google/android/gms/common/api/internal/i;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/i;->b()Lcom/google/android/gms/common/api/internal/i$a;

    move-result-object v0

    const-string v1, "Key must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/i$a;

    .line 6
    new-instance v1, Lcom/google/android/gms/common/api/internal/m;

    new-instance v2, Lcom/google/android/gms/common/api/internal/l1;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/m$a;->d:Lcom/google/android/gms/common/api/internal/i;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/m$a;->e:[Lcom/google/android/gms/common/d;

    iget-boolean v5, p0, Lcom/google/android/gms/common/api/internal/m$a;->f:Z

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/gms/common/api/internal/l1;-><init>(Lcom/google/android/gms/common/api/internal/m$a;Lcom/google/android/gms/common/api/internal/i;[Lcom/google/android/gms/common/d;Z)V

    new-instance v3, Lcom/google/android/gms/common/api/internal/k1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/k1;-><init>(Lcom/google/android/gms/common/api/internal/m$a;Lcom/google/android/gms/common/api/internal/i$a;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m$a;->c:Ljava/lang/Runnable;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/common/api/internal/m;-><init>(Lcom/google/android/gms/common/api/internal/l;Lcom/google/android/gms/common/api/internal/t;Ljava/lang/Runnable;Lcom/google/android/gms/common/api/internal/i1;)V

    return-object v1
.end method

.method public b(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/internal/m$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/n<",
            "TA;",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lcom/google/android/gms/common/api/internal/m$a<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m$a;->a:Lcom/google/android/gms/common/api/internal/n;

    return-object p0
.end method

.method public c(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/internal/m$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/n<",
            "TA;",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Lcom/google/android/gms/common/api/internal/m$a<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m$a;->b:Lcom/google/android/gms/common/api/internal/n;

    return-object p0
.end method

.method public d(Lcom/google/android/gms/common/api/internal/i;)Lcom/google/android/gms/common/api/internal/m$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "T",
            "L;",
            ">;)",
            "Lcom/google/android/gms/common/api/internal/m$a<",
            "TA;T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m$a;->d:Lcom/google/android/gms/common/api/internal/i;

    return-object p0
.end method
