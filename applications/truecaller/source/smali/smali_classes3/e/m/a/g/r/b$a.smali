.class public Le/m/a/g/r/b$a;
.super Ln3/k/b/d/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/a/g/r/b;->c(Landroid/content/Context;Le/m/a/g/r/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/r/d;

.field public final synthetic b:Le/m/a/g/r/b;


# direct methods
.method public constructor <init>(Le/m/a/g/r/b;Le/m/a/g/r/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/r/b$a;->b:Le/m/a/g/r/b;

    iput-object p2, p0, Le/m/a/g/r/b$a;->a:Le/m/a/g/r/d;

    invoke-direct {p0}, Ln3/k/b/d/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/r/b$a;->b:Le/m/a/g/r/b;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/m/a/g/r/b;->m:Z

    .line 3
    iget-object v0, p0, Le/m/a/g/r/b$a;->a:Le/m/a/g/r/d;

    invoke-virtual {v0, p1}, Le/m/a/g/r/d;->a(I)V

    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/r/b$a;->b:Le/m/a/g/r/b;

    iget v1, v0, Le/m/a/g/r/b;->d:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 2
    iput-object p1, v0, Le/m/a/g/r/b;->n:Landroid/graphics/Typeface;

    .line 3
    iget-object p1, p0, Le/m/a/g/r/b$a;->b:Le/m/a/g/r/b;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Le/m/a/g/r/b;->m:Z

    .line 5
    iget-object v0, p0, Le/m/a/g/r/b$a;->a:Le/m/a/g/r/d;

    .line 6
    iget-object p1, p1, Le/m/a/g/r/b;->n:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Le/m/a/g/r/d;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
