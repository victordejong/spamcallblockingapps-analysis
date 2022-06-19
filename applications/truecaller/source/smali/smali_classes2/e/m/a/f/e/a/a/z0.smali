.class public final Le/m/a/f/e/a/a/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zaaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/z0;->b:Lcom/google/android/gms/common/api/internal/zaaa;

    iput-object p2, p0, Le/m/a/f/e/a/a/z0;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object p1, p0, Le/m/a/f/e/a/a/z0;->b:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaaa;->b:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Le/m/a/f/e/a/a/z0;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
