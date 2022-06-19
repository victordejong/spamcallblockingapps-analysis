.class public final Le/a/i/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/a/a;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/i/a/a$a;->a:I

    iput-object p2, p0, Le/a/i/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Le/a/i/a/a$a;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/i/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/a/a;

    .line 2
    sget-object v0, Le/a/i/a/a;->b:Le/a/i/f0/m/c;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Le/a/i/a/a;->b:Le/a/i/f0/m/c;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 7
    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    const-string v2, "ClickURL"

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 10
    :cond_0
    iget-object p1, p0, Le/a/i/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/a/a;

    .line 11
    invoke-virtual {p1}, Le/a/i/a/a;->pa()Lcom/truecaller/ads/ui/VideoFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 13
    throw p1

    .line 14
    :cond_2
    iget-object p1, p0, Le/a/i/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/i/a/a;

    .line 15
    sget-object v0, Le/a/i/a/a;->b:Le/a/i/f0/m/c;

    .line 16
    invoke-virtual {p1}, Le/a/i/a/a;->pa()Lcom/truecaller/ads/ui/VideoFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
