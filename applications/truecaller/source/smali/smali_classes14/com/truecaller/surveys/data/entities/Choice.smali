.class public final Lcom/truecaller/surveys/data/entities/Choice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/surveys/data/entities/Choice$b;,
        Lcom/truecaller/surveys/data/entities/Choice$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 !2\u00020\u0001:\u0002\"#B!\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cB7\u0008\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008\u001b\u0010 J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ0\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\n\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0004R\u001b\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0017\u001a\u0004\u0008\u0018\u0010\tR\u0019\u0010\u000b\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0007\u00a8\u0006$"
    }
    d2 = {
        "Lcom/truecaller/surveys/data/entities/Choice;",
        "",
        "",
        "component1",
        "()I",
        "",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "()Ljava/lang/Integer;",
        "id",
        "text",
        "followupQuestionId",
        "copy",
        "(ILjava/lang/String;Ljava/lang/Integer;)Lcom/truecaller/surveys/data/entities/Choice;",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getId",
        "Ljava/lang/Integer;",
        "getFollowupQuestionId",
        "Ljava/lang/String;",
        "getText",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/Integer;)V",
        "seen1",
        "Lq3/b/k/t;",
        "serializationConstructorMarker",
        "(IILjava/lang/String;Ljava/lang/Integer;Lq3/b/k/t;)V",
        "Companion",
        "a",
        "b",
        "surveys_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/surveys/data/entities/Choice$b;


# instance fields
.field private final followupQuestionId:Ljava/lang/Integer;

.field private final id:I

.field private final text:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/surveys/data/entities/Choice$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/surveys/data/entities/Choice$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/surveys/data/entities/Choice;->Companion:Lcom/truecaller/surveys/data/entities/Choice$b;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/Integer;Lq3/b/k/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    if-eqz p5, :cond_2

    iput p2, p0, Lcom/truecaller/surveys/data/entities/Choice;->id:I

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    iput-object p3, p0, Lcom/truecaller/surveys/data/entities/Choice;->text:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    iput-object p4, p0, Lcom/truecaller/surveys/data/entities/Choice;->followupQuestionId:Ljava/lang/Integer;

    return-void

    :cond_0
    new-instance p1, Lq3/b/c;

    const-string p2, "followupQuestionId"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lq3/b/c;

    const-string p2, "text"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lq3/b/c;

    const-string p2, "id"

    invoke-direct {p1, p2}, Lq3/b/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/surveys/data/entities/Choice;->id:I

    iput-object p2, p0, Lcom/truecaller/surveys/data/entities/Choice;->text:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/surveys/data/entities/Choice;->followupQuestionId:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/surveys/data/entities/Choice;ILjava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/truecaller/surveys/data/entities/Choice;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/truecaller/surveys/data/entities/Choice;->id:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/truecaller/surveys/data/entities/Choice;->text:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/truecaller/surveys/data/entities/Choice;->followupQuestionId:Ljava/lang/Integer;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/surveys/data/entities/Choice;->copy(ILjava/lang/String;Ljava/lang/Integer;)Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object p0

    return-object p0
.end method

.method public static final write$Self(Lcom/truecaller/surveys/data/entities/Choice;Lq3/b/j/c;Lq3/b/i/d;)V
    .locals 2

    const-string v0, "self"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->id:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lq3/b/j/c;->f(Lq3/b/i/d;II)V

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->text:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lq3/b/j/c;->h(Lq3/b/i/d;ILjava/lang/String;)V

    sget-object v0, Lq3/b/k/g;->b:Lq3/b/k/g;

    iget-object p0, p0, Lcom/truecaller/surveys/data/entities/Choice;->followupQuestionId:Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0, p0}, Lq3/b/j/c;->l(Lq3/b/i/d;ILq3/b/g;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->id:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->followupQuestionId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/Integer;)Lcom/truecaller/surveys/data/entities/Choice;
    .locals 1

    const-string v0, "text"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/surveys/data/entities/Choice;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/surveys/data/entities/Choice;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/surveys/data/entities/Choice;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/surveys/data/entities/Choice;

    iget v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->id:I

    iget v1, p1, Lcom/truecaller/surveys/data/entities/Choice;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->text:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/surveys/data/entities/Choice;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->followupQuestionId:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/truecaller/surveys/data/entities/Choice;->followupQuestionId:Ljava/lang/Integer;

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

.method public final getFollowupQuestionId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->followupQuestionId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->id:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/truecaller/surveys/data/entities/Choice;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Choice;->text:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Choice;->followupQuestionId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Choice(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/surveys/data/entities/Choice;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Choice;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", followupQuestionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/surveys/data/entities/Choice;->followupQuestionId:Ljava/lang/Integer;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->L2(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
