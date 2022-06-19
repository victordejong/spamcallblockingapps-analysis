.class public final Lcom/truecaller/swish/ui/input/SwishInputActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/swish/ui/input/SwishInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/swish/ui/input/SwishInputActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/swish/ui/input/SwishInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity$b;->a:Lcom/truecaller/swish/ui/input/SwishInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity$b;->a:Lcom/truecaller/swish/ui/input/SwishInputActivity;

    .line 2
    iget-object v0, v0, Lcom/truecaller/swish/ui/input/SwishInputActivity;->d:Le/a/f5/h/a/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const-string v2, "source"

    .line 3
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dest"

    invoke-static {p4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-interface {p4, p5, p6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 7
    invoke-interface {p4, p3, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 8
    invoke-static {p5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    .line 9
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p4, p6, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 10
    iget-object p5, v0, Le/a/f5/h/a/e;->c:Ls1/f0/h;

    invoke-virtual {p5, p4}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 11
    invoke-virtual {v0, p4}, Le/a/f5/h/a/e;->Hj(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p5

    if-eqz p5, :cond_5

    .line 12
    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    int-to-double v4, p3

    cmpg-double p6, v2, v4

    if-ltz p6, :cond_5

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const p6, 0x249f0

    int-to-double v4, p6

    cmpl-double p6, v2, v4

    if-lez p6, :cond_0

    goto :goto_2

    .line 13
    :cond_0
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f5/h/a/d;

    const/4 p6, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    int-to-double v4, p6

    cmpl-double p5, v2, v4

    if-ltz p5, :cond_1

    move p5, p6

    goto :goto_0

    :cond_1
    move p5, p3

    :goto_0
    invoke-interface {p2, p5}, Le/a/f5/h/a/d;->A0(Z)V

    .line 14
    :cond_2
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f5/h/a/d;

    if-eqz p2, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_3

    goto :goto_1

    :cond_3
    move p6, p3

    :goto_1
    invoke-interface {p2, p6}, Le/a/f5/h/a/d;->j9(Z)V

    :cond_4
    const/4 p2, 0x2

    const-string p4, "."

    .line 15
    invoke-static {p1, p4, p3, p2}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x4

    const-string p5, ","

    .line 16
    invoke-static {p1, p4, p5, p3, p2}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    :goto_2
    move-object v1, p2

    :cond_6
    :goto_3
    return-object v1

    :cond_7
    const-string p1, "presenter"

    .line 17
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
