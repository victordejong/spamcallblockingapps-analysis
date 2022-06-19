.class public final Ln3/y/c/d1$a;
.super Ln3/y/c/d1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/c/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:I

.field public final d:I

.field public final e:Landroidx/media2/exoplayer/external/Format;


# direct methods
.method public constructor <init>(IILandroidx/media2/exoplayer/external/Format;II)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    const/4 v3, 0x1

    if-nez p2, :cond_1

    if-nez p4, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :cond_1
    if-ne p2, v3, :cond_2

    if-ne p4, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    move v4, v0

    goto :goto_1

    .line 1
    :cond_3
    iget v4, p3, Landroidx/media2/exoplayer/external/Format;->c:I

    :goto_1
    if-nez p3, :cond_4

    const-string v5, "und"

    goto :goto_2

    .line 2
    :cond_4
    iget-object v5, p3, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    .line 3
    :goto_2
    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    const-string v7, "mime"

    if-nez p2, :cond_5

    const-string v1, "text/cea-608"

    .line 4
    invoke-virtual {v6, v7, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-ne p2, v3, :cond_6

    const-string v1, "text/cea-708"

    .line 5
    invoke-virtual {v6, v7, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-ne p2, v1, :cond_a

    const-string v1, "text/vtt"

    .line 6
    invoke-virtual {v6, v7, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v1, "language"

    .line 7
    invoke-virtual {v6, v1, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_4

    :cond_7
    move v1, v0

    :goto_4
    const-string v5, "is-forced-subtitle"

    .line 8
    invoke-virtual {v6, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, v0

    :goto_5
    const-string v5, "is-autoselect"

    .line 9
    invoke-virtual {v6, v5, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_9

    move v0, v3

    :cond_9
    const-string v1, "is-default"

    .line 10
    invoke-virtual {v6, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 11
    invoke-direct {p0, p1, v2, v6, p5}, Ln3/y/c/d1$b;-><init>(IILandroid/media/MediaFormat;I)V

    .line 12
    iput p2, p0, Ln3/y/c/d1$a;->c:I

    .line 13
    iput p4, p0, Ln3/y/c/d1$a;->d:I

    .line 14
    iput-object p3, p0, Ln3/y/c/d1$a;->e:Landroidx/media2/exoplayer/external/Format;

    return-void

    .line 15
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
