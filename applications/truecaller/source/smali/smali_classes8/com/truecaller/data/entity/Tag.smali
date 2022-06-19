.class public Lcom/truecaller/data/entity/Tag;
.super Lcom/truecaller/data/entity/RowEntity;
.source "SourceFile"

# interfaces
.implements Le/a/k3/l/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/data/entity/RowEntity<",
        "Lcom/truecaller/data/dto/ContactDto$Contact$Tag;",
        ">;",
        "Le/a/k3/l/e;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/entity/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/Tag$a;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Tag$a;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/RowEntity;-><init>(Lcom/truecaller/data/dto/ContactDto$Row;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Contact$Tag;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Lcom/truecaller/data/dto/ContactDto$Row;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public mergeEquals(Le/a/k3/l/e;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/truecaller/data/entity/Tag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/data/entity/Tag;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Tag;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/truecaller/data/entity/RowEntity;->getSource()I

    move-result v1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->getSource()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;->tag:Ljava/lang/String;

    return-void
.end method
