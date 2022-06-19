.class public abstract Le/a/a/c/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

.field public b:Ljava/lang/String;

.field public c:Lq3/a/p1;

.field public final d:Le/a/a/v0/a;

.field public final e:Ls1/w/f;

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lq3/a/g0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/a/v0/a;Le/a/u3/g;Ls1/w/f;Lo3/a;Le/a/q2/a;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p4    # Lo3/a;
        .annotation runtime Ljavax/inject/Named;
            value = "LinkPreviewExtractorContext"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/v0/a;",
            "Le/a/u3/g;",
            "Ls1/w/f;",
            "Lo3/a<",
            "Lq3/a/g0;",
            ">;",
            "Le/a/q2/a;",
            ")V"
        }
    .end annotation

    const-string v0, "linkMetaDataExtractor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uiContext"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "linkPreviewContext"

    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "analytics"

    invoke-static {p5, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/d3;->d:Le/a/a/v0/a;

    iput-object p3, p0, Le/a/a/c/d3;->e:Ls1/w/f;

    iput-object p4, p0, Le/a/a/c/d3;->f:Lo3/a;

    iput-object p5, p0, Le/a/a/c/d3;->g:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/d3;->c:Lq3/a/p1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iput-object v1, p0, Le/a/a/c/d3;->a:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    .line 3
    invoke-virtual {p0}, Le/a/a/c/d3;->i()V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/d3;->c:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;)V
    .locals 7

    const-string v0, "draft"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputText"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v0, "draft.media"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    instance-of v4, v3, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    if-eqz p1, :cond_6

    .line 5
    new-instance v6, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    .line 6
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    .line 7
    iget-object v2, p1, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->y:Ljava/lang/String;

    .line 8
    iget-object v3, p1, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->z:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->x:Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move-object v4, v0

    .line 10
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v5, -0x7e31d85e

    if-eq v0, v5, :cond_4

    const v5, 0x55c6750

    if-eq v0, v5, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "application/vnd.truecaller.linkpreview.media"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->MEDIA:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    goto :goto_3

    :cond_4
    const-string v0, "application/vnd.truecaller.linkpreview.playable"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->PLAYABLE:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    goto :goto_3

    .line 13
    :cond_5
    :goto_2
    sget-object p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->DEFAULT:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    :goto_3
    move-object v5, p1

    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;)V

    iput-object v6, p0, Le/a/a/c/d3;->a:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    :cond_6
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p2, p1}, Le/a/a/c/d3;->g(Ljava/lang/String;Z)V

    return-void
.end method

.method public final g(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    sget-object v6, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v0, p0, Le/a/a/c/d3;->c:Lq3/a/p1;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v7, v1, v7}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/c/d3;->a:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v7

    :goto_0
    const-string p2, "linkPreviewContext.get()"

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Le/a/a/c/d3;->f:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ls1/w/f;

    const/4 v2, 0x0

    new-instance v3, Le/a/a/c/d3$a;

    invoke-direct {v3, v0, v7, p0}, Le/a/a/c/d3$a;-><init>(Lcom/truecaller/messaging/linkpreviews/LinkMetaData;Ls1/w/d;Le/a/a/c/d3;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/a/c/d3;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ls1/w/f;

    const/4 v2, 0x0

    new-instance v3, Le/a/a/c/d3$b;

    invoke-direct {v3, p0, p1, v7}, Le/a/a/c/d3$b;-><init>(Le/a/a/c/d3;Ljava/lang/String;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/d3;->c:Lq3/a/p1;

    return-void
.end method

.method public final getEntity()Lcom/truecaller/messaging/data/types/BinaryEntity;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/d3;->a:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, v0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->a:Ljava/lang/String;

    .line 3
    iget-object v3, p0, Le/a/a/c/d3;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Le/a/c/p/a;->U2(Lcom/truecaller/messaging/linkpreviews/LinkMetaData;)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final h()Lcom/truecaller/messaging/linkpreviews/LinkMetaData;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/d3;->a:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->a:Ljava/lang/String;

    .line 3
    iget-object v3, p0, Le/a/a/c/d3;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public abstract i()V
.end method

.method public final k(Ljava/lang/CharSequence;Z)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/a/a/c/d3;->g(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/c/d3;->a:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iput-object v0, p0, Le/a/a/c/d3;->b:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Le/a/a/c/d3;->a:Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    .line 5
    iget-object v0, p0, Le/a/a/c/d3;->c:Lq3/a/p1;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Le/a/a/c/d3;->i()V

    .line 7
    iget-object v0, p0, Le/a/a/c/d3;->g:Le/a/q2/a;

    const-string v1, "ImLinkPreview"

    const-string v2, "type"

    .line 8
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v8, "action"

    const-string v9, "discard"

    const-string v4, "name"

    const-string v6, "value"

    move-object v3, v8

    move-object v5, v9

    move-object v7, v2

    .line 9
    invoke-static/range {v3 .. v9}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 10
    invoke-static {v1, v3, v2, v4, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method
