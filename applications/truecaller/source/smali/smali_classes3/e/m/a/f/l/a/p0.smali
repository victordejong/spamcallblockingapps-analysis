.class public final Le/m/a/f/l/a/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzau;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzgj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgj;Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/p0;->c:Lcom/google/android/gms/measurement/internal/zzgj;

    iput-object p2, p0, Le/m/a/f/l/a/p0;->a:Lcom/google/android/gms/measurement/internal/zzau;

    iput-object p3, p0, Le/m/a/f/l/a/p0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/p0;->c:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v0, p0, Le/m/a/f/l/a/p0;->c:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    iget-object v1, p0, Le/m/a/f/l/a/p0;->a:Lcom/google/android/gms/measurement/internal/zzau;

    iget-object v2, p0, Le/m/a/f/l/a/p0;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->f(Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;)V

    return-void
.end method
