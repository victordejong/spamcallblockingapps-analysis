.class public final synthetic Le/a/e/a/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/q1;->a:Le/a/e/a/k3;

    iput-object p2, p0, Le/a/e/a/q1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Le/a/e/a/q1;->a:Le/a/e/a/k3;

    iget-object v0, p0, Le/a/e/a/q1;->b:Ljava/util/List;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i5/d;

    invoke-static {v1}, Le/a/i5/a;->i(Le/a/i5/d;)V

    .line 3
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/j2;->B2()Le/a/w3/i;

    move-result-object v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i5/d;

    invoke-interface {v1, v2}, Le/a/w3/i;->a(Le/a/i5/d;)V

    .line 4
    invoke-virtual {p1}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Theme set to "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/i5/d;

    .line 5
    iget v3, v3, Le/a/i5/d;->b:I

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 7
    invoke-virtual {p1}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/i5/d;

    .line 8
    iget p2, p2, Le/a/i5/d;->c:I

    .line 9
    invoke-virtual {v1, p2}, Landroid/content/Context;->setTheme(I)V

    .line 10
    invoke-virtual {p1}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const-string v1, "calls"

    .line 11
    invoke-static {p1, v1, p2, v0}, Lcom/truecaller/ui/TruecallerInit;->Va(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
