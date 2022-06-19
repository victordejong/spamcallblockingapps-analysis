.class public final Le/a/c/g/y/p$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/g/y/p;->c(ILs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0006\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Le/a/c/g/y/p;I)V
    .locals 0

    iput-object p1, p0, Le/a/c/g/y/p$c;->b:Le/a/c/g/y/p;

    iput p2, p0, Le/a/c/g/y/p$c;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/c/g/y/p$c;->b:Le/a/c/g/y/p;

    .line 2
    iget-object v0, v0, Le/a/c/g/y/p;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3
    iget v2, p0, Le/a/c/g/y/p$c;->c:I

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/c/g/a0/d;

    .line 5
    invoke-interface {v4}, Le/a/c/g/a0/d;->getClassId()I

    move-result v4

    if-ne v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    move-object v1, v3

    :cond_2
    check-cast v1, Le/a/c/g/a0/d;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Le/a/c/g/a0/d;->getClassProb()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v0, "classifierMeta"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
