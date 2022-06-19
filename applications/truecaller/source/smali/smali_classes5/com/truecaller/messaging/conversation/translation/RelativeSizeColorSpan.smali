.class public final Lcom/truecaller/messaging/conversation/translation/RelativeSizeColorSpan;
.super Landroid/text/style/RelativeSizeSpan;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iput p2, p0, Lcom/truecaller/messaging/conversation/translation/RelativeSizeColorSpan;->a:I

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "textPaint"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/RelativeSizeSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    iget v0, p0, Lcom/truecaller/messaging/conversation/translation/RelativeSizeColorSpan;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
