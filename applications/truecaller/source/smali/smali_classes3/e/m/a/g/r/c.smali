.class public Le/m/a/g/r/c;
.super Le/m/a/g/r/d;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/text/TextPaint;

.field public final synthetic b:Le/m/a/g/r/d;

.field public final synthetic c:Le/m/a/g/r/b;


# direct methods
.method public constructor <init>(Le/m/a/g/r/b;Landroid/text/TextPaint;Le/m/a/g/r/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/r/c;->c:Le/m/a/g/r/b;

    iput-object p2, p0, Le/m/a/g/r/c;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Le/m/a/g/r/c;->b:Le/m/a/g/r/d;

    invoke-direct {p0}, Le/m/a/g/r/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/r/c;->b:Le/m/a/g/r/d;

    invoke-virtual {v0, p1}, Le/m/a/g/r/d;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/r/c;->c:Le/m/a/g/r/b;

    iget-object v1, p0, Le/m/a/g/r/c;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Le/m/a/g/r/b;->g(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Le/m/a/g/r/c;->b:Le/m/a/g/r/d;

    invoke-virtual {v0, p1, p2}, Le/m/a/g/r/d;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
