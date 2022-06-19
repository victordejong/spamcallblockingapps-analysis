.class public Le/i/b/y1$a;
.super Le/i/b/c2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Le/i/b/y1;


# direct methods
.method public constructor <init>(Le/i/b/y1;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/i/b/y1$a;->d:Le/i/b/y1;

    .line 2
    iget-object v0, p1, Le/i/b/y1;->j:Le/i/b/s1/a;

    .line 3
    iget-object v1, p1, Le/i/b/y1;->m:Le/i/b/l2/a;

    .line 4
    invoke-direct {p0, v0, p1, v1}, Le/i/b/c2;-><init>(Le/i/b/s1/a;Le/i/b/y1;Le/i/b/l2/a;)V

    return-void
.end method


# virtual methods
.method public a(Le/i/b/u2/q;Le/i/b/u2/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/y1$a;->d:Le/i/b/y1;

    .line 2
    iget-object v1, p2, Le/i/b/u2/t;->a:Ljava/util/List;

    .line 3
    invoke-virtual {v0, v1}, Le/i/b/y1;->f(Ljava/util/List;)V

    .line 4
    invoke-super {p0, p1, p2}, Le/i/b/c2;->a(Le/i/b/u2/q;Le/i/b/u2/t;)V

    return-void
.end method
