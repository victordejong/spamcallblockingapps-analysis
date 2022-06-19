.class final Lcom/google/android/gms/common/api/internal/l1;
.super Lcom/google/android/gms/common/api/internal/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/l<",
        "TA;T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic d:Lcom/google/android/gms/common/api/internal/m$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/m$a;Lcom/google/android/gms/common/api/internal/i;[Lcom/google/android/gms/common/d;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/l1;->d:Lcom/google/android/gms/common/api/internal/m$a;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/l;-><init>(Lcom/google/android/gms/common/api/internal/i;[Lcom/google/android/gms/common/d;Z)V

    return-void
.end method


# virtual methods
.method protected final d(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l1;->d:Lcom/google/android/gms/common/api/internal/m$a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/m$a;->e(Lcom/google/android/gms/common/api/internal/m$a;)Lcom/google/android/gms/common/api/internal/n;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/n;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
