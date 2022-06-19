.class public final Le/a/d/m$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/m;->B(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/m;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/d/m;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/d/m$d;->b:Le/a/d/m;

    iput-object p2, p0, Le/a/d/m$d;->c:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/d/m$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/Number;

    .line 2
    invoke-static {v2}, Le/a/p5/s0/g;->c(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v4, p0, Le/a/d/m$d;->b:Le/a/d/m;

    .line 5
    iget-object v4, v4, Le/a/d/m;->e:Lo3/a;

    .line 6
    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/h0/j;

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v4, v2, v3, v5}, Le/a/h0/j;->j(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/blocking/FilterMatch;

    .line 8
    invoke-virtual {v3}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v5

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
