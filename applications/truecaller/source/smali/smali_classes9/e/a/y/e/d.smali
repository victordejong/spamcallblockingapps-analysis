.class public final synthetic Le/a/y/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/y/e/j$b;


# direct methods
.method public synthetic constructor <init>(Le/a/y/e/j$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/e/d;->a:Le/a/y/e/j$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le/a/y/e/d;->a:Le/a/y/e/j$b;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/y/e/i;

    .line 3
    iget-object v0, v0, Le/a/y/e/j$b;->b:Le/a/y/e/j;

    .line 4
    iget-object v0, v0, Le/a/y/e/j;->a:Le/a/y/e/k$a;

    .line 5
    invoke-interface {v0, p1}, Le/a/y/e/k$a;->s(Le/a/y/e/i;)V

    return-void
.end method
