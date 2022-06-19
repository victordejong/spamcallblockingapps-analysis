.class Lf/h/l/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/h/l/t;->w0(Landroid/view/View;Lf/h/l/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/h/l/p;


# direct methods
.method constructor <init>(Lf/h/l/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/h/l/t$a;->a:Lf/h/l/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    invoke-static {p2}, Lf/h/l/b0;->o(Landroid/view/WindowInsets;)Lf/h/l/b0;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lf/h/l/t$a;->a:Lf/h/l/p;

    invoke-interface {v0, p1, p2}, Lf/h/l/p;->a(Landroid/view/View;Lf/h/l/b0;)Lf/h/l/b0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lf/h/l/b0;->n()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
