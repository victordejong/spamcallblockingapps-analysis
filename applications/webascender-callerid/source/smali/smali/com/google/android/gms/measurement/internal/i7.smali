.class final Lcom/google/android/gms/measurement/internal/i7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/measurement/internal/j7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/j7;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i7;->f:Lcom/google/android/gms/measurement/internal/j7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i7;->f:Lcom/google/android/gms/measurement/internal/j7;

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/j7;->I(Lcom/google/android/gms/measurement/internal/j7;Lcom/google/android/gms/measurement/internal/b7;)Lcom/google/android/gms/measurement/internal/b7;

    return-void
.end method
