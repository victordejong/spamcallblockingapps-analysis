.class public final Le/m/a/f/l/a/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/l/a/z3;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/l1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/m/a/f/l/a/l1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    const-string p2, "auto"

    const-string v0, "_err"

    .line 3
    invoke-virtual {p1, p2, v0, p3}, Lcom/google/android/gms/measurement/internal/zzhw;->i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Le/m/a/f/l/a/l1;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzfr;->f()V

    const/4 p1, 0x0

    throw p1
.end method
