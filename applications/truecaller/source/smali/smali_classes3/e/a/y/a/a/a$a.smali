.class public final Le/a/y/a/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/a/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/y/a/a/a$a;->a:I

    iput-object p2, p0, Le/a/y/a/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Le/a/y/a/a/a$a;->a:I

    const-string v0, "presenter"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1
    iget-object p1, p0, Le/a/y/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/y/a/a/a;

    .line 2
    iget-object p1, p1, Le/a/y/a/a/a;->c:Le/a/y/a/a/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/y/a/a/c;->a()V

    return-void

    .line 4
    :cond_0
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    throw v1

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/y/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/y/a/a/a;

    .line 7
    iget-object p1, p1, Le/a/y/a/a/a;->c:Le/a/y/a/a/c;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Le/a/y/a/a/c;->c()V

    return-void

    .line 9
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
