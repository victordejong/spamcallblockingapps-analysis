.class public Lzendesk/core/CoreSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/Settings;


# instance fields
.field private authentication:Lzendesk/core/AuthenticationType;


# direct methods
.method constructor <init>(Ljava/util/Date;Lzendesk/core/AuthenticationType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lzendesk/core/CoreSettings;->authentication:Lzendesk/core/AuthenticationType;

    return-void
.end method


# virtual methods
.method public getAuthentication()Lzendesk/core/AuthenticationType;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/CoreSettings;->authentication:Lzendesk/core/AuthenticationType;

    return-object v0
.end method
