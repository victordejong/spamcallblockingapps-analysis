.class public final Le/a/g5/e0/l;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g5/d0/b;

.field public final synthetic c:Le/a/g5/e0/i;


# direct methods
.method public constructor <init>(Le/a/g5/d0/b;Le/a/g5/e0/i;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/l;->b:Le/a/g5/d0/b;

    iput-object p2, p0, Le/a/g5/e0/l;->c:Le/a/g5/e0/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 2
    iget-object p1, p0, Le/a/g5/e0/l;->c:Le/a/g5/e0/i;

    .line 3
    iget-object p1, p1, Le/a/g5/e0/i;->i:Lcom/truecaller/common/tag/TagView;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/common/tag/TagView;->getAvailableTag()Le/a/b0/p/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Le/a/g5/e0/l;->c:Le/a/g5/e0/i;

    .line 6
    invoke-virtual {v0}, Le/a/g5/e0/i;->TA()Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    move-result-object v0

    .line 7
    iget-wide v1, p1, Le/a/b0/p/c;->a:J

    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->c(Lcom/truecaller/tagger/tagPicker/TaggerViewModel;JLjava/lang/String;ZI)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Le/a/g5/e0/l;->c:Le/a/g5/e0/i;

    .line 10
    invoke-virtual {p1}, Le/a/g5/e0/i;->TA()Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->c(Lcom/truecaller/tagger/tagPicker/TaggerViewModel;JLjava/lang/String;ZI)V

    .line 12
    :goto_0
    iget-object p1, p0, Le/a/g5/e0/l;->b:Le/a/g5/d0/b;

    iget-object p1, p1, Le/a/g5/d0/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Le/a/g5/e0/k;

    invoke-direct {v0, p0}, Le/a/g5/e0/k;-><init>(Le/a/g5/e0/l;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
