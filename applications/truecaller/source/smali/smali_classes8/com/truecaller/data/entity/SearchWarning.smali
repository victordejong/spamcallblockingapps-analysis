.class public final Lcom/truecaller/data/entity/SearchWarning;
.super Lcom/truecaller/data/entity/RowEntity;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/data/entity/SearchWarning$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/data/entity/RowEntity<",
        "Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;",
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014B\u0011\u0008\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0016B\u0011\u0008\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0017B\u0011\u0008\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u0013\u0010\u001aR0\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR(\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR(\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\n8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/data/entity/SearchWarning;",
        "Lcom/truecaller/data/entity/RowEntity;",
        "Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;",
        "",
        "Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning$Feature;",
        "features",
        "getFeatures",
        "()Ljava/util/List;",
        "setFeatures",
        "(Ljava/util/List;)V",
        "",
        "id",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "ruleName",
        "getRuleName",
        "setRuleName",
        "<init>",
        "()V",
        "searchWarning",
        "(Lcom/truecaller/data/entity/SearchWarning;)V",
        "(Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;)V",
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
            "Lcom/truecaller/data/entity/SearchWarning;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/truecaller/data/entity/SearchWarning$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/data/entity/SearchWarning$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/SearchWarning$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/data/entity/SearchWarning;->Companion:Lcom/truecaller/data/entity/SearchWarning$b;

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/SearchWarning$a;

    invoke-direct {v0}, Lcom/truecaller/data/entity/SearchWarning$a;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/SearchWarning;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;-><init>()V

    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/SearchWarning;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;)V

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
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/SearchWarning;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;)V
    .locals 1

    const-string v0, "searchWarning"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Lcom/truecaller/data/dto/ContactDto$Row;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/entity/SearchWarning;)V
    .locals 1

    const-string v0, "searchWarning"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    invoke-direct {v0, p1}, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;)V

    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/SearchWarning;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;)V

    return-void
.end method


# virtual methods
.method public final getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning$Feature;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;->features:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getRuleName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;->ruleName:Ljava/lang/String;

    return-object v0
.end method

.method public final setFeatures(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning$Feature;",
            ">;)V"
        }
    .end annotation

    const-string v0, "features"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;->features:Ljava/util/List;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;->id:Ljava/lang/String;

    return-void
.end method

.method public final setRuleName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;->ruleName:Ljava/lang/String;

    return-void
.end method
