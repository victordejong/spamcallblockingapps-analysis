.class public Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;
.super Lcom/truecaller/data/dto/ContactDto$Row;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/dto/ContactDto$Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StructuredName"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public familyName:Ljava/lang/String;

.field public givenName:Ljava/lang/String;

.field public middleName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName$1;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName$1;-><init>()V

    sput-object v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->givenName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->familyName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->middleName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;ZLcom/truecaller/data/dto/ContactDto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/truecaller/data/dto/ContactDto;->access$100(Landroid/os/Parcelable;)Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "StructuredName{givenName=\'"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->givenName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", familyName=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->familyName:Ljava/lang/String;

    const-string v3, ", middleName=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->middleName:Ljava/lang/String;

    const/16 v3, 0x7d

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/data/dto/ContactDto$Row;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->givenName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->familyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->middleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
