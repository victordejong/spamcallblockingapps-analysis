.class public abstract Le/a/a/m/e3/c;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/f1;",
        ">;",
        "Le/a/a/m/z;"
    }
.end annotation


# instance fields
.field public final c:Le/a/a/m/f1$a;

.field public final d:Le/a/h5/m;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/f1$a;Le/a/h5/m;)V
    .locals 1

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roleRequester"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/e3/c;->c:Le/a/a/m/f1$a;

    iput-object p3, p0, Le/a/a/m/e3/c;->d:Le/a/h5/m;

    return-void
.end method


# virtual methods
.method public v(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x64c2ccce

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, -0x20e1ec4b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ItemEvent.ACTION_ENABLE_CALLER_ID"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/a/m/e3/c;->d:Le/a/h5/m;

    new-instance v0, Le/a/a/m/e3/c$a;

    invoke-direct {v0, p0}, Le/a/a/m/e3/c$a;-><init>(Le/a/a/m/e3/c;)V

    invoke-interface {p1, v0}, Le/a/h5/m;->b(Ls1/z/b/l;)V

    goto :goto_1

    :cond_1
    const-string v0, "ItemEvent.ACTION_LEARN_MORE"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
