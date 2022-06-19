.class final Lcom/google/android/gms/common/api/internal/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/e$a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field private final synthetic b:Lcom/google/android/gms/common/api/internal/t2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/t2;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/v2;->b:Lcom/google/android/gms/common/api/internal/t2;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/v2;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/v2;->b:Lcom/google/android/gms/common/api/internal/t2;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/t2;->a(Lcom/google/android/gms/common/api/internal/t2;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v2;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
