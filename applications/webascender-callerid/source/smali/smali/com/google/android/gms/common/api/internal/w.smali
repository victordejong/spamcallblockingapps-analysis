.class final Lcom/google/android/gms/common/api/internal/w;
.super Lcom/google/android/gms/common/api/internal/p0;
.source "SourceFile"


# instance fields
.field private final synthetic b:Lcom/google/android/gms/common/api/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/u;Lcom/google/android/gms/common/api/internal/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/p0;-><init>(Lcom/google/android/gms/common/api/internal/n0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->b:Lcom/google/android/gms/common/api/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/u;->b(Lcom/google/android/gms/common/api/internal/u;)Lcom/google/android/gms/common/api/internal/q0;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q0;->n:Lcom/google/android/gms/common/api/internal/f1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/f1;->s(Landroid/os/Bundle;)V

    return-void
.end method
