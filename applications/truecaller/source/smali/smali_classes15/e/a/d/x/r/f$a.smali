.class public final Le/a/d/x/r/f$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/r/f;-><init>(Ls1/w/f;Ls1/w/f;Le/a/d/g;Landroid/content/Context;Le/m/e/k;Le/a/d/c0/f0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lio/agora/rtm/RtmClient;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/x/r/f;


# direct methods
.method public constructor <init>(Le/a/d/x/r/f;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/r/f$a;->b:Le/a/d/x/r/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/d/x/r/f$a;->b:Le/a/d/x/r/f;

    .line 2
    iget-object v0, v0, Le/a/d/x/r/f;->j:Landroid/content/Context;

    .line 3
    sget v1, Lcom/truecaller/voip/R$string;->voip_agora_app_id:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Le/a/d/x/r/f$a;->b:Le/a/d/x/r/f;

    .line 5
    iget-object v2, v2, Le/a/d/x/r/f;->e:Le/a/d/x/r/f$b;

    .line 6
    invoke-static {v0, v1, v2}, Lio/agora/rtm/RtmClient;->createInstance(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtm/RtmClientListener;)Lio/agora/rtm/RtmClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
