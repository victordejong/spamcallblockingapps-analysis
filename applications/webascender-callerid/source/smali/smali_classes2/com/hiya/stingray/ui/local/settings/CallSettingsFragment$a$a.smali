.class final Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;

.field final synthetic g:I


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;

    iput p2, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a$a;->g:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a$a;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;

    invoke-static {v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;->a(Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;)Lkotlin/w/b/l;

    move-result-object v0

    iget v1, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a$a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a$a;->f:Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/settings/CallSettingsFragment$a;->b()Landroidx/appcompat/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/g;->dismiss()V

    return-void
.end method
