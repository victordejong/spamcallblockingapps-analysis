.class public final Le/a/a/y0/e0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/messaging/data/types/Conversation;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/y0/d0;


# direct methods
.method public constructor <init>(Le/a/a/y0/d0;)V
    .locals 0

    iput-object p1, p0, Le/a/a/y0/e0;->b:Le/a/a/y0/d0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    const-string v0, "conversation"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/c/p/a;->o1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/y0/e0;->b:Le/a/a/y0/d0;

    .line 4
    invoke-virtual {v0, p1}, Le/a/a/y0/d0;->f(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v0, "conversation.participants"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "conversation.participants.first()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {p1}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
