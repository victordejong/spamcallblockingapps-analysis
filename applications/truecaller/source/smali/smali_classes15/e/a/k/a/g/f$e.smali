.class public final Le/a/k/a/g/f$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/g/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/google/android/exoplayer2/SimpleExoPlayer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/a/g/f;


# direct methods
.method public constructor <init>(Le/a/k/a/g/f;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/f$e;->b:Le/a/k/a/g/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;

    iget-object v1, p0, Le/a/k/a/g/f$e;->b:Le/a/k/a/g/f;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->a()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method
