.class public final Le/a/i/e/g/a/f/b/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/g/a/f/b/j;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/e/g/a/f/b/j;


# direct methods
.method public constructor <init>(Le/a/i/e/g/a/f/b/j;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/g/a/f/b/j$a;->a:Le/a/i/e/g/a/f/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    .line 2
    iget-object p2, p0, Le/a/i/e/g/a/f/b/j$a;->a:Le/a/i/e/g/a/f/b/j;

    .line 3
    iget-object v0, p2, Le/a/i/e/g/a/f/b/j;->h:Le/a/i/e/g/a/f/b/h;

    .line 4
    iget-object p2, p2, Le/a/i/e/g/a/f/b/j;->f:Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;

    .line 5
    iget-object p2, p2, Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;->h:Ljava/lang/String;

    const-string v1, "button"

    .line 6
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Le/a/i/e/g/a/f/b/h;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Le/a/i/e/g/a/f/b/j$a;->a:Le/a/i/e/g/a/f/b/j;

    .line 8
    invoke-virtual {p1}, Le/a/i/e/g/a/f/b/j;->e()Landroid/widget/TextView;

    move-result-object p1

    .line 9
    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method
