.class public final Le/m/a/f/l/a/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:J

.field public final b:J

.field public final synthetic c:Le/m/a/f/l/a/i3;


# direct methods
.method public constructor <init>(Le/m/a/f/l/a/i3;JJ)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/h3;->c:Le/m/a/f/l/a/i3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Le/m/a/f/l/a/h3;->a:J

    iput-wide p4, p0, Le/m/a/f/l/a/h3;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/h3;->c:Le/m/a/f/l/a/i3;

    iget-object v0, v0, Le/m/a/f/l/a/i3;->b:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzju;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzju;-><init>(Le/m/a/f/l/a/h3;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void
.end method
