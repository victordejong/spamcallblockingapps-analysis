.class final Lcom/google/android/gms/common/api/internal/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f:Lcom/google/android/gms/common/b;

.field private final synthetic g:Lcom/google/android/gms/common/api/internal/f$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/f$a;Lcom/google/android/gms/common/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/w0;->g:Lcom/google/android/gms/common/api/internal/f$a;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/w0;->f:Lcom/google/android/gms/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w0;->g:Lcom/google/android/gms/common/api/internal/f$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/w0;->f:Lcom/google/android/gms/common/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/f$a;->B(Lcom/google/android/gms/common/b;)V

    return-void
.end method
