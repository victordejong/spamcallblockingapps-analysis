.class public final Le/m/a/f/l/a/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzid;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzid;

.field public final synthetic d:J

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzik;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzik;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzid;Lcom/google/android/gms/measurement/internal/zzid;J)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/z1;->e:Lcom/google/android/gms/measurement/internal/zzik;

    iput-object p2, p0, Le/m/a/f/l/a/z1;->a:Landroid/os/Bundle;

    iput-object p3, p0, Le/m/a/f/l/a/z1;->b:Lcom/google/android/gms/measurement/internal/zzid;

    iput-object p4, p0, Le/m/a/f/l/a/z1;->c:Lcom/google/android/gms/measurement/internal/zzid;

    iput-wide p5, p0, Le/m/a/f/l/a/z1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/z1;->e:Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v4, p0, Le/m/a/f/l/a/z1;->a:Landroid/os/Bundle;

    iget-object v7, p0, Le/m/a/f/l/a/z1;->b:Lcom/google/android/gms/measurement/internal/zzid;

    iget-object v8, p0, Le/m/a/f/l/a/z1;->c:Lcom/google/android/gms/measurement/internal/zzid;

    iget-wide v9, p0, Le/m/a/f/l/a/z1;->d:J

    const-string v1, "screen_name"

    .line 2
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "screen_class"

    .line 3
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "screen_view"

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkw;->n0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v6

    const/4 v5, 0x1

    move-object v1, v7

    move-object v2, v8

    move-wide v3, v9

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzik;->i(Lcom/google/android/gms/measurement/internal/zzid;Lcom/google/android/gms/measurement/internal/zzid;JZLandroid/os/Bundle;)V

    return-void
.end method
