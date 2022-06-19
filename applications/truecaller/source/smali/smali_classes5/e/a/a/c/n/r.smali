.class public final Le/a/a/c/n/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/m5;


# instance fields
.field public final a:[Lcom/truecaller/data/entity/messaging/Participant;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/truecaller/messaging/conversation/ConversationMode;

.field public e:Z

.field public final f:[Lcom/truecaller/data/entity/messaging/Participant;


# direct methods
.method public constructor <init>([Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 0
    .param p1    # [Lcom/truecaller/data/entity/messaging/Participant;
        .annotation runtime Ljavax/inject/Named;
            value = "participants"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/n/r;->f:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 2
    iput-object p1, p0, Le/a/a/c/n/r;->a:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/c/n/r;->b:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/a/c/n/r;->c:Ljava/util/Map;

    .line 5
    sget-object p1, Lcom/truecaller/messaging/conversation/ConversationMode;->DEFAULT:Lcom/truecaller/messaging/conversation/ConversationMode;

    iput-object p1, p0, Le/a/a/c/n/r;->d:Lcom/truecaller/messaging/conversation/ConversationMode;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Le/a/a/c/n/r;->e:Z

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/c/n/r;->e:Z

    return v0
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public C()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public G()Lcom/truecaller/messaging/conversation/ConversationMode;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/n/r;->d:Lcom/truecaller/messaging/conversation/ConversationMode;

    return-object v0
.end method

.method public H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/truecaller/messaging/data/types/ImGroupInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()[Lcom/truecaller/data/entity/messaging/Participant;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/n/r;->a:[Lcom/truecaller/data/entity/messaging/Participant;

    return-object v0
.end method

.method public p()Lcom/truecaller/messaging/data/types/Conversation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Le/a/a/g/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public w()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/messaging/data/types/ImInviteGroupInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c/n/r;->c:Ljava/util/Map;

    return-object v0
.end method

.method public y(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public z()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c/n/r;->b:Ljava/util/Map;

    return-object v0
.end method
