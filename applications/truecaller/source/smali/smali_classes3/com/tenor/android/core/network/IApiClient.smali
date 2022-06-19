.class public interface abstract Lcom/tenor/android/core/network/IApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAnonId(Ljava/lang/String;Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "locale"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/AnonIdResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "anonid?platform=android"
    .end annotation
.end method

.method public abstract getEmojiTags(Ljava/util/Map;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/EmojiResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "tags?platform=android&type=emoji"
    .end annotation
.end method

.method public abstract getGifs(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "ids"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/tenor/android/core/constant/MediaFilter$Value;
        .end annotation

        .annotation runtime Lx3/h0/t;
            value = "media_filter"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "ar_range"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/GifsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "gifs"
    .end annotation
.end method

.method public abstract getImageSize(Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/y;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/g;
    .end annotation
.end method

.method public abstract getPack(Ljava/lang/String;Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "publicid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/PackResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "pack"
    .end annotation
.end method

.method public abstract getSearchSuggestions(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "tag"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lx3/h0/t;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/SearchSuggestionResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "search_suggestions?platform=android"
    .end annotation
.end method

.method public abstract getSuggestions(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "tag"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lx3/h0/t;
            value = "limit"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "type"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "timezone"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Lx3/h0/t;
            value = "allterms"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lx3/b<",
            "Lcom/tenor/android/core/model/impl/Suggestions;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "suggest"
    .end annotation
.end method

.method public abstract getTags(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "timezone"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/TagsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "tags"
    .end annotation
.end method

.method public abstract getTrending(Ljava/util/Map;Ljava/lang/Integer;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lx3/h0/t;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/TrendingTermResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "autocomplete?type=trending"
    .end annotation
.end method

.method public abstract getTrending(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lx3/h0/t;
            value = "limit"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "pos"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/tenor/android/core/constant/MediaFilter$Value;
        .end annotation

        .annotation runtime Lx3/h0/t;
            value = "media_filter"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "ar_range"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/TrendingGifResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "trending"
    .end annotation
.end method

.method public abstract getUserGifs(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "access_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/GifsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "user"
    .end annotation
.end method

.method public abstract registerActions(Ljava/util/Map;Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/d;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/c;
            value = "data"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/e;
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "registeraction"
    .end annotation
.end method

.method public abstract registerSearch(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "q"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "pos"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "registersearch"
    .end annotation
.end method

.method public abstract registerShare(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lx3/h0/t;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "q"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "registershare"
    .end annotation
.end method

.method public abstract search(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lx3/h0/u;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "q"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lx3/h0/t;
            value = "limit"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "pos"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/tenor/android/core/constant/MediaFilter$Value;
        .end annotation

        .annotation runtime Lx3/h0/t;
            value = "media_filter"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lx3/h0/t;
            value = "ar_range"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/GifsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "search"
    .end annotation
.end method
