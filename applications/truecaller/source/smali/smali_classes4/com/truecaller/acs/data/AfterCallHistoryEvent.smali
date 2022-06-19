.class public final Lcom/truecaller/acs/data/AfterCallHistoryEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/acs/data/AfterCallHistoryEvent$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0011\u0008\u0087\u0008\u0018\u0000 02\u00020\u0001:\u00011B1\u0012\u0006\u0010\u0016\u001a\u00020\u000b\u0012\u0006\u0010\u0017\u001a\u00020\u000e\u0012\u0006\u0010\u0018\u001a\u00020\u000e\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u001a\u001a\u00020\u000e\u00a2\u0006\u0004\u0008-\u0010.B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008-\u0010/J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0010JD\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000eH\u00c6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u001dH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008 \u0010\nJ\u001a\u0010#\u001a\u00020\u000e2\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u00d6\u0003\u00a2\u0006\u0004\u0008#\u0010$R\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010%\u001a\u0004\u0008&\u0010\u0014R\u0019\u0010\u0017\u001a\u00020\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\'\u001a\u0004\u0008(\u0010\u0010R\u0019\u0010\u001a\u001a\u00020\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\'\u001a\u0004\u0008)\u0010\u0010R\u0019\u0010\u0018\u001a\u00020\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\'\u001a\u0004\u0008*\u0010\u0010R\u0019\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010+\u001a\u0004\u0008,\u0010\r\u00a8\u00062"
    }
    d2 = {
        "Lcom/truecaller/acs/data/AfterCallHistoryEvent;",
        "Landroid/os/Parcelable;",
        "Landroid/os/Parcel;",
        "parcel",
        "",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "Lcom/truecaller/data/entity/HistoryEvent;",
        "component1",
        "()Lcom/truecaller/data/entity/HistoryEvent;",
        "",
        "component2",
        "()Z",
        "component3",
        "Lcom/truecaller/blocking/FilterMatch;",
        "component4",
        "()Lcom/truecaller/blocking/FilterMatch;",
        "component5",
        "historyEvent",
        "rejected",
        "keepScreenOnWhenBlocked",
        "filterMatch",
        "launchedFromWidget",
        "copy",
        "(Lcom/truecaller/data/entity/HistoryEvent;ZZLcom/truecaller/blocking/FilterMatch;Z)Lcom/truecaller/acs/data/AfterCallHistoryEvent;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/truecaller/blocking/FilterMatch;",
        "getFilterMatch",
        "Z",
        "getRejected",
        "getLaunchedFromWidget",
        "getKeepScreenOnWhenBlocked",
        "Lcom/truecaller/data/entity/HistoryEvent;",
        "getHistoryEvent",
        "<init>",
        "(Lcom/truecaller/data/entity/HistoryEvent;ZZLcom/truecaller/blocking/FilterMatch;Z)V",
        "(Landroid/os/Parcel;)V",
        "CREATOR",
        "a",
        "acs_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/truecaller/acs/data/AfterCallHistoryEvent$a;


# instance fields
.field private final filterMatch:Lcom/truecaller/blocking/FilterMatch;

.field private final historyEvent:Lcom/truecaller/data/entity/HistoryEvent;

.field private final keepScreenOnWhenBlocked:Z

.field private final launchedFromWidget:Z

.field private final rejected:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/acs/data/AfterCallHistoryEvent$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/acs/data/AfterCallHistoryEvent$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->CREATOR:Lcom/truecaller/acs/data/AfterCallHistoryEvent$a;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/truecaller/data/entity/HistoryEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "HistoryEvent.CREATOR.createFromParcel(parcel)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lcom/truecaller/data/entity/HistoryEvent;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 5
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/truecaller/blocking/FilterMatch;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/blocking/FilterMatch;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object v6, v0

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    move-object v2, p0

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/truecaller/acs/data/AfterCallHistoryEvent;-><init>(Lcom/truecaller/data/entity/HistoryEvent;ZZLcom/truecaller/blocking/FilterMatch;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/entity/HistoryEvent;ZZLcom/truecaller/blocking/FilterMatch;Z)V
    .locals 1

    const-string v0, "historyEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->historyEvent:Lcom/truecaller/data/entity/HistoryEvent;

    iput-boolean p2, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->rejected:Z

    iput-boolean p3, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->keepScreenOnWhenBlocked:Z

    iput-object p4, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->filterMatch:Lcom/truecaller/blocking/FilterMatch;

    iput-boolean p5, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->launchedFromWidget:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/acs/data/AfterCallHistoryEvent;Lcom/truecaller/data/entity/HistoryEvent;ZZLcom/truecaller/blocking/FilterMatch;ZILjava/lang/Object;)Lcom/truecaller/acs/data/AfterCallHistoryEvent;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->historyEvent:Lcom/truecaller/data/entity/HistoryEvent;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->rejected:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->keepScreenOnWhenBlocked:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->filterMatch:Lcom/truecaller/blocking/FilterMatch;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->launchedFromWidget:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->copy(Lcom/truecaller/data/entity/HistoryEvent;ZZLcom/truecaller/blocking/FilterMatch;Z)Lcom/truecaller/acs/data/AfterCallHistoryEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/truecaller/data/entity/HistoryEvent;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->historyEvent:Lcom/truecaller/data/entity/HistoryEvent;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->rejected:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->keepScreenOnWhenBlocked:Z

    return v0
