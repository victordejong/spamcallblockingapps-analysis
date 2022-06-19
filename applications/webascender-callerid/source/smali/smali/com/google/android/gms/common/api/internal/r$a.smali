.class public Lcom/google/android/gms/common/api/internal/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/a$b;",
        "ResultT:",
        "Ljava/lang/Object;",
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
            "TResultT;>;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:[Lcom/google/android/gms/common/d;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/r$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/s1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/r$a;-><init>()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/internal/r$a;)Lcom/google/android/gms/common/api/internal/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/r$a;->a:Lcom/google/android/gms/common/api/internal/n;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/internal/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/r<",
            "TA;TResultT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r$a;->a:Lcom/google/android/gms/common/api/internal/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->b(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/internal/t1;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r$a;->c:[Lcom/google/android/gms/common/d;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/r$a;->b:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/common/api/internal/t1;-><init>(Lcom/google/android/gms/common/api/internal/r$a;[Lcom/google/android/gms/common/d;Z)V

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/internal/r$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/n<",
            "TA;",
            "Lcom/google/android/gms/tasks/h<",
            "TResultT;>;>;)",
            "Lcom/google/android/gms/common/api/internal/r$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/r$a;->a:Lcom/google/android/gms/common/api/internal/n;

    return-object p0
.end method

.method public varargs c([Lcom/google/android/gms/common/d;)Lcom/google/android/gms/common/api/internal/r$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/d;",
            ")",
            "Lcom/google/android/gms/common/api/internal/r$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/r$a;->c:[Lcom/google/android/gms/common/d;

    return-object p0
.end method
