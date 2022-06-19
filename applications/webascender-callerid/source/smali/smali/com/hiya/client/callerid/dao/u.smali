.class public final Lcom/hiya/client/callerid/dao/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/dao/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/dao/t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hiya/client/callerid/dao/u;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hiya/client/callerid/dao/u$a;->a()Lcom/hiya/client/callerid/dao/u;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/hiya/client/callerid/dao/t;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/t;

    invoke-direct {v0}, Lcom/hiya/client/callerid/dao/t;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/dao/t;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hiya/client/callerid/dao/u;->c()Lcom/hiya/client/callerid/dao/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/dao/u;->b()Lcom/hiya/client/callerid/dao/t;

    move-result-object v0

    return-object v0
.end method
