.class public final Le/a/v/a/p0/c;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/p0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/v/a/p0/b;",
        ">;",
        "Le/a/v/a/p0/a;"
    }
.end annotation


# instance fields
.field public final b:Le/a/i5/d;

.field public final c:Le/a/p5/y;

.field public final d:Le/a/v/a/z/a;


# direct methods
.method public constructor <init>(Le/a/i5/d;Le/a/p5/y;Le/a/v/a/z/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "currentTheme"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberFormatter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsViewAnalytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/v/a/p0/c;->b:Le/a/i5/d;

    iput-object p2, p0, Le/a/v/a/p0/c;->c:Le/a/p5/y;

    iput-object p3, p0, Le/a/v/a/p0/c;->d:Le/a/v/a/z/a;

    return-void
.end method


# virtual methods
.method public final Hj(II)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/b/a/r;->f(Ljava/lang/String;)Lw3/b/a/r;

    move-result-object p1

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lw3/b/a/r;->f(Ljava/lang/String;)Lw3/b/a/r;

    move-result-object p2

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "ha"

    .line 4
    invoke-virtual {p1, v1, v0}, Lw3/b/a/r;->g(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p2, v1, v0}, Lw3/b/a/r;->g(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2d

    .line 6
    invoke-static {p1, v0, p2}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final Ij(Lcom/truecaller/data/entity/Contact;)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->J()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x15

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-gt v4, v2, :cond_1

    add-int/lit8 v5, v4, 0x2

    .line 4
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v2, 0x9

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "orderedHourlyCallsList[S\u2026RNOON_STARTING_INDEX + 1]"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, p1

    const/16 p1, 0xa

    .line 9
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "orderedHourlyCallsList[S\u2026RNOON_STARTING_INDEX + 2]"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v2

    const/16 v2, 0xb

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "orderedHourlyCallsList[S\u2026RNOON_STARTING_INDEX + 3]"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, p1

    const/16 p1, 0x17

    .line 11
    invoke-static {v3, p1}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p1

    const/4 v3, 0x4

    invoke-static {p1, v3}, Ls1/d0/j;->i(Ls1/d0/g;I)Ls1/d0/g;

    move-result-object p1

    .line 12
    iget v3, p1, Ls1/d0/g;->a:I

    .line 13
    iget v4, p1, Ls1/d0/g;->b:I

    .line 14
    iget p1, p1, Ls1/d0/g;->c:I

    if-ltz p1, :cond_2

    if-gt v3, v4, :cond_4

    goto :goto_1

    :cond_2
    if-lt v3, v4, :cond_4

    .line 15
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 16
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "orderedHourlyCallsList[x + 1]"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    add-int/lit8 v5, v3, 0x2

    .line 17
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "orderedHourlyCallsList[x + 2]"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x3

    .line 18
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "orderedHourlyCallsList[x + 3]"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    if-le v6, v2, :cond_3

    move v0, v3

    move v2, v6

    :cond_3
    if-eq v3, v4, :cond_4

    add-int/2addr v3, p1

    goto :goto_1

    :cond_4
    :goto_2
    return v0
.end method
