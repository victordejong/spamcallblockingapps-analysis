.class public final Le/m/a/f/l/a/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzjj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjj;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/c3;->a:Lcom/google/android/gms/measurement/internal/zzjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/c3;->a:Lcom/google/android/gms/measurement/internal/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjj;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjk;->d:Lcom/google/android/gms/measurement/internal/zzdx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjk;->n()V

    return-void
.end method
