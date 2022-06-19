.class public final Le/m/a/f/l/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzd;J)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/j;->b:Lcom/google/android/gms/measurement/internal/zzd;

    iput-wide p2, p0, Le/m/a/f/l/a/j;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/j;->b:Lcom/google/android/gms/measurement/internal/zzd;

    iget-wide v1, p0, Le/m/a/f/l/a/j;->a:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzd;->j(J)V

    return-void
.end method
