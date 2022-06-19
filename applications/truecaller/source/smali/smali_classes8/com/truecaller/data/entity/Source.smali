.class public Lcom/truecaller/data/entity/Source;
.super Lcom/truecaller/data/entity/RowEntity;
.source "SourceFile"

# interfaces
.implements Le/a/k3/l/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/data/entity/RowEntity<",
        "Lcom/truecaller/data/dto/ContactDto$Contact$Source;",
        ">;",
        "Le/a/k3/l/e;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/entity/Source;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/Source$a;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Source$a;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/Source;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact$Source;-><init>()V

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

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Contact$Source;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Lcom/truecaller/data/dto/ContactDto$Row;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->id:Ljava/lang/String;

    return-object v0
.end method

.method public mergeEquals(Le/a/k3/l/e;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/truecaller/data/entity/Source;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/data/entity/Source;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Source;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Source;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
