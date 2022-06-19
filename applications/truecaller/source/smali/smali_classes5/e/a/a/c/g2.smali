.class public final synthetic Le/a/a/c/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;ZLandroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/g2;->a:Le/a/a/c/y3;

    iput-boolean p2, p0, Le/a/a/c/g2;->b:Z

    iput-object p3, p0, Le/a/a/c/g2;->c:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Le/a/a/c/g2;->a:Le/a/a/c/y3;

    iget-boolean p2, p0, Le/a/a/c/g2;->b:Z

    iget-object v0, p0, Le/a/a/c/g2;->c:Landroid/widget/CheckBox;

    .line 1
    iget-object p1, p1, Le/a/a/c/y3;->f:Le/a/a/c/n4;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-interface {p1, p2, v0}, Le/a/a/c/n4;->o2(ZZ)V

    return-void
.end method
