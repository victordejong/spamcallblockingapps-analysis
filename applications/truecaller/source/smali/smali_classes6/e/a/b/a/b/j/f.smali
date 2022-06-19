.class public final Le/a/b/a/b/j/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/b/m/e1;

.field public final synthetic b:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/b/m/e1;Le/f/a/i;Ljava/lang/String;Ls1/z/b/l;II)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/b/j/f;->a:Le/a/b/m/e1;

    iput-object p4, p0, Le/a/b/a/b/j/f;->b:Ls1/z/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/b/a/b/j/f;->b:Ls1/z/b/l;

    iget-object v0, p0, Le/a/b/a/b/j/f;->a:Le/a/b/m/e1;

    iget-object v0, v0, Le/a/b/m/e1;->b:Landroid/widget/ImageView;

    const-string v1, "image"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