.end method

.method public final component4()Lcom/truecaller/blocking/FilterMatch;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->filterMatch:Lcom/truecaller/blocking/FilterMatch;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->launchedFromWidget:Z

    return v0
.end method

.method public final copy(Lcom/truecaller/data/entity/HistoryEvent;ZZLcom/truecaller/blocking/FilterMatch;Z)Lcom/truecaller/acs/data/AfterCallHistoryEvent;
    .locals 7

    const-string v0, "historyEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/acs/data/AfterCallHistoryEvent;-><init>(Lcom/truecaller/data/entity/HistoryEvent;ZZLcom/truecaller/blocking/FilterMatch;Z)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/acs/data/AfterCallHistoryEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/acs/data/AfterCallHistoryEvent;

    iget-object v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->historyEvent:Lcom/truecaller/data/entity/HistoryEvent;

    iget-object v1, p1, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->historyEvent:Lcom/truecaller/data/entity/HistoryEvent;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->rejected:Z

    iget-boolean v1, p1, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->rejected:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->keepScreenOnWhenBlocked:Z

    iget-boolean v1, p1, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->keepScreenOnWhenBlocked:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->filterMatch:Lcom/truecaller/blocking/FilterMatch;

    iget-object v1, p1, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->filterMatch:Lcom/truecaller/blocking/FilterMatch;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->launchedFromWidget:Z

    iget-boolean p1, p1, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->launchedFromWidget:Z

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

.method public final getFilterMatch()Lcom/truecaller/blocking/FilterMatch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->filterMatch:Lcom/truecaller/blocking/FilterMatch;

    return-object v0
.end method

.method public final getHistoryEvent()Lcom/truecaller/data/entity/HistoryEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->historyEvent:Lcom/truecaller/data/entity/HistoryEvent;

    return-object v0
.end method

.method public final getKeepScreenOnWhenBlocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->keepScreenOnWhenBlocked:Z

    return v0
.end method

.method public final getLaunchedFromWidget()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->launchedFromWidget:Z

    return v0
.end method

.method public final getRejected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->rejected:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->historyEvent:Lcom/truecaller/data/entity/HistoryEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/data/entity/HistoryEvent;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->rejected:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->keepScreenOnWhenBlocked:Z

    if-eqz v2, :cond_2

    move v2, v3

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->filterMatch:Lcom/truecaller/blocking/FilterMatch;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/truecaller/blocking/FilterMatch;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->launchedFromWidget:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AfterCallHistoryEvent(historyEvent="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->historyEvent:Lcom/truecaller/data/entity/HistoryEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rejected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->rejected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", keepScreenOnWhenBlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->keepScreenOnWhenBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", filterMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->filterMatch:Lcom/truecaller/blocking/FilterMatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", launchedFromWidget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->launchedFromWidget:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->historyEvent:Lcom/truecaller/data/entity/HistoryEvent;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/truecaller/data/entity/HistoryEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-boolean p2, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->rejected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-boolean p2, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->keepScreenOnWhenBlocked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->filterMatch:Lcom/truecaller/blocking/FilterMatch;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->filterMatch:Lcom/truecaller/blocking/FilterMatch;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1, v0}, Lcom/truecaller/blocking/FilterMatch;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6
    :cond_1
    iget-boolean p2, p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->launchedFromWidget:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
