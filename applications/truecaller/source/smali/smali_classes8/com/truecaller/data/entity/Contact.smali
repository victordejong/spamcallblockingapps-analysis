.class public Lcom/truecaller/data/entity/Contact;
.super Lcom/truecaller/data/entity/RowEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/data/entity/Contact$PremiumLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/truecaller/data/entity/RowEntity<",
        "Lcom/truecaller/data/dto/ContactDto$Contact;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Address;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Number;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Tag;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Source;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Link;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/SearchWarning;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/ContactSurvey;",
            ">;"
        }
    .end annotation
.end field

.field public transient h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Number;",
            ">;"
        }
    .end annotation
.end field

.field public transient i:Landroid/net/Uri;

.field public transient j:Z

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Address;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Number;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Tag;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Source;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Link;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/SearchWarning;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/ContactSurvey;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public s:Lcom/truecaller/data/entity/StructuredName;

.field public t:Lcom/truecaller/data/entity/Note;

.field public u:Lcom/truecaller/data/entity/Business;

.field public v:Lcom/truecaller/data/entity/Style;

.field public w:Lcom/truecaller/data/entity/NameFeedback;

.field public x:Lcom/truecaller/data/entity/SpamData;

.field public y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/Contact$a;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Contact$a;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/Contact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    invoke-direct {v0}, Lcom/truecaller/data/dto/ContactDto$Contact;-><init>()V

    invoke-direct {p0, v0}, Lcom/truecaller/data/entity/Contact;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 79
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Landroid/os/Parcel;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->a:Ljava/util/List;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/truecaller/data/entity/Contact;->c:Ljava/util/List;

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/truecaller/data/entity/Contact;->e:Ljava/util/List;

    .line 85
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/truecaller/data/entity/Contact;->f:Ljava/util/List;

    .line 86
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/truecaller/data/entity/Contact;->g:Ljava/util/List;

    .line 87
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/truecaller/data/entity/Contact;->h:Ljava/util/List;

    const/4 v7, 0x0

    .line 88
    iput v7, p0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 89
    sget-object v8, Lcom/truecaller/data/entity/Contact$PremiumLevel;->NONE:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    iput-object v8, p0, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 90
    sget-object v8, Lcom/truecaller/premium/data/PremiumScope;->NONE:Lcom/truecaller/premium/data/PremiumScope;

    .line 91
    sget-object v8, Lcom/truecaller/data/entity/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    sget-object v0, Lcom/truecaller/data/entity/Number;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    sget-object v0, Lcom/truecaller/data/entity/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    sget-object v0, Lcom/truecaller/data/entity/Source;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    sget-object v0, Lcom/truecaller/data/entity/Link;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 97
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->i:Landroid/net/Uri;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    iput-boolean v7, p0, Lcom/truecaller/data/entity/Contact;->j:Z

    .line 99
    const-class v0, Lcom/truecaller/data/entity/StructuredName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/StructuredName;

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->s:Lcom/truecaller/data/entity/StructuredName;

    .line 100
    const-class v0, Lcom/truecaller/data/entity/Note;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Note;

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->t:Lcom/truecaller/data/entity/Note;

    .line 101
    const-class v0, Lcom/truecaller/data/entity/Business;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Business;

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->u:Lcom/truecaller/data/entity/Business;

    .line 102
    const-class v0, Lcom/truecaller/data/entity/Style;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Style;

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->v:Lcom/truecaller/data/entity/Style;

    .line 103
    const-class v0, Lcom/truecaller/data/entity/NameFeedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/NameFeedback;

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->w:Lcom/truecaller/data/entity/NameFeedback;

    .line 104
    const-class v0, Lcom/truecaller/data/entity/SpamData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/SpamData;

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    .line 105
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iput-object v1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->cacheTtl:Ljava/lang/Number;

    .line 106
    sget-object v0, Lcom/truecaller/data/entity/SearchWarning;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    sget-object v0, Lcom/truecaller/data/entity/ContactSurvey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Contact;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/RowEntity;-><init>(Lcom/truecaller/data/dto/ContactDto$Row;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/data/entity/Contact;->a:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/data/entity/Contact;->c:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/data/entity/Contact;->e:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/data/entity/Contact;->f:Ljava/util/List;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/data/entity/Contact;->g:Ljava/util/List;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/data/entity/Contact;->h:Ljava/util/List;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 12
    sget-object p1, Lcom/truecaller/data/entity/Contact$PremiumLevel;->NONE:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    iput-object p1, p0, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 13
    sget-object p1, Lcom/truecaller/premium/data/PremiumScope;->NONE:Lcom/truecaller/premium/data/PremiumScope;

    .line 14
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->addresses:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    .line 16
    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->a:Ljava/util/List;

    new-instance v2, Lcom/truecaller/data/entity/Address;

    invoke-direct {v2, v0}, Lcom/truecaller/data/entity/Address;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Address;)V

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v0

    .line 17
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2, v0}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    .line 22
    new-instance v1, Lcom/truecaller/data/entity/Number;

    invoke-direct {v1, v0}, Lcom/truecaller/data/entity/Number;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;)V

    .line 23
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v2

    .line 24
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/truecaller/data/entity/Number;->setTcId(Ljava/lang/String;)V

    .line 25
    iput v2, v1, Lcom/truecaller/data/entity/Number;->a:I

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget v0, v1, Lcom/truecaller/data/entity/Number;->a:I

    and-int/lit8 v0, v0, 0xd

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->internetAddresses:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$InternetAddress;

    .line 31
    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->e:Ljava/util/List;

    new-instance v2, Lcom/truecaller/data/entity/Link;

    invoke-direct {v2, v0}, Lcom/truecaller/data/entity/Link;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$InternetAddress;)V

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v0

    .line 32
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, v0}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    .line 34
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_3
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->tags:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;

    .line 37
    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->c:Ljava/util/List;

    new-instance v2, Lcom/truecaller/data/entity/Tag;

    invoke-direct {v2, v0}, Lcom/truecaller/data/entity/Tag;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Tag;)V

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, v0}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    .line 40
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 41
    :cond_4
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->sources:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    .line 43
    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    new-instance v2, Lcom/truecaller/data/entity/Source;

    invoke-direct {v2, v0}, Lcom/truecaller/data/entity/Source;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Source;)V

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v0

    .line 44
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, v0}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    .line 46
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 47
    :cond_5
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->business:Lcom/truecaller/data/dto/ContactDto$Contact$Business;

    if-eqz p1, :cond_6

    .line 48
    new-instance v0, Lcom/truecaller/data/entity/Business;

    invoke-direct {v0, p1}, Lcom/truecaller/data/entity/Business;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Business;)V

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result p1

    .line 49
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    .line 51
    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->u:Lcom/truecaller/data/entity/Business;

    .line 52
    :cond_6
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->style:Lcom/truecaller/data/dto/ContactDto$Contact$Style;

    if-eqz p1, :cond_7

    .line 53
    new-instance v0, Lcom/truecaller/data/entity/Style;

    invoke-direct {v0, p1}, Lcom/truecaller/data/entity/Style;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Style;)V

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result p1

    .line 54
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    .line 56
    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->v:Lcom/truecaller/data/entity/Style;

    .line 57
    :cond_7
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->nameFeedback:Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;

    if-eqz p1, :cond_8

    .line 58
    new-instance v0, Lcom/truecaller/data/entity/NameFeedback;

    invoke-direct {v0, p1}, Lcom/truecaller/data/entity/NameFeedback;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;)V

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result p1

    .line 59
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    .line 61
    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->w:Lcom/truecaller/data/entity/NameFeedback;

    .line 62
    :cond_8
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->spamData:Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;

    if-eqz p1, :cond_9

    .line 63
    new-instance v0, Lcom/truecaller/data/entity/SpamData;

    invoke-direct {v0, p1}, Lcom/truecaller/data/entity/SpamData;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;)V

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result p1

    .line 64
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    .line 66
    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    .line 67
    :cond_9
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->searchWarnings:Ljava/util/List;

    if-eqz p1, :cond_a

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    .line 69
    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->f:Ljava/util/List;

    new-instance v2, Lcom/truecaller/data/entity/SearchWarning;

    invoke-direct {v2, v0}, Lcom/truecaller/data/entity/SearchWarning;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;)V

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2, v0}, Lcom/truecaller/data/entity/RowEntity;->setSource(I)V

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 73
    :cond_a
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->surveys:Ljava/util/List;

    if-eqz p1, :cond_b

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Survey;

    .line 75
    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->g:Ljava/util/List;

    new-instance v2, Lcom/truecaller/data/entity/ContactSurvey;

    invoke-direct {v2, v0}, Lcom/truecaller/data/entity/ContactSurvey;-><init>(Lcom/truecaller/data/dto/ContactDto$Contact$Survey;)V

    .line 76
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 78
    :cond_b
    iget-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object p1, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->badges:Ljava/util/List;

    invoke-static {p1}, Le/a/m0/a1$k;->v(Ljava/util/Collection;)I

    move-result p1

    iput p1, p0, Lcom/truecaller/data/entity/Contact;->r:I

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->imId:Ljava/lang/String;

    return-object v0
