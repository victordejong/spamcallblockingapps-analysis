.class public final Le/a/k/c/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/i;->a(Ln3/e/b/f1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/c/i;


# direct methods
.method public constructor <init>(Le/a/k/c/i;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/i$a;->a:Le/a/k/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x320

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/k/c/i$a;->a:Le/a/k/c/i;

    iget-object p1, p1, Le/a/k/c/i;->a:Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;

    .line 2
    iget-object p1, p1, Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;->l:Ls1/z/b/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method
