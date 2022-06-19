.class public interface abstract Le/a/b0/p/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/util/List;)Lx3/b;
    .param p1    # Ljava/util/List;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/common/tag/network/TagRestModel$SetTagsRequest;",
            ">;)",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/o;
        value = "/v1/phoneNumbers/tags"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/i;
            value = "If-None-Match"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lcom/truecaller/common/tag/network/TagRestModel$KeywordsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "/v1/tags/keywords"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Lx3/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lx3/h0/i;
            value = "If-None-Match"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lcom/truecaller/common/tag/network/TagRestModel$TagsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lx3/h0/f;
        value = "/v1/tags"
    .end annotation
.end method
