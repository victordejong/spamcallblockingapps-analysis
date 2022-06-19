.class public final Le/a/c/r/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 1

    and-int/lit8 p1, p8, 0x1

    const/4 p2, 0x0

    const-string p3, ""

    if-eqz p1, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    and-int/lit8 p4, p8, 0x2

    if-eqz p4, :cond_1

    move-object p4, p3

    goto :goto_1

    :cond_1
    move-object p4, p2

    :goto_1
    and-int/lit8 p5, p8, 0x4

    if-eqz p5, :cond_2

    move-object p5, p3

    goto :goto_2

    :cond_2
    move-object p5, p2

    :goto_2
    and-int/lit8 p6, p8, 0x8

    if-eqz p6, :cond_3

    move-object p6, p3

    goto :goto_3

    :cond_3
    move-object p6, p2

    :goto_3
    and-int/lit8 p7, p8, 0x10

    if-eqz p7, :cond_4

    move-object p7, p3

    goto :goto_4

    :cond_4
    move-object p7, p2

    :goto_4
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move-object p3, p2

    :goto_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 1
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_6
    const-string p8, "feature"

    .line 2
    invoke-static {p1, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "eventCategory"

    invoke-static {p4, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "eventInfo"

    invoke-static {p5, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "context"

    invoke-static {p6, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "actionType"

    invoke-static {p7, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "actionInfo"

    invoke-static {p3, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "propertyMap"

    invoke-static {p2, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/r/d/c;->a:Ljava/lang/String;

    iput-object p4, p0, Le/a/c/r/d/c;->b:Ljava/lang/String;

    iput-object p5, p0, Le/a/c/r/d/c;->c:Ljava/lang/String;

    iput-object p6, p0, Le/a/c/r/d/c;->d:Ljava/lang/String;

    iput-object p7, p0, Le/a/c/r/d/c;->e:Ljava/lang/String;

    iput-object p3, p0, Le/a/c/r/d/c;->f:Ljava/lang/String;

    iput-object p2, p0, Le/a/c/r/d/c;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Le/a/c/r/d/b;
    .locals 15

    .line 1
    iget-object v0, p0, Le/a/c/r/d/c;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Le/a/c/r/d/b;

    .line 3
    new-instance v14, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    iget-object v2, p0, Le/a/c/r/d/c;->a:Ljava/lang/String;

    iget-object v3, p0, Le/a/c/r/d/c;->b:Ljava/lang/String;

    iget-object v4, p0, Le/a/c/r/d/c;->c:Ljava/lang/String;

    iget-object v5, p0, Le/a/c/r/d/c;->d:Ljava/lang/String;

    iget-object v6, p0, Le/a/c/r/d/c;->e:Ljava/lang/String;

    iget-object v7, p0, Le/a/c/r/d/c;->f:Ljava/lang/String;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1c0

    const/4 v13, 0x0

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 4
    iget-object v1, p0, Le/a/c/r/d/c;->g:Ljava/util/Map;

    invoke-static {v1}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-direct {v0, v14, v1}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/c/r/d/c;->f:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/c/r/d/c;->e:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/c/r/d/c;->d:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/c/r/d/c;->b:Ljava/lang/String;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/c/r/d/c;->c:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/c/r/d/c;->a:Ljava/lang/String;

    return-void
.end method
