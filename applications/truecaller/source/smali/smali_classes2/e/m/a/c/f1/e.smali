.class public interface abstract Le/m/a/c/f1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/m/a/c/f1/g;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Le/m/a/c/f1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/c/f1/e<",
            "Le/m/a/c/f1/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/m/a/c/f1/e$a;

    invoke-direct {v0}, Le/m/a/c/f1/e$a;-><init>()V

    sput-object v0, Le/m/a/c/f1/e;->a:Le/m/a/c/f1/e;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
.end method

.method public abstract c(Landroid/os/Looper;I)Le/m/a/c/f1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "I)",
            "Le/m/a/c/f1/c<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract d(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Le/m/a/c/f1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Le/m/a/c/f1/c<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract release()V
.end method
