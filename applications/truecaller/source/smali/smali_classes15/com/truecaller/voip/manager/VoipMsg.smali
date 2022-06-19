.class public final Lcom/truecaller/voip/manager/VoipMsg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\u0008\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0007\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/truecaller/voip/manager/VoipMsg;",
        "",
        "Lcom/truecaller/voip/manager/VoipMsgAction;",
        "component1",
        "()Lcom/truecaller/voip/manager/VoipMsgAction;",
        "Lcom/truecaller/voip/manager/VoipMsgExtras;",
        "component2",
        "()Lcom/truecaller/voip/manager/VoipMsgExtras;",
        "action",
        "extras",
        "copy",
        "(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)Lcom/truecaller/voip/manager/VoipMsg;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/truecaller/voip/manager/VoipMsgAction;",
        "getAction",
        "Lcom/truecaller/voip/manager/VoipMsgExtras;",
        "getExtras",
        "<init>",
        "(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V",
        "voip_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final action:Lcom/truecaller/voip/manager/VoipMsgAction;

.field private final extras:Lcom/truecaller/voip/manager/VoipMsgExtras;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;ILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/voip/manager/VoipMsg;->action:Lcom/truecaller/voip/manager/VoipMsgAction;

    iput-object p2, p0, Lcom/truecaller/voip/manager/VoipMsg;->extras:Lcom/truecaller/voip/manager/VoipMsgExtras;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;ILs1/z/c/f;)V
    .locals 10

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 2
    sget-object p1, Lcom/truecaller/voip/manager/VoipMsgAction;->NONE:Lcom/truecaller/voip/manager/VoipMsgAction;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 3
    new-instance p2, Lcom/truecaller/voip/manager/VoipMsgExtras;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/truecaller/voip/manager/VoipMsgExtras;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZIIIIILs1/z/c/f;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/voip/manager/VoipMsg;Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;ILjava/lang/Object;)Lcom/truecaller/voip/manager/VoipMsg;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/truecaller/voip/manager/VoipMsg;->action:Lcom/truecaller/voip/manager/VoipMsgAction;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/truecaller/voip/manager/VoipMsg;->extras:Lcom/truecaller/voip/manager/VoipMsgExtras;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/voip/manager/VoipMsg;->copy(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)Lcom/truecaller/voip/manager/VoipMsg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/truecaller/voip/manager/VoipMsgAction;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsg;->action:Lcom/truecaller/voip/manager/VoipMsgAction;

    return-object v0
.end method

.method public final component2()Lcom/truecaller/voip/manager/VoipMsgExtras;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsg;->extras:Lcom/truecaller/voip/manager/VoipMsgExtras;

    return-object v0
.end method

.method public final copy(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)Lcom/truecaller/voip/manager/VoipMsg;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/voip/manager/VoipMsg;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/voip/manager/VoipMsg;-><init>(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/voip/manager/VoipMsg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/voip/manager/VoipMsg;

    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsg;->action:Lcom/truecaller/voip/manager/VoipMsgAction;

    iget-object v1, p1, Lcom/truecaller/voip/manager/VoipMsg;->action:Lcom/truecaller/voip/manager/VoipMsgAction;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsg;->extras:Lcom/truecaller/voip/manager/VoipMsgExtras;

    iget-object p1, p1, Lcom/truecaller/voip/manager/VoipMsg;->extras:Lcom/truecaller/voip/manager/VoipMsgExtras;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAction()Lcom/truecaller/voip/manager/VoipMsgAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsg;->action:Lcom/truecaller/voip/manager/VoipMsgAction;

    return-object v0
.end method

.method public final getExtras()Lcom/truecaller/voip/manager/VoipMsgExtras;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsg;->extras:Lcom/truecaller/voip/manager/VoipMsgExtras;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsg;->action:Lcom/truecaller/voip/manager/VoipMsgAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/voip/manager/VoipMsg;->extras:Lcom/truecaller/voip/manager/VoipMsgExtras;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/truecaller/voip/manager/VoipMsgExtras;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "VoipMsg(action="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/voip/manager/VoipMsg;->action:Lcom/truecaller/voip/manager/VoipMsgAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/voip/manager/VoipMsg;->extras:Lcom/truecaller/voip/manager/VoipMsgExtras;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
