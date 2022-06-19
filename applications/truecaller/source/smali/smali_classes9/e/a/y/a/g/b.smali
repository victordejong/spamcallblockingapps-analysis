.class public final Le/a/y/a/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/y/a/g/c;

.field public final synthetic b:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;


# direct methods
.method public constructor <init>(Le/a/y/a/g/c;Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Le/a/y/a/g/b;->a:Le/a/y/a/g/c;

    iput-object p2, p0, Le/a/y/a/g/b;->b:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/y/a/g/b;->b:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    .line 2
    iget-object p1, p1, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->b:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/y/a/g/b;->a:Le/a/y/a/g/c;

    .line 4
    iget v0, v0, Le/a/y/a/g/c;->a:I

    .line 5
    invoke-interface {p1, v0}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton$a;->u0(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/y/a/g/b;->b:Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/customviews/FlashAttachButton;->c()V

    return-void
.end method
