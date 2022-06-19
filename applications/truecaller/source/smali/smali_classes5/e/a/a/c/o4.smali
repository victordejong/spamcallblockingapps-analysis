.class public final Le/a/a/c/o4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/c0/l0;


# instance fields
.field public final synthetic a:Le/a/a/c/p4;

.field public final synthetic b:Lcom/truecaller/data/entity/messaging/Participant;


# direct methods
.method public constructor <init>(Le/a/a/c/p4;Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/c/o4;->a:Le/a/a/c/p4;

    iput-object p2, p0, Le/a/a/c/o4;->b:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/o4;->a:Le/a/a/c/p4;

    iget-object v0, p0, Le/a/a/c/o4;->b:Lcom/truecaller/data/entity/messaging/Participant;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    iget-object v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->f:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/truecaller/data/entity/Number;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Number.fromStrings(parti\u2026nt.countryCode) ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p1, Le/a/a/c/p4;->h:Le/a/d/c0/s1;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 6
    new-instance v3, Le/a/a/c/q4;

    invoke-direct {v3, p1, v0}, Le/a/a/c/q4;-><init>(Le/a/a/c/p4;Lcom/truecaller/data/entity/Number;)V

    .line 7
    invoke-interface {v1, v2, v3}, Le/a/d/c0/s1;->l(Ljava/util/List;Le/a/d/c0/d1;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/a/c/o4;->a:Le/a/a/c/p4;

    .line 9
    iget-object p1, p1, Le/a/a/c/p4;->i:Lo3/a;

    .line 10
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/n4$a;

    invoke-interface {p1}, Le/a/a/c/n4$a;->C8()V

    :cond_1
    :goto_0
    return-void
.end method
