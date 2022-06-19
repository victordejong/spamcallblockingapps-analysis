.class final Lcom/google/android/gms/common/internal/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/e$a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/e;

.field private final synthetic b:Lcom/google/android/gms/tasks/h;

.field private final synthetic c:Lcom/google/android/gms/common/internal/q$a;

.field private final synthetic d:Lcom/google/android/gms/common/internal/q$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/common/internal/q$a;Lcom/google/android/gms/common/internal/q$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/d0;->a:Lcom/google/android/gms/common/api/e;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/d0;->b:Lcom/google/android/gms/tasks/h;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/d0;->c:Lcom/google/android/gms/common/internal/q$a;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/d0;->d:Lcom/google/android/gms/common/internal/q$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->B1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/common/internal/d0;->a:Lcom/google/android/gms/common/api/e;

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/api/e;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/i;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d0;->b:Lcom/google/android/gms/tasks/h;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d0;->c:Lcom/google/android/gms/common/internal/q$a;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/q$a;->a(Lcom/google/android/gms/common/api/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/h;->c(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d0;->b:Lcom/google/android/gms/tasks/h;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d0;->d:Lcom/google/android/gms/common/internal/q$b;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/q$b;->z(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Exception;)V

    return-void
.end method
