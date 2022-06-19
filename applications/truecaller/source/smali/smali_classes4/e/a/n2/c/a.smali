.class public final Le/a/n2/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/a/n2/c/a$a;->b:Le/a/n2/c/a$a;

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    sput-object v0, Le/a/n2/c/a;->a:Ls1/g;

    return-void
.end method

.method public static final a(Le/a/o5/j;Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "appListener"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/o5/j;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    instance-of p0, p1, Lcom/truecaller/suspension/ui/SuspensionActivity;

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Le/a/n2/c/a;->a:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-static {p0, p1}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
