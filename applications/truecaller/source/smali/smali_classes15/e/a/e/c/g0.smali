.class public final synthetic Le/a/e/c/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1$p;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1$p;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/g0;->a:Le/a/e/c/s1$p;

    iput-object p2, p0, Le/a/e/c/g0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Le/a/e/c/g0;->a:Le/a/e/c/s1$p;

    iget-object v1, p0, Le/a/e/c/g0;->b:Ljava/util/List;

    .line 1
    new-instance v2, Le/a/e/c/i2;

    iget-object v0, v0, Le/a/e/c/s1$p;->a:Le/a/e/c/s1;

    .line 2
    iget-object v0, v0, Le/a/e/c/s1;->s:Ln3/b/a/h;

    .line 3
    invoke-direct {v2, v0, v1, p1}, Le/a/e/c/i2;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    .line 4
    iget-object p1, v2, Le/a/e/c/i2;->a:Ln3/b/f/b0;

    invoke-virtual {p1}, Ln3/b/f/b0;->show()V

    return-void
.end method
