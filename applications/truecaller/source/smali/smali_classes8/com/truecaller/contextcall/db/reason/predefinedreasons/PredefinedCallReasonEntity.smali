.class public final Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\t\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0004J8\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\n\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0008J\u0010\u0010\u0011\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u000b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0004R\u001c\u0010\u000c\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0008R\u001c\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u0004R\u001c\u0010\n\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0016\u001a\u0004\u0008\u001b\u0010\u0004\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;",
        "",
        "",
        "component1",
        "()I",
        "component2",
        "",
        "component3",
        "()Ljava/lang/String;",
        "component4",
        "id",
        "index",
        "message",
        "type",
        "copy",
        "(IILjava/lang/String;I)Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getIndex",
        "Ljava/lang/String;",
        "getMessage",
        "getType",
        "getId",
        "<init>",
        "(IILjava/lang/String;I)V",
        "context-call_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final id:I

.field private final index:I

.field private final message:Ljava/lang/String;

.field private final type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 1

    const-string v0, "message"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->id:I

    iput p2, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->index:I

    iput-object p3, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->message:Ljava/lang/String;

    iput p4, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->type:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;IILjava/lang/String;IILjava/lang/Object;)Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->id:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->index:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->message:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->type:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->copy(IILjava/lang/String;I)Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->id:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->index:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->type:I

    return v0
.end method

.method public final copy(IILjava/lang/String;I)Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;
    .locals 1

    const-string v0, "message"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;-><init>(IILjava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;

    iget v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->id:I

    iget v1, p1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->id:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->index:I

    iget v1, p1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->index:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->type:I

    iget p1, p1, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->type:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->id:I

    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->index:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->type:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PredefinedCallReasonEntity(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;->type:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
