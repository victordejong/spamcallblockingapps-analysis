.class public final Le/a/m/a$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m/a;->z3(Ls1/k;Ls1/k;Ls1/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Landroid/text/style/CharacterStyle;",
        "Ljava/lang/Integer;",
        "Landroid/text/style/CharacterStyle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Le/a/m/q;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Le/a/m/q;)V
    .locals 0

    iput-object p1, p0, Le/a/m/a$e;->b:Landroid/widget/TextView;

    iput-object p2, p0, Le/a/m/a$e;->c:Le/a/m/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/text/style/CharacterStyle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    const-string p2, "style"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p2, p1, Landroid/text/style/URLSpan;

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Le/a/p5/w0/b;

    iget-object v0, p0, Le/a/m/a$e;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/wizard/R$color;->wizard_link_color:I

    const/4 v2, 0x0

    .line 4
    sget-object v3, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 6
    new-instance v1, Le/a/m/n;

    invoke-direct {v1, p0, p1}, Le/a/m/n;-><init>(Le/a/m/a$e;Landroid/text/style/CharacterStyle;)V

    invoke-direct {p2, v0, v1}, Le/a/p5/w0/b;-><init>(ILs1/z/b/a;)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method
