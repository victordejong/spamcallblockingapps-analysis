.class Lg/f/a/e/z/d$a;
.super Landroidx/core/content/c/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/a/e/z/d;->h(Landroid/content/Context;Lg/f/a/e/z/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/f/a/e/z/f;

.field final synthetic b:Lg/f/a/e/z/d;


# direct methods
.method constructor <init>(Lg/f/a/e/z/d;Lg/f/a/e/z/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/a/e/z/d$a;->b:Lg/f/a/e/z/d;

    iput-object p2, p0, Lg/f/a/e/z/d$a;->a:Lg/f/a/e/z/f;

    invoke-direct {p0}, Landroidx/core/content/c/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/a/e/z/d$a;->b:Lg/f/a/e/z/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lg/f/a/e/z/d;->c(Lg/f/a/e/z/d;Z)Z

    .line 2
    iget-object v0, p0, Lg/f/a/e/z/d$a;->a:Lg/f/a/e/z/f;

    invoke-virtual {v0, p1}, Lg/f/a/e/z/f;->a(I)V

    return-void
.end method

.method public d(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/a/e/z/d$a;->b:Lg/f/a/e/z/d;

    iget v1, v0, Lg/f/a/e/z/d;->d:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Lg/f/a/e/z/d;->b(Lg/f/a/e/z/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object p1, p0, Lg/f/a/e/z/d$a;->b:Lg/f/a/e/z/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lg/f/a/e/z/d;->c(Lg/f/a/e/z/d;Z)Z

    .line 3
    iget-object p1, p0, Lg/f/a/e/z/d$a;->a:Lg/f/a/e/z/f;

    iget-object v0, p0, Lg/f/a/e/z/d$a;->b:Lg/f/a/e/z/d;

    invoke-static {v0}, Lg/f/a/e/z/d;->a(Lg/f/a/e/z/d;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lg/f/a/e/z/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
