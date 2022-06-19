.class public final Lg/f/a/d/c/b/i;
.super Lcom/google/android/gms/auth/a/d/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/a/d/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final s()Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/r;->a()Lcom/google/android/gms/common/api/internal/r$a;

    move-result-object v0

    new-instance v1, Lg/f/a/d/c/b/k;

    invoke-direct {v1, p0}, Lg/f/a/d/c/b/k;-><init>(Lg/f/a/d/c/b/i;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/r$a;->b(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/internal/r$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/d;

    sget-object v2, Lg/f/a/d/c/b/b;->b:Lcom/google/android/gms/common/d;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/r$a;->c([Lcom/google/android/gms/common/d;)Lcom/google/android/gms/common/api/internal/r$a;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/r$a;->a()Lcom/google/android/gms/common/api/internal/r;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/c;->h(Lcom/google/android/gms/common/api/internal/r;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method
