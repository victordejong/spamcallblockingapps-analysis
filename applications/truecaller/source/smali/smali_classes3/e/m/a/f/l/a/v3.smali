.class public final Le/m/a/f/l/a/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Le/m/a/f/l/a/w3;


# direct methods
.method public constructor <init>(Le/m/a/f/l/a/w3;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/v3;->c:Le/m/a/f/l/a/w3;

    iput-object p2, p0, Le/m/a/f/l/a/v3;->a:Ljava/lang/String;

    iput-object p3, p0, Le/m/a/f/l/a/v3;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/v3;->c:Le/m/a/f/l/a/w3;

    iget-object v0, v0, Le/m/a/f/l/a/w3;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->M()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    iget-object v2, p0, Le/m/a/f/l/a/v3;->a:Ljava/lang/String;

    iget-object v4, p0, Le/m/a/f/l/a/v3;->b:Landroid/os/Bundle;

    iget-object v0, p0, Le/m/a/f/l/a/v3;->c:Le/m/a/f/l/a/w3;

    iget-object v0, v0, Le/m/a/f/l/a/w3;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v6

    const-string v3, "_err"

    const-string v5, "auto"

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 3
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzkw;->o0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/a/v3;->c:Le/m/a/f/l/a/w3;

    iget-object v1, v1, Le/m/a/f/l/a/w3;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    const-string v2, "null reference"

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Le/m/a/f/l/a/v3;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->f(Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;)V

    return-void
.end method
