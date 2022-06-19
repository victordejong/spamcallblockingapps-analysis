.class public final Le/a/h/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/d/d;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/h/d/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Le/a/h/d/f;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "normalizers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/d/e;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Number;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_2

    .line 2
    :cond_1
    iget-object p2, p0, Le/a/h/d/e;->a:Ljava/util/Set;

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/h/d/f;

    .line 4
    invoke-interface {v2}, Le/a/h/d/f;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 5
    :goto_1
    check-cast v1, Le/a/h/d/f;

    if-eqz v1, :cond_4

    .line 6
    invoke-interface {v1, p1}, Le/a/h/d/f;->b(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    goto :goto_4

    .line 7
    :cond_5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object p2

    sget-object v0, Le/m/f/a/j$d;->d:Le/m/f/a/j$d;

    if-ne p2, v0, :cond_6

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Le/a/p5/g0;->G([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v0, p1

    :goto_4
    return-object v0
.end method
