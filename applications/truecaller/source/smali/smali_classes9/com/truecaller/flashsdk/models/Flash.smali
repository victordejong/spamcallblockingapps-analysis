.class public Lcom/truecaller/flashsdk/models/Flash;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/flashsdk/models/Flash;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/truecaller/flashsdk/models/Sender;
    .annotation runtime Le/m/e/d0/b;
        value = "sender"
    .end annotation
.end field

.field public b:J
    .annotation runtime Le/m/e/d0/b;
        value = "to"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "threadId"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "state"
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "history"
    .end annotation
.end field

.field public f:Lcom/truecaller/flashsdk/models/Payload;
    .annotation runtime Le/m/e/d0/b;
        value = "payload"
    .end annotation
.end field

.field public g:J
    .annotation runtime Le/m/e/d0/b;
        value = "timestamp"
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "instanceId"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/flashsdk/models/Flash$a;

    invoke-direct {v0}, Lcom/truecaller/flashsdk/models/Flash$a;-><init>()V

    sput-object v0, Lcom/truecaller/flashsdk/models/Flash;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class v0, Lcom/truecaller/flashsdk/models/Sender;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/models/Sender;

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    .line 8
    const-class v0, Lcom/truecaller/flashsdk/models/Payload;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/models/Payload;

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/flashsdk/models/Flash;->g:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/Random;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s-%s"

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/truecaller/flashsdk/models/Flash;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "-%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/truecaller/flashsdk/models/Flash;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/FlashRequest;
    .locals 12

    .line 1
    new-instance v0, Lcom/truecaller/flashsdk/models/FlashRequest;

    iget-object v1, p0, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v11, Lcom/truecaller/flashsdk/models/Data;

    iget-wide v4, p0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    iget-object v6, p0, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 2
    iget-object v3, p0, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    move-object v8, v3

    .line 3
    iget-object v10, p0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    move-object v3, v11

    move-object v9, p1

    invoke-direct/range {v3 .. v10}, Lcom/truecaller/flashsdk/models/Data;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/flashsdk/models/Payload;)V

    invoke-direct {v0, v1, v2, v11}, Lcom/truecaller/flashsdk/models/FlashRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/flashsdk/models/Data;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-wide v0, p0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget-wide v0, p0, Lcom/truecaller/flashsdk/models/Flash;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 8
    iget-object p2, p0, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
