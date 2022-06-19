.class public Lcom/mopub/common/privacy/SyncResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/SyncResponse$Builder;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/privacy/SyncResponse$a;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-static {p7}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-static {p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-static {p9}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-static {p10}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-static {p12}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "0"

    move-object v2, p1

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/mopub/common/privacy/SyncResponse;->a:Z

    const-string v1, "1"

    move-object v2, p2

    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->b:Z

    move-object v2, p3

    .line 11
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->c:Z

    move-object v2, p4

    .line 12
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->d:Z

    move-object v2, p5

    .line 13
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/mopub/common/privacy/SyncResponse;->e:Z

    move-object v2, p6

    .line 14
    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mopub/common/privacy/SyncResponse;->f:Z

    move-object v1, p7

    .line 15
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->g:Ljava/lang/String;

    move-object v1, p8

    .line 16
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->h:Ljava/lang/String;

    move-object v1, p9

    .line 17
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->i:Ljava/lang/String;

    move-object v1, p10

    .line 18
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->j:Ljava/lang/String;

    move-object v1, p11

    .line 19
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->k:Ljava/lang/String;

    move-object v1, p12

    .line 20
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->l:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 21
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->m:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 23
    iput-object v1, v0, Lcom/mopub/common/privacy/SyncResponse;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallAgainAfterSecs()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentChangeReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPrivacyPolicyLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPrivacyPolicyVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListIabFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListIabHash()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentVendorListVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncResponse;->g:Ljava/lang/String;

    return-object v0
.end method

.method public isForceExplicitNo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->b:Z

    return v0
.end method

.method public isForceGdprApplies()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->f:Z

    return v0
.end method

.method public isGdprRegion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->a:Z

    return v0
.end method

.method public isInvalidateConsent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->c:Z

    return v0
.end method

.method public isReacquireConsent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->d:Z

    return v0
.end method

.method public isWhitelisted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncResponse;->e:Z

    return v0
.end method
