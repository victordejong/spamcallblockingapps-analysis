.class public Lcom/truecaller/referral/ReferralUrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/referral/ReferralUrl$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/referral/ReferralUrl;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Ljava/lang/String;",
            "Lcom/truecaller/referral/ReferralUrl$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ln3/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/a<",
            "Lcom/truecaller/referral/ReferralUrl$b;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/truecaller/referral/ReferralUrl$b;

.field public final b:Ljava/lang/String;

.field public c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    sput-object v0, Lcom/truecaller/referral/ReferralUrl;->d:Ln3/g/a;

    .line 2
    sget-object v1, Lcom/truecaller/referral/ReferralUrl$b;->d:Lcom/truecaller/referral/ReferralUrl$b;

    const-string v2, "com.whatsapp"

    invoke-virtual {v0, v2, v1}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/truecaller/referral/ReferralUrl;->d:Ln3/g/a;

    sget-object v2, Lcom/truecaller/referral/ReferralUrl$b;->g:Lcom/truecaller/referral/ReferralUrl$b;

    const-string v3, "com.facebook.orca"

    invoke-virtual {v0, v3, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/truecaller/referral/ReferralUrl;->d:Ln3/g/a;

    sget-object v3, Lcom/truecaller/referral/ReferralUrl$b;->f:Lcom/truecaller/referral/ReferralUrl$b;

    const-string v4, "com.facebook.katana"

    invoke-virtual {v0, v4, v3}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/truecaller/referral/ReferralUrl;->d:Ln3/g/a;

    sget-object v4, Lcom/truecaller/referral/ReferralUrl$b;->e:Lcom/truecaller/referral/ReferralUrl$b;

    const-string v5, "com.twitter.android"

    invoke-virtual {v0, v5, v4}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/truecaller/referral/ReferralUrl;->d:Ln3/g/a;

    sget-object v5, Lcom/truecaller/referral/ReferralUrl$b;->k:Lcom/truecaller/referral/ReferralUrl$b;

    const-string v6, "com.imo.android.imoim"

    invoke-virtual {v0, v6, v5}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/truecaller/referral/ReferralUrl;->d:Ln3/g/a;

    sget-object v6, Lcom/truecaller/referral/ReferralUrl$b;->h:Lcom/truecaller/referral/ReferralUrl$b;

    const-string v7, "com.snapchat.android"

    invoke-virtual {v0, v7, v6}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    sput-object v0, Lcom/truecaller/referral/ReferralUrl;->e:Ln3/g/a;

    .line 9
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->HOME_SCREEN:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v8, 0x61

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->INBOX_OVERFLOW:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v9, 0x62

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->CONTACT_DETAILS:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v10, 0x63

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->CONTACTS:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v11, 0x64

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v7, v11}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->USER_BUSY_PROMPT:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v12, 0x65

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v0, v7, v12}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v13, 0x66

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-virtual {v0, v7, v13}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL_SAVE_CONTACT:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v14, 0x67

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-virtual {v0, v7, v14}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->NAVIGATION_DRAWER:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v15, 0x68

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    invoke-virtual {v0, v7, v15}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PUSH_NOTIFICATION:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v16, 0x69

    move-object/from16 v17, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->DEEP_LINK:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v16, 0x6a

    move-object/from16 v18, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->AFTER_CALL_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v16, 0x6b

    move-object/from16 v19, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v7, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->SEARCH_SCREEN_PROMO:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v16, 0x6c

    move-object/from16 v20, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v5, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->BOTTOM_BAR:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v7, 0x6d

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v5, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PROMO_POPUP:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v7, 0x6e

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v5, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PREMIUM_TAB_V2:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const/16 v7, 0x6f

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    sput-object v0, Lcom/truecaller/referral/ReferralUrl;->f:Ln3/g/a;

    .line 25
    invoke-virtual {v0, v1, v8}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v0, v2, v9}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v0, v3, v10}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v0, v4, v11}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v0, v6, v12}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/truecaller/referral/ReferralUrl$b;->i:Lcom/truecaller/referral/ReferralUrl$b;

    invoke-virtual {v0, v1, v13}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/truecaller/referral/ReferralUrl$b;->a:Lcom/truecaller/referral/ReferralUrl$b;

    invoke-virtual {v0, v1, v14}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lcom/truecaller/referral/ReferralUrl$b;->b:Lcom/truecaller/referral/ReferralUrl$b;

    invoke-virtual {v0, v1, v15}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    .line 33
    invoke-virtual {v0, v1, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/truecaller/referral/ReferralUrl$b;->l:Lcom/truecaller/referral/ReferralUrl$b;

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcom/truecaller/referral/ReferralUrl$b;->c:Lcom/truecaller/referral/ReferralUrl$b;

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/truecaller/referral/ReferralUrl$a;

    invoke-direct {v0}, Lcom/truecaller/referral/ReferralUrl$a;-><init>()V

    sput-object v0, Lcom/truecaller/referral/ReferralUrl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/truecaller/referral/ReferralUrl$b;->k:Lcom/truecaller/referral/ReferralUrl$b;

    iput-object v0, p0, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/truecaller/referral/ReferralUrl$b;->values()[Lcom/truecaller/referral/ReferralUrl$b;

    move-result-object v3

    aget-object v0, v3, v0

    :goto_0
    iput-object v0, p0, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/referral/ReferralUrl;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->values()[Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    move-result-object v0

    aget-object v1, v0, p1

    :goto_1
    iput-object v1, p0, Lcom/truecaller/referral/ReferralUrl;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/referral/ReferralUrl$b;->k:Lcom/truecaller/referral/ReferralUrl$b;

    iput-object v0, p0, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 3
    iput-object p1, p0, Lcom/truecaller/referral/ReferralUrl;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Ln3/g/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/g/a<",
            "TK;TV;>;TV;)TK;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ln3/g/a;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ln3/g/g$e;

    invoke-virtual {v1}, Ln3/g/g$e;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ln3/g/h;->p(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ln3/g/h;->l(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/referral/ReferralUrl;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/truecaller/referral/ReferralUrl;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-eqz v1, :cond_4

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "truecaller.com"

    .line 3
    invoke-static {v0, v1}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/referral/ReferralUrl;->b:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Lcom/truecaller/referral/ReferralUrl;->e:Ln3/g/a;

    iget-object v2, p0, Lcom/truecaller/referral/ReferralUrl;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-virtual {v0, v2}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 6
    sget-object v2, Lcom/truecaller/referral/ReferralUrl;->f:Ln3/g/a;

    iget-object v3, p0, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    invoke-virtual {v2, v3}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 7
    iget-object v3, p0, Lcom/truecaller/referral/ReferralUrl;->b:Ljava/lang/String;

    .line 8
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3, v1}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/truecaller/referral/ReferralUrl;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/truecaller/referral/ReferralUrl;->b:Ljava/lang/String;

    const-string v4, "/"

    invoke-static {v3, v4}, Lw3/c/a/a/a/h;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v4, ""

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/truecaller/referral/ReferralUrl;->b:Ljava/lang/String;

    return-object v0

    .line 12
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source and medium should not be null. Source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " medium: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Referral url and source should not be null. Url : "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/truecaller/referral/ReferralUrl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/truecaller/referral/ReferralUrl;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    const/4 v0, -0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/referral/ReferralUrl;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/referral/ReferralUrl;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
