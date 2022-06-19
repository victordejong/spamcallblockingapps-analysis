.class public Le/h/a/b/i/l;
.super Le/h/a/b/i/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/SmallContentView;",
        "Lcom/clevertap/android/pushtemplates/content/ContentView;",
        "context",
        "Landroid/content/Context;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "layoutId",
        "",
        "(Landroid/content/Context;Lcom/clevertap/android/pushtemplates/TemplateRenderer;I)V",
        "clevertap-pushtemplates_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/h/a/b/d;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3, p2}, Le/h/a/b/i/c;-><init>(Landroid/content/Context;ILe/h/a/b/d;)V

    .line 2
    invoke-virtual {p0}, Le/h/a/b/i/c;->a()V

    .line 3
    iget-object p1, p2, Le/h/a/b/d;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->i(Ljava/lang/String;)V

    .line 5
    iget-object p1, p2, Le/h/a/b/d;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->f(Ljava/lang/String;)V

    .line 7
    iget-object p1, p2, Le/h/a/b/d;->r:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->b(Ljava/lang/String;)V

    .line 9
    iget-object p1, p2, Le/h/a/b/d;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->j(Ljava/lang/String;)V

    .line 11
    iget-object p1, p2, Le/h/a/b/d;->i:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->g(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Le/h/a/b/i/c;->h()V

    .line 14
    invoke-virtual {p0}, Le/h/a/b/i/c;->c()V

    .line 15
    iget-object p1, p2, Le/h/a/b/d;->f:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p1}, Le/h/a/b/i/c;->e(Ljava/lang/String;)V

    return-void
.end method
