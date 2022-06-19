.class public Lcom/tenor/android/core/model/impl/Media;
.super Lcom/tenor/android/core/model/impl/Image;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7793f3f381966ec1L


# instance fields
.field private duration:D

.field private preview:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tenor/android/core/model/impl/Image;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tenor/android/core/model/impl/Media;->duration:D

    return-wide v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/Media;->preview:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
