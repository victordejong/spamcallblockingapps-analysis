.class public final Le/a/j5/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j5/a/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Landroid/content/Context;

.field public final e:Le/a/p5/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/j5/a/b;->d:Landroid/content/Context;

    iput-object p2, p0, Le/a/j5/a/b;->e:Le/a/p5/g;

    const-string p1, "com.whatsapp"

    .line 2
    iput-object p1, p0, Le/a/j5/a/b;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Le/a/j5/a/b$a;

    invoke-direct {p1, p0}, Le/a/j5/a/b$a;-><init>(Le/a/j5/a/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/j5/a/b;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/j5/a/b$b;

    invoke-direct {p1, p0}, Le/a/j5/a/b$b;-><init>(Le/a/j5/a/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/j5/a/b;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Le/a/k3/l/d;
    .locals 7

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/j5/a/b;->e:Le/a/p5/g;

    iget-object v1, p0, Le/a/j5/a/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/p5/g;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le/a/k3/l/d;

    .line 3
    iget-object v1, p0, Le/a/j5/a/b;->c:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Le/a/j5/a/b;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/Drawable;

    const-string v1, "https://api.whatsapp.com/send?phone="

    const-string v4, "&text="

    .line 5
    invoke-static {v1, p1, v4}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    new-instance v4, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {v4, p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7
    iget-object p1, p0, Le/a/j5/a/b;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 8
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    iget-object v5, p0, Le/a/j5/a/b;->a:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Le/a/j5/a/b;->c:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    move-object v1, v0

    .line 11
    invoke-direct/range {v1 .. v6}, Le/a/k3/l/d;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
