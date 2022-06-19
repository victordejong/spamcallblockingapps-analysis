.class public final Lcom/google/android/gms/measurement/internal/u5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/Boolean;

.field f:J

.field g:Lcom/google/android/gms/internal/measurement/bd;

.field h:Z

.field final i:Ljava/lang/Long;

.field j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/bd;Ljava/lang/Long;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/u5;->h:Z

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/u5;->i:Ljava/lang/Long;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u5;->g:Lcom/google/android/gms/internal/measurement/bd;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/bd;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->b:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/bd;->j:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/bd;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->d:Ljava/lang/String;

    iget-boolean p1, p2, Lcom/google/android/gms/internal/measurement/bd;->h:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/u5;->h:Z

    iget-wide v1, p2, Lcom/google/android/gms/internal/measurement/bd;->g:J

    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/u5;->f:J

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/bd;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->j:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/bd;->l:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string p2, "dataCollectionDefaultEnabled"

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->e:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
