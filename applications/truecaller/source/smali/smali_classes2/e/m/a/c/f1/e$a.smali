.class public final Le/m/a/c/f1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/f1/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/f1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/a/c/f1/e<",
        "Le/m/a/c/f1/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-static {p0}, Le/m/a/c/f1/d;->b(Le/m/a/c/f1/e;)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic c(Landroid/os/Looper;I)Le/m/a/c/f1/c;
    .locals 0

    invoke-static {p0, p1, p2}, Le/m/a/c/f1/d;->a(Le/m/a/c/f1/e;Landroid/os/Looper;I)Le/m/a/c/f1/c;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Le/m/a/c/f1/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Le/m/a/c/f1/c<",
            "Le/m/a/c/f1/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Le/m/a/c/f1/f;

    new-instance p2, Le/m/a/c/f1/c$a;

    new-instance v0, Le/m/a/c/f1/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/m/a/c/f1/i;-><init>(I)V

    invoke-direct {p2, v0}, Le/m/a/c/f1/c$a;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p1, p2}, Le/m/a/c/f1/f;-><init>(Le/m/a/c/f1/c$a;)V

    return-object p1
.end method

.method public synthetic release()V
    .locals 0

    invoke-static {p0}, Le/m/a/c/f1/d;->c(Le/m/a/c/f1/e;)V

    return-void
.end method
