.class public final synthetic Le/a/r/x/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/n/a;


# instance fields
.field public final synthetic a:Le/a/r/x/n;


# direct methods
.method public synthetic constructor <init>(Le/a/r/x/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/x/f;->a:Le/a/r/x/n;

    return-void
.end method


# virtual methods
.method public final a(Le/a/b0/n/c;)V
    .locals 2

    iget-object v0, p0, Le/a/r/x/f;->a:Le/a/r/x/n;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p1, Le/a/b0/n/c;->a:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Le/a/r/x/n;->N:Z

    .line 4
    invoke-virtual {v0}, Le/a/r/x/n;->TA()V

    .line 5
    :cond_1
    invoke-virtual {v0}, Le/a/r/t/e;->b0()V

    :goto_0
    return-void
.end method
