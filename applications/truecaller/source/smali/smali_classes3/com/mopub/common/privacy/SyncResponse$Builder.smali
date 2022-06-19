.class public Lcom/mopub/common/privacy/SyncResponse$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/SyncResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/mopub/common/privacy/SyncResponse;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v18, Lcom/mopub/common/privacy/SyncResponse;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->d:Ljava/lang/String;

    iget-object v6, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->e:Ljava/lang/String;

    iget-object v7, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->g:Ljava/lang/String;

    iget-object v9, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->h:Ljava/lang/String;

    iget-object v10, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->i:Ljava/lang/String;

    iget-object v11, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->j:Ljava/lang/String;

    iget-object v12, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->k:Ljava/lang/String;

    iget-object v13, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->l:Ljava/lang/String;

    iget-object v14, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->m:Ljava/lang/String;

    iget-object v15, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->n:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/mopub/common/privacy/SyncResponse$Builder;->o:Ljava/lang/String;

    move-object/from16 v16, v1

    const/16 v17, 0x0

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/mopub/common/privacy/SyncResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/privacy/SyncResponse$a;)V

    return-object v18
.end method

.method public setCallAgainAfterSecs(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->m:Ljava/lang/String;

    return-object p0
.end method

.method public setConsentChangeReason(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->o:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentPrivacyPolicyLink(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentVendorListIabFormat(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentVendorListIabHash(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentVendorListLink(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setExtras(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public setForceExplicitNo(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setForceGdprApplies(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setInvalidateConsent(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setIsGdprRegion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setIsWhitelisted(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setReacquireConsent(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncResponse$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncResponse$Builder;->d:Ljava/lang/String;

    return-object p0
.end method
