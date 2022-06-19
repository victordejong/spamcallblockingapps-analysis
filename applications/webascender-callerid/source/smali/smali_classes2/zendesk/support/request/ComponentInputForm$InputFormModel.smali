.class Lzendesk/support/request/ComponentInputForm$InputFormModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentInputForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputFormModel"
.end annotation


# instance fields
.field private final hasIdentityEmailAddress:Z

.field private final hasIdentityName:Z

.field private final isLoading:Z

.field private final neverRequestEmail:Z

.field private final referrerUrl:Ljava/lang/String;

.field private final showZendeskLogo:Z


# direct methods
.method constructor <init>(ZZZZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->neverRequestEmail:Z

    .line 3
    iput-boolean p2, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->hasIdentityEmailAddress:Z

    .line 4
    iput-boolean p3, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->hasIdentityName:Z

    .line 5
    iput-boolean p4, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->isLoading:Z

    .line 6
    iput-boolean p5, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->showZendeskLogo:Z

    .line 7
    iput-object p6, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->referrerUrl:Ljava/lang/String;

    return-void
.end method

.method private isEmailFieldEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->hasIdentityEmailAddress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->neverRequestEmail:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNameFieldEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->hasIdentityName:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method getEmailFieldVisibility()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->isEmailFieldEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    return v0
.end method

.method getLogoVisibility()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->isLogoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    return v0
.end method

.method getMessageFieldVisibility()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getNameFieldVisibility()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->isNameFieldEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    return v0
.end method

.method getReferrerUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->referrerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->isLoading:Z

    return v0
.end method

.method isLogoEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ComponentInputForm$InputFormModel;->showZendeskLogo:Z

    return v0
.end method
