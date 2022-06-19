.class public final synthetic Le/a/h0/v/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/h0/v/i;


# direct methods
.method public synthetic constructor <init>(Le/a/h0/v/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h0/v/d;->a:Le/a/h0/v/i;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le/a/h0/v/d;->a:Le/a/h0/v/i;

    check-cast p1, Le/a/h0/w/b;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Le/a/h0/v/i;->h:Le/a/r2/a;

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4
    :cond_0
    iput-object p1, v0, Le/a/h0/v/i;->i:Le/a/h0/w/b;

    .line 5
    invoke-virtual {v0}, Le/a/h0/v/i;->Kb()I

    move-result p1

    if-lez p1, :cond_1

    .line 6
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/v/j;

    invoke-interface {p1}, Le/a/h0/v/j;->Cj()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/v/j;

    invoke-interface {p1}, Le/a/h0/v/j;->Be()V

    .line 8
    :goto_0
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/v/j;

    invoke-interface {p1}, Le/a/h0/v/j;->Rn()V

    :cond_2
    :goto_1
    return-void
.end method
