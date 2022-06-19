.class public final Lcom/truecaller/data/entity/Business;
.super Lcom/truecaller/data/entity/RowEntity;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/data/entity/Business$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/data/entity/RowEntity<",
        "Lcom/truecaller/data/dto/ContactDto$Contact$Business;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008%\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 ,2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\t\u0008\u0016\u00a2\u0006\u0004\u0008$\u0010%B\u0011\u0008\u0016\u0012\u0006\u0010&\u001a\u00020\u0000\u00a2\u0006\u0004\u0008$\u0010\'B\u0011\u0008\u0016\u0012\u0006\u0010&\u001a\u00020\u0002\u00a2\u0006\u0004\u0008$\u0010(B\u0011\u0008\u0012\u0012\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008$\u0010+R(\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R(\u0010\t\u001a\u0004\u0018\u00010\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R(\u0010\u000c\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R(\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R(\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R(\u0010\u0015\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R(\u0010\u0018\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R(\u0010\u001b\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R(\u0010\u001e\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R(\u0010!\u001a\u0004\u0018\u00010\u00032\u0008\u0010!\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008\u00a8\u0006."
    }
    d2 = {
        "Lcom/truecaller/data/entity/Business;",
        "Lcom/truecaller/data/entity/RowEntity;",
        "Lcom/truecaller/data/dto/ContactDto$Contact$Business;",
        "",
        "mediaCallerIDs",
        "getMediaCallerIDs",
        "()Ljava/lang/String;",
        "setMediaCallerIDs",
        "(Ljava/lang/String;)V",
        "department",
        "getDepartment",
        "setDepartment",
        "landline",
        "getLandline",
        "setLandline",
        "score",
        "getScore",
        "setScore",
        "swishNumber",
        "getSwishNumber",
        "setSwishNumber",
        "brandedMedia",
        "getBrandedMedia",
        "setBrandedMedia",
        "appStores",
        "getAppStores",
        "setAppStores",
        "branch",
        "getBranch",
        "setBranch",
        "companySize",
        "getCompanySize",
        "setCompanySize",
        "openingHours",
        "getOpeningHours",
        "setOpeningHours",
        "<init>",
        "()V",
        "business",
        "(Lcom/truecaller/data/entity/Business;)V",
        "(Lcom/truecaller/data/dto/ContactDto$Contact$Business;)V",
        "Landroid/os/Parcel;",
        "source",
        "(Landroid/os/Parcel;)V",
        "Companion",
        "b",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/entity/Business;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/truecaller/data/entity/Business$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/data/entity/Business$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/Business$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/data/entity/Business;->Companion:Lcom/truecaller/data/entity/Business$b;

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/Business$a;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Business$a;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/Business;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact$Business;-><init>()V

    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/Business;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Business;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/Business;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Contact$Business;)V
    .locals 1

    const-string v0, "business"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Lcom/truecaller/data/dto/ContactDto$Row;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/entity/Business;)V
    .locals 1

    const-string v0, "business"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    invoke-direct {v0, p1}, Lcom/truecaller/data/dto/ContactDto$Contact$Business;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Business;)V

    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/Business;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Business;)V

    return-void
.end method


# virtual methods
.method public final getAppStores()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->appStores:Ljava/lang/String;

    return-object v0
.end method

.method public final getBranch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->branch:Ljava/lang/String;

    return-object v0
.end method

.method public final getBrandedMedia()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->brandedMedia:Ljava/lang/String;

    return-object v0
.end method

.method public final getCompanySize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->companySize:Ljava/lang/String;

    return-object v0
.end method

.method public final getDepartment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->department:Ljava/lang/String;

    return-object v0
.end method

.method public final getLandline()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->landline:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaCallerIDs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->mediaCallerIDs:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpeningHours()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->openingHours:Ljava/lang/String;

    return-object v0
.end method

.method public final getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->score:Ljava/lang/String;

    return-object v0
.end method

.method public final getSwishNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->swishNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final setAppStores(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->appStores:Ljava/lang/String;

    return-void
.end method

.method public final setBranch(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->branch:Ljava/lang/String;

    return-void
.end method

.method public final setBrandedMedia(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->brandedMedia:Ljava/lang/String;

    return-void
.end method

.method public final setCompanySize(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->companySize:Ljava/lang/String;

    return-void
.end method

.method public final setDepartment(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->department:Ljava/lang/String;

    return-void
.end method

.method public final setLandline(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->landline:Ljava/lang/String;

    return-void
.end method

.method public final setMediaCallerIDs(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->mediaCallerIDs:Ljava/lang/String;

    return-void
.end method

.method public final setOpeningHours(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->openingHours:Ljava/lang/String;

    return-void
.end method

.method public final setScore(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->score:Ljava/lang/String;

    return-void
.end method

.method public final setSwishNumber(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Business;->swishNumber:Ljava/lang/String;

    return-void
.end method
