.class public final Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;
.super Lcom/truecaller/messaging/inboxcleanup/CleanupResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/inboxcleanup/CleanupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    iput p2, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    iput p3, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->c:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;

    iget v0, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    iget v1, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    iget v1, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->c:I

    iget p1, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->c:I

    if-ne v0, p1, :cond_0

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
    .locals 2

    iget v0, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Success(otpCount="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", promotionalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spamCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->c:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
