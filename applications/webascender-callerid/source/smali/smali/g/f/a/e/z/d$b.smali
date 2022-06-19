.class Lg/f/a/e/z/d$b;
.super Lg/f/a/e/z/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/a/e/z/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Lg/f/a/e/z/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Lg/f/a/e/z/f;

.field final synthetic c:Lg/f/a/e/z/d;


# direct methods
.method constructor <init>(Lg/f/a/e/z/d;Landroid/text/TextPaint;Lg/f/a/e/z/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/a/e/z/d$b;->c:Lg/f/a/e/z/d;

    iput-object p2, p0, Lg/f/a/e/z/d$b;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lg/f/a/e/z/d$b;->b:Lg/f/a/e/z/f;

    invoke-direct {p0}, Lg/f/a/e/z/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/e/z/d$b;->b:Lg/f/a/e/z/f;

    invoke-virtual {v0, p1}, Lg/f/a/e/z/f;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/a/e/z/d$b;->c:Lg/f/a/e/z/d;

    iget-object v1, p0, Lg/f/a/e/z/d$b;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lg/f/a/e/z/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lg/f/a/e/z/d$b;->b:Lg/f/a/e/z/f;

    invoke-virtual {v0, p1, p2}, Lg/f/a/e/z/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
