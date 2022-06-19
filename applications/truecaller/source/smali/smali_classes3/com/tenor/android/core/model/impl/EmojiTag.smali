.class public Lcom/tenor/android/core/model/impl/EmojiTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1ea19254ee4e78efL


# instance fields
.field private imgUrl:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "path"
    .end annotation
.end field

.field private searchName:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "name"
    .end annotation
.end field

.field private searchTerm:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "searchterm"
    .end annotation
.end field

.field private unicodeChars:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "character"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/EmojiTag;->imgUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/EmojiTag;->searchName:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchTerm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/EmojiTag;->searchTerm:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeChars()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/model/impl/EmojiTag;->unicodeChars:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
