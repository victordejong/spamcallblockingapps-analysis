.class public Ln3/y/e/f$a;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/y/e/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/f;


# direct methods
.method public constructor <init>(Ln3/y/e/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/f$a;->a:Ln3/y/e/f;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontScaleChanged(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/f$a;->a:Ln3/y/e/f;

    iget-object v0, v0, Ln3/y/e/f;->e:Ln3/y/e/f$b;

    invoke-interface {v0, p1}, Ln3/y/e/f$b;->b(F)V

    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/e/f$a;->a:Ln3/y/e/f;

    new-instance v1, Ln3/y/e/a;

    invoke-direct {v1, p1}, Ln3/y/e/a;-><init>(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    iput-object v1, v0, Ln3/y/e/f;->c:Ln3/y/e/a;

    .line 2
    iget-object p1, p0, Ln3/y/e/f$a;->a:Ln3/y/e/f;

    iget-object v0, p1, Ln3/y/e/f;->e:Ln3/y/e/f$b;

    iget-object p1, p1, Ln3/y/e/f;->c:Ln3/y/e/a;

    invoke-interface {v0, p1}, Ln3/y/e/f$b;->a(Ln3/y/e/a;)V

    return-void
.end method
