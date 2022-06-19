.class final Lcom/google/android/gms/common/api/internal/k1;
.super Lcom/google/android/gms/common/api/internal/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/t<",
        "TA;T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic b:Lcom/google/android/gms/common/api/internal/m$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/m$a;Lcom/google/android/gms/common/api/internal/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/m$a;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/t;-><init>(Lcom/google/android/gms/common/api/internal/i$a;)V

    return-void
.end method


# virtual methods
.method protected final b(Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/tasks/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/m$a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/m$a;->f(Lcom/google/android/gms/common/api/internal/m$a;)Lcom/google/android/gms/common/api/internal/n;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/n;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
