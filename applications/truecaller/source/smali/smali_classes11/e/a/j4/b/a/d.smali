.class public Le/a/j4/b/a/d;
.super Le/a/j4/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/j4/b/a/a<",
        "Le/a/j4/b/b/c;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/j4/b/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/j4/b/b/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/a;->e()I

    move-result v0

    .line 2
    invoke-super {p0, p1}, Le/a/j4/b/a/a;->a(Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Le/a/j4/b/a/d;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/j4/b/b/c;

    add-int/lit8 v0, v0, 0x1

    .line 5
    iget-object v2, p0, Le/a/j4/b/a/d;->b:Ljava/util/HashMap;

    iget-wide v3, v1, Le/a/j4/b/b/c;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/a/j4/b/a/a;->e()I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Le/a/j4/b/a/d;->c(Z)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/j4/b/a/d;->b:Ljava/util/HashMap;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/a/j4/b/a/a;->c(Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/a/j4/b/a/d;->b:Ljava/util/HashMap;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "TC.meta.2.90"

    return-object v0
.end method

.method public final i()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j4/b/a/d;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/j4/b/a/a;->e()I

    move-result v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Le/a/j4/b/a/d;->b:Ljava/util/HashMap;

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_0

    .line 4
    const-class v3, Le/a/j4/b/b/c;

    invoke-virtual {p0, v3, v2}, Le/a/j4/b/a/a;->d(Ljava/lang/Class;I)Le/a/j4/b/b/d;

    move-result-object v3

    check-cast v3, Le/a/j4/b/b/c;

    .line 5
    iget-object v4, p0, Le/a/j4/b/a/d;->b:Ljava/util/HashMap;

    iget-wide v5, v3, Le/a/j4/b/b/c;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/j4/b/a/d;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public j(J)Le/a/j4/b/b/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/d;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 2
    const-class p2, Le/a/j4/b/b/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Le/a/j4/b/a/a;->d(Ljava/lang/Class;I)Le/a/j4/b/b/d;

    move-result-object p2

    check-cast p2, Le/a/j4/b/b/c;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :cond_1
    return-object p2
.end method
