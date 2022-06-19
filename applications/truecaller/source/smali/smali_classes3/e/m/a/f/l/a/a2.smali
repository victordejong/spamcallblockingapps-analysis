.class public final Le/m/a/f/l/a/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzid;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzid;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzik;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzid;Lcom/google/android/gms/measurement/internal/zzid;JZ)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/a2;->e:Lcom/google/android/gms/measurement/internal/zzik;

    iput-object p2, p0, Le/m/a/f/l/a/a2;->a:Lcom/google/android/gms/measurement/internal/zzid;

    iput-object p3, p0, Le/m/a/f/l/a/a2;->b:Lcom/google/android/gms/measurement/internal/zzid;

    iput-wide p4, p0, Le/m/a/f/l/a/a2;->c:J

    iput-boolean p6, p0, Le/m/a/f/l/a/a2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/a2;->e:Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v1, p0, Le/m/a/f/l/a/a2;->a:Lcom/google/android/gms/measurement/internal/zzid;

    iget-object v2, p0, Le/m/a/f/l/a/a2;->b:Lcom/google/android/gms/measurement/internal/zzid;

    iget-wide v3, p0, Le/m/a/f/l/a/a2;->c:J

    iget-boolean v5, p0, Le/m/a/f/l/a/a2;->d:Z

    const/4 v6, 0x0

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzik;->i(Lcom/google/android/gms/measurement/internal/zzid;Lcom/google/android/gms/measurement/internal/zzid;JZLandroid/os/Bundle;)V

    return-void
.end method
