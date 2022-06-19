.class public Lcom/truecaller/sdk/ConfirmProfileActivity$a;
.super Ln3/g0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/sdk/ConfirmProfileActivity;->M5(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/truecaller/sdk/ConfirmProfileActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/sdk/ConfirmProfileActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity$a;->b:Lcom/truecaller/sdk/ConfirmProfileActivity;

    iput-boolean p2, p0, Lcom/truecaller/sdk/ConfirmProfileActivity$a;->a:Z

    invoke-direct {p0}, Ln3/g0/p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ln3/g0/m;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity$a;->b:Lcom/truecaller/sdk/ConfirmProfileActivity;

    .line 2
    iget-object v0, p1, Lcom/truecaller/sdk/ConfirmProfileActivity;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 3
    iget-boolean v1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity$a;->a:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/truecaller/sdk/ConfirmProfileActivity;->m:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/truecaller/sdk/ConfirmProfileActivity;->l:Landroid/graphics/drawable/Drawable;

    :goto_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1, p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
