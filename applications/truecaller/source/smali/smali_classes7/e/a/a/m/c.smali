.class public final Le/a/a/m/c;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ls1/z/b/a;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ls1/z/b/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/m/c;->a:Ls1/z/b/a;

    iput-object p2, p0, Le/a/a/m/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/a/m/c;->a:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Le/a/a/m/c;->b:Landroid/content/Context;

    const-string v0, "https://support.truecaller.com/support/solutions/articles/81000401463-caller-id-and-spam-protection"

    invoke-static {v0, p1}, Le/a/p5/s0/g;->Q0(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
