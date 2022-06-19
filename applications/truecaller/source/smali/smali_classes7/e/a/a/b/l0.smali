.class public final Le/a/a/b/l0;
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/truecaller/messaging/data/types/Conversation;

    .line 2
    iget-object p2, p2, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v0, "it.participants"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v3

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
