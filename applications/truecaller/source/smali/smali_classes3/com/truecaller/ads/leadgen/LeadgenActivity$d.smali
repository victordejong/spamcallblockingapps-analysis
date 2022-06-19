.class public final Lcom/truecaller/ads/leadgen/LeadgenActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ads/leadgen/LeadgenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ads/leadgen/LeadgenActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/ads/leadgen/LeadgenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/ads/leadgen/LeadgenActivity$d;->a:Lcom/truecaller/ads/leadgen/LeadgenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/ads/leadgen/LeadgenActivity$d;->a:Lcom/truecaller/ads/leadgen/LeadgenActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/ads/leadgen/LeadgenActivity;->a:Le/a/i/c0/d;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/a/i/c0/d;->onCloseClick()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
