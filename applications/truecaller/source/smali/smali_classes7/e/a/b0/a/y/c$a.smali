.class public final Le/a/b0/a/y/c$a;
.super Le/f/a/r/k/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/a/y/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/r/k/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Landroid/graphics/drawable/BitmapDrawable;

.field public final e:Landroid/content/Context;

.field public final f:Landroid/text/SpannableStringBuilder;

.field public final synthetic g:Le/a/b0/a/y/c;


# direct methods
.method public constructor <init>(Le/a/b0/a/y/c;Landroid/content/Context;Landroid/text/SpannableStringBuilder;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/text/SpannableStringBuilder;",
            "II)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spannableStringBuilder"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b0/a/y/c$a;->g:Le/a/b0/a/y/c;

    .line 2
    invoke-direct {p0, p4, p5}, Le/f/a/r/k/c;-><init>(II)V

    iput-object p2, p0, Le/a/b0/a/y/c$a;->e:Landroid/content/Context;

    iput-object p3, p0, Le/a/b0/a/y/c$a;->f:Landroid/text/SpannableStringBuilder;

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Le/a/b0/a/y/c$a;->d:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    .locals 6

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    const-string p2, "resource"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p2, p0, Le/a/b0/a/y/c$a;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Le/a/b0/a/y/c$a;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    iget-object v1, p0, Le/a/b0/a/y/c$a;->f:Landroid/text/SpannableStringBuilder;

    iget-object p1, p0, Le/a/b0/a/y/c$a;->g:Le/a/b0/a/y/c;

    .line 5
    iget-object v2, p1, Le/a/b0/a/y/c;->f:Ljava/lang/Integer;

    .line 6
    iget-object v3, p1, Le/a/b0/a/y/c;->j:Landroid/graphics/Paint$FontMetricsInt;

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 7
    invoke-static/range {v0 .. v5}, Le/a/p5/s0/g;->i(Landroid/graphics/drawable/Drawable;Landroid/text/SpannableStringBuilder;Ljava/lang/Integer;Landroid/graphics/Paint$FontMetricsInt;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Le/a/b0/a/y/c$a;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-object p1, p0, Le/a/b0/a/y/c$a;->f:Landroid/text/SpannableStringBuilder;

    .line 11
    iget-object p2, p0, Le/a/b0/a/y/c$a;->g:Le/a/b0/a/y/c;

    .line 12
    iget-object v0, p2, Le/a/b0/a/y/c;->h:Ljava/lang/CharSequence;

    .line 13
    iget v1, p2, Le/a/b0/a/y/c;->i:I

    .line 14
    iget v2, p2, Le/a/b0/a/y/d;->a:I

    .line 15
    iget p2, p2, Le/a/b0/a/y/d;->b:I

    .line 16
    invoke-static {v0, v1, v2, p2}, Le/a/n/g0;->Y(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string p2, "spannableStringBuilder.a\u2026ngEndIndex)\n            )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/b0/a/y/c$a;->f:Landroid/text/SpannableStringBuilder;

    .line 2
    iget-object v0, p0, Le/a/b0/a/y/c$a;->g:Le/a/b0/a/y/c;

    .line 3
    iget-object v1, v0, Le/a/b0/a/y/c;->h:Ljava/lang/CharSequence;

    .line 4
    iget v2, v0, Le/a/b0/a/y/c;->i:I

    .line 5
    iget v3, v0, Le/a/b0/a/y/d;->a:I

    .line 6
    iget v0, v0, Le/a/b0/a/y/d;->b:I

    .line 7
    invoke-static {v1, v2, v3, v0}, Le/a/n/g0;->Y(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string v0, "spannableStringBuilder.a\u2026ngEndIndex)\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method
