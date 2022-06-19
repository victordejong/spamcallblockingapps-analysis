.class public final Le/a/a5/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a5/a;-><init>(Lcom/truecaller/messaging/data/types/Message;Le/a/a/g/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a5/a;

.field public final synthetic c:Le/a/a/g/p;


# direct methods
.method public constructor <init>(Le/a/a5/a;Le/a/a/g/p;)V
    .locals 0

    iput-object p1, p0, Le/a/a5/a$a;->b:Le/a/a5/a;

    iput-object p2, p0, Le/a/a5/a$a;->c:Le/a/a/g/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a5/a$a;->b:Le/a/a5/a;

    .line 2
    iget-object v0, v0, Le/a/a5/a;->d:Lcom/truecaller/messaging/data/types/Message;

    .line 3
    iget-wide v1, v0, Lcom/truecaller/messaging/data/types/Message;->b:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 4
    iget-object v1, p0, Le/a/a5/a$a;->c:Le/a/a/g/p;

    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v0, v0, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    invoke-static {v0}, Le/a/b0/q/c0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PhoneNumberUtils.stripAl\u2026e.participant.rawAddress)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/a/g/p;->a(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method
