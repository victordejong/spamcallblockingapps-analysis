.class public final Le/a/a/e/z;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/e/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/e/c0;",
        ">;",
        "Le/a/a/e/b0;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/e/d0;

.field public final c:Le/a/a/i1/b;

.field public final d:Le/a/x2/c;


# direct methods
.method public constructor <init>(Le/a/a/e/d0;Le/a/a/i1/b;Le/a/x2/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXConfigProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/e/z;->b:Le/a/a/e/d0;

    iput-object p2, p0, Le/a/a/e/z;->c:Le/a/a/i1/b;

    iput-object p3, p0, Le/a/a/e/z;->d:Le/a/x2/c;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/e/c0;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/e/z;->b:Le/a/a/e/d0;

    invoke-interface {v0}, Le/a/a/e/d0;->j2()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "model.messages[position]"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/truecaller/messaging/data/types/Message;

    .line 4
    iget-object v0, p2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v0}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParticipantUtils.getDisp\u2026Name(message.participant)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/a/e/c0;->setTitle(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/a/e/z;->c:Le/a/a/i1/b;

    invoke-interface {v0, p2}, Le/a/a/i1/b;->z(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/e/c0;->c(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/a/a/e/z;->c:Le/a/a/i1/b;

    invoke-interface {v0, p2}, Le/a/a/i1/b;->h(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/e/c0;->f(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/a/a/e/z;->d:Le/a/x2/c;

    iget-object p2, p2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "message.participant"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Le/a/x2/c;->b(Lcom/truecaller/data/entity/messaging/Participant;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/a/e/c0;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/e/z;->b:Le/a/a/e/d0;

    invoke-interface {v0}, Le/a/a/e/d0;->j2()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/e/z;->b:Le/a/a/e/d0;

    invoke-interface {v0}, Le/a/a/e/d0;->j2()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 2
    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    return-wide v0
.end method
