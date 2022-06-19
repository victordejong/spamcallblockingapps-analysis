.class public Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;
.super Lcom/truecaller/data/dto/ContactDto$Row;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/dto/ContactDto$Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpamData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public numCalls60DaysPointerPosition:Ljava/lang/Number;

.field public numCalls60days:Ljava/lang/Number;

.field public numCallsHourly:Ljava/lang/String;

.field public numReports60days:Ljava/lang/Number;

.field public spamVersion:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData$1;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData$1;-><init>()V

    sput-object v0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/truecaller/data/dto/ContactDto$Row;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Z)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/truecaller/data/dto/ContactDto$Row;-><init>(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/truecaller/data/dto/ContactDto$Row;->readNumber(Landroid/os/Parcel;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numReports60days:Ljava/lang/Number;

    .line 6
    invoke-virtual {p0, p1}, Lcom/truecaller/data/dto/ContactDto$Row;->readNumber(Landroid/os/Parcel;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60days:Ljava/lang/Number;

    .line 7
    invoke-virtual {p0, p1}, Lcom/truecaller/data/dto/ContactDto$Row;->readNumber(Landroid/os/Parcel;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60DaysPointerPosition:Ljava/lang/Number;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCallsHourly:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0}, Lw3/c/a/a/a/k/a;->g(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->spamVersion:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;ZLcom/truecaller/data/dto/ContactDto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/truecaller/data/dto/ContactDto;->access$100(Landroid/os/Parcelable;)Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "SpamData{numReports60days="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numReports60days:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numCallsHourly=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCallsHourly:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", numCalls60days="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60days:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numCalls60DaysPointerPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60DaysPointerPosition:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/truecaller/data/dto/ContactDto$Row;->rowId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tcId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Row;->tcId:Ljava/lang/String;

    const-string v3, ", isPrimary="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/truecaller/data/dto/ContactDto$Row;->isPrimary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phonebookId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/data/dto/ContactDto$Row;->phonebookId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/dto/ContactDto$Row;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spamVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->spamVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/data/dto/ContactDto$Row;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numReports60days:Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/data/dto/ContactDto$Row;->writeNumber(Landroid/os/Parcel;Ljava/lang/Number;)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60days:Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/data/dto/ContactDto$Row;->writeNumber(Landroid/os/Parcel;Ljava/lang/Number;)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCalls60DaysPointerPosition:Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/data/dto/ContactDto$Row;->writeNumber(Landroid/os/Parcel;Ljava/lang/Number;)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->numCallsHourly:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;->spamVersion:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
