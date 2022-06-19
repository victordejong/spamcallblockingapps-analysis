.class public final synthetic Le/a/e/c/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/y0;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Le/a/e/c/y0;->a:Le/a/e/c/s1;

    .line 1
    iget-object p2, p1, Le/a/e/c/s1;->O0:Le/a/l/a2;

    iget-object p1, p1, Le/a/e/c/s1;->s:Ln3/b/a/h;

    sget-object v0, Lcom/truecaller/premium/PremiumLaunchContext;->CONTACT_REQ:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p2, p1, v0}, Le/a/l/a2;->b(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;)V

    return-void
.end method
