.class public final Le/m/a/f/l/a/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzah;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;Lcom/google/android/gms/measurement/internal/zzah;IJZ)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/s1;->e:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-object p2, p0, Le/m/a/f/l/a/s1;->a:Lcom/google/android/gms/measurement/internal/zzah;

    iput p3, p0, Le/m/a/f/l/a/s1;->b:I

    iput-wide p4, p0, Le/m/a/f/l/a/s1;->c:J

    iput-boolean p6, p0, Le/m/a/f/l/a/s1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/s1;->e:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, p0, Le/m/a/f/l/a/s1;->a:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhw;->u(Lcom/google/android/gms/measurement/internal/zzah;)V

    iget-object v2, p0, Le/m/a/f/l/a/s1;->e:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v3, p0, Le/m/a/f/l/a/s1;->a:Lcom/google/android/gms/measurement/internal/zzah;

    iget v4, p0, Le/m/a/f/l/a/s1;->b:I

    iget-wide v5, p0, Le/m/a/f/l/a/s1;->c:J

    iget-boolean v8, p0, Le/m/a/f/l/a/s1;->d:Z

    const/4 v7, 0x0

    .line 2
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzhw;->C(Lcom/google/android/gms/measurement/internal/zzhw;Lcom/google/android/gms/measurement/internal/zzah;IJZZ)V

    return-void
.end method
