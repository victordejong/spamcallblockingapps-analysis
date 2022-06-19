.class final Lcom/google/android/gms/measurement/internal/y7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/measurement/internal/aa;

.field final synthetic g:Z

.field final synthetic h:Lcom/google/android/gms/measurement/internal/b;

.field final synthetic i:Lcom/google/android/gms/measurement/internal/j8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/j8;ZLcom/google/android/gms/measurement/internal/aa;ZLcom/google/android/gms/measurement/internal/b;Lcom/google/android/gms/measurement/internal/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y7;->i:Lcom/google/android/gms/measurement/internal/j8;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/y7;->f:Lcom/google/android/gms/measurement/internal/aa;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/y7;->g:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/y7;->h:Lcom/google/android/gms/measurement/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y7;->i:Lcom/google/android/gms/measurement/internal/j8;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j8;->A(Lcom/google/android/gms/measurement/internal/j8;)Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y7;->i:Lcom/google/android/gms/measurement/internal/j8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n3;->o()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y7;->f:Lcom/google/android/gms/measurement/internal/aa;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y7;->i:Lcom/google/android/gms/measurement/internal/j8;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/y7;->g:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/y7;->h:Lcom/google/android/gms/measurement/internal/b;

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/y7;->f:Lcom/google/android/gms/measurement/internal/aa;

    .line 7
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/j8;->K(Lcom/google/android/gms/measurement/internal/d3;Lcom/google/android/gms/common/internal/safeparcel/a;Lcom/google/android/gms/measurement/internal/aa;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y7;->i:Lcom/google/android/gms/measurement/internal/j8;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/j8;->B(Lcom/google/android/gms/measurement/internal/j8;)V

    return-void
.end method
