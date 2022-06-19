.class public final Le/a/a/c/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/data/entity/messaging/Participant;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/b/q;


# direct methods
.method public constructor <init>(Le/a/a/c/b/q;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/b/p;->a:Le/a/a/c/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/b/p;->a:Le/a/a/c/b/q;

    .line 3
    iget-object v0, v0, Le/a/a/c/b/q;->b:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Le/a/a/c/b/p;->a:Le/a/a/c/b/q;

    .line 6
    iget-object v1, v0, Le/a/a/c/b/q;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/b/o;

    if-eqz p1, :cond_0

    iget-object v0, v0, Le/a/a/c/b/q;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Le/a/a/c/b/o;->gh(Ljava/util/List;)V

    :cond_0
    return-void
.end method
