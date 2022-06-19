.class public Lcom/truecaller/messaging/transport/NullTransportInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/messaging/data/types/TransportInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/transport/NullTransportInfo$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/transport/NullTransportInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/truecaller/messaging/transport/NullTransportInfo;


# instance fields
.field public final a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/messaging/transport/NullTransportInfo;

    invoke-direct {v0}, Lcom/truecaller/messaging/transport/NullTransportInfo;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/transport/NullTransportInfo;->b:Lcom/truecaller/messaging/transport/NullTransportInfo;

    .line 2
    new-instance v0, Lcom/truecaller/messaging/transport/NullTransportInfo$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/transport/NullTransportInfo$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/transport/NullTransportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/truecaller/messaging/transport/NullTransportInfo;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/messaging/transport/NullTransportInfo$a;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/truecaller/messaging/transport/NullTransportInfo;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/transport/NullTransportInfo$b;Lcom/truecaller/messaging/transport/NullTransportInfo$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-wide p1, p1, Lcom/truecaller/messaging/transport/NullTransportInfo$b;->a:J

    .line 5
    iput-wide p1, p0, Lcom/truecaller/messaging/transport/NullTransportInfo;->a:J

    return-void
.end method


# virtual methods
.method public E()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T1(Lw3/b/a/b;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/truecaller/messaging/transport/NullTransportInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/messaging/transport/NullTransportInfo;

    .line 3
    iget-wide v2, p0, Lcom/truecaller/messaging/transport/NullTransportInfo;->a:J

    iget-wide v4, p1, Lcom/truecaller/messaging/transport/NullTransportInfo;->a:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/NullTransportInfo;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public k0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/NullTransportInfo;->a:J

    return-wide v0
.end method

.method public m1()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "{ type : null, messageId: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/messaging/transport/NullTransportInfo;->a:J

    const-string v3, " }"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/NullTransportInfo;->a:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/NullTransportInfo;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
