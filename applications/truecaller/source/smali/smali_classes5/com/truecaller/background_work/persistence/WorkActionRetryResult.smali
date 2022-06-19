.class public final Lcom/truecaller/background_work/persistence/WorkActionRetryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/background_work/persistence/WorkActionRetryResult$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001a\u0008\u0081\u0008\u0018\u0000 #2\u00020\u0001:\u0001$B\'\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\u0011\u001a\u00020\u000b\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ8\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000bH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\rJ\u001a\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0019\u0010\u000f\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0007R\u0019\u0010\u0010\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u001b\u001a\u0004\u0008\u001c\u0010\nR\u0019\u0010\u0011\u001a\u00020\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u001d\u001a\u0004\u0008\u001e\u0010\rR\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u001f\u001a\u0004\u0008 \u0010\u0004\u00a8\u0006%"
    }
    d2 = {
        "Lcom/truecaller/background_work/persistence/WorkActionRetryResult;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "Lcom/truecaller/background_work/WorkActionPeriod;",
        "component2",
        "()Lcom/truecaller/background_work/WorkActionPeriod;",
        "",
        "component3",
        "()Z",
        "",
        "component4",
        "()I",
        "actionName",
        "period",
        "internetRequired",
        "retriedTimes",
        "copy",
        "(Ljava/lang/String;Lcom/truecaller/background_work/WorkActionPeriod;ZI)Lcom/truecaller/background_work/persistence/WorkActionRetryResult;",
        "toString",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/truecaller/background_work/WorkActionPeriod;",
        "getPeriod",
        "Z",
        "getInternetRequired",
        "I",
        "getRetriedTimes",
        "Ljava/lang/String;",
        "getActionName",
        "<init>",
        "(Ljava/lang/String;Lcom/truecaller/background_work/WorkActionPeriod;ZI)V",
        "Companion",
        "a",
        "background-work_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/background_work/persistence/WorkActionRetryResult$a;


# instance fields
.field private final actionName:Ljava/lang/String;

.field private final internetRequired:Z

.field private final period:Lcom/truecaller/background_work/WorkActionPeriod;

.field private final retriedTimes:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->Companion:Lcom/truecaller/background_work/persistence/WorkActionRetryResult$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/background_work/WorkActionPeriod;ZI)V
    .locals 1

    const-string v0, "actionName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "period"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->actionName:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->period:Lcom/truecaller/background_work/WorkActionPeriod;

    iput-boolean p3, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->internetRequired:Z

    iput p4, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->retriedTimes:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/background_work/persistence/WorkActionRetryResult;Ljava/lang/String;Lcom/truecaller/background_work/WorkActionPeriod;ZIILjava/lang/Object;)Lcom/truecaller/background_work/persistence/WorkActionRetryResult;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->actionName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->period:Lcom/truecaller/background_work/WorkActionPeriod;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->internetRequired:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->retriedTimes:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->copy(Ljava/lang/String;Lcom/truecaller/background_work/WorkActionPeriod;ZI)Lcom/truecaller/background_work/persistence/WorkActionRetryResult;

    move-result-object p0

    return-object p0
.end method

.method public static final fromActionNames(Ljava/util/List;Le/a/y2/g;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Le/a/y2/g;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/background_work/persistence/WorkActionRetryResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->Companion:Lcom/truecaller/background_work/persistence/WorkActionRetryResult$a;

    invoke-virtual {v0, p0, p1}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult$a;->a(Ljava/util/List;Le/a/y2/g;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/truecaller/background_work/WorkActionPeriod;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->period:Lcom/truecaller/background_work/WorkActionPeriod;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->internetRequired:Z

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->retriedTimes:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Lcom/truecaller/background_work/WorkActionPeriod;ZI)Lcom/truecaller/background_work/persistence/WorkActionRetryResult;
    .locals 1

    const-string v0, "actionName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "period"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;-><init>(Ljava/lang/String;Lcom/truecaller/background_work/WorkActionPeriod;ZI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;

    iget-object v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->actionName:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->actionName:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->period:Lcom/truecaller/background_work/WorkActionPeriod;

    iget-object v1, p1, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->period:Lcom/truecaller/background_work/WorkActionPeriod;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->internetRequired:Z

    iget-boolean v1, p1, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->internetRequired:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->retriedTimes:I

    iget p1, p1, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->retriedTimes:I

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

.method public final getActionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getInternetRequired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->internetRequired:Z

    return v0
.end method

.method public final getPeriod()Lcom/truecaller/background_work/WorkActionPeriod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->period:Lcom/truecaller/background_work/WorkActionPeriod;

    return-object v0
.end method

.method public final getRetriedTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->retriedTimes:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->actionName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->period:Lcom/truecaller/background_work/WorkActionPeriod;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->internetRequired:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->retriedTimes:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "WorkActionRetryResult(actionName="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->period:Lcom/truecaller/background_work/WorkActionPeriod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internetRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->internetRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", retriedTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/background_work/persistence/WorkActionRetryResult;->retriedTimes:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
