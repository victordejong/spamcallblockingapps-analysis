.class public final Le/a/c/a/j/a/b;
.super Le/a/c/a/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/i/c<",
        "Le/a/c/a/j/b/a;",
        "Le/a/c/a/j/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ls1/w/f;

.field public final c:Le/a/c/q/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/c/q/d;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsUiManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/c/a/i/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c/a/j/a/b;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/c/a/j/a/b;->c:Le/a/c/q/d;

    return-void
.end method

.method public static final d(Le/a/c/a/j/a/b;Lcom/truecaller/insights/insightsui/CategoryModel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p3}, Le/a/c/a/j/a/b;->e(Lcom/truecaller/insights/insightsui/CategoryModel;Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p4}, Le/a/c/a/j/a/b;->f(Lcom/truecaller/insights/insightsui/CategoryModel;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUseTagCategory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p3}, Le/a/c/a/j/a/b;->e(Lcom/truecaller/insights/insightsui/CategoryModel;Ljava/util/Set;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUpdateCategories()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p4}, Le/a/c/a/j/a/b;->f(Lcom/truecaller/insights/insightsui/CategoryModel;Ljava/util/Set;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getTagCategory()Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object p0

    const-string p1, "$this$toGrammar"

    .line 5
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-string p1, "Skip"

    if-eqz p0, :cond_4

    const/16 p3, 0xa

    if-eq p0, p3, :cond_3

    packed-switch p0, :pswitch_data_0

    move-object p0, p1

    goto :goto_0

    :pswitch_0
    const-string p0, "Bill"

    goto :goto_0

    :pswitch_1
    const-string p0, "Event"

    goto :goto_0

    :pswitch_2
    const-string p0, "Travel"

    goto :goto_0

    :cond_3
    const-string p0, "Delivery"

    goto :goto_0

    :cond_4
    const-string p0, "Bank"

    :goto_0
    const-string p3, "Updates"

    .line 7
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v2

    goto :goto_1

    :cond_5
    move p0, v1

    :goto_1
    if-eqz p0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/c/a/j/b/b;

    .line 2
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2, v2}, Le/a/c/a/j/b/b;-><init>(Ljava/util/List;ZZ)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 2

    .line 1
    check-cast p1, Le/a/c/a/j/b/a;

    const-string v0, "input"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/j/a/b;->c:Le/a/c/q/d;

    invoke-interface {v0}, Le/a/c/q/d;->a()Lq3/a/x2/f;

    move-result-object v0

    .line 4
    new-instance v1, Le/a/c/a/j/a/a;

    invoke-direct {v1, v0, p0, p1}, Le/a/c/a/j/a/a;-><init>(Lq3/a/x2/f;Le/a/c/a/j/a/b;Le/a/c/a/j/b/a;)V

    return-object v1
.end method

.method public final e(Lcom/truecaller/insights/insightsui/CategoryModel;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/insightsui/CategoryModel;",
            "Ljava/util/Set<",
            "+",
            "Lcom/truecaller/insights/models/updates/UpdateCategory;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUpdateCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUpdateCategories()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final f(Lcom/truecaller/insights/insightsui/CategoryModel;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/insightsui/CategoryModel;",
            "Ljava/util/Set<",
            "+",
            "Lcom/truecaller/insights/smartcards/SmartCardCategory;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getUseTagCategory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/CategoryModel;->getTagCategory()Lcom/truecaller/insights/smartcards/SmartCardCategory;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
