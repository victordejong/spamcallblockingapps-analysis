.class public final synthetic Le/a/a/c/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/a2;->a:Le/a/a/c/y3;

    iput-wide p2, p0, Le/a/a/c/a2;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Le/a/a/c/a2;->a:Le/a/a/c/y3;

    iget-wide v3, p0, Le/a/a/c/a2;->b:J

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v8, Le/a/a/c/z6;

    iget-object v2, v0, Le/a/a/c/y3;->m0:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "recyclerView"

    .line 3
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x9c4

    const/4 v5, 0x0

    move-object v1, v8

    .line 4
    invoke-direct/range {v1 .. v7}, Le/a/a/c/z6;-><init>(Landroidx/recyclerview/widget/RecyclerView;JLjava/lang/String;J)V

    .line 5
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
