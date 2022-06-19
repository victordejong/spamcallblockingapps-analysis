.class public final Le/m/a/f/l/a/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/l/a/z3;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzkp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/w3;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Le/m/a/f/l/a/w3;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "AppId not known when logging event"

    const-string p3, "_err"

    .line 5
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Le/m/a/f/l/a/w3;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p2

    new-instance v0, Le/m/a/f/l/a/v3;

    invoke-direct {v0, p0, p1, p3}, Le/m/a/f/l/a/v3;-><init>(Le/m/a/f/l/a/w3;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    return-void
.end method
