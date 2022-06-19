.class public Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;",
            ">;"
        }
    .end annotation
.end field

.field public static e:I


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        alternate = {
            "a"
        }
        value = "rawNumber"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        alternate = {
            "b"
        }
        value = "normalizedNumber"
    .end annotation
.end field

.field public c:J
    .annotation runtime Le/m/e/d0/b;
        alternate = {
            "c"
        }
        value = "timestamp"
    .end annotation
.end field

.field public d:I
    .annotation runtime Le/m/e/d0/b;
        alternate = {
            "d"
        }
        value = "notificationId"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder$a;

    invoke-direct {v0}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder$a;-><init>()V

    sput-object v0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->c:J

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->b:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->c:J

    .line 6
    sget p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->e:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->e:I

    iput p1, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-wide v0, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget p2, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
