.class public final Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;->a(Lcom/truecaller/details_view/ui/actionbutton/ActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/details_view/ui/actionbutton/ActionButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/details_view/ui/actionbutton/ActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView$a;->a:Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView$a;->a:Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    .line 2
    iget-object v0, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->g:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;

    invoke-interface {v0, p1}, Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;->dd(Lcom/truecaller/details_view/ui/actionbutton/ActionButton;)V

    return-void
.end method
