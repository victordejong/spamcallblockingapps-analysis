.class public final Le/a/a/c/q4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/d1;


# instance fields
.field public final synthetic a:Le/a/a/c/p4;

.field public final synthetic b:Lcom/truecaller/data/entity/Number;


# direct methods
.method public constructor <init>(Le/a/a/c/p4;Lcom/truecaller/data/entity/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Number;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/q4;->a:Le/a/a/c/p4;

    iput-object p2, p0, Le/a/a/c/q4;->b:Lcom/truecaller/data/entity/Number;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/voip/db/VoipAvailability;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/a/c/q4;->a:Le/a/a/c/p4;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/r4;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Le/a/a/c/q4;->b:Lcom/truecaller/data/entity/Number;

    invoke-interface {p1, v0}, Le/a/a/c/r4;->vA(Lcom/truecaller/data/entity/Number;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/a/c/q4;->a:Le/a/a/c/p4;

    .line 6
    iget-object p1, p1, Le/a/a/c/p4;->i:Lo3/a;

    .line 7
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/n4$a;

    invoke-interface {p1}, Le/a/a/c/n4$a;->C8()V

    return-void
.end method
