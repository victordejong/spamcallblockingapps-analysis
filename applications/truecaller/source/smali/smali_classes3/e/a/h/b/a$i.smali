.class public final Le/a/h/b/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/a;->I9()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/MenuItem;

.field public final synthetic b:Le/a/h/b/a;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;Le/a/h/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/a$i;->a:Landroid/view/MenuItem;

    iput-object p2, p0, Le/a/h/b/a$i;->b:Le/a/h/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/h/b/a$i;->b:Le/a/h/b/a;

    iget-object v0, p0, Le/a/h/b/a$i;->a:Landroid/view/MenuItem;

    const-string v1, "item"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const-string v1, "item.actionView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Le/a/h/b/a;->vt(Le/a/h3/b/a;Landroid/view/View;)V

    return-void
.end method
