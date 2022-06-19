.class Lzendesk/support/request/ComponentInputForm$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ComponentInputForm;->update(Lzendesk/support/request/ComponentInputForm$InputFormModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$inputFormModel:Lzendesk/support/request/ComponentInputForm$InputFormModel;


# direct methods
.method constructor <init>(Lzendesk/support/request/ComponentInputForm;Lzendesk/support/request/ComponentInputForm$InputFormModel;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lzendesk/support/request/ComponentInputForm$2;->val$inputFormModel:Lzendesk/support/request/ComponentInputForm$InputFormModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzendesk/support/request/ComponentInputForm$2;->val$inputFormModel:Lzendesk/support/request/ComponentInputForm$InputFormModel;

    invoke-virtual {v1}, Lzendesk/support/request/ComponentInputForm$InputFormModel;->getReferrerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
