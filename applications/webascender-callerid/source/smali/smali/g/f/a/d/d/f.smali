.class public Lg/f/a/d/d/f;
.super Lcom/google/android/gms/common/api/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/c<",
        "Lcom/google/android/gms/common/api/a$d$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lg/f/a/d/d/c;->c:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/p;)V

    return-void
.end method


# virtual methods
.method public s([BLjava/lang/String;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Lg/f/a/d/d/d;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->a()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lg/f/a/d/c/l/j;->a(Lcom/google/android/gms/common/api/d;[BLjava/lang/String;)Lcom/google/android/gms/common/api/e;

    move-result-object p1

    new-instance p2, Lg/f/a/d/d/d;

    invoke-direct {p2}, Lg/f/a/d/d/d;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/q;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
