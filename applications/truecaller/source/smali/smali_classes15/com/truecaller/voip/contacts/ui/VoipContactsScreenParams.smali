.class public final Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0002\u0012\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\n\u00a2\u0006\u0004\u0008.\u0010/J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\nH\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJH\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00022\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\nH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u000eJ\u0010\u0010\u0018\u001a\u00020\u0017H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001a\u0010\u001c\u001a\u00020\u00022\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0017H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u0019J \u0010#\u001a\u00020\"2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u0017H\u00d6\u0001\u00a2\u0006\u0004\u0008#\u0010$R\u0019\u0010\u0010\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010%\u001a\u0004\u0008&\u0010\u0007R\u0019\u0010\u000f\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\'\u001a\u0004\u0008(\u0010\u0004R\u0019\u0010\u0013\u001a\u00020\n8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010)\u001a\u0004\u0008*\u0010\u000eR\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\'\u001a\u0004\u0008+\u0010\u0004R\u001f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010,\u001a\u0004\u0008-\u0010\u000c\u00a8\u00060"
    }
    d2 = {
        "Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;",
        "Landroid/os/Parcelable;",
        "",
        "component1",
        "()Z",
        "Lcom/truecaller/voip/contacts/ui/GroupPickerMode;",
        "component2",
        "()Lcom/truecaller/voip/contacts/ui/GroupPickerMode;",
        "component3",
        "",
        "",
        "component4",
        "()Ljava/util/Set;",
        "component5",
        "()Ljava/lang/String;",
        "modeGroupPicker",
        "groupPickerMode",
        "initiateCall",
        "peers",
        "callAnalyticsContext",
        "copy",
        "(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;)Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "describeContents",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "Lcom/truecaller/voip/contacts/ui/GroupPickerMode;",
        "getGroupPickerMode",
        "Z",
        "getModeGroupPicker",
        "Ljava/lang/String;",
        "getCallAnalyticsContext",
        "getInitiateCall",
        "Ljava/util/Set;",
        "getPeers",
        "<init>",
        "(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final callAnalyticsContext:Ljava/lang/String;

.field private final groupPickerMode:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

.field private final initiateCall:Z

.field private final modeGroupPicker:Z

.field private final peers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams$a;

    invoke-direct {v0}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams$a;-><init>()V

    sput-object v0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;-><init>(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;ILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/truecaller/voip/contacts/ui/GroupPickerMode;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "groupPickerMode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peers"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAnalyticsContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->modeGroupPicker:Z

    iput-object p2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->groupPickerMode:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    iput-boolean p3, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->initiateCall:Z

    iput-object p4, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->peers:Ljava/util/Set;

    iput-object p5, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->callAnalyticsContext:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;ILs1/z/c/f;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p7, v0

    goto :goto_0

    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    .line 2
    sget-object p2, Lcom/truecaller/voip/contacts/ui/GroupPickerMode;->ADD_PARTICIPANTS:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    :cond_1
    move-object v1, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p3

    :goto_1
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 3
    sget-object p4, Ls1/u/u;->a:Ls1/u/u;

    :cond_3
    move-object v2, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const-string p5, ""

    :cond_4
    move-object p6, p5

    move-object p1, p0

    move p2, p7

    move-object p3, v1

    move p4, v0

    move-object p5, v2

    .line 4
    invoke-direct/range {p1 .. p6}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;-><init>(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->modeGroupPicker:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->groupPickerMode:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->initiateCall:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->peers:Ljava/util/Set;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->callAnalyticsContext:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->copy(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;)Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->modeGroupPicker:Z

    return v0
.end method

.method public final component2()Lcom/truecaller/voip/contacts/ui/GroupPickerMode;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->groupPickerMode:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->initiateCall:Z

    return v0
.end method

.method public final component4()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->peers:Ljava/util/Set;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->callAnalyticsContext:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;)Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/truecaller/voip/contacts/ui/GroupPickerMode;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;"
        }
    .end annotation

    const-string v0, "groupPickerMode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peers"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAnalyticsContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;-><init>(ZLcom/truecaller/voip/contacts/ui/GroupPickerMode;ZLjava/util/Set;Ljava/lang/String;)V

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

    instance-of v0, p1, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    iget-boolean v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->modeGroupPicker:Z

    iget-boolean v1, p1, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->modeGroupPicker:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->groupPickerMode:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    iget-object v1, p1, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->groupPickerMode:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->initiateCall:Z

    iget-boolean v1, p1, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->initiateCall:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->peers:Ljava/util/Set;

    iget-object v1, p1, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->peers:Ljava/util/Set;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->callAnalyticsContext:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->callAnalyticsContext:Ljava/lang/String;

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

.method public final getCallAnalyticsContext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->callAnalyticsContext:Ljava/lang/String;

    return-object v0
.end method

.method public final getGroupPickerMode()Lcom/truecaller/voip/contacts/ui/GroupPickerMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->groupPickerMode:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    return-object v0
.end method

.method public final getInitiateCall()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->initiateCall:Z

    return v0
.end method

.method public final getModeGroupPicker()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->modeGroupPicker:Z

    return v0
.end method

.method public final getPeers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->peers:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->modeGroupPicker:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->groupPickerMode:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->initiateCall:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->peers:Ljava/util/Set;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->callAnalyticsContext:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "VoipContactsScreenParams(modeGroupPicker="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->modeGroupPicker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", groupPickerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->groupPickerMode:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initiateCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->initiateCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", peers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->peers:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callAnalyticsContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->callAnalyticsContext:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->modeGroupPicker:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->groupPickerMode:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->initiateCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->peers:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->callAnalyticsContext:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
