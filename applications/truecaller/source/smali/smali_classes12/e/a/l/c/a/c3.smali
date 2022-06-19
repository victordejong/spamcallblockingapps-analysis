.class public final Le/a/l/c/a/c3;
.super Le/a/l/c/a/g;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/c2;


# instance fields
.field public final d:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemEventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/l/c/a/g;-><init>(Landroid/view/View;Le/a/o2/m;)V

    const v0, 0x7f0a1425

    .line 2
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/l/c/a/c3;->d:Ls1/g;

    .line 3
    invoke-virtual {p0}, Le/a/l/c/a/c3;->O4()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    new-instance v0, Le/a/l/c/a/c3$a;

    invoke-direct {v0, p0, p2}, Le/a/l/c/a/c3$a;-><init>(Le/a/l/c/a/c3;Le/a/o2/m;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public M0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/c3;->O4()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    const-string v1, "whatsAppCallerIdSwitch"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public final O4()Landroidx/appcompat/widget/SwitchCompat;
    .locals 1

    iget-object v0, p0, Le/a/l/c/a/c3;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    return-object v0
.end method
