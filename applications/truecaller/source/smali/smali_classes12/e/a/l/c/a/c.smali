.class public final Le/a/l/c/a/c;
.super Le/a/l/c/a/g;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/b1;


# instance fields
.field public final d:Ls1/g;

.field public final e:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemEventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/l/c/a/g;-><init>(Landroid/view/View;Le/a/o2/m;)V

    const v0, 0x7f0a0174

    .line 2
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/l/c/a/c;->d:Ls1/g;

    const v0, 0x7f0a0c96

    .line 3
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/l/c/a/c;->e:Ls1/g;

    .line 4
    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    new-instance v0, Le/a/l/c/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Le/a/l/c/a/c$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Le/a/l/c/a/c;->O4()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    new-instance v0, Le/a/l/c/a/c$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p2}, Le/a/l/c/a/c$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final O4()Landroidx/appcompat/widget/SwitchCompat;
    .locals 1

    iget-object v0, p0, Le/a/l/c/a/c;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    return-object v0
.end method

.method public e2(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/c;->O4()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    const-string v1, "announceCallerIdSwitch"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method
