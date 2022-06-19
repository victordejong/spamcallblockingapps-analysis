.class public Le/m/b/x/a/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/b/x/b/s;


# instance fields
.field public final synthetic a:Le/m/b/x/b/s;

.field public final synthetic b:Le/m/b/x/b/n;

.field public final synthetic c:Le/m/b/x/a/e/c;


# direct methods
.method public constructor <init>(Le/m/b/x/a/e/c;Le/m/b/x/b/s;Le/m/b/x/b/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/x/a/e/b;->c:Le/m/b/x/a/e/c;

    iput-object p2, p0, Le/m/b/x/a/e/b;->a:Le/m/b/x/b/s;

    iput-object p3, p0, Le/m/b/x/a/e/b;->b:Le/m/b/x/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/b/x/b/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/a/e/b;->a:Le/m/b/x/b/s;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/m/b/x/a/e/b;

    invoke-virtual {v0, p1}, Le/m/b/x/a/e/b;->a(Le/m/b/x/b/q;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/b/x/b/q;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Le/m/b/x/a/e/b;->b:Le/m/b/x/b/n;

    .line 4
    iget-boolean v0, v0, Le/m/b/x/b/n;->t:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/m/b/x/a/e/b;->c:Le/m/b/x/a/e/c;

    invoke-virtual {v0, p1}, Le/m/b/x/a/e/c;->n(Le/m/b/x/b/q;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