.end method

.method public A0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->b0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->image:Ljava/lang/String;

    return-object v0
.end method

.method public B0()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v0

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->D()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, " @ "

    invoke-static {v1, v0}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->jobTitle:Ljava/lang/String;

    return-object v0
.end method

.method public E0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Link;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->o:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->o:Ljava/util/List;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public G0()Z
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v0

    return v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/data/entity/SpamData;->getNumCalls60days()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/SpamData;->getNumCalls60days()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final H0(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Le/a/k3/l/e;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/k3/l/e;

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    :goto_0
    if-nez v3, :cond_1

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 5
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/k3/l/e;

    .line 6
    invoke-interface {v3, v1}, Le/a/k3/l/e;->mergeEquals(Le/a/k3/l/e;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 7
    instance-of v6, v3, Lcom/truecaller/data/entity/Number;

    if-eqz v6, :cond_6

    .line 8
    check-cast v3, Lcom/truecaller/data/entity/Number;

    .line 9
    move-object v6, v1

    check-cast v6, Lcom/truecaller/data/entity/Number;

    .line 10
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->m()I

    move-result v7

    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->m()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 11
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->m()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/truecaller/data/entity/Number;->x(I)V

    .line 12
    :cond_2
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->n()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 13
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->n()Ljava/lang/String;

    move-result-object v7

    .line 14
    iget-object v8, v3, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object v7, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->spamType:Ljava/lang/String;

    .line 15
    :cond_3
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 16
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->b()Ljava/lang/String;

    move-result-object v7

    .line 17
    iget-object v8, v3, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iput-object v7, v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->carrier:Ljava/lang/String;

    .line 18
    :cond_4
    invoke-virtual {v3}, Lcom/truecaller/data/entity/RowEntity;->getDataPhonebookId()Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_5

    .line 19
    invoke-virtual {v6}, Lcom/truecaller/data/entity/RowEntity;->getDataPhonebookId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/truecaller/data/entity/RowEntity;->setDataPhonebookId(Ljava/lang/Long;)V

    .line 20
    :cond_5
    iget v7, v3, Lcom/truecaller/data/entity/Number;->a:I

    iget v8, v6, Lcom/truecaller/data/entity/Number;->a:I

    or-int/2addr v7, v8

    .line 21
    iput v7, v3, Lcom/truecaller/data/entity/Number;->a:I

    .line 22
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->o()I

    move-result v7

    sget v8, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->EMPTY_TEL_TYPE:I

    if-eq v7, v8, :cond_6

    .line 23
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->o()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/truecaller/data/entity/Number;->y(I)V

    .line 24
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/truecaller/data/entity/Number;->z(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/truecaller/data/entity/Number;->v(Le/m/f/a/j$d;)V

    .line 26
    :cond_6
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    :cond_7
    move v3, v5

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public I()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/data/entity/SpamData;->getNumCalls60DaysPointerPosition()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/SpamData;->getNumCalls60DaysPointerPosition()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public I0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->tags:Ljava/util/List;

    return-void
.end method

.method public J()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/data/entity/SpamData;->getNumCallsHourly()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/SpamData;->getNumCallsHourly()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v2, v0

    const/16 v3, 0x18

    if-eq v2, v3, :cond_1

    return-object v1

    .line 4
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public L()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/data/entity/SpamData;->getNumReports60days()Ljava/lang/Number;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/SpamData;->getNumReports60days()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public L0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->altName:Ljava/lang/String;

    return-void
.end method

.method public M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Number;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->l:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->l:Ljava/util/List;

    return-object v0
.end method

.method public M0(Ljava/lang/Long;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->cacheTtl:Ljava/lang/Number;

    return-void
.end method

.method public N()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Source;

    .line 3
    iget-object v0, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public N0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->companyName:Ljava/lang/String;

    return-void
.end method

.method public O()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Source;

    .line 3
    iget-object v0, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public O0(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    return-void
.end method

.method public P()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Source;

    .line 3
    iget-object v0, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$Source;->url:Ljava/lang/String;

    return-object v0
.end method

.method public P0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->image:Ljava/lang/String;

    return-void
.end method

.method public Q0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-boolean p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->isFavorite:Z

    return-void
.end method

.method public R()Ljava/lang/Long;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    move-object v1, v0

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-wide v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-wide v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public R0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->jobTitle:Ljava/lang/String;

    return-void
.end method

.method public S0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->name:Ljava/lang/String;

    return-void
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public T0(Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    if-nez p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    iput-wide v1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookId:J

    return-void
.end method

.method public U()Lcom/truecaller/data/entity/Contact$PremiumLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    return-object v0
.end method

.method public V()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method public V0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchQuery:Ljava/lang/String;

    return-void
.end method

.method public X()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-wide v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchTime:J

    return-wide v0
.end method

.method public X0(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-wide p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchTime:J

    return-void
.end method

.method public Y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/SearchWarning;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->p:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->p:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->p:Ljava/util/List;

    return-object v0
.end method

.method public Y0(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamCategoryIds:Ljava/lang/String;

    return-void
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamCategoryIds:Ljava/lang/String;

    return-object v0
.end method

.method public Z0(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamScore:Ljava/lang/Number;

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/entity/Entity;Lcom/truecaller/data/dto/ContactDto$Row;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RT:",
            "Lcom/truecaller/data/dto/ContactDto$Row;",
            "ET:",
            "Lcom/truecaller/data/entity/Entity;",
            ">(",
            "Ljava/util/List<",
            "TET;>;",
            "Ljava/util/List<",
            "TRT;>;TET;TRT;)",
            "Ljava/util/List<",
            "TRT;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/truecaller/data/entity/Entity;->setTcId(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public a0()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    move-object v1, v0

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact;->spamScore:Ljava/lang/Number;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamScore:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public a1(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamType:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/truecaller/data/entity/Address;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    move-object v1, v0

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v2, p0, Lcom/truecaller/data/entity/Contact;->a:Ljava/util/List;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->addresses:Ljava/util/List;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$Address;

    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/truecaller/data/entity/Contact;->a(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/entity/Entity;Lcom/truecaller/data/dto/ContactDto$Row;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Lcom/truecaller/data/dto/ContactDto$Contact;->addresses:Ljava/util/List;

    return-void
.end method

.method public b0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->spamType:Ljava/lang/String;

    return-object v0
.end method

.method public b1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->a:Ljava/util/List;

    sget-object v1, Lcom/truecaller/data/entity/Address;->PRESENTATION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->H0(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    sget-object v1, Lcom/truecaller/data/entity/Number;->b:[I

    sget-object v1, Le/a/k3/l/a;->a:Le/a/k3/l/a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->H0(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->H0(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->e:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->H0(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->c:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->H0(Ljava/util/List;)V

    return-void
.end method

.method public c(Lcom/truecaller/data/entity/Link;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    move-object v1, v0

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v2, p0, Lcom/truecaller/data/entity/Contact;->e:Ljava/util/List;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->internetAddresses:Ljava/util/List;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$InternetAddress;

    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/truecaller/data/entity/Contact;->a(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/entity/Entity;Lcom/truecaller/data/dto/ContactDto$Row;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Lcom/truecaller/data/dto/ContactDto$Contact;->internetAddresses:Ljava/util/List;

    return-void
.end method

.method public c0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/ContactSurvey;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->q:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->q:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->q:Ljava/util/List;

    return-object v0
.end method

.method public c1()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->E0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Lcom/truecaller/data/entity/Number;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    iget-object v2, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/truecaller/data/entity/Contact;->a(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/entity/Entity;Lcom/truecaller/data/dto/ContactDto$Row;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->phones:Ljava/util/List;

    .line 2
    iget v0, p1, Lcom/truecaller/data/entity/Number;->a:I

    and-int/lit8 v0, v0, 0xd

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public d0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Tag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->m:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->m:Ljava/util/List;

    return-object v0
.end method

.method public d1()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0xd

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Lcom/truecaller/data/entity/SearchWarning;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    move-object v1, v0

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v2, p0, Lcom/truecaller/data/entity/Contact;->f:Ljava/util/List;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->searchWarnings:Ljava/util/List;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;

    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/truecaller/data/entity/Contact;->a(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/entity/Entity;Lcom/truecaller/data/dto/ContactDto$Row;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Lcom/truecaller/data/dto/ContactDto$Contact;->searchWarnings:Ljava/util/List;

    return-void
.end method

.method public e0()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->B0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/Number;

    .line 4
    iget v3, v2, Lcom/truecaller/data/entity/Number;->a:I

    and-int/lit8 v4, v3, 0x1

    if-lez v4, :cond_0

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public e1(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->d1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p1}, Le/a/b0/q/c0;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Number;

    .line 3
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget v1, v1, Lcom/truecaller/data/entity/Number;->a:I

    and-int/lit8 v1, v1, 0xd

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/truecaller/data/entity/Contact;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    .line 3
    iget-object v1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v3, v3, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/entity/Number;

    .line 6
    iget-object v4, p1, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/entity/Number;

    .line 7
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v3, v0

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_0
    if-nez v3, :cond_4

    return v2

    .line 8
    :cond_7
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Le/a/p5/g0;->J(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    move v0, v2

    :goto_1
    return v0

    :cond_9
    :goto_2
    return v2
.end method

.method public f(Lcom/truecaller/data/entity/ContactSurvey;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->g:Ljava/util/List;

    iget-object v2, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->surveys:Ljava/util/List;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$Survey;

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/truecaller/data/entity/Contact;->a(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/entity/Entity;Lcom/truecaller/data/dto/ContactDto$Row;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->surveys:Ljava/util/List;

    return-void
.end method

.method public f0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->transliteratedName:Ljava/lang/String;

    return-object v0
.end method

.method public g(Lcom/truecaller/data/entity/Tag;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->c:Ljava/util/List;

    iget-object v2, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->tags:Ljava/util/List;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$Tag;

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/truecaller/data/entity/Contact;->a(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/entity/Entity;Lcom/truecaller/data/dto/ContactDto$Row;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->tags:Ljava/util/List;

    return-void
.end method

.method public g0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/Contact;->r:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->source:I

    return v0
.end method

.method public getTcId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->id:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->about:Ljava/lang/String;

    return-object v0
.end method

.method public h0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getZipCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getStreet()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getZipCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, " "

    .line 5
    invoke-static {v0, v3}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, ", "

    .line 6
    invoke-static {v0, v2}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getCity()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i0(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j0()Z
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v0

    return v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Address;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/entity/Contact;->k:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->k:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/lang/Long;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    move-object v1, v0

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-wide v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact;->aggregatedRowId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-wide v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->aggregatedRowId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public l0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v0

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->altName:Ljava/lang/String;

    return-object v0
.end method

.method public m0()Z
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v0

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->p()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->j0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ")"

    const-string v4, " ("

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-static {v4, v1, v3}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    invoke-static {v0, v4, v1, v3}, Le/d/c/a/a;->D2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    move-object v1, v0

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact;->cacheTtl:Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->cacheTtl:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-boolean v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->isFavorite:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public q0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Lcom/truecaller/data/entity/Address;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Address;

    .line 2
    invoke-virtual {v1}, Lcom/truecaller/data/entity/RowEntity;->getDataPhonebookId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1
.end method

.method public r0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    sget-object v1, Lcom/truecaller/data/entity/Contact$PremiumLevel;->GOLD:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    if-eq v0, v1, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/Number;

    .line 4
    iget-object v2, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Contact;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v3}, Le/a/p5/g0;->G([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v1, v1, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    return-object v0
.end method

.method public s0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->source:I

    return-void
.end method

.method public setTcId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/data/entity/RowEntity;->setTcId(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->id:Ljava/lang/String;

    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Number;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Le/a/b0/q/b0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->defaultNumber:Ljava/lang/String;

    return-object v0
.end method

.method public t0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    sget-object v1, Lcom/truecaller/data/entity/Contact$PremiumLevel;->REGULAR:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public v()Lcom/truecaller/data/entity/Number;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/Number;

    .line 4
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public v0()Z
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/data/entity/RowEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 7
    iget v0, p0, Lcom/truecaller/data/entity/Contact;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->i:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    iget-boolean v0, p0, Lcom/truecaller/data/entity/Contact;->j:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->s:Lcom/truecaller/data/entity/StructuredName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 11
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->t:Lcom/truecaller/data/entity/Note;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->u:Lcom/truecaller/data/entity/Business;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->v:Lcom/truecaller/data/entity/Style;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->w:Lcom/truecaller/data/entity/NameFeedback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 15
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 16
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->o()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 17
    iget-object p2, p0, Lcom/truecaller/data/entity/Contact;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 18
    iget-object p2, p0, Lcom/truecaller/data/entity/Contact;->g:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->y()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public x0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact;->access:Ljava/lang/String;

    const-string v1, "private"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->f0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ")"

    const-string v3, " ("

    if-nez v1, :cond_2

    .line 5
    invoke-static {v0, v3}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->f0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    invoke-static {v0, v3}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public y0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x33

    if-nez v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/truecaller/data/entity/Contact;->i0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Address;->getDisplayableAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
