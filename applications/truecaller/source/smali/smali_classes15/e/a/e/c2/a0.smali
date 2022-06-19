.class public Le/a/e/c2/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/g0$b;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/DropdownMenuTextView;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/DropdownMenuTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c2/a0;->a:Lcom/truecaller/ui/components/DropdownMenuTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c2/a0;->a:Lcom/truecaller/ui/components/DropdownMenuTextView;

    .line 2
    iget-object v0, v0, Lcom/truecaller/ui/components/DropdownMenuTextView;->g:Ln3/b/f/g0$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ln3/b/f/g0$b;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
