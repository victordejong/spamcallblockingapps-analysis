.class public final synthetic Lcom/hiya/stingray/ui/login/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f:Lcom/hiya/stingray/ui/login/MarketingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/hiya/stingray/ui/login/MarketingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/a;->f:Lcom/hiya/stingray/ui/login/MarketingFragment;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/a;->f:Lcom/hiya/stingray/ui/login/MarketingFragment;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/login/MarketingFragment;->o1(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
