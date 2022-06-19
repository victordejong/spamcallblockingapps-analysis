.class public final synthetic Le/a/a/c/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/o1;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le/a/a/c/o1;->a:Le/a/a/c/y3;

    .line 1
    iget-object v0, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    iget-object p1, p1, Le/a/a/c/y3;->e1:Lcom/truecaller/common/ui/fab/FloatingActionButton;

    .line 2
    iget-boolean p1, p1, Lcom/truecaller/common/ui/fab/FloatingActionButton;->i:Z

    .line 3
    invoke-interface {v0, p1}, Le/a/a/c/f4;->B9(Z)V

    return-void
.end method
