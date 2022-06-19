.class public final Le/a/q/a/b/b$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/a/b/b;-><init>(Ls1/w/f;Le/a/b0/o/a;Le/a/b0/a/v/a;Le/a/p5/c;Le/a/q/i/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/q/a/b/b$a;->b:I

    iput-object p2, p0, Le/a/q/a/b/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Le/a/q/a/b/b$a;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/q/a/b/b$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/q/a/b/b;

    .line 2
    iget-object v0, v0, Le/a/q/a/b/b;->j:Le/a/b0/o/a;

    const/4 v1, 0x3

    const-string v2, "contactFeedbackCommentBoxMinLength"

    .line 3
    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/q/a/b/b$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/q/a/b/b;

    .line 7
    iget-object v0, v0, Le/a/q/a/b/b;->j:Le/a/b0/o/a;

    const/16 v1, 0xa0

    const-string v2, "contactFeedbackCommentBoxMaxLength"

    .line 8
    invoke-interface {v0, v2, v1}, Le/a/b0/o/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
