.class public Lcom/truecaller/data/dto/ContactDto$Contact;
.super Lcom/truecaller/data/dto/ContactDto$Row;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/dto/ContactDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/data/dto/ContactDto$Contact$Survey;,
        Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;,
        Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;,
        Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo;,
        Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;,
        Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;,
        Lcom/truecaller/data/dto/ContactDto$Contact$Style;,
        Lcom/truecaller/data/dto/ContactDto$Contact$Business;,
        Lcom/truecaller/data/dto/ContactDto$Contact$Note;,
        Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;,
        Lcom/truecaller/data/dto/ContactDto$Contact$Tag;,
        Lcom/truecaller/data/dto/ContactDto$Contact$Source;,
        Lcom/truecaller/data/dto/ContactDto$Contact$InternetAddress;,
        Lcom/truecaller/data/dto/ContactDto$Contact$Address;,
        Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/dto/ContactDto$Contact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public about:Ljava/lang/String;

.field public access:Ljava/lang/String;

.field public addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$Address;",
            ">;"
        }
    .end annotation
.end field

.field public transient aggregatedRowId:J

.field public altName:Ljava/lang/String;

.field public badges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public transient business:Lcom/truecaller/data/dto/ContactDto$Contact$Business;

.field public businessProfileNetworkResponse:Lcom/truecaller/data/dto/ContactDto$Contact$BusinessProfile;
    .annotation runtime Le/m/e/d0/b;
        value = "businessProfile"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public cacheTtl:Ljava/lang/Number;

.field public transient commonConnections:I

.field public companyName:Ljava/lang/String;

.field public transient defaultNumber:Ljava/lang/String;

.field public transient favoritePosition:I

.field public gender:Ljava/lang/String;

.field public handle:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imId:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public internetAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$InternetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public transient isFavorite:Z

.field public jobTitle:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nameFeedback:Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

.field public transient note:Lcom/truecaller/data/dto/ContactDto$Contact$Note;

.field public transient phonebookHash:J

.field public transient phonebookId:J

.field public transient phonebookLookupKey:Ljava/lang/String;

.field public phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field public score:Ljava/lang/Number;

.field public transient searchQuery:Ljava/lang/String;

.field public transient searchTime:J

.field public searchWarnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;",
            ">;"
        }
    .end annotation
.end field

.field public transient source:I

.field public sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$Source;",
            ">;"
        }
    .end annotation
.end field

.field public transient spamCategoryIds:Ljava/lang/String;

.field public transient spamData:Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

.field public spamInfo:Lcom/truecaller/data/dto/ContactDto$Contact$SpamInfo;

.field public transient spamScore:Ljava/lang/Number;

.field public transient spamType:Ljava/lang/String;

.field public transient structuredName:Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

.field public transient style:Lcom/truecaller/data/dto/ContactDto$Contact$Style;

.field public surveys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$Survey;",
            ">;"
        }
    .end annotation
.end field

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$Tag;",
            ">;"
        }
    .end annotation
.end field

.field public transient tcFlag:I

