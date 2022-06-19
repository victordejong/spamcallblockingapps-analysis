.class public final Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001f\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b\u0012\u0010\u0008\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008J\u0010KJ\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u0010\t\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u0018\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0018\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0008J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u008e\u0001\u0010\u001e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0010\u0008\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u0010\u0008\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0010\u0008\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00052\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0012H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008 \u0010\u0004J\u0010\u0010\"\u001a\u00020!H\u00d6\u0001\u00a2\u0006\u0004\u0008\"\u0010#J\u001a\u0010\'\u001a\u00020&2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u00d6\u0003\u00a2\u0006\u0004\u0008\'\u0010(J\u0010\u0010)\u001a\u00020!H\u00d6\u0001\u00a2\u0006\u0004\u0008)\u0010#J \u0010.\u001a\u00020-2\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020!H\u00d6\u0001\u00a2\u0006\u0004\u0008.\u0010/R*\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u00100\u001a\u0004\u00081\u0010\u0008\"\u0004\u00082\u00103R$\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u00104\u001a\u0004\u00085\u0010\r\"\u0004\u00086\u00107R$\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u00108\u001a\u0004\u00089\u0010\u0004\"\u0004\u0008:\u0010;R$\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u00108\u001a\u0004\u0008<\u0010\u0004\"\u0004\u0008=\u0010;R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u00108\u001a\u0004\u0008>\u0010\u0004\"\u0004\u0008?\u0010;R$\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u00108\u001a\u0004\u0008@\u0010\u0004\"\u0004\u0008A\u0010;R*\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u00100\u001a\u0004\u0008B\u0010\u0008\"\u0004\u0008C\u00103R$\u0010\u001d\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010D\u001a\u0004\u0008E\u0010\u0014\"\u0004\u0008F\u0010GR*\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u00100\u001a\u0004\u0008H\u0010\u0008\"\u0004\u0008I\u00103\u00a8\u0006L"
    }
    d2 = {
        "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
        "Landroid/os/Parcelable;",
        "",
        "component1",
        "()Ljava/lang/String;",
        "",
        "",
        "component2",
        "()Ljava/util/List;",
        "component3",
        "component4",
        "Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;",
        "component5",
        "()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;",
        "Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;",
        "component6",
        "component7",
        "component8",
        "Lcom/truecaller/profile/data/dto/businessV2/Branding;",
        "component9",
        "()Lcom/truecaller/profile/data/dto/businessV2/Branding;",
        "name",
        "phoneNumbers",
        "about",
        "tags",
        "onlineIds",
        "locationDetails",
        "size",
        "paymentIdentifier",
        "branding",
        "copy",
        "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;)Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "describeContents",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "Ljava/util/List;",
        "getLocationDetails",
        "setLocationDetails",
        "(Ljava/util/List;)V",
        "Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;",
        "getOnlineIds",
        "setOnlineIds",
        "(Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;)V",
        "Ljava/lang/String;",
        "getPaymentIdentifier",
        "setPaymentIdentifier",
        "(Ljava/lang/String;)V",
        "getSize",
        "setSize",
        "getName",
        "setName",
        "getAbout",
        "setAbout",
        "getTags",
        "setTags",
        "Lcom/truecaller/profile/data/dto/businessV2/Branding;",
        "getBranding",
        "setBranding",
        "(Lcom/truecaller/profile/data/dto/businessV2/Branding;)V",
        "getPhoneNumbers",
        "setPhoneNumbers",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;)V",
        "profile_release"
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
            "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private about:Ljava/lang/String;

.field private branding:Lcom/truecaller/profile/data/dto/businessV2/Branding;

.field private locationDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private onlineIds:Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

.field private paymentIdentifier:Ljava/lang/String;

