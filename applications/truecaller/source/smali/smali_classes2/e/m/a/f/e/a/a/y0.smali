.class public final Le/m/a/f/e/a/a/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zaaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/y0;->b:Lcom/google/android/gms/common/api/internal/zaaa;

    iput-object p2, p0, Le/m/a/f/e/a/a/y0;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object p1, p0, Le/m/a/f/e/a/a/y0;->b:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaaa;->a:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Le/m/a/f/e/a/a/y0;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
