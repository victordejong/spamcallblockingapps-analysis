.class public final Le/a/f/a/a/o/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/a/a/o/a;
.implements Le/a/f/a/a/o/d;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Le/a/f/a/a/o/c;


# direct methods
.method public constructor <init>(Le/a/f/a/a/o/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/a/a/o/b;->b:Le/a/f/a/a/o/c;

    .line 2
    check-cast p1, Le/a/u2/a/b;

    .line 3
    iput-object p0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public S()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f/a/a/o/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 2
    sget v3, Lcom/truecaller/incallui/R$string;->incallui_reject_message_first_option:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 3
    sget v3, Lcom/truecaller/incallui/R$string;->incallui_reject_message_second_option:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 4
    sget v3, Lcom/truecaller/incallui/R$string;->incallui_reject_message_third_option:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 5
    sget v3, Lcom/truecaller/incallui/R$string;->incallui_reject_message_custom_option:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 6
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7
    new-instance v2, Ln3/b/a/g$a;

    sget v3, Lcom/truecaller/incallui/R$style;->InCallUI_AlertDialog:I

    invoke-direct {v2, v0, v3}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;I)V

    .line 8
    sget v0, Lcom/truecaller/incallui/R$array;->incallui_button_message_options:I

    new-instance v3, Le/a/f/a/a/o/b$d;

    invoke-direct {v3, p0, v1}, Le/a/f/a/a/o/b$d;-><init>(Le/a/f/a/a/o/b;Ljava/util/List;)V

    invoke-virtual {v2, v0, v3}, Ln3/b/a/g$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 9
    invoke-virtual {v2}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    :cond_0
    return-void
.end method

.method public T()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/f/a/a/o/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    sget v2, Lcom/truecaller/incallui/R$color;->incallui_color_white:I

    .line 5
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 6
    invoke-static {v0, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    .line 8
    invoke-static {v1, v2, v3, v4, v5}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    .line 9
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v3, 0x3c

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v2, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 12
    new-instance v3, Ln3/b/a/g$a;

    sget v5, Lcom/truecaller/incallui/R$style;->InCallUI_AlertDialog:I

    invoke-direct {v3, v0, v5}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;I)V

    .line 13
    sget v0, Lcom/truecaller/incallui/R$string;->incallui_reject_message_custom_option:I

    invoke-virtual {v3, v0}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 14
    iget-object v0, v3, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v2, v0, Landroidx/appcompat/app/AlertController$b;->u:Landroid/view/View;

    .line 15
    iput v4, v0, Landroidx/appcompat/app/AlertController$b;->t:I

    .line 16
    sget v0, Lcom/truecaller/incallui/R$string;->incallui_reject_message_custom_send:I

    new-instance v2, Le/a/f/a/a/o/b$a;

    invoke-direct {v2, p0, v1}, Le/a/f/a/a/o/b$a;-><init>(Le/a/f/a/a/o/b;Landroid/widget/EditText;)V

    invoke-virtual {v3, v0, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 17
    sget v0, Lcom/truecaller/incallui/R$string;->StrCancel:I

    sget-object v2, Le/a/f/a/a/o/b$b;->a:Le/a/f/a/a/o/b$b;

    invoke-virtual {v3, v0, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 18
    new-instance v0, Le/a/f/a/a/o/b$c;

    invoke-direct {v0, v1}, Le/a/f/a/a/o/b$c;-><init>(Landroid/widget/EditText;)V

    .line 19
    iget-object v1, v3, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->o:Landroid/content/DialogInterface$OnDismissListener;

    .line 20
    invoke-virtual {v3}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    :cond_0
    return-void
.end method
