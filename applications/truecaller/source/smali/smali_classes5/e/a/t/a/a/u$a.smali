.class public final Le/a/t/a/a/u$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/a/u;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/tenor/android/core/network/IApiClient;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/t/a/a/u;


# direct methods
.method public constructor <init>(Le/a/t/a/a/u;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/a/u$a;->b:Le/a/t/a/a/u;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/t/a/a/u$a;->b:Le/a/t/a/a/u;

    .line 2
    iget-object v1, v0, Le/a/t/a/a/u;->d:Landroid/content/Context;

    .line 3
    new-instance v2, Lcom/tenor/android/core/network/ApiService$Builder;

    const-class v3, Lcom/tenor/android/core/network/IApiClient;

    invoke-direct {v2, v1, v3}, Lcom/tenor/android/core/network/ApiService$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v0, Le/a/t/a/a/u;->d:Landroid/content/Context;

    sget v3, Lcom/truecaller/android/truemoji/R$string;->TenorApiKey:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tenor/android/core/network/ApiService$Builder;->apiKey(Ljava/lang/String;)Lcom/tenor/android/core/network/ApiService$IBuilder;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/tenor/android/core/network/ApiClient;->init(Landroid/content/Context;Lcom/tenor/android/core/network/ApiService$IBuilder;)V

    .line 5
    iget-object v0, p0, Le/a/t/a/a/u$a;->b:Le/a/t/a/a/u;

    .line 6
    iget-object v0, v0, Le/a/t/a/a/u;->d:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/tenor/android/core/network/ApiClient;->getInstance(Landroid/content/Context;)Lcom/tenor/android/core/network/IApiClient;

    move-result-object v0

    const-string v1, "ApiClient.getInstance(context)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
