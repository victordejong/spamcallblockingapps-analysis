.class public final enum Lcom/truecaller/referral/ReferralUrl$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/referral/ReferralUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/referral/ReferralUrl$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final enum b:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final enum c:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final enum d:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final enum e:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final enum f:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final enum g:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final enum h:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final enum i:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final enum j:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final enum k:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final enum l:Lcom/truecaller/referral/ReferralUrl$b;

.field public static final synthetic m:[Lcom/truecaller/referral/ReferralUrl$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v1, "BULK_SMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/referral/ReferralUrl$b;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 2
    new-instance v1, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v3, "CUSTOM_SINGLE_SMS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/referral/ReferralUrl$b;->b:Lcom/truecaller/referral/ReferralUrl$b;

    .line 3
    new-instance v3, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v5, "SINGLE_CONTACT_BULK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/referral/ReferralUrl$b;->c:Lcom/truecaller/referral/ReferralUrl$b;

    .line 4
    new-instance v5, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v7, "WHATS_APP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/truecaller/referral/ReferralUrl$b;->d:Lcom/truecaller/referral/ReferralUrl$b;

    .line 5
    new-instance v7, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v9, "TWITTER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/truecaller/referral/ReferralUrl$b;->e:Lcom/truecaller/referral/ReferralUrl$b;

    .line 6
    new-instance v9, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v11, "FACEBOOK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/truecaller/referral/ReferralUrl$b;->f:Lcom/truecaller/referral/ReferralUrl$b;

    .line 7
    new-instance v11, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v13, "MESSENGER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/truecaller/referral/ReferralUrl$b;->g:Lcom/truecaller/referral/ReferralUrl$b;

    .line 8
    new-instance v13, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v15, "SNAP_CHAT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/truecaller/referral/ReferralUrl$b;->h:Lcom/truecaller/referral/ReferralUrl$b;

    .line 9
    new-instance v15, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v14, "EMAIL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/truecaller/referral/ReferralUrl$b;->i:Lcom/truecaller/referral/ReferralUrl$b;

    .line 10
    new-instance v14, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v12, "FACEBOOK_INVITE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/truecaller/referral/ReferralUrl$b;->j:Lcom/truecaller/referral/ReferralUrl$b;

    .line 11
    new-instance v12, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v10, "OTHERS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/truecaller/referral/ReferralUrl$b;->k:Lcom/truecaller/referral/ReferralUrl$b;

    .line 12
    new-instance v10, Lcom/truecaller/referral/ReferralUrl$b;

    const-string v8, "WHATS_APP_SINGLE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/truecaller/referral/ReferralUrl$b;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/truecaller/referral/ReferralUrl$b;->l:Lcom/truecaller/referral/ReferralUrl$b;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/truecaller/referral/ReferralUrl$b;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 13
    sput-object v8, Lcom/truecaller/referral/ReferralUrl$b;->m:[Lcom/truecaller/referral/ReferralUrl$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/referral/ReferralUrl$b;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/referral/ReferralUrl$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/referral/ReferralUrl$b;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/referral/ReferralUrl$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/referral/ReferralUrl$b;->m:[Lcom/truecaller/referral/ReferralUrl$b;

    invoke-virtual {v0}, [Lcom/truecaller/referral/ReferralUrl$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/referral/ReferralUrl$b;

    return-object v0
.end method
