.class public final Le/a/q/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q/i/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/q/g/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/q/g/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactFeedbackDbManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q/i/b;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/q/i/b;->b:Le/a/q/g/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/CommentFeedback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "comments"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    new-instance v4, Le/a/q/i/b$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/q/i/b$a;-><init>(Le/a/q/i/b;Ljava/util/List;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
