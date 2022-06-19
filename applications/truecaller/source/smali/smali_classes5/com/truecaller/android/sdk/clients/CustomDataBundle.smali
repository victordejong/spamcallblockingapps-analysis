.class public Lcom/truecaller/android/sdk/clients/CustomDataBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/android/sdk/clients/CustomDataBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle$a;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/clients/CustomDataBundle$a;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->a:I

    .line 3
    iput p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->b:I

    .line 4
    iput-object p3, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->d:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->g:I

    .line 7
    iput p6, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->e:I

    .line 8
    iput p7, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CUSTOMDATA_BTN_COLOR"

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->a:I

    const-string v0, "CUSTOMDATA_BTN_TEXT_COLOR"

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->b:I

    const-string v0, "CUSTOMDATA_PRIVACY_URL"

    const-string v2, ""

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->c:Ljava/lang/String;

    const-string v0, "CUSTOMDATA_TERMS_URL"

    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->d:Ljava/lang/String;

    const-string v0, "CUSTOMDATA_CTA_TEXT_PREFIX_OPTION"

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->g:I

    const-string v0, "CUSTOMDATA_LOGIN_TEXT_PREFIX_OPTION"

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->e:I

    const-string v0, "CUSTOMDATA_LOGIN_TEXT_SUFFIX_OPTION"

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/android/sdk/clients/CustomDataBundle$a;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->a:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->b:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->d:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->g:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->e:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->f:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcom/truecaller/android/sdk/clients/CustomDataBundle;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
