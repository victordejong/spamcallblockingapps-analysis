.class public final Le/a/c/g/y/p$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/g/y/p;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/g/b0/b;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/truecaller/insights/categorizer/multiClass/ClassProbability;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/g/y/p;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/g/y/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/c/g/y/p$d;->b:Le/a/c/g/y/p;

    iput-object p2, p0, Le/a/c/g/y/p$d;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/c/g/y/p$d;->b:Le/a/c/g/y/p;

    .line 2
    iget-object v0, v0, Le/a/c/g/y/p;->d:Le/a/c/g/d0/d;

    .line 3
    iget-object v1, p0, Le/a/c/g/y/p$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/a/c/g/d0/d;->d(Ljava/lang/String;)Le/a/c/g/d0/e$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, v0, Le/a/c/g/d0/e$a;->b:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Le/a/c/g/y/p$d;->c:Ljava/lang/String;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Le/a/c/g/a0/g;

    .line 9
    new-instance v4, Le/a/c/g/b0/b;

    .line 10
    iget v5, v3, Le/a/c/g/a0/g;->a:I

    .line 11
    iget-object v3, v3, Le/a/c/g/a0/g;->b:Ljava/lang/Double;

    .line 12
    invoke-direct {v4, v5, v3, v1}, Le/a/c/g/b0/b;-><init>(ILjava/lang/Double;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_1
    return-object v1
.end method
