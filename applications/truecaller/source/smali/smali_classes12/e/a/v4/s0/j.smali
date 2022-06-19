.class public final Le/a/v4/s0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatCheckedTextView;

.field public final synthetic b:Le/a/v4/s0/i;

.field public final synthetic c:Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/AppCompatCheckedTextView;Le/a/v4/s0/i;Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;)V
    .locals 0

    iput-object p1, p0, Le/a/v4/s0/j;->a:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    iput-object p2, p0, Le/a/v4/s0/j;->b:Le/a/v4/s0/i;

    iput-object p3, p0, Le/a/v4/s0/j;->c:Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/v4/s0/j;->a:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->toggle()V

    .line 2
    iget-object p1, p0, Le/a/v4/s0/j;->c:Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;

    iget-object v0, p0, Le/a/v4/s0/j;->a:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/truecaller/sdk/oAuth/networking/data/ScopeInfo;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Le/a/v4/s0/j;->b:Le/a/v4/s0/i;

    .line 4
    iget-object p1, p1, Le/a/v4/s0/i;->b:Le/a/v4/s0/h;

    .line 5
    iget-object v0, p0, Le/a/v4/s0/j;->a:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/v4/s0/h;->X7(Z)V

    return-void
.end method
