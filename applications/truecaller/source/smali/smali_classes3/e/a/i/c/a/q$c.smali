.class public final Le/a/i/c/a/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/a/q;->setVideoAd(Le/a/i/c/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/c/a/q;


# direct methods
.method public constructor <init>(Le/a/i/c/a/q;IILandroid/widget/MediaController;Le/a/i/c/a/n;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/a/q$c;->a:Le/a/i/c/a/q;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Le/a/i/c/a/q$c;->a:Le/a/i/c/a/q;

    .line 2
    iget-object p1, p1, Le/a/i/c/a/q;->k:Le/a/i/h0/n;

    .line 3
    invoke-virtual {p1}, Le/a/i/h0/n;->a()Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/i/c/a/q$c;->a:Le/a/i/c/a/q;

    .line 5
    iget-object p1, p1, Le/a/i/c/a/q;->l:Le/a/i/h0/n;

    .line 6
    invoke-virtual {p1}, Le/a/i/h0/n;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-object p2, Le/a/i/h0/k;->c:Le/a/i/h0/k;

    invoke-virtual {p2, p1}, Le/a/i/h0/k;->a(Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
