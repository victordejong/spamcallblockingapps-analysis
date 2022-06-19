.class public final Le/m/a/f/l/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzbr;

.field public final synthetic b:Landroid/content/ServiceConnection;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzey;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzey;Lcom/google/android/gms/internal/measurement/zzbr;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/v;->c:Lcom/google/android/gms/measurement/internal/zzey;

    iput-object p2, p0, Le/m/a/f/l/a/v;->a:Lcom/google/android/gms/internal/measurement/zzbr;

    iput-object p3, p0, Le/m/a/f/l/a/v;->b:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v;->c:Lcom/google/android/gms/measurement/internal/zzey;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzey;->b:Lcom/google/android/gms/measurement/internal/zzez;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzey;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Le/m/a/f/l/a/v;->a:Lcom/google/android/gms/internal/measurement/zzbr;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    new-instance v3, Landroid/os/Bundle;

    .line 5
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "package_name"

    .line 6
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Install Referrer Service returned a null response"

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 13
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Exception occurred while retrieving the Install Referrer"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 18
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfr;->f()V

    const/4 v0, 0x0

    throw v0
.end method
