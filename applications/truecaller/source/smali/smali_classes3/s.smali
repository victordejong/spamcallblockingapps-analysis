.class public final Ls;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ls;->a:I

    iput-object p2, p0, Ls;->b:Ljava/lang/Object;

    iput-object p3, p0, Ls;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Ls;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Ls;->b:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/e/l/a;

    .line 2
    iget-object p1, p1, Le/a/k/a/e/l/a;->d:Le/a/k/a/e/l/a$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Ls;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/e/a;

    invoke-interface {p1, v0}, Le/a/k/a/e/l/a$a;->p9(Le/a/k/a/e/a;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_2
    iget-object p1, p0, Ls;->b:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/e/l/a;

    .line 6
    iget-object p1, p1, Le/a/k/a/e/l/a;->d:Le/a/k/a/e/l/a$a;

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Ls;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/e/a;

    invoke-interface {p1, v0}, Le/a/k/a/e/l/a$a;->N7(Le/a/k/a/e/a;)V

    :cond_3
    return-void
.end method
