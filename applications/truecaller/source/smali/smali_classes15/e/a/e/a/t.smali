.class public final synthetic Le/a/e/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/j2;


# direct methods
.method public synthetic constructor <init>(Le/a/j2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/t;->a:Le/a/j2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/a/e/a/t;->a:Le/a/j2;

    .line 1
    sget v1, Le/a/e/a/k3;->s0:I

    .line 2
    invoke-interface {v0}, Le/a/j2;->X3()Le/a/l/p2/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Le/a/l/p2/i;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/j2;->X3()Le/a/l/p2/i;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->FRIEND_UPGRADED_TO_PREMIUM_NOTIFICATION:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 6
    iget-object v2, v0, Le/a/l/p2/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800d3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "BitmapFactory.decodeReso\u2026 R.drawable.avatar_empty)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Le/a/l/p2/i;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "Tester friend upgraded to Truecaller Premium"

    const-string v4, "Unlock Truecaller premium now!"

    .line 7
    invoke-virtual {v0, v1, v3, v4, v2}, Le/a/l/p2/i;->c(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
