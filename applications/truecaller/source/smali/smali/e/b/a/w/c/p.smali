.class public Le/b/a/w/c/p;
.super Le/b/a/w/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Le/b/a/w/c/a<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field public final l:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/b/a/c0/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/c0/c<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Le/b/a/w/c/a;-><init>(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 3
    iput-object p1, p0, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 4
    iput-object p2, p0, Le/b/a/w/c/p;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    iget-object v4, p0, Le/b/a/w/c/p;->l:Ljava/lang/Object;

    .line 2
    iget v7, p0, Le/b/a/w/c/a;->d:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v4

    move v5, v7

    move v6, v7

    .line 3
    invoke-virtual/range {v0 .. v7}, Le/b/a/c0/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public g(Le/b/a/c0/a;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/c0/a<",
            "TK;>;F)TA;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/b/a/w/c/p;->f()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Le/b/a/w/c/a;->h()V

    :cond_0
    return-void
.end method
