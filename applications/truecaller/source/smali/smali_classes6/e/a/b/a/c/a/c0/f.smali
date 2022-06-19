.class public final Le/a/b/a/c/a/c0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/b0/p/c;

.field public final synthetic b:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/b0/p/c;Ls1/z/b/l;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/c/a/c0/f;->a:Le/a/b0/p/c;

    iput-object p2, p0, Le/a/b/a/c/a/c0/f;->b:Ls1/z/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/b/a/c/a/c0/f;->b:Ls1/z/b/l;

    iget-object v0, p0, Le/a/b/a/c/a/c0/f;->a:Le/a/b0/p/c;

    .line 2
    iget-wide v0, v0, Le/a/b0/p/c;->a:J

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
