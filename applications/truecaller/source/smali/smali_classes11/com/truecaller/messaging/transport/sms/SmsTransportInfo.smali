.class public Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/messaging/data/types/TransportInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:J

.field public final e:Landroid/net/Uri;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:I

.field public final k:Z

.field public final l:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$a;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a:J

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->c:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->d:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    .line 35
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->g:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->h:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->i:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->f:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->j:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->k:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a:J

    .line 3
    iput-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a:J

    .line 4
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->b:J

    .line 5
    iput-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    .line 6
    iget p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->c:I

    .line 7
    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->c:I

    .line 8
    iget-wide v0, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->d:J

    .line 9
    iput-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->d:J

    .line 10
    iget-object p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->e:Landroid/net/Uri;

    .line 11
    iput-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    .line 12
    iget p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->f:I

    .line 13
    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->g:I

    .line 14
    iget p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->g:I

    .line 15
    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->h:I

    .line 16
    iget-object p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->h:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->i:Ljava/lang/String;

    .line 18
    iget-object p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->k:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->f:Ljava/lang/String;

    .line 20
    iget p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->i:I

    .line 21
    iput p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->j:I

    .line 22
    iget-boolean p2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->j:Z

    .line 23
    iput-boolean p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->k:Z

    .line 24
    iget-object p1, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->l:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public static a(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_3

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    return p0

    :cond_0
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static b(I)I
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public E()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->c:I

    if-eqz v0, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x3

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

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    invoke-static {v0, v1, p1}, Lcom/truecaller/messaging/data/types/Message;->d(JLw3/b/a/b;)Ljava/lang/String;

    move-result-object p1

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

    if-eqz p1, :cond_f

    .line 1
    const-class v2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    .line 3
    iget-wide v2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a:J

    iget-wide v4, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    iget-wide v4, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget v2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->c:I

    iget v3, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->c:I

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->g:I

    iget v3, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->g:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget v2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->h:I

    iget v3, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->h:I

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget v2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->j:I

    iget v3, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->j:I

    if-eq v2, v3, :cond_7

    return v1

    .line 9
    :cond_7
    iget-boolean v2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->k:Z

    iget-boolean v3, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->k:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 10
    :cond_8
    iget-object v2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    if-eqz v2, :cond_a

    :goto_0
    return v1

    .line 11
    :cond_a
    iget-object v2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->f:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    :cond_b
    iget-object v2, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->f:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_1
    return v1

    .line 12
    :cond_c
    iget-object v2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->i:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_d
    if-nez p1, :cond_e

    goto :goto_2

    :cond_e
    move v0, v1

    :goto_2
    return v0

    :cond_f
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v3, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-boolean v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->k:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public k0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    return-wide v0
.end method

.method public m1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->d:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "{ type : sms, messageId: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uri: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->e:Landroid/net/Uri;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget-boolean p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget-object p2, p0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