.field public transliteratedName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$1;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact$1;-><init>()V

    sput-object v0, Lcom/truecaller/data/dto/ContactDto$Contact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/truecaller/data/dto/ContactDto$Row;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->favoritePosition:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Z)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Lcom/truecaller/data/dto/ContactDto$Row;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->favoritePosition:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->id:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->transliteratedName:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->handle:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->altName:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->gender:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->about:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->image:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->jobTitle:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->companyName:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->access:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, p1}, Lcom/truecaller/data/dto/ContactDto$Row;->readNumber(Landroid/os/Parcel;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->score:Ljava/lang/Number;

    .line 19
    invoke-virtual {p0, p1}, Lcom/truecaller/data/dto/ContactDto$Row;->readNumber(Landroid/os/Parcel;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->cacheTtl:Ljava/lang/Number;

    .line 20
    sget-object v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Row;->readList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    .line 21
    sget-object v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Row;->readList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->addresses:Ljava/util/List;

    .line 22
    sget-object v0, Lcom/truecaller/data/dto/ContactDto$Contact$InternetAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Row;->readList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->internetAddresses:Ljava/util/List;

    .line 23
    invoke-virtual {p0, p1}, Lcom/truecaller/data/dto/ContactDto$Row;->readStringList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->badges:Ljava/util/List;

    .line 24
    sget-object v0, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Row;->readList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->tags:Ljava/util/List;

    .line 25
    sget-object v0, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Row;->readList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->sources:Ljava/util/List;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchTime:J

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchQuery:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->source:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->commonConnections:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->aggregatedRowId:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookId:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookHash:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookLookupKey:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->isFavorite:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->favoritePosition:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->tcFlag:I

    .line 38
    const-class v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->structuredName:Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    .line 39
    const-class v0, Lcom/truecaller/data/dto/ContactDto$Contact$Note;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Note;

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->note:Lcom/truecaller/data/dto/ContactDto$Contact$Note;

    .line 40
    const-class v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->business:Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    .line 41
    const-class v0, Lcom/truecaller/data/dto/ContactDto$Contact$Style;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Style;

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->style:Lcom/truecaller/data/dto/ContactDto$Contact$Style;

    .line 42
    const-class v0, Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->nameFeedback:Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    .line 43
    const-class v0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamData:Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

    .line 44
    invoke-virtual {p0, p1}, Lcom/truecaller/data/dto/ContactDto$Row;->readNumber(Landroid/os/Parcel;)Ljava/lang/Number;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamScore:Ljava/lang/Number;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamType:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamCategoryIds:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Row;->readList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchWarnings:Ljava/util/List;

    .line 48
    sget-object v0, Lcom/truecaller/data/dto/ContactDto$Contact$Survey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Row;->readList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->surveys:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;ZLcom/truecaller/data/dto/ContactDto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/data/dto/ContactDto$Contact;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Contact;)V
    .locals 1

    .line 4
    invoke-static {p1}, Lcom/truecaller/data/dto/ContactDto;->access$100(Landroid/os/Parcelable;)Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Contact;-><init>(Landroid/os/Parcel;Z)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Contact{id=\'"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->id:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", phones="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->addresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internetAddresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->internetAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->sources:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", commonConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->commonConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", searchTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", aggregatedRowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->aggregatedRowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", phonebookId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", phonebookHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookHash:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isFavorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->isFavorite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", favoritePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->favoritePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tcFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->tcFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", structuredName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->structuredName:Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", note="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->note:Lcom/truecaller/data/dto/ContactDto$Contact$Note;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", business="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->business:Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->style:Lcom/truecaller/data/dto/ContactDto$Contact$Style;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nameFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->nameFeedback:Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheTtl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->cacheTtl:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spamData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamData:Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spamScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamScore:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", searchWarnings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchWarnings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surveys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->surveys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/data/dto/ContactDto$Row;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->transliteratedName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->handle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->altName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->gender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->jobTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->companyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->access:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->score:Ljava/lang/Number;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Row;->writeNumber(Landroid/os/Parcel;Ljava/lang/Number;)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->cacheTtl:Ljava/lang/Number;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/data/dto/ContactDto$Row;->writeNumber(Landroid/os/Parcel;Ljava/lang/Number;)V

    .line 15
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 16
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->addresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 17
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->internetAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 18
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->badges:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 19
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->tags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 20
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->sources:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 21
    iget-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->source:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->commonConnections:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->aggregatedRowId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 26
    iget-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 27
    iget-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookHash:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookLookupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-boolean v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->isFavorite:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->favoritePosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->tcFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->structuredName:Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->note:Lcom/truecaller/data/dto/ContactDto$Contact$Note;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 35
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->business:Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 36
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->style:Lcom/truecaller/data/dto/ContactDto$Contact$Style;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 37
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->nameFeedback:Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 38
    iget-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamData:Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamScore:Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/data/dto/ContactDto$Row;->writeNumber(Landroid/os/Parcel;Ljava/lang/Number;)V

    .line 40
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamCategoryIds:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchWarnings:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 43
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Contact;->surveys:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
