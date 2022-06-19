.class public final Le/a/b/a/a/c/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/c/d;-><init>(Le/a/p5/c0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/a/c/d;


# direct methods
.method public constructor <init>(Le/a/b/a/a/c/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/c/d$a;->b:Le/a/b/a/a/c/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/a/a/c/d$a;->b:Le/a/b/a/a/c/d;

    .line 2
    iget-object v0, v0, Le/a/b/a/a/c/d;->b:Le/a/p5/c0;

    .line 3
    sget v1, Lcom/truecaller/bizmon/R$dimen;->subCategoryBoxTextSize:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->H(I)I

    move-result v0

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 5
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v0, v0

    .line 6
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-object v1
.end method
