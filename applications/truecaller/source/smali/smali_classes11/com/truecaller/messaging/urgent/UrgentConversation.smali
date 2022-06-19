.class public final Lcom/truecaller/messaging/urgent/UrgentConversation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/urgent/UrgentConversation$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/urgent/UrgentConversation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/truecaller/messaging/data/types/Conversation;

.field public final b:I

.field public final c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/messaging/urgent/UrgentConversation$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/urgent/UrgentConversation$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/urgent/UrgentConversation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/data/types/Conversation;IJ)V
    .locals 1

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    iput p2, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->b:I

    iput-wide p3, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    return-void
.end method

.method public static a(Lcom/truecaller/messaging/urgent/UrgentConversation;Lcom/truecaller/messaging/data/types/Conversation;IJI)Lcom/truecaller/messaging/urgent/UrgentConversation;
    .locals 1

    and-int/lit8 p1, p5, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->b:I

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    :cond_2
    const-string p0, "conversation"

    .line 1
    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/truecaller/messaging/urgent/UrgentConversation;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/truecaller/messaging/urgent/UrgentConversation;-><init>(Lcom/truecaller/messaging/data/types/Conversation;IJ)V

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/messaging/urgent/UrgentConversation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/urgent/UrgentConversation;

    iget-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v1, p1, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->b:I

    iget v1, p1, Lcom/truecaller/messaging/urgent/UrgentConversation;->b:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    iget-wide v2, p1, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "UrgentConversation(conversation="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", openElapsedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->a:Lcom/truecaller/messaging/data/types/Conversation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/truecaller/messaging/urgent/UrgentConversation;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
