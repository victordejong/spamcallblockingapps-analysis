.class public Le/a/o5/c2/k$a;
.super Le/a/o5/c2/k$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o5/c2/k;->b(Landroid/content/Context;)Le/a/o5/c2/k$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Le/a/o5/c2/k;Landroid/content/Context;Z)V
    .locals 1

    .line 1
    iput-object p2, p0, Le/a/o5/c2/k$a;->d:Landroid/content/Context;

    iput-boolean p3, p0, Le/a/o5/c2/k$a;->e:Z

    invoke-direct {p0, p1}, Le/a/o5/c2/k$c;-><init>(Le/a/o5/c2/k;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/truecaller/TrueApp;

    invoke-virtual {p1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Le/a/j2;->V()Le/a/b0/e/f;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Le/a/b0/e/f;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0816a9

    goto :goto_0

    :cond_0
    const p1, 0x7f080807

    .line 5
    :goto_0
    iput p1, p0, Le/a/o5/c2/k$c;->a:I

    const p1, 0x7f06068b

    .line 6
    sget-object v0, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 7
    invoke-static {p2, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 8
    iput p1, p0, Le/a/o5/c2/k$c;->b:I

    if-eqz p3, :cond_1

    const p1, 0x7f0602a3

    goto :goto_1

    :cond_1
    const p1, 0x7f0602a4

    .line 9
    :goto_1
    invoke-static {p2, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    .line 10
    iput p1, p0, Le/a/o5/c2/k$c;->c:I

    return-void
.end method
