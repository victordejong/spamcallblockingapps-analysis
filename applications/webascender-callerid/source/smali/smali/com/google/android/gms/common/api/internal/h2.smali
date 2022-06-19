.class public final Lcom/google/android/gms/common/api/internal/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lf/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e/a<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;",
            "Lcom/google/android/gms/common/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lf/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/e/a<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h2;->a:Lf/e/a;

    invoke-virtual {v0}, Lf/e/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/b;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;",
            "Lcom/google/android/gms/common/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h2;->a:Lf/e/a;

    invoke-virtual {v0, p1, p2}, Lf/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/h2;->b:Lf/e/a;

    invoke-virtual {v0, p1, p3}, Lf/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget p1, p0, Lcom/google/android/gms/common/api/internal/h2;->d:I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/common/api/internal/h2;->d:I

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->C1()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/h2;->e:Z

    .line 6
    :cond_0
    iget p1, p0, Lcom/google/android/gms/common/api/internal/h2;->d:I

    if-nez p1, :cond_2

    .line 7
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/h2;->e:Z

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Lcom/google/android/gms/common/api/AvailabilityException;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/h2;->a:Lf/e/a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/AvailabilityException;-><init>(Lf/e/a;)V

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/h2;->c:Lcom/google/android/gms/tasks/h;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/h2;->c:Lcom/google/android/gms/tasks/h;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/h2;->b:Lf/e/a;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/h;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
