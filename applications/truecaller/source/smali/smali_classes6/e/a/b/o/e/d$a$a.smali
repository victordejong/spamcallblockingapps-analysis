.class public final Le/a/b/o/e/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/o/e/d$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Le/a/b/o/e/d$a;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Le/a/b/o/e/d$a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/o/e/d$a$a;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Le/a/b/o/e/d$a$a;->b:Le/a/b/o/e/d$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Le/a/b/o/e/d$a$a;->b:Le/a/b/o/e/d$a;

    iget-object p2, p2, Le/a/b/o/e/d$a;->b:Le/a/b/o/e/d;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iput p1, p2, Le/a/b/o/e/d;->g:I

    .line 4
    iget-object p1, p0, Le/a/b/o/e/d$a$a;->b:Le/a/b/o/e/d$a;

    iget-object v0, p1, Le/a/b/o/e/d$a;->b:Le/a/b/o/e/d;

    .line 5
    iget-object v1, v0, Le/a/b/o/e/d;->l:Ls1/w/f;

    const/4 v2, 0x0

    .line 6
    new-instance v3, Le/a/b/o/e/d$a$a$a;

    const/4 p1, 0x0

    invoke-direct {v3, p1, p0}, Le/a/b/o/e/d$a$a$a;-><init>(Ls1/w/d;Le/a/b/o/e/d$a$a;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 7
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
