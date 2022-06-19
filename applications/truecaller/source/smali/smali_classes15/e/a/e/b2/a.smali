.class public final synthetic Le/a/e/b2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/b2/a;->a:Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Le/a/e/b2/a;->a:Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
