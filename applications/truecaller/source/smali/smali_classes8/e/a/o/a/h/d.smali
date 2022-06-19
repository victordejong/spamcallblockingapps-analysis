.class public final Le/a/o/a/h/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
.field public final synthetic b:Le/a/o/a/h/b;


# direct methods
.method public constructor <init>(Le/a/o/a/h/b;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/h/d;->b:Le/a/o/a/h/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/text/style/CharacterStyle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    const-string p2, "style"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of p2, p1, Landroid/text/style/URLSpan;

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Le/a/p5/w0/b;

    iget-object v0, p0, Le/a/o/a/h/d;->b:Le/a/o/a/h/b;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/contextcall/R$color;->context_call_link:I

    .line 5
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 6
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 7
    new-instance v1, Le/a/o/a/h/c;

    invoke-direct {v1, p0, p1}, Le/a/o/a/h/c;-><init>(Le/a/o/a/h/d;Landroid/text/style/CharacterStyle;)V

    invoke-direct {p2, v0, v1}, Le/a/p5/w0/b;-><init>(ILs1/z/b/a;)V

    move-object p1, p2

    :cond_0
    return-object p1
.end method
