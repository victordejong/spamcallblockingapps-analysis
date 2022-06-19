.class final Lcom/google/android/gms/location/f;
.super Lg/f/a/d/c/i/d;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/a;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/location/f;->a:Lcom/google/android/gms/tasks/h;

    invoke-direct {p0}, Lg/f/a/d/c/i/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final M1()V
    .locals 0

    return-void
.end method

.method public final b2(Lg/f/a/d/c/i/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/a/d/c/i/c;->i()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/location/f;->a:Lcom/google/android/gms/tasks/h;

    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    const-string v3, "Got null status from location service"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/h;->d(Ljava/lang/Exception;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->y1()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/location/f;->a:Lcom/google/android/gms/tasks/h;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/h;->c(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/location/f;->a:Lcom/google/android/gms/tasks/h;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/h;->d(Ljava/lang/Exception;)Z

    return-void
.end method
