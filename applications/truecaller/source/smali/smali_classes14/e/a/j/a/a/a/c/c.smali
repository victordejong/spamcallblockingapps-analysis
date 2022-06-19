.class public final Le/a/j/a/a/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Landroid/widget/RadioButton;

.field public final synthetic b:Le/a/j/a/a/a/c/a$e$b;

.field public final synthetic c:Le/a/j/a/a/a/c/f;


# direct methods
.method public constructor <init>(Landroid/widget/RadioButton;Le/a/j/a/a/a/c/a$e$b;Le/a/j/a/a/a/c/f;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/a/c/c;->a:Landroid/widget/RadioButton;

    iput-object p2, p0, Le/a/j/a/a/a/c/c;->b:Le/a/j/a/a/a/c/a$e$b;

    iput-object p3, p0, Le/a/j/a/a/a/c/c;->c:Le/a/j/a/a/a/c/f;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Le/a/j/a/a/a/c/c;->a:Landroid/widget/RadioButton;

    new-instance p2, Le/a/j/a/a/a/c/c$a;

    invoke-direct {p2, p0}, Le/a/j/a/a/a/c/c$a;-><init>(Le/a/j/a/a/a/c/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
