.class public final Le/a/v/a/j0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;Z)V
    .locals 1

    const-string v0, "optionMenu"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/a/j0/a;->a:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    iput-boolean p2, p0, Le/a/v/a/j0/a;->b:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/v/a/j0/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/v/a/j0/a;

    iget-object v0, p0, Le/a/v/a/j0/a;->a:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    iget-object v1, p1, Le/a/v/a/j0/a;->a:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/v/a/j0/a;->b:Z

    iget-boolean p1, p1, Le/a/v/a/j0/a;->b:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Le/a/v/a/j0/a;->a:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/v/a/j0/a;->b:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "OptionMenuItem(optionMenu="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/v/a/j0/a;->a:Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/v/a/j0/a;->b:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
