.class public final Le/m/d/p/c/e$c;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/p/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Le/m/d/p/c/d;",
        "Le/m/d/p/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/d/k/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/d/v/b;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/v/b<",
            "Le/m/d/k/a/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3391

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>([Lcom/google/android/gms/common/Feature;ZI)V

    .line 2
    iput-object p2, p0, Le/m/d/p/c/e$c;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Le/m/d/p/c/e$c;->b:Le/m/d/v/b;

    return-void
.end method


# virtual methods
.method public doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Le/m/d/p/c/d;

    .line 2
    new-instance v0, Le/m/d/p/c/e$b;

    iget-object v1, p0, Le/m/d/p/c/e$c;->b:Le/m/d/v/b;

    invoke-direct {v0, v1, p2}, Le/m/d/p/c/e$b;-><init>(Le/m/d/v/b;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Le/m/d/p/c/e$c;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Le/m/d/p/c/g;

    invoke-interface {p1, v0, p2}, Le/m/d/p/c/g;->D0(Le/m/d/p/c/f;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
