.class public Ln3/k/a/n;
.super Ln3/k/a/u;
.source "SourceFile"


# instance fields
.field public e:Landroid/graphics/Bitmap;

.field public f:Landroidx/core/graphics/drawable/IconCompat;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/k/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ln3/k/a/j;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    .line 2
    check-cast p1, Ln3/k/a/v;

    .line 3
    iget-object v1, p1, Ln3/k/a/v;->b:Landroid/app/Notification$Builder;

    .line 4
    invoke-direct {v0, v1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v1, p0, Ln3/k/a/u;->b:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    iget-object v1, p0, Ln3/k/a/n;->e:Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    .line 7
    iget-boolean v1, p0, Ln3/k/a/n;->g:Z

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Ln3/k/a/n;->f:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v0, v2}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p1, Ln3/k/a/v;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->v(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    .line 13
    :cond_1
    :goto_0
    iget-boolean p1, p0, Ln3/k/a/u;->d:Z

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Ln3/k/a/u;->c:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_2
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln3/k/a/u;->c(Landroid/os/Bundle;)V

    const-string v0, "android.largeIcon.big"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.picture"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    return-object v0
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln3/k/a/u;->j(Landroid/os/Bundle;)V

    const-string v0, "android.largeIcon.big"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    instance-of v1, v0, Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Landroid/graphics/drawable/Icon;

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->f(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->h(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-object v0, p0, Ln3/k/a/n;->f:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Ln3/k/a/n;->g:Z

    :cond_2
    const-string v0, "android.picture"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Ln3/k/a/n;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public k(Ljava/lang/CharSequence;)Ln3/k/a/n;
    .locals 0

    .line 1
    invoke-static {p1}, Ln3/k/a/q;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ln3/k/a/u;->c:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/k/a/u;->d:Z

    return-object p0
.end method
