.class public Lcom/tenor/android/core/response/impl/GifsResponse;
.super Lcom/tenor/android/core/response/AbstractResponse;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x26ee20fca5a4c043L


# instance fields
.field private next:Ljava/lang/String;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tenor/android/core/model/impl/Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tenor/android/core/response/AbstractResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getNext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/response/impl/GifsResponse;->next:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tenor/android/core/model/impl/Result;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/response/impl/GifsResponse;->results:Ljava/util/List;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tenor/android/core/response/impl/GifsResponse;->results:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/response/impl/GifsResponse;->next:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
