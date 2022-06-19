.class public final Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/calling/initiate_call/InitiateCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$b;,
        Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public final e:Z

.field public final f:Z

.field public final g:Landroid/telecom/PhoneAccountHandle;

.field public final h:Z

.field public final i:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$b;

    invoke-direct {v0}, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions$b;-><init>()V

    sput-object v0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLandroid/telecom/PhoneAccountHandle;ZLcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;)V
    .locals 1

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callContextOption"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->d:Ljava/lang/Integer;

    iput-boolean p5, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->e:Z

    iput-boolean p6, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->f:Z

    iput-object p7, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->g:Landroid/telecom/PhoneAccountHandle;

    iput-boolean p8, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->h:Z

    iput-object p9, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->i:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->d:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->e:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->f:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->g:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->h:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;->i:Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallContextOption;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
