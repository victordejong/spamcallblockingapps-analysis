.class public final Le/a/a/j1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/i/g0/d;


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/views/MediaEditText;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/views/MediaEditText;)V
    .locals 0

    iput-object p1, p0, Le/a/a/j1/b;->a:Lcom/truecaller/messaging/views/MediaEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln3/k/i/g0/e;ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    iget-object p3, p0, Le/a/a/j1/b;->a:Lcom/truecaller/messaging/views/MediaEditText;

    .line 2
    iget-object v0, p3, Lcom/truecaller/messaging/views/MediaEditText;->f:Ln3/k/i/g0/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p3}, Lcom/truecaller/messaging/views/MediaEditText;->getMediaCallback()Lcom/truecaller/messaging/views/MediaEditText$a;

    move-result-object p3

    if-eqz p3, :cond_6

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    .line 4
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_2

    if-eqz p2, :cond_2

    .line 5
    :try_start_0
    iget-object p2, p1, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    invoke-interface {p2}, Ln3/k/i/g0/e$c;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return v1

    .line 6
    :cond_2
    :goto_1
    iget-object p2, p1, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    invoke-interface {p2}, Ln3/k/i/g0/e$c;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    const-string v2, "it"

    .line 7
    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object p2, v3

    :goto_3
    if-eqz p2, :cond_5

    .line 8
    invoke-virtual {p2, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    :cond_5
    iget-object p2, p0, Le/a/a/j1/b;->a:Lcom/truecaller/messaging/views/MediaEditText;

    .line 10
    iput-object p1, p2, Lcom/truecaller/messaging/views/MediaEditText;->f:Ln3/k/i/g0/e;

    .line 11
    iget-object p1, p1, Ln3/k/i/g0/e;->a:Ln3/k/i/g0/e$c;

    invoke-interface {p1}, Ln3/k/i/g0/e$c;->b()Landroid/net/Uri;

    move-result-object p1

    const-string p2, "inputContentInfo.contentUri"

    .line 12
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Le/a/a/j1/b;->a:Lcom/truecaller/messaging/views/MediaEditText;

    .line 13
    iget-object p2, p2, Lcom/truecaller/messaging/views/MediaEditText;->g:Ljava/lang/Runnable;

    .line 14
    invoke-interface {p3, p1, v3, p2}, Lcom/truecaller/messaging/views/MediaEditText$a;->b1(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Runnable;)V

    return v0

    :cond_6
    return v1
.end method
