.class public final Le/a/a/o0/b$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o0/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.blocking.ParticipantBlockHelperImpl$blockParticipants$2$1$1$1"
    f = "ParticipantBlockHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/data/entity/messaging/Participant;

.field public final synthetic f:Le/a/a/o0/b$a;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;Le/a/a/o0/b$a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o0/b$a$a;->e:Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p3, p0, Le/a/a/o0/b$a$a;->f:Le/a/a/o0/b$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/o0/b$a$a;

    iget-object v0, p0, Le/a/a/o0/b$a$a;->e:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v1, p0, Le/a/a/o0/b$a$a;->f:Le/a/a/o0/b$a;

    invoke-direct {p1, v0, p2, v1}, Le/a/a/o0/b$a$a;-><init>(Lcom/truecaller/data/entity/messaging/Participant;Ls1/w/d;Le/a/a/o0/b$a;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/a/o0/b$a$a;->e:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v0, p0, Le/a/a/o0/b$a$a;->f:Le/a/a/o0/b$a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, v0, Le/a/a/o0/b$a;->m:Le/a/a/o0/b;

    .line 6
    iget-object p2, p2, Le/a/a/o0/b;->c:Le/a/k3/j/b;

    iget-wide v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    invoke-virtual {p2, v0, v1}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p1, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/SpamData;->getSpamVersion()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/a/o0/b$a$a;->f:Le/a/a/o0/b$a;

    iget-object p1, p1, Le/a/a/o0/b$a;->m:Le/a/a/o0/b;

    iget-object v0, p0, Le/a/a/o0/b$a$a;->e:Lcom/truecaller/data/entity/messaging/Participant;

    .line 3
    iget-object p1, p1, Le/a/a/o0/b;->c:Le/a/k3/j/b;

    iget-wide v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    invoke-virtual {p1, v0, v1}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/SpamData;->getSpamVersion()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
