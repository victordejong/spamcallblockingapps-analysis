.class Lzendesk/support/UploadResponseWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private upload:Lzendesk/support/UploadResponse;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getUpload()Lzendesk/support/UploadResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/UploadResponseWrapper;->upload:Lzendesk/support/UploadResponse;

    return-object v0
.end method
