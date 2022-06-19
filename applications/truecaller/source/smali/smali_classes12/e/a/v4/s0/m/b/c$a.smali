.class public final Le/a/v4/s0/m/b/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v4/s0/m/b/c;-><init>(Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;Le/a/p5/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;


# direct methods
.method public constructor <init>(Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;)V
    .locals 0

    iput-object p1, p0, Le/a/v4/s0/m/b/c$a;->b:Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v4/s0/m/b/c$a;->b:Lcom/truecaller/sdk/oAuth/view/dialog/AdditionalPartnerInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
