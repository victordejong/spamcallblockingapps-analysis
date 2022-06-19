.class public final Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/wizard/AccountHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountRecoveryParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0081\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008.\u0010/J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0010\u0010\n\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u0007J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJN\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00052\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0007J\u0010\u0010\u0017\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001a\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u0018J \u0010#\u001a\u00020\"2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u000bH\u00d6\u0001\u00a2\u0006\u0004\u0008#\u0010$R\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010%\u001a\u0004\u0008&\u0010\u0004R\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010%\u001a\u0004\u0008\'\u0010\u0004R\u0019\u0010\u0012\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010(\u001a\u0004\u0008)\u0010\u0007R\u0019\u0010\u0011\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010(\u001a\u0004\u0008*\u0010\u0007R\u0019\u0010\u000f\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010(\u001a\u0004\u0008+\u0010\u0007R\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010,\u001a\u0004\u0008-\u0010\r\u00a8\u00060"
    }
    d2 = {
        "Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;",
        "Landroid/os/Parcelable;",
        "",
        "component1",
        "()J",
        "",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "component4",
        "component5",
        "",
        "component6",
        "()Ljava/lang/Integer;",
        "userId",
        "requestId",
        "backupTimeStamp",
        "phoneNumber",
        "countryIso",
        "dialingCode",
        "copy",
        "(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;",
        "toString",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "describeContents",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "J",
        "getUserId",
        "getBackupTimeStamp",
        "Ljava/lang/String;",
        "getCountryIso",
        "getPhoneNumber",
        "getRequestId",
        "Ljava/lang/Integer;",
        "getDialingCode",
        "<init>",
        "(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V",
        "wizard-tc_release"
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
            "Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final backupTimeStamp:J

.field private final countryIso:Ljava/lang/String;

.field private final dialingCode:Ljava/lang/Integer;

.field private final phoneNumber:Ljava/lang/String;

.field private final requestId:Ljava/lang/String;

.field private final userId:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams$a;

    invoke-direct {v0}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams$a;-><init>()V

    sput-object v0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    const-string v1, "requestId"

    const-string v3, "phoneNumber"

    const-string v5, "countryIso"

    move-object v0, p3

    move-object v2, p6

    move-object v4, p7

    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->userId:J

    iput-object p3, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->requestId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->backupTimeStamp:J

    iput-object p6, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->phoneNumber:Ljava/lang/String;

    iput-object p7, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->countryIso:Ljava/lang/String;

    iput-object p8, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->dialingCode:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->userId:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->requestId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->backupTimeStamp:J

    goto :goto_2

    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->phoneNumber:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v6, p6

    :goto_3
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->countryIso:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p7

    :goto_4
    and-int/lit8 v8, p9, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->dialingCode:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p8

    :goto_5
    move-wide p1, v1

    move-object p3, v3

    move-wide p4, v4

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->copy(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->userId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->backupTimeStamp:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->countryIso:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->dialingCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;
    .locals 10

    const-string v0, "requestId"

    move-object v4, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryIso"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    move-object v1, v0

    move-wide v2, p1

    move-wide v5, p4

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    iget-wide v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->userId:J

    iget-wide v2, p1, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->userId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->requestId:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->requestId:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->backupTimeStamp:J

    iget-wide v2, p1, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->backupTimeStamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->phoneNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->countryIso:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->countryIso:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->dialingCode:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->dialingCode:Ljava/lang/Integer;

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

.method public final getBackupTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->backupTimeStamp:J

    return-wide v0
.end method

.method public final getCountryIso()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->countryIso:Ljava/lang/String;

    return-object v0
.end method

.method public final getDialingCode()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->dialingCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->userId:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->requestId:Ljava/lang/String;

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

    iget-wide v3, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->backupTimeStamp:J

    invoke-static {v3, v4}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->countryIso:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->dialingCode:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AccountRecoveryParams(userId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backupTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->backupTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countryIso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dialingCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->dialingCode:Ljava/lang/Integer;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->L2(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->backupTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->countryIso:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->dialingCode:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
