.class public final Lcom/google/cloud/audit/AuthorizationInfo$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Le/m/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/audit/AuthorizationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/cloud/audit/AuthorizationInfo;",
        "Lcom/google/cloud/audit/AuthorizationInfo$b;",
        ">;",
        "Le/m/c/a/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/cloud/audit/AuthorizationInfo;->access$000()Lcom/google/cloud/audit/AuthorizationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/cloud/audit/AuthorizationInfo$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/cloud/audit/AuthorizationInfo;->access$000()Lcom/google/cloud/audit/AuthorizationInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method
