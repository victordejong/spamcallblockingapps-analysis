.class public final synthetic Le/a/i/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/i/a/d;


# direct methods
.method public synthetic constructor <init>(Le/a/i/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/a/c;->a:Le/a/i/a/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Le/a/i/a/c;->a:Le/a/i/a/d;

    .line 1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v2, p1, Le/a/i/a/d;->a:Le/a/i/f0/m/c;

    .line 4
    iget-object v2, v2, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 5
    check-cast v2, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    const-string v3, "ClickURL"

    invoke-interface {v2, v3}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Le/a/i/a/d;->a()V

    return-void
.end method
