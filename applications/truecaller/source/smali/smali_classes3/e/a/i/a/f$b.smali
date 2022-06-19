.class public final Le/a/i/a/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/a/f;->a(Le/a/i/f0/n/d;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/a/f;

.field public final synthetic b:Le/a/i/f0/n/d;


# direct methods
.method public constructor <init>(Le/a/i/a/f;Le/a/i/f0/n/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/a/f$b;->a:Le/a/i/a/f;

    iput-object p2, p0, Le/a/i/a/f$b;->b:Le/a/i/f0/n/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/i/a/f$b;->a:Le/a/i/a/f;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Le/a/i/a/f$b;->b:Le/a/i/f0/n/d;

    .line 2
    iget-object v1, v1, Le/a/i/f0/n/d;->d:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
