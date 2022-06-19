.class public final Le/a/a/n/j/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/s8/i;


# instance fields
.field public final synthetic a:Le/a/a/n/j/x;


# direct methods
.method public constructor <init>(Le/a/a/n/j/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/n/j/w;->a:Le/a/a/n/j/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C0(I)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/w;->a:Le/a/a/n/j/x;

    iget-object v0, v0, Le/a/a/n/j/x;->b:Le/a/a/n/j/v;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, v0, Le/a/a/n/j/v;->h:Z

    .line 3
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/n/j/t;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/a/n/j/t;->c0()V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/n/j/w;->a:Le/a/a/n/j/x;

    iget-object v0, v0, Le/a/a/n/j/x;->b:Le/a/a/n/j/v;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/a/a/n/j/v;->h:Z

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, v0, Le/a/a/n/j/v;->g:J

    .line 4
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/n/j/t;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/n/j/t;->c0()V

    :cond_0
    return-void
.end method
