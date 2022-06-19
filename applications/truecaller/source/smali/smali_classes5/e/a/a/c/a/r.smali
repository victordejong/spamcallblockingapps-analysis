.class public final Le/a/a/c/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/a/t;

.field public final synthetic b:Le/a/c/r/j/h;

.field public final synthetic c:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/a/c/a/t;Le/a/c/r/j/h;Ls1/z/b/l;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/r;->a:Le/a/a/c/a/t;

    iput-object p2, p0, Le/a/a/c/a/r;->b:Le/a/c/r/j/h;

    iput-object p3, p0, Le/a/a/c/a/r;->c:Ls1/z/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/a/c/a/r;->a:Le/a/a/c/a/t;

    iget-object v0, p0, Le/a/a/c/a/r;->b:Le/a/c/r/j/h;

    .line 2
    iget-object v0, v0, Le/a/c/r/j/h;->b:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 3
    iget-object v1, p0, Le/a/a/c/a/r;->c:Ls1/z/b/l;

    invoke-virtual {p1, v0, v1}, Le/a/a/c/a/b;->e(Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Ls1/z/b/l;)V

    return-void
.end method
