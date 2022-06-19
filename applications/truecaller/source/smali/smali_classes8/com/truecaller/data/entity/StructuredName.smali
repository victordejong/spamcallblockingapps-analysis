.class public final Lcom/truecaller/data/entity/StructuredName;
.super Lcom/truecaller/data/entity/RowEntity;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/data/entity/StructuredName$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/data/entity/RowEntity<",
        "Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;",
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010B\u0011\u0008\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0012B\u0011\u0008\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0013B\u0011\u0008\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0016R(\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R(\u0010\t\u001a\u0004\u0018\u00010\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R(\u0010\u000c\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/truecaller/data/entity/StructuredName;",
        "Lcom/truecaller/data/entity/RowEntity;",
        "Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;",
        "",
        "familyName",
        "getFamilyName",
        "()Ljava/lang/String;",
        "setFamilyName",
        "(Ljava/lang/String;)V",
        "givenName",
        "getGivenName",
        "setGivenName",
        "middleName",
        "getMiddleName",
        "setMiddleName",
        "<init>",
        "()V",
        "structuredName",
        "(Lcom/truecaller/data/entity/StructuredName;)V",
        "(Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;)V",
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
            "Lcom/truecaller/data/entity/StructuredName;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/truecaller/data/entity/StructuredName$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/data/entity/StructuredName$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/StructuredName$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/data/entity/StructuredName;->Companion:Lcom/truecaller/data/entity/StructuredName$b;

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/StructuredName$a;

    invoke-direct {v0}, Lcom/truecaller/data/entity/StructuredName$a;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/StructuredName;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;-><init>()V

    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/StructuredName;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;)V

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
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/StructuredName;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;)V
    .locals 1

    const-string v0, "structuredName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Lcom/truecaller/data/dto/ContactDto$Row;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/entity/StructuredName;)V
    .locals 1

    const-string v0, "structuredName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    invoke-direct {v0, p1}, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;)V

    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/StructuredName;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;)V

    return-void
.end method


# virtual methods
.method public final getFamilyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->familyName:Ljava/lang/String;

    return-object v0
.end method

.method public final getGivenName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->givenName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMiddleName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public final setFamilyName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->familyName:Ljava/lang/String;

    return-void
.end method

.method public final setGivenName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->givenName:Ljava/lang/String;

    return-void
.end method

.method public final setMiddleName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;->middleName:Ljava/lang/String;

    return-void
.end method