.field private phoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private size:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile$a;

    invoke-direct {v0}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile$a;-><init>()V

    sput-object v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;ILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/profile/data/dto/businessV2/Branding;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->phoneNumbers:Ljava/util/List;

    iput-object p3, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->about:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->tags:Ljava/util/List;

    iput-object p5, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->onlineIds:Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    iput-object p6, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->locationDetails:Ljava/util/List;

    iput-object p7, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->size:Ljava/lang/String;

    iput-object p8, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->paymentIdentifier:Ljava/lang/String;

    iput-object p9, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->branding:Lcom/truecaller/profile/data/dto/businessV2/Branding;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;ILs1/z/c/f;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v2, p9

    :goto_8
    move-object p1, p0

    move-object p2, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v2

    .line 2
    invoke-direct/range {p1 .. p10}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->phoneNumbers:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->about:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->tags:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->onlineIds:Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->locationDetails:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->size:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->paymentIdentifier:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->branding:Lcom/truecaller/profile/data/dto/businessV2/Branding;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->copy(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;)Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->phoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->about:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->onlineIds:Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->locationDetails:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->size:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->paymentIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Lcom/truecaller/profile/data/dto/businessV2/Branding;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->branding:Lcom/truecaller/profile/data/dto/businessV2/Branding;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;)Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/truecaller/profile/data/dto/businessV2/Branding;",
            ")",
            "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;"
        }
    .end annotation

    new-instance v10, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/businessV2/Branding;)V

    return-object v10
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->phoneNumbers:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->phoneNumbers:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->about:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->about:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->tags:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->tags:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->onlineIds:Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->onlineIds:Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->locationDetails:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->locationDetails:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->size:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->size:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->paymentIdentifier:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->paymentIdentifier:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->branding:Lcom/truecaller/profile/data/dto/businessV2/Branding;

    iget-object p1, p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->branding:Lcom/truecaller/profile/data/dto/businessV2/Branding;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAbout()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->about:Ljava/lang/String;

    return-object v0
.end method

.method public final getBranding()Lcom/truecaller/profile/data/dto/businessV2/Branding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->branding:Lcom/truecaller/profile/data/dto/businessV2/Branding;

    return-object v0
.end method

.method public final getLocationDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->locationDetails:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnlineIds()Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->onlineIds:Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    return-object v0
.end method

.method public final getPaymentIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->paymentIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->phoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method public final getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->size:Ljava/lang/String;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->tags:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->phoneNumbers:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->about:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->tags:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->onlineIds:Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->locationDetails:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->size:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->paymentIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->branding:Lcom/truecaller/profile/data/dto/businessV2/Branding;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/businessV2/Branding;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAbout(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->about:Ljava/lang/String;

    return-void
.end method

.method public final setBranding(Lcom/truecaller/profile/data/dto/businessV2/Branding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->branding:Lcom/truecaller/profile/data/dto/businessV2/Branding;

    return-void
.end method

.method public final setLocationDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->locationDetails:Ljava/util/List;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOnlineIds(Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->onlineIds:Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    return-void
.end method

.method public final setPaymentIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->paymentIdentifier:Ljava/lang/String;

    return-void
.end method

.method public final setPhoneNumbers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->phoneNumbers:Ljava/util/List;

    return-void
.end method

.method public final setSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->size:Ljava/lang/String;

    return-void
.end method

.method public final setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->tags:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "BusinessProfile(name="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->phoneNumbers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", about="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->about:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onlineIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->onlineIds:Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locationDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->locationDetails:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->paymentIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", branding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->branding:Lcom/truecaller/profile/data/dto/businessV2/Branding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->phoneNumbers:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    iget-object p2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->about:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->tags:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3
    iget-object p2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->onlineIds:Lcom/truecaller/profile/data/dto/businessV2/OnlineIds;

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->locationDetails:Ljava/util/List;

    if-eqz p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;

    invoke-interface {v2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_6
    iget-object p2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->size:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->paymentIdentifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->branding:Lcom/truecaller/profile/data/dto/businessV2/Branding;

    if-eqz p2, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return-void
.end method
