.class public final Le/a/a/d/a/n;
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
.field public final synthetic a:Le/a/a/d/a/m;


# direct methods
.method public constructor <init>(Le/a/a/d/a/m;)V
    .locals 0

    iput-object p1, p0, Le/a/a/d/a/n;->a:Le/a/a/d/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/a/d/a/n;->a:Le/a/a/d/a/m;

    .line 3
    iget-object v0, v0, Le/a/a/d/a/m;->r:Le/a/a/d/a/e;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-array v2, v1, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Lcom/truecaller/data/entity/messaging/Participant;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    iput-object v2, v0, Le/a/a/d/a/e;->a:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 6
    iget-object v0, p0, Le/a/a/d/a/n;->a:Le/a/a/d/a/m;

    .line 7
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/d/a/g;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    invoke-interface {v0, v1}, Le/a/a/d/a/g;->F3(I)V

    .line 9
    invoke-interface {v0}, Le/a/a/d/a/g;->c0()V

    :cond_2
    return-void
.end method
