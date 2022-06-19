.class public final synthetic Le/a/e/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit$g;

.field public final synthetic b:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/TruecallerInit$g;Lcom/truecaller/ui/TruecallerInit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/w;->a:Lcom/truecaller/ui/TruecallerInit$g;

    iput-object p2, p0, Le/a/e/w;->b:Lcom/truecaller/ui/TruecallerInit;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Le/a/e/w;->a:Lcom/truecaller/ui/TruecallerInit$g;

    iget-object p2, p0, Le/a/e/w;->b:Lcom/truecaller/ui/TruecallerInit;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/truecaller/ui/WizardActivity;

    sget-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->BLOCKING:Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "blocked"

    invoke-static {p2, v0, v2, v1}, Le/a/r/t/c;->Ca(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    .line 3
    iget-object p2, p1, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 4
    iget-object p1, p1, Lcom/truecaller/ui/TruecallerInit$g;->d:Lcom/truecaller/ui/TruecallerInit;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
