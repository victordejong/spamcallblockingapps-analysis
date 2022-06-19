.class public final Lp3/a/p1/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/p1/a/b$a;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/google/protobuf/ExtensionRegistryLite;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lp3/a/p1/a/b;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    return-void
.end method
