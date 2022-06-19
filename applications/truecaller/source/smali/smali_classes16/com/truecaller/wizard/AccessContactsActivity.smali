.class public Lcom/truecaller/wizard/AccessContactsActivity;
.super Le/a/r/l;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public d:Le/a/p5/a0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/n5/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/truecaller/wizard/R$id;->deny_button:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/truecaller/wizard/AccessContactsActivity;->pa(Z)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/truecaller/wizard/R$id;->allow_button:I

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/truecaller/wizard/AccessContactsActivity;->d:Le/a/p5/a0;

    const-string v0, "android.permission.READ_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lcom/truecaller/wizard/AccessContactsActivity;->pa(Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0, v0, v1}, Le/a/p5/s0/g;->c1(Landroid/app/Activity;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/truecaller/wizard/R$layout;->wizard_view_access_contacts:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 3
    sget p1, Lcom/truecaller/wizard/R$id;->deny_button:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget p1, Lcom/truecaller/wizard/R$id;->allow_button:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    invoke-static {p2, p3}, Le/a/p5/s0/g;->M0([Ljava/lang/String;[I)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/wizard/AccessContactsActivity;->d:Le/a/p5/a0;

    const-string p2, "android.permission.READ_CONTACTS"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/truecaller/wizard/AccessContactsActivity;->pa(Z)V

    :cond_0
    return-void
.end method

.method public final pa(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccessContactsActivity;->e:Le/a/n5/c;

    invoke-interface {v0, p1}, Le/a/n5/c;->b(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
