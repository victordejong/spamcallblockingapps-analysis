.class public final Lcom/truecaller/profile/data/dto/BusinessDataResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0015\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bc\u0012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u001a\u001a\u00020\n\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0010\u0012\u0006\u0010\u001e\u001a\u00020\u0013\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u00086\u00107J\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u0010\t\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\nH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u0010H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0008J~\u0010 \u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u001a\u001a\u00020\n2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u000e\u0008\u0002\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00022\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00132\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\"\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\"\u0010\u0008J\u0010\u0010$\u001a\u00020#H\u00d6\u0001\u00a2\u0006\u0004\u0008$\u0010%J\u001a\u0010\'\u001a\u00020\n2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\'\u0010(R\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010)\u001a\u0004\u0008*\u0010\u0008R\u001b\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010)\u001a\u0004\u0008+\u0010\u0008R\u001f\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010,\u001a\u0004\u0008-\u0010\u0005R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010)\u001a\u0004\u0008.\u0010\u0008R\u001f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010,\u001a\u0004\u0008/\u0010\u0005R\u001b\u0010\u001f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010)\u001a\u0004\u00080\u0010\u0008R\u0019\u0010\u001d\u001a\u00020\u00108\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u00101\u001a\u0004\u00082\u0010\u0012R\u0019\u0010\u001e\u001a\u00020\u00138\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u00103\u001a\u0004\u00084\u0010\u0015R\u0019\u0010\u001a\u001a\u00020\n8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u00105\u001a\u0004\u0008\u001a\u0010\u000c\u00a8\u00068"
    }
    d2 = {
        "Lcom/truecaller/profile/data/dto/BusinessDataResponse;",
        "",
        "",
        "Lcom/truecaller/profile/data/dto/PhoneNumber;",
        "component1",
        "()Ljava/util/List;",
        "",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "",
        "component4",
        "()Z",
        "component5",
        "",
        "component6",
        "Lcom/truecaller/profile/data/dto/OnlineIds;",
        "component7",
        "()Lcom/truecaller/profile/data/dto/OnlineIds;",
        "Lcom/truecaller/profile/data/dto/Company;",
        "component8",
        "()Lcom/truecaller/profile/data/dto/Company;",
        "component9",
        "phoneNumbers",
        "avatarUrl",
        "jobTitle",
        "isAnonymous",
        "about",
        "tags",
        "onlineIds",
        "company",
        "type",
        "copy",
        "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;Ljava/lang/String;)Lcom/truecaller/profile/data/dto/BusinessDataResponse;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getJobTitle",
        "getAvatarUrl",
        "Ljava/util/List;",
        "getPhoneNumbers",
        "getAbout",
        "getTags",
        "getType",
        "Lcom/truecaller/profile/data/dto/OnlineIds;",
        "getOnlineIds",
        "Lcom/truecaller/profile/data/dto/Company;",
        "getCompany",
        "Z",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;Ljava/lang/String;)V",
        "profile_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final about:Ljava/lang/String;

.field private final avatarUrl:Ljava/lang/String;

.field private final company:Lcom/truecaller/profile/data/dto/Company;

.field private final isAnonymous:Z

.field private final jobTitle:Ljava/lang/String;

.field private final onlineIds:Lcom/truecaller/profile/data/dto/OnlineIds;

.field private final phoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/PhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/PhoneNumber;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/truecaller/profile/data/dto/OnlineIds;",
            "Lcom/truecaller/profile/data/dto/Company;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "phoneNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onlineIds"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "company"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->phoneNumbers:Ljava/util/List;

    iput-object p2, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->avatarUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->jobTitle:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->isAnonymous:Z

    iput-object p5, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->about:Ljava/lang/String;

    iput-object p6, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->tags:Ljava/util/List;

    iput-object p7, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->onlineIds:Lcom/truecaller/profile/data/dto/OnlineIds;

    iput-object p8, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->company:Lcom/truecaller/profile/data/dto/Company;

    iput-object p9, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->type:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/profile/data/dto/BusinessDataResponse;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/BusinessDataResponse;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->phoneNumbers:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->avatarUrl:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->jobTitle:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->isAnonymous:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->about:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->tags:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->onlineIds:Lcom/truecaller/profile/data/dto/OnlineIds;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->company:Lcom/truecaller/profile/data/dto/Company;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->type:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->copy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;Ljava/lang/String;)Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/PhoneNumber;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->phoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->jobTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->isAnonymous:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->about:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Lcom/truecaller/profile/data/dto/OnlineIds;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->onlineIds:Lcom/truecaller/profile/data/dto/OnlineIds;

    return-object v0
.end method

.method public final component8()Lcom/truecaller/profile/data/dto/Company;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->company:Lcom/truecaller/profile/data/dto/Company;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;Ljava/lang/String;)Lcom/truecaller/profile/data/dto/BusinessDataResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/PhoneNumber;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/truecaller/profile/data/dto/OnlineIds;",
            "Lcom/truecaller/profile/data/dto/Company;",
            "Ljava/lang/String;",
            ")",
            "Lcom/truecaller/profile/data/dto/BusinessDataResponse;"
        }
    .end annotation

    const-string v0, "phoneNumbers"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onlineIds"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "company"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/truecaller/profile/data/dto/OnlineIds;Lcom/truecaller/profile/data/dto/Company;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->phoneNumbers:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->phoneNumbers:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->avatarUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->avatarUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->jobTitle:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->jobTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->isAnonymous:Z

    iget-boolean v1, p1, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->isAnonymous:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->about:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->about:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->tags:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->tags:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->onlineIds:Lcom/truecaller/profile/data/dto/OnlineIds;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->onlineIds:Lcom/truecaller/profile/data/dto/OnlineIds;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->company:Lcom/truecaller/profile/data/dto/Company;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->company:Lcom/truecaller/profile/data/dto/Company;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->type:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->about:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCompany()Lcom/truecaller/profile/data/dto/Company;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->company:Lcom/truecaller/profile/data/dto/Company;

    return-object v0
.end method

.method public final getJobTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->jobTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnlineIds()Lcom/truecaller/profile/data/dto/OnlineIds;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->onlineIds:Lcom/truecaller/profile/data/dto/OnlineIds;

    return-object v0
.end method

.method public final getPhoneNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/PhoneNumber;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->phoneNumbers:Ljava/util/List;

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
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->phoneNumbers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->avatarUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->jobTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->isAnonymous:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->about:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->tags:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->onlineIds:Lcom/truecaller/profile/data/dto/OnlineIds;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/OnlineIds;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->company:Lcom/truecaller/profile/data/dto/Company;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/truecaller/profile/data/dto/Company;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->type:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAnonymous()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->isAnonymous:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BusinessDataResponse(phoneNumbers="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->phoneNumbers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jobTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->jobTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAnonymous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->isAnonymous:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", about="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->about:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onlineIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->onlineIds:Lcom/truecaller/profile/data/dto/OnlineIds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", company="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->company:Lcom/truecaller/profile/data/dto/Company;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->type:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
