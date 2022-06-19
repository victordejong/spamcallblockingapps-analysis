.class public final synthetic Le/a/e/c/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/a0;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/a/e/c/a0;->a:Le/a/e/c/s1;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, v0, Le/a/e/c/s1;->s:Ln3/b/a/h;

    invoke-virtual {p1}, Ln3/b/a/h;->invalidateOptionsMenu()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
