.class public final Le/a/a/v0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/v0/a;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/truecaller/messaging/linkpreviews/LinkMetaData;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/q2/a;

.field public final c:Le/a/a/k/a/g2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/a/k/a/g2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/v0/c;->b:Le/a/q2/a;

    iput-object p2, p0, Le/a/a/v0/c;->c:Le/a/a/k/a/g2/a;

    .line 2
    new-instance p1, Le/a/a/v0/c$b;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Le/a/a/v0/c$b;-><init>(I)V

    iput-object p1, p0, Le/a/a/v0/c;->a:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v1, "Patterns.WEB_URL.matcher(text)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 5
    new-instance v2, Ls1/k;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ls1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "Patterns.WEB_URL.matcher(text)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Ls1/k;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public c(Ljava/lang/String;Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/messaging/linkpreviews/LinkMetaData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Le/a/a/v0/c$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/a/v0/c$a;

    iget v2, v1, Le/a/a/v0/c$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/a/v0/c$a;->e:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/a/v0/c$a;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Le/a/a/v0/c$a;-><init>(Le/a/a/v0/c;Ls1/w/d;)V

    :goto_0
    iget-object v0, v1, Le/a/a/v0/c$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v1, Le/a/a/v0/c$a;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v1, Le/a/a/v0/c$a;->k:Ljava/lang/Object;

    check-cast v4, Le/a/a/v0/c;

    iget-object v7, v1, Le/a/a/v0/c$a;->j:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Le/a/a/v0/c$a;->i:Ljava/lang/Object;

    check-cast v8, Ljava/util/regex/Matcher;

    iget-object v9, v1, Le/a/a/v0/c$a;->h:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    iget-object v10, v1, Le/a/a/v0/c$a;->g:Ljava/lang/Object;

    check-cast v10, Le/a/a/v0/c;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v4, "Patterns.WEB_URL.matcher(text)"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    move-object v4, v2

    move-object/from16 v0, p2

    .line 5
    :cond_3
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 6
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v9

    .line 7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 8
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_3

    if-eqz v0, :cond_5

    const-string v9, "init"

    .line 9
    invoke-virtual {v4, v9}, Le/a/a/v0/c;->e(Ljava/lang/String;)V

    .line 10
    :cond_5
    iget-object v9, v4, Le/a/a/v0/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    if-eqz v9, :cond_6

    goto/16 :goto_e

    :cond_6
    if-eqz v0, :cond_8

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-object v4, v1, Le/a/a/v0/c$a;->g:Ljava/lang/Object;

    iput-object v0, v1, Le/a/a/v0/c$a;->h:Ljava/lang/Object;

    iput-object v8, v1, Le/a/a/v0/c$a;->i:Ljava/lang/Object;

    iput-object v7, v1, Le/a/a/v0/c$a;->j:Ljava/lang/Object;

    iput-object v4, v1, Le/a/a/v0/c$a;->k:Ljava/lang/Object;

    iput v5, v1, Le/a/a/v0/c$a;->e:I

    invoke-static {v9, v10, v1}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_7

    return-object v3

    :cond_7
    move-object v9, v0

    move-object v10, v4

    :goto_2
    move-object v0, v9

    goto :goto_3

    :cond_8
    move-object v10, v4

    .line 12
    :goto_3
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v9, Le/a/a/v0/b;

    invoke-direct {v9, v4, v7, v6}, Le/a/a/v0/b;-><init>(Le/a/a/v0/c;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v6, v9, v5, v6}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/api/services/previews/v1/models/MediaPreview;

    if-eqz v9, :cond_14

    .line 14
    invoke-virtual {v9}, Lcom/truecaller/api/services/previews/v1/models/MediaPreview;->getTitle()Ljava/lang/String;

    move-result-object v13

    .line 15
    invoke-virtual {v9}, Lcom/truecaller/api/services/previews/v1/models/MediaPreview;->getDescription()Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x0

    if-eqz v13, :cond_a

    .line 16
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_9

    goto :goto_4

    :cond_9
    move v12, v11

    goto :goto_5

    :cond_a
    :goto_4
    move v12, v5

    :goto_5
    if-nez v12, :cond_14

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_b

    goto :goto_6

    :cond_b
    move v12, v11

    goto :goto_7

    :cond_c
    :goto_6
    move v12, v5

    :goto_7
    if-eqz v12, :cond_d

    goto :goto_b

    .line 17
    :cond_d
    new-instance v17, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    .line 18
    invoke-virtual {v9}, Lcom/truecaller/api/services/previews/v1/models/MediaPreview;->getPreviewUri()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_f

    :cond_e
    move v11, v5

    :cond_f
    if-eqz v11, :cond_10

    sget-object v11, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->DEFAULT:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    :goto_8
    move-object/from16 v16, v11

    goto :goto_a

    .line 19
    :cond_10
    invoke-virtual {v9}, Lcom/truecaller/api/services/previews/v1/models/MediaPreview;->getMediaType()Lcom/truecaller/api/services/previews/v1/models/MediaType;

    move-result-object v11

    sget-object v12, Lcom/truecaller/api/services/previews/v1/models/MediaType;->UNKNOWN:Lcom/truecaller/api/services/previews/v1/models/MediaType;

    if-ne v11, v12, :cond_11

    sget-object v11, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->DEFAULT:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    goto :goto_8

    .line 20
    :cond_11
    invoke-virtual {v9}, Lcom/truecaller/api/services/previews/v1/models/MediaPreview;->getMediaType()Lcom/truecaller/api/services/previews/v1/models/MediaType;

    move-result-object v11

    sget-object v12, Lcom/truecaller/api/services/previews/v1/models/MediaType;->AUDIO:Lcom/truecaller/api/services/previews/v1/models/MediaType;

    if-eq v11, v12, :cond_13

    invoke-virtual {v9}, Lcom/truecaller/api/services/previews/v1/models/MediaPreview;->getMediaType()Lcom/truecaller/api/services/previews/v1/models/MediaType;

    move-result-object v11

    sget-object v12, Lcom/truecaller/api/services/previews/v1/models/MediaType;->VIDEO:Lcom/truecaller/api/services/previews/v1/models/MediaType;

    if-ne v11, v12, :cond_12

    goto :goto_9

    .line 21
    :cond_12
    sget-object v11, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->MEDIA:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    goto :goto_8

    .line 22
    :cond_13
    :goto_9
    sget-object v11, Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;->PLAYABLE:Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;

    goto :goto_8

    .line 23
    :goto_a
    invoke-virtual {v9}, Lcom/truecaller/api/services/previews/v1/models/MediaPreview;->getPreviewUri()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v11, v17

    move-object v12, v7

    .line 24
    invoke-direct/range {v11 .. v16}, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/messaging/linkpreviews/LinkMetaData$Type;)V

    move-object/from16 v9, v17

    goto :goto_c

    :cond_14
    :goto_b
    move-object v9, v6

    :goto_c
    if-eqz v9, :cond_15

    .line 25
    iget-object v4, v4, Le/a/a/v0/c;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_15
    move-object v9, v6

    :goto_d
    move-object v4, v10

    :goto_e
    if-eqz v9, :cond_3

    const-string v0, "generate"

    .line 26
    invoke-virtual {v4, v0}, Le/a/a/v0/c;->e(Ljava/lang/String;)V

    return-object v9

    :cond_16
    return-object v6
.end method

.method public d(Lcom/truecaller/messaging/linkpreviews/LinkMetaData;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/linkpreviews/LinkMetaData;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/a/v0/c;->a:Ljava/util/LinkedHashMap;

    .line 2
    iget-object v0, p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->a:Ljava/lang/String;

    .line 3
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/v0/c;->b:Le/a/q2/a;

    const-string v1, "ImLinkPreview"

    const-string v2, "type"

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v8, "action"

    const-string v4, "name"

    const-string v6, "value"

    move-object v3, v8

    move-object v5, p1

    move-object v7, v2

    move-object v9, p1

    .line 3
    invoke-static/range {v3 .. v9}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v1, p1, v2, v3, v0}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method
