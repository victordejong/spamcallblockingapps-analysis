.class final Lcom/hiya/stingray/ui/local/settings/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/n;->j1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/n;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/n;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/n$a;->f:Lcom/hiya/stingray/ui/local/settings/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/n$a;->f:Lcom/hiya/stingray/ui/local/settings/n;

    const-string v0, "finish_setting_up"

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/local/settings/n;->g1(Lcom/hiya/stingray/ui/local/settings/n;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/n$a;->f:Lcom/hiya/stingray/ui/local/settings/n;

    sget-object v0, Lcom/hiya/stingray/ui/onboarding/d;->u:Lcom/hiya/stingray/ui/onboarding/d$a;

    sget-object v1, Lcom/hiya/stingray/manager/d3$b;->RECOMMENDED:Lcom/hiya/stingray/manager/d3$b;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/onboarding/d$a;->a(Lcom/hiya/stingray/manager/d3$b;Z)Lcom/hiya/stingray/ui/onboarding/d;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/local/c;->a(Lcom/hiya/stingray/ui/common/i;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
