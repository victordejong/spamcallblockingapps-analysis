.class public final Le/a/k/b/k$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/b/k;-><init>()V
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
.field public final synthetic b:Le/a/k/b/k;


# direct methods
.method public constructor <init>(Le/a/k/b/k;)V
    .locals 0

    iput-object p1, p0, Le/a/k/b/k$a;->b:Le/a/k/b/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;

    iget-object v1, p0, Le/a/k/b/k$a;->b:Le/a/k/b/k;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$b;->a()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    const-string v1, "it"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    .line 4
    iget-object v1, p0, Le/a/k/b/k$a;->b:Le/a/k/b/k;

    .line 5
    iget-object v1, v1, Le/a/k/b/k;->e:Le/a/k/c/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Le/a/k/c/q;->c()Le/m/a/c/l1/r;

    move-result-object v1

    .line 7
    iget-object v3, p0, Le/a/k/b/k$a;->b:Le/a/k/b/k;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v2, "path"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Le/m/a/c/l1/r;->a(Landroid/net/Uri;)Le/m/a/c/l1/p;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Le/m/a/c/l1/p;)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-object v0

    :cond_1
    const-string v0, "exoPlayerUtil"

    .line 10
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
