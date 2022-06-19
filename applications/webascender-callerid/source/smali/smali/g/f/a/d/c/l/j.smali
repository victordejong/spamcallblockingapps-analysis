.class public Lg/f/a/d/c/l/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/a/d/c/l/j$a;,
        Lg/f/a/d/c/l/j$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/d;[BLjava/lang/String;)Lcom/google/android/gms/common/api/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/e<",
            "Lg/f/a/d/d/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg/f/a/d/c/l/k;

    invoke-direct {v0, p0, p1, p2}, Lg/f/a/d/c/l/k;-><init>(Lcom/google/android/gms/common/api/d;[BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/d;->g(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/d;

    move-result-object p0

    return-object p0
.end method
