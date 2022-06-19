.class final synthetic Lcom/google/android/gms/measurement/internal/s4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/android/gms/measurement/internal/k5;

.field private final g:Ljava/lang/String;

.field private final h:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/k5;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s4;->f:Lcom/google/android/gms/measurement/internal/k5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s4;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/s4;->h:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s4;->f:Lcom/google/android/gms/measurement/internal/k5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s4;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/s4;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/k5;->F(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
