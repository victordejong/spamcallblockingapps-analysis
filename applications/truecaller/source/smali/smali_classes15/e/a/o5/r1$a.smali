.class public final Le/a/o5/r1$a;
.super Le/a/o5/r1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/o5/r1;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/o5/r1$a;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/o5/r1$a;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Le/a/o5/r1$a;->a:Ljava/lang/String;

    .line 3
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    .line 4
    iget-object p1, p0, Le/a/o5/r1$a;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->d([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const p1, 0x7f120726

    .line 5
    invoke-virtual {v0, p1, v1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const/4 p1, 0x0

    .line 6
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean p1, v1, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 7
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method
