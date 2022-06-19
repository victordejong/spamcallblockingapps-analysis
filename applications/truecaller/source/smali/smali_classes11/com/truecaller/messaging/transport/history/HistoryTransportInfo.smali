.class public final Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/messaging/data/types/TransportInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/transport/history/HistoryTransportInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJIILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "filterSource"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->a:J

    iput-wide p3, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->b:J

    iput p5, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->c:I

    iput p6, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    iput-object p7, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->e:Ljava/lang/String;

    iput p8, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->f:I

    iput-object p9, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->g:Ljava/lang/String;

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

    const/4 v0, 0x1

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
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

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

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->b:J

    return-wide v0
.end method

.method public m1()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->a:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
