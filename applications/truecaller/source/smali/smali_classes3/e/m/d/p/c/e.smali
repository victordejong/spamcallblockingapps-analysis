.class public Le/m/d/p/c/e;
.super Le/m/d/p/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/p/c/e$b;,
        Le/m/d/p/c/e$a;,
        Le/m/d/p/c/e$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Le/m/d/g;Le/m/d/v/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/g;",
            "Le/m/d/v/b<",
            "Le/m/d/k/a/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/d/p/c/c;

    .line 2
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 3
    iget-object p1, p1, Le/m/d/g;->a:Landroid/content/Context;

    .line 4
    invoke-direct {v0, p1}, Le/m/d/p/c/c;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-direct {p0}, Le/m/d/p/a;-><init>()V

    .line 6
    iput-object v0, p0, Le/m/d/p/c/e;->a:Lcom/google/android/gms/common/api/GoogleApi;

    .line 7
    iput-object p2, p0, Le/m/d/p/c/e;->b:Le/m/d/v/b;

    .line 8
    invoke-interface {p2}, Le/m/d/v/b;->get()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Le/m/d/p/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Le/m/d/p/c/e;->a:Lcom/google/android/gms/common/api/GoogleApi;

    new-instance v3, Le/m/d/p/c/e$c;

    iget-object v4, p0, Le/m/d/p/c/e;->b:Le/m/d/v/b;

    invoke-direct {v3, v4, v1}, Le/m/d/p/c/e$c;-><init>(Le/m/d/v/b;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApi;->doWrite(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 4
    sget-object v2, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v3, "com.google.firebase.dynamiclinks.DYNAMIC_LINK_DATA"

    .line 5
    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Le/m/d/p/b;

    invoke-direct {v0, p1}, Le/m/d/p/b;-><init>(Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    :cond_2
    return-object v1
.end method
