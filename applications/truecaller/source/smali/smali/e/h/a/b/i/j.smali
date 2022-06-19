.class public final Le/h/a/b/i/j;
.super Le/h/a/b/i/l;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/ProductDisplayNonLinearSmallContentView;",
        "Lcom/clevertap/android/pushtemplates/content/SmallContentView;",
        "context",
        "Landroid/content/Context;",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "(Landroid/content/Context;Lcom/clevertap/android/pushtemplates/TemplateRenderer;)V",
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
.method public constructor <init>(Landroid/content/Context;Le/h/a/b/d;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/clevertap/android/pushtemplates/R$layout;->content_view_small_single_line_msg:I

    invoke-direct {p0, p1, p2, v0}, Le/h/a/b/i/l;-><init>(Landroid/content/Context;Le/h/a/b/d;I)V

    return-void
.end method
