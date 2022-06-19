.class public Lcom/tenor/android/core/response/impl/TrendingTermResponse;
.super Lcom/tenor/android/core/response/AbstractResponse;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7203f72671727011L


# instance fields
.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
.method public getTrendingTerms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/response/impl/TrendingTermResponse;->results:Ljava/util/List;

    invoke-static {v0}, Lcom/tenor/android/core/util/AbstractListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tenor/android/core/response/impl/TrendingTermResponse;->results:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
