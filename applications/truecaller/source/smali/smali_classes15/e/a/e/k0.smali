.class public final synthetic Le/a/e/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/AfterClipboardSearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/AfterClipboardSearchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/k0;->a:Lcom/truecaller/ui/AfterClipboardSearchActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/a/e/k0;->a:Lcom/truecaller/ui/AfterClipboardSearchActivity;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ln3/b/a/g$a;

    invoke-direct {v1, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Le/a/e/d;

    invoke-direct {v2, v0}, Le/a/e/d;-><init>(Lcom/truecaller/ui/AfterClipboardSearchActivity;)V

    const v3, 0x7f120745

    .line 3
    invoke-virtual {v1, v3, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    new-instance v2, Le/a/e/d;

    invoke-direct {v2, v0}, Le/a/e/d;-><init>(Lcom/truecaller/ui/AfterClipboardSearchActivity;)V

    const v3, 0x7f12071f

    .line 4
    invoke-virtual {v1, v3, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const v2, 0x7f12018a

    .line 5
    invoke-virtual {v1, v2}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    new-instance v2, Le/a/e/e;

    invoke-direct {v2, v0}, Le/a/e/e;-><init>(Lcom/truecaller/ui/AfterClipboardSearchActivity;)V

    .line 6
    iget-object v3, v1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->n:Landroid/content/DialogInterface$OnCancelListener;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v3, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 8
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object v1

    iput-object v1, v0, Lcom/truecaller/ui/AfterClipboardSearchActivity;->a:Ln3/b/a/g;

    .line 9
    invoke-static {}, Le/d/c/a/a;->m1()Le/a/q2/a;

    move-result-object v0

    const-string v1, "afterClipboardSearch"

    invoke-static {v1}, Le/a/q2/y0/a/a;->b(Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
