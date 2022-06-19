.class public final synthetic Le/a/a/c/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/i0;->a:Le/a/a/c/y3;

    iput-boolean p2, p0, Le/a/a/c/i0;->b:Z

    iput p3, p0, Le/a/a/c/i0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/a/a/c/i0;->a:Le/a/a/c/y3;

    iget-boolean v1, p0, Le/a/a/c/i0;->b:Z

    iget v2, p0, Le/a/a/c/i0;->c:I

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 2
    iget-object v0, v0, Le/a/a/c/y3;->U0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
