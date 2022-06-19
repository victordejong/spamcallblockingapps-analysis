.class public final Le/a/l/p2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p2, Le/a/l4/e;

    .line 2
    iget-object p2, p2, Le/a/l4/e;->i:Lcom/truecaller/api/services/presence/v1/models/Premium;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getLevel()Lcom/truecaller/api/services/presence/v1/models/Premium$ProductLevel;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    check-cast p1, Le/a/l4/e;

    .line 4
    iget-object p1, p1, Le/a/l4/e;->i:Lcom/truecaller/api/services/presence/v1/models/Premium;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getLevel()Lcom/truecaller/api/services/presence/v1/models/Premium$ProductLevel;

    move-result-object v0

    :cond_1
    invoke-static {p2, v0}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
