.class public Le/q/f/a/e/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/q/f/a/e/e/a;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/q/f/a/e/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:D

.field public d:I


# direct methods
.method public constructor <init>(Le/q/f/a/e/e/a;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Le/q/f/a/e/e/b;->c:D

    .line 3
    iput-object p1, p0, Le/q/f/a/e/e/b;->a:Le/q/f/a/e/e/a;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Le/q/f/a/e/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Le/q/f/a/e/e/b;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p1, Le/q/f/a/e/e/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6
    iget-object v3, p0, Le/q/f/a/e/e/b;->b:Ljava/util/ArrayList;

    new-instance v4, Le/q/f/a/e/e/c;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v4, v5}, Le/q/f/a/e/e/c;-><init>(Ljava/lang/Double;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
