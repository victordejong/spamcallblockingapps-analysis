.class public final Le/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/h/i;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/b/j;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/c/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/a/i0;

.field public final e:Le/a/q2/a;


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Le/a/a/i0;Le/a/q2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/a/g1/b;",
            ">;",
            "Lo3/a<",
            "Le/a/c/b/j;",
            ">;",
            "Lo3/a<",
            "Le/a/c/e/c;",
            ">;",
            "Le/a/a/i0;",
            "Le/a/q2/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "translateManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/s;->a:Lo3/a;

    iput-object p2, p0, Le/a/a/s;->b:Lo3/a;

    iput-object p3, p0, Le/a/a/s;->c:Lo3/a;

    iput-object p4, p0, Le/a/a/s;->d:Le/a/a/i0;

    iput-object p5, p0, Le/a/a/s;->e:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/s;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g1/b;

    invoke-interface {v0, p1, p2}, Le/a/a/g1/b;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/s;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g1/b;

    invoke-interface {v0, p1}, Le/a/a/g1/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;ZLs1/z/b/l;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "langCode"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callback"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v0, Le/a/a/s;->b:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/b/j;

    invoke-interface {v3}, Le/a/c/b/j;->C()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    iget-object v3, v0, Le/a/a/s;->c:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/e/c;

    const-string v9, ""

    .line 3
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "feature"

    .line 4
    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventCategory"

    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventInfo"

    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionType"

    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionInfo"

    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "propertyMap"

    invoke-static {v15, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "translation_smart_sms"

    const-string v4, "<set-?>"

    .line 5
    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "model_download"

    .line 6
    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "requested_model_download"

    .line 7
    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v14, Le/a/c/r/d/b;

    .line 9
    new-instance v13, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1c0

    const/16 v19, 0x0

    move-object v4, v13

    move-object v7, v9

    move-object v8, v9

    move-object/from16 v20, v13

    move-object/from16 v13, v16

    move-object/from16 v21, v14

    move/from16 v14, v17

    move-object/from16 v17, v15

    move/from16 v15, v18

    move-object/from16 v16, v19

    invoke-direct/range {v4 .. v16}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 10
    invoke-static/range {v17 .. v17}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    .line 11
    invoke-direct {v5, v6, v4}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 12
    invoke-interface {v3, v5}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 13
    iget-object v3, v0, Le/a/a/s;->d:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->j2()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifiOrMobile"

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 14
    iget-object v4, v0, Le/a/a/s;->a:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/g1/b;

    move/from16 v5, p2

    invoke-interface {v4, v1, v5, v3, v2}, Le/a/a/g1/b;->j(Ljava/lang/String;ZZLs1/z/b/l;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/s;->e:Le/a/q2/a;

    iget-object v1, p0, Le/a/a/s;->a:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g1/b;

    invoke-interface {v1}, Le/a/a/g1/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Le/a/c/p/a;->K1(Le/a/q2/a;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Ls1/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ls1/o<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/a/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/a/r;-><init>(Le/a/a/s;Ljava/lang/String;Ls1/w/d;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/o;

    return-object p1
.end method

.method public f(Lcom/truecaller/insights/commons/LanguageCommonNames;)Ljava/lang/String;
    .locals 1

    const-string v0, "languageCommonName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "ar"

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const-string p1, "sv"

    :goto_0
    return-object p1
.end method
