.class public final Le/a/c/a/c/h/l/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/h/l/g;->W4(Le/a/c/a/l/b$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/c/h/l/g;

.field public final synthetic b:Le/a/c/a/l/b$g;


# direct methods
.method public constructor <init>(Le/a/c/a/c/h/l/g;Le/a/c/a/l/b$g;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/l/g$b;->a:Le/a/c/a/c/h/l/g;

    iput-object p2, p0, Le/a/c/a/c/h/l/g$b;->b:Le/a/c/a/l/b$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget-object v1, p0, Le/a/c/a/c/h/l/g$b;->a:Le/a/c/a/c/h/l/g;

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/a/c/h/l/g$b;->b:Le/a/c/a/l/b$g;

    .line 2
    iget-wide v4, v0, Le/a/c/a/l/b$g;->a:J

    .line 3
    iget-object v9, v0, Le/a/c/a/l/b$g;->k:Ljava/util/List;

    .line 4
    iget-object v6, v0, Le/a/c/a/l/b$g;->s:Le/a/c/r/j/p;

    .line 5
    iget-boolean v7, v0, Le/a/c/a/l/b$g;->r:Z

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v10, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/truecaller/insights/ui/R$style;->TCXPopup:I

    invoke-direct {v10, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 8
    new-instance v11, Ln3/b/e/i/g;

    invoke-direct {v11, v10}, Ln3/b/e/i/g;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v12, Le/a/c/a/c/h/l/f;

    move-object v0, v12

    move-object v2, v9

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Le/a/c/a/c/h/l/f;-><init>(Le/a/c/a/c/h/l/g;Ljava/util/List;Landroid/view/View;JLe/a/c/r/j/p;Z)V

    .line 10
    iput-object v12, v11, Ln3/b/e/i/g;->e:Ln3/b/e/i/g$a;

    .line 11
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/a/l/c;

    .line 12
    iget-object v2, v1, Le/a/c/a/l/c;->b:Le/a/c/r/j/a;

    .line 13
    instance-of v3, v2, Le/a/c/r/j/a$c;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sget v2, Lcom/truecaller/insights/ui/R$id;->dismiss:I

    .line 14
    iget-object v1, v1, Le/a/c/a/l/c;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v11, v4, v2, v4, v1}, Ln3/b/e/i/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 16
    sget v2, Lcom/truecaller/insights/ui/R$drawable;->ic_overflow_dismiss:I

    check-cast v1, Ln3/b/e/i/i;

    invoke-virtual {v1, v2}, Ln3/b/e/i/i;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 17
    :cond_1
    instance-of v2, v2, Le/a/c/r/j/a$g;

    if-eqz v2, :cond_0

    sget v2, Lcom/truecaller/insights/ui/R$id;->send_feedback:I

    .line 18
    iget-object v1, v1, Le/a/c/a/l/c;->a:Ljava/lang/String;

    .line 19
    invoke-virtual {v11, v4, v2, v4, v1}, Ln3/b/e/i/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 20
    sget v2, Lcom/truecaller/insights/ui/R$drawable;->ic_overflow_alert_icon:I

    check-cast v1, Ln3/b/e/i/i;

    invoke-virtual {v1, v2}, Ln3/b/e/i/i;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 21
    :cond_2
    new-instance v0, Ln3/b/e/i/l;

    .line 22
    sget v7, Landroidx/appcompat/R$attr;->popupMenuStyle:I

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v10

    move-object v4, v11

    move-object v5, p1

    move v8, v1

    invoke-direct/range {v2 .. v8}, Ln3/b/e/i/l;-><init>(Landroid/content/Context;Ln3/b/e/i/g;Landroid/view/View;ZII)V

    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Ln3/b/e/i/l;->d(Z)V

    .line 24
    invoke-virtual {v0}, Ln3/b/e/i/l;->f()V

    return-void
.end method
