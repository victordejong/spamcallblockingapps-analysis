.class public abstract Le/a/w4/s/n0;
.super Le/a/e/c2/t$b;
.source "SourceFile"

# interfaces
.implements Le/a/w4/s/r0;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z

.field public final d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/a/e/c2/t$b;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0b6a

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Le/a/w4/s/n0;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/w4/s/n0;->c:Z

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/s/n0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public Y3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/w4/s/n0;->c:Z

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/w4/s/n0;->b:Ljava/lang/String;

    return-void
.end method
