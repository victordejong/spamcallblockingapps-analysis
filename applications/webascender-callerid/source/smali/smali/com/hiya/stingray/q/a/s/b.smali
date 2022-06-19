.class public Lcom/hiya/stingray/q/a/s/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/q/a/s/a;


# instance fields
.field private final a:Lg/g/a/a/g/i/b;


# direct methods
.method public constructor <init>(Lg/g/a/a/g/i/b;)V
    .locals 1

    const-string v0, "directoryApi"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/a/s/b;->a:Lg/g/a/a/g/i/b;

    return-void
.end method


# virtual methods
.method public a(DD)Li/c/b0/b/v;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/l/g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hiya/stingray/util/p;->m()Ljava/lang/String;

    move-result-object v13

    const-string v0, "DataUtil.getCurrentLocaleLanguageTag()"

    invoke-static {v13, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x14

    const/4 v14, 0x0

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 2
    invoke-virtual/range {v0 .. v14}, Lcom/hiya/stingray/q/a/s/b;->d(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;DDLjava/lang/String;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/l/f;",
            ">;"
        }
    .end annotation

    const-string v0, "directoryId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageTag"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/q/a/s/b;->a:Lg/g/a/a/g/i/b;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lg/g/a/a/g/i/b;->b(Ljava/lang/String;DDLjava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/exception/c;

    sget-object p3, Lg/g/a/a/e;->GET_DIRECTORY_DETAILS:Lg/g/a/a/e;

    invoke-direct {p2, p3}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "directoryApi.getDirector\u2026S.GET_DIRECTORY_DETAILS))"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Ljava/lang/String;DD)Li/c/b0/b/v;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/l/g;",
            ">;"
        }
    .end annotation

    const-string v0, "categoryId"

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/stingray/util/p;->m()Ljava/lang/String;

    move-result-object v14

    const-string v0, "DataUtil.getCurrentLocaleLanguageTag()"

    invoke-static {v14, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x14

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 2
    invoke-virtual/range {v1 .. v15}, Lcom/hiya/stingray/q/a/s/b;->d(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public d(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/l/g;",
            ">;"
        }
    .end annotation

    const-string v0, "languageTag"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/hiya/stingray/q/a/s/b;->a:Lg/g/a/a/g/i/b;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v15, p14

    invoke-interface/range {v1 .. v15}, Lg/g/a/a/g/i/b;->d(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/hiya/stingray/exception/c;

    sget-object v3, Lg/g/a/a/e;->GET_DIRECTORY_RESULTS:Lg/g/a/a/e;

    invoke-direct {v2, v3}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v1

    const-string v2, "directoryApi.getDirector\u2026S.GET_DIRECTORY_RESULTS))"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public e(DDLjava/lang/String;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lg/g/a/a/i/p/h/c;",
            ">;>;"
        }
    .end annotation

    const-string v0, "languageTag"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/q/a/s/b;->a:Lg/g/a/a/g/i/b;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lg/g/a/a/g/i/b;->e(DDLjava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;DD)Li/c/b0/b/v;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DD)",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/l/g;",
            ">;"
        }
    .end annotation

    const-string v0, "searchString"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchTab"

    move-object/from16 v15, p2

    invoke-static {v15, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/stingray/util/p;->m()Ljava/lang/String;

    move-result-object v14

    const-string v0, "DataUtil.getCurrentLocaleLanguageTag()"

    invoke-static {v14, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x14

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    .line 2
    invoke-virtual/range {v1 .. v15}, Lcom/hiya/stingray/q/a/s/b;->d(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method
