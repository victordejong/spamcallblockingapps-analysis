.class public Lzendesk/support/HelpCenterAttachment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentUrl:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private size:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpCenterAttachment;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpCenterAttachment;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/HelpCenterAttachment;->size:Ljava/lang/Long;

    return-object v0
.end method
