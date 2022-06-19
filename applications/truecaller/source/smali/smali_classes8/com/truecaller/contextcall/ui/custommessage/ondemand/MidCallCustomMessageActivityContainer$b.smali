.class public final Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer$b;->b:Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer$b;->b:Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sourceBundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "onDemandMessageSource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "On demand source not provided"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
