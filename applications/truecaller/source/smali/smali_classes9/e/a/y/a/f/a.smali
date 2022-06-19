.class public final Le/a/y/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/y/a/f/b$a;


# direct methods
.method public constructor <init>(Le/a/y/a/f/b$a;)V
    .locals 0

    iput-object p1, p0, Le/a/y/a/f/a;->a:Le/a/y/a/f/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$id;->flash_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/flashsdk/ui/FlashButton;

    .line 2
    invoke-virtual {v0, p1}, Lcom/truecaller/flashsdk/ui/FlashButton;->onClick(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Le/a/y/a/f/a;->a:Le/a/y/a/f/b$a;

    iget-object p1, p1, Le/a/y/a/f/b$a;->d:Le/a/y/a/f/b;

    .line 4
    iget-object p1, p1, Le/a/y/a/f/b;->b:Le/a/y/a/f/f;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Le/a/y/a/f/f;->Ja()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
