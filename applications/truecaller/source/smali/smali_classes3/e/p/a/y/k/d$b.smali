.class public abstract Le/p/a/y/k/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public final a:Lv3/m;

.field public b:Z

.field public final synthetic c:Le/p/a/y/k/d;


# direct methods
.method public constructor <init>(Le/p/a/y/k/d;Le/p/a/y/k/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/k/d$b;->c:Le/p/a/y/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lv3/m;

    .line 3
    iget-object p1, p1, Le/p/a/y/k/d;->b:Lv3/h;

    .line 4
    invoke-interface {p1}, Lv3/b0;->i()Lv3/c0;

    move-result-object p1

    invoke-direct {p2, p1}, Lv3/m;-><init>(Lv3/c0;)V

    iput-object p2, p0, Le/p/a/y/k/d$b;->a:Lv3/m;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/k/d$b;->c:Le/p/a/y/k/d;

    .line 2
    iget v1, v0, Le/p/a/y/k/d;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Le/p/a/y/k/d$b;->a:Lv3/m;

    invoke-static {v0, v1}, Le/p/a/y/k/d;->h(Le/p/a/y/k/d;Lv3/m;)V

    .line 4
    iget-object v0, p0, Le/p/a/y/k/d$b;->c:Le/p/a/y/k/d;

    const/4 v1, 0x6

    .line 5
    iput v1, v0, Le/p/a/y/k/d;->e:I

    .line 6
    iget-object v1, v0, Le/p/a/y/k/d;->a:Le/p/a/y/k/q;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, v0}, Le/p/a/y/k/q;->h(Le/p/a/y/k/i;)V

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "state: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/p/a/y/k/d$b;->c:Le/p/a/y/k/d;

    .line 9
    iget v2, v2, Le/p/a/y/k/d;->e:I

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/p/a/y/k/d$b;->c:Le/p/a/y/k/d;

    .line 2
    iget v1, v0, Le/p/a/y/k/d;->e:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iput v2, v0, Le/p/a/y/k/d;->e:I

    .line 4
    iget-object v0, v0, Le/p/a/y/k/d;->a:Le/p/a/y/k/q;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Le/p/a/y/k/q;->f()V

    .line 6
    iget-object v0, p0, Le/p/a/y/k/d$b;->c:Le/p/a/y/k/d;

    .line 7
    iget-object v1, v0, Le/p/a/y/k/d;->a:Le/p/a/y/k/q;

    .line 8
    invoke-virtual {v1, v0}, Le/p/a/y/k/q;->h(Le/p/a/y/k/i;)V

    :cond_1
    return-void
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/y/k/d$b;->a:Lv3/m;

    return-object v0
.end method
