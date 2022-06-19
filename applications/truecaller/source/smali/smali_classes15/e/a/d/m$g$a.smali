.class public final Le/a/d/m$g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/m$g;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/data/entity/Contact;",
        "Ljava/util/List<",
        "+",
        "Ls1/k<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Le/a/d/c0/k1;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/m$g;


# direct methods
.method public constructor <init>(Le/a/d/m$g;)V
    .locals 0

    iput-object p1, p0, Le/a/d/m$g$a;->b:Le/a/d/m$g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    const-string v0, "contact"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/d/m$g$a;->b:Le/a/d/m$g;

    iget-object v0, v0, Le/a/d/m$g;->g:Le/a/d/m;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Le/a/d/m;->K(Lcom/truecaller/data/entity/Contact;Z)Le/a/d/c0/k1;

    move-result-object p1

    .line 5
    iget-object v0, p1, Le/a/d/c0/k1;->b:Ljava/util/Set;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/String;

    .line 9
    new-instance v3, Ls1/k;

    invoke-direct {v3, v2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
