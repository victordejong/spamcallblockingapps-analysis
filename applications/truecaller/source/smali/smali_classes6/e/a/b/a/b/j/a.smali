.class public final Le/a/b/a/b/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ls1/z/b/l;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ls1/z/b/l;I)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/b/j/a;->a:Ls1/z/b/l;

    iput p2, p0, Le/a/b/a/b/j/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b/a/b/j/a;->a:Ls1/z/b/l;

    iget v0, p0, Le/a/b/a/b/j/a;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
