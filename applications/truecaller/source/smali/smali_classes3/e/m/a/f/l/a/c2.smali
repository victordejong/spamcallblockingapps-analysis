.class public final Le/m/a/f/l/a/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzik;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzik;J)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/c2;->b:Lcom/google/android/gms/measurement/internal/zzik;

    iput-wide p2, p0, Le/m/a/f/l/a/c2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/c2;->b:Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->j()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    iget-wide v1, p0, Le/m/a/f/l/a/c2;->a:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzd;->g(J)V

    iget-object v0, p0, Le/m/a/f/l/a/c2;->b:Lcom/google/android/gms/measurement/internal/zzik;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzik;->e:Lcom/google/android/gms/measurement/internal/zzid;

    return-void
.end method
