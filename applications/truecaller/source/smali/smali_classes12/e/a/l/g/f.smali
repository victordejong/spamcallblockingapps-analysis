.class public final Le/a/l/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    iput p1, p0, Le/a/l/g/f;->a:I

    iput-object p2, p0, Le/a/l/g/f;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/l/g/f;->b:Ljava/util/List;

    iget v0, p0, Le/a/l/g/f;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/g/j;

    .line 2
    iget-object p1, p1, Le/a/l/g/j;->b:Ls1/z/b/a;

    .line 3
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method
