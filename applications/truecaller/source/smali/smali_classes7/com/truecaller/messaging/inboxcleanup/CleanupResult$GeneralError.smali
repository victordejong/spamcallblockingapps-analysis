.class public final Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;
.super Lcom/truecaller/messaging/inboxcleanup/CleanupResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/inboxcleanup/CleanupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneralError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult;-><init>(Ls1/z/c/f;)V

    iput-boolean p1, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    move p1, v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;

    iget-boolean v0, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;->a:Z

    iget-boolean p1, p1, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;->a:Z

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
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "GeneralError(showReason="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;->a:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;->a:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
