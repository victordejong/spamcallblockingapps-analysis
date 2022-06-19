.class public final Le/a/n2/a/f;
.super Le/a/n2/a/e;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Integer;

.field public final c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/n2/a/e;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Le/a/n2/a/f;->a:I

    iput-object p2, p0, Le/a/n2/a/f;->b:Ljava/lang/Integer;

    iput-object p3, p0, Le/a/n2/a/f;->c:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/n2/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/n2/a/f;->b:Ljava/lang/Integer;

    const v1, 0x9cac

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Le/a/n2/a/f;->a:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
