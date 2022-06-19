.class public final Lzendesk/core/AnonymousIdentity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/Identity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/core/AnonymousIdentity$Builder;
    }
.end annotation


# instance fields
.field private email:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private sdkGuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lzendesk/core/AnonymousIdentity$Builder;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lzendesk/core/AnonymousIdentity$Builder;->access$000(Lzendesk/core/AnonymousIdentity$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzendesk/core/AnonymousIdentity;->email:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lzendesk/core/AnonymousIdentity$Builder;->access$100(Lzendesk/core/AnonymousIdentity$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzendesk/core/AnonymousIdentity;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/core/AnonymousIdentity$Builder;Lzendesk/core/AnonymousIdentity$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/core/AnonymousIdentity;-><init>(Lzendesk/core/AnonymousIdentity$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1
    const-class v2, Lzendesk/core/AnonymousIdentity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    check-cast p1, Lzendesk/core/AnonymousIdentity;

    .line 3
    iget-object v2, p0, Lzendesk/core/AnonymousIdentity;->email:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lzendesk/core/AnonymousIdentity;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lzendesk/core/AnonymousIdentity;->email:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lzendesk/core/AnonymousIdentity;->name:Ljava/lang/String;

    iget-object p1, p1, Lzendesk/core/AnonymousIdentity;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/AnonymousIdentity;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/AnonymousIdentity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkGuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/AnonymousIdentity;->sdkGuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/core/AnonymousIdentity;->email:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lzendesk/core/AnonymousIdentity;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method setSdkGuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/core/AnonymousIdentity;->sdkGuid:Ljava/lang/String;

    return-void
.end method
