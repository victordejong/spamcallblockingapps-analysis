.class public final Lcom/truecaller/messaging/data/types/BackupTransportInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/messaging/data/types/TransportInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/data/types/BackupTransportInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/data/types/BackupTransportInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/messaging/data/types/BackupTransportInfo$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/BackupTransportInfo$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/data/types/BackupTransportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/messaging/data/types/BackupTransportInfo;->a:J

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
    .locals 2

    const-string v0, "date"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/BackupTransportInfo;->a:J

    invoke-static {v0, v1, p1}, Lcom/truecaller/messaging/data/types/Message;->d(JLw3/b/a/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k0()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public m1()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/BackupTransportInfo;->a:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/BackupTransportInfo;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
