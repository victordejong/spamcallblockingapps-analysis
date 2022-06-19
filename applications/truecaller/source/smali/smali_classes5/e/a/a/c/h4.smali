.class public final synthetic Le/a/a/c/h4;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Le/a/a/c1/a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/a/c/g4;)V
    .locals 7

    const-class v3, Le/a/a/c/g4;

    const/4 v1, 0x1

    const-string v4, "onScheduledMessageEdited"

    const-string v5, "onScheduledMessageEdited$truecaller_googlePlayRelease(Lcom/truecaller/messaging/sending/DraftEditResult;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Le/a/a/c1/a;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/g4;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    instance-of v1, p1, Le/a/a/c1/a$b;

    if-eqz v1, :cond_1

    .line 5
    check-cast p1, Le/a/a/c1/a$b;

    .line 6
    iget-object p1, p1, Le/a/a/c1/a$b;->b:Lcom/truecaller/messaging/data/types/Draft;

    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, p1, Le/a/a/c1/a$a;

    if-eqz v1, :cond_4

    .line 8
    check-cast p1, Le/a/a/c1/a$a;

    .line 9
    iget-object v1, p1, Le/a/a/c1/a$a;->a:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p1, Le/a/a/c1/a$a;->a:Ljava/util/List;

    .line 12
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/k;

    .line 13
    iget-object v1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 14
    check-cast v1, Lcom/truecaller/messaging/data/types/Draft;

    .line 15
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 16
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    :goto_0
    if-nez v1, :cond_3

    .line 17
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    const-string v1, "draft.text"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, p1, v1}, Le/a/a/c/g4;->lk(Ljava/lang/CharSequence;Z)V

    .line 19
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 20
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
