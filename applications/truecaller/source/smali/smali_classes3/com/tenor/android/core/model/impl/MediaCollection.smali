.class public Lcom/tenor/android/core/model/impl/MediaCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7a75e8b76d107659L


# instance fields
.field private gif:Lcom/tenor/android/core/model/impl/Media;

.field private loopedmp4:Lcom/tenor/android/core/model/impl/Media;

.field private mediumgif:Lcom/tenor/android/core/model/impl/Media;

.field private mp4:Lcom/tenor/android/core/model/impl/Media;

.field private nanogif:Lcom/tenor/android/core/model/impl/Media;

.field private nanomp4:Lcom/tenor/android/core/model/impl/Media;

.field private nanowebm:Lcom/tenor/android/core/model/impl/Media;

.field private tinygif:Lcom/tenor/android/core/model/impl/Media;

.field private tinymp4:Lcom/tenor/android/core/model/impl/Media;

.field private tinywebm:Lcom/tenor/android/core/model/impl/Media;

.field private webm:Lcom/tenor/android/core/model/impl/Media;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Lcom/tenor/android/core/model/impl/Media;

    invoke-direct {p0}, Lcom/tenor/android/core/model/impl/Media;-><init>()V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/tenor/android/core/model/impl/Media;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/tenor/android/core/constant/MediaCollectionFormat$Value;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "GIF_TINY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "GIF_NANO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "MP4_TINY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "MP4_NANO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "MP4_LOOPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "WEBM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "MP4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "GIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "GIF_MEDIUM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "WEBM_TINY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_a
    const-string v0, "WEBM_NANO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance p1, Lcom/tenor/android/core/model/impl/Media;

    invoke-direct {p1}, Lcom/tenor/android/core/model/impl/Media;-><init>()V

    return-object p1

    .line 3
    :pswitch_0
    iget-object p1, p0, Lcom/tenor/android/core/model/impl/MediaCollection;->tinygif:Lcom/tenor/android/core/model/impl/Media;

    invoke-static {p1}, Lcom/tenor/android/core/model/impl/MediaCollection;->getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/tenor/android/core/model/impl/MediaCollection;->nanogif:Lcom/tenor/android/core/model/impl/Media;

    invoke-static {p1}, Lcom/tenor/android/core/model/impl/MediaCollection;->getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/tenor/android/core/model/impl/MediaCollection;->tinymp4:Lcom/tenor/android/core/model/impl/Media;

    invoke-static {p1}, Lcom/tenor/android/core/model/impl/MediaCollection;->getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_3
    iget-object p1, p0, Lcom/tenor/android/core/model/impl/MediaCollection;->nanomp4:Lcom/tenor/android/core/model/impl/Media;

    invoke-static {p1}, Lcom/tenor/android/core/model/impl/MediaCollection;->getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_4
    iget-object p1, p0, Lcom/tenor/android/core/model/impl/MediaCollection;->loopedmp4:Lcom/tenor/android/core/model/impl/Media;

    invoke-static {p1}, Lcom/tenor/android/core/model/impl/MediaCollection;->getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    iget-object p1, p0, Lcom/tenor/android/core/model/impl/MediaCollection;->webm:Lcom/tenor/android/core/model/impl/Media;

    invoke-static {p1}, Lcom/tenor/android/core/model/impl/MediaCollection;->getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_6
    iget-object p1, p0, Lcom/tenor/android/core/model/impl/MediaCollection;->mp4:Lcom/tenor/android/core/model/impl/Media;

    invoke-static {p1}, Lcom/tenor/android/core/model/impl/MediaCollection;->getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_7
    iget-object p1, p0, Lcom/tenor/android/core/model/impl/MediaCollection;->gif:Lcom/tenor/android/core/model/impl/Media;

    invoke-static {p1}, Lcom/tenor/android/core/model/impl/MediaCollection;->getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_8
    iget-object p1, p0, Lcom/tenor/android/core/model/impl/MediaCollection;->mediumgif:Lcom/tenor/android/core/model/impl/Media;

    invoke-static {p1}, Lcom/tenor/android/core/model/impl/MediaCollection;->getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_9
    iget-object p1, p0, Lcom/tenor/android/core/model/impl/MediaCollection;->tinywebm:Lcom/tenor/android/core/model/impl/Media;

    invoke-static {p1}, Lcom/tenor/android/core/model/impl/MediaCollection;->getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_a
    iget-object p1, p0, Lcom/tenor/android/core/model/impl/MediaCollection;->nanowebm:Lcom/tenor/android/core/model/impl/Media;

    invoke-static {p1}, Lcom/tenor/android/core/model/impl/MediaCollection;->getOrEmptyMedia(Lcom/tenor/android/core/model/impl/Media;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x70ed9466 -> :sswitch_a
        -0x70eabc1a -> :sswitch_9
        -0x67ca3390 -> :sswitch_8
        0x113a4 -> :sswitch_7
        0x12af1 -> :sswitch_6
        0x289799 -> :sswitch_5
        0x10d57f51 -> :sswitch_4
        0x24c82f42 -> :sswitch_3
        0x24cb078e -> :sswitch_2
        0x61ecbe6f -> :sswitch_1
        0x61ef96bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
