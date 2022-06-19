.class public final Lcom/truecaller/ads/leadgen/LeadgenActivity$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ads/leadgen/LeadgenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/ads/leadgen/LeadgenActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/ads/leadgen/LeadgenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/ads/leadgen/LeadgenActivity$c;->b:Lcom/truecaller/ads/leadgen/LeadgenActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/leadgen/LeadgenActivity$c;->b:Lcom/truecaller/ads/leadgen/LeadgenActivity;

    .line 2
    iget-object v0, v0, Lcom/truecaller/ads/leadgen/LeadgenActivity;->a:Le/a/i/c0/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/i/c0/d;->Hj()V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :cond_0
    const-string v0, "presenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
