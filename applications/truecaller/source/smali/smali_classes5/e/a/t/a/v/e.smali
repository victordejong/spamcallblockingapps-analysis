.class public final Le/a/t/a/v/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/o;


# instance fields
.field public final synthetic a:Le/a/t/a/v/d;


# direct methods
.method public constructor <init>(Le/a/t/a/v/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t/a/v/e;->a:Le/a/t/a/v/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/v/e;->a:Le/a/t/a/v/d;

    .line 2
    iget-object v0, v0, Le/a/t/a/v/d;->c:Le/a/t/a/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/t/a/o;->b()V

    :cond_0
    return-void
.end method

.method public c(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emoji"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t/a/v/e;->a:Le/a/t/a/v/d;

    .line 2
    iget-object v0, v0, Le/a/t/a/v/d;->c:Le/a/t/a/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Le/a/t/a/o;->c(Lcom/truecaller/android/truemoji/keyboard/EmojiView;Le/a/t/a/u/d;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Le/a/t/a/u/d;)V
    .locals 1

    const-string v0, "emoji"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t/a/v/e;->a:Le/a/t/a/v/d;

    .line 2
    iget-object v0, v0, Le/a/t/a/v/d;->c:Le/a/t/a/o;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Le/a/t/a/o;->d(Le/a/t/a/u/d;)V

    :cond_0
    return-void
.end method
