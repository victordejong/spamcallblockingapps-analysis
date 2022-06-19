.class public final Le/a/a/c/b/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/b/b;->Eb(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/b/b;

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/c/b/b;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/b/b$j;->a:Le/a/a/c/b/b;

    iput-wide p2, p0, Le/a/a/c/b/b$j;->b:J

    iput-object p4, p0, Le/a/a/c/b/b$j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    new-instance v7, Le/a/a/c/z6;

    iget-object v0, p0, Le/a/a/c/b/b$j;->a:Le/a/a/c/b/b;

    .line 2
    sget v1, Le/a/a/c/b/b;->z:I

    .line 3
    invoke-virtual {v0}, Le/a/a/c/b/b;->SA()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const-string v0, "recyclerView"

    .line 4
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, p0, Le/a/a/c/b/b$j;->b:J

    iget-object v4, p0, Le/a/a/c/b/b$j;->c:Ljava/lang/String;

    const-wide/16 v5, 0x7d0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le/a/a/c/z6;-><init>(Landroidx/recyclerview/widget/RecyclerView;JLjava/lang/String;J)V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
