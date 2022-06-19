.class public Le/m/b/x/b/r;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/x/b/r$a;
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Le/m/b/x/b/q;)V
    .locals 5

    .line 3
    iget v0, p1, Le/m/b/x/b/q;->f:I

    .line 4
    iget-object v1, p1, Le/m/b/x/b/q;->h:Le/m/b/x/b/n;

    .line 5
    iget-object v1, v1, Le/m/b/x/b/n;->c:Le/m/b/x/b/k;

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-static {v2}, Ln3/g0/y;->checkArgument2(Z)V

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p1}, Le/m/b/x/b/q;->f()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 9
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_1

    goto :goto_4

    :cond_1
    :goto_1
    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 10
    :goto_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 11
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 12
    :goto_4
    invoke-static {p1}, Le/m/b/x/b/r;->a(Le/m/b/x/b/q;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 13
    sget-object v2, Le/m/b/x/d/v;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    iput v0, p0, Le/m/b/x/b/r;->a:I

    return-void
.end method

.method public constructor <init>(Le/m/b/x/b/r$a;)V
    .locals 1

    .line 1
    iget-object v0, p1, Le/m/b/x/b/r$a;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iget p1, p1, Le/m/b/x/b/r$a;->a:I

    iput p1, p0, Le/m/b/x/b/r;->a:I

    return-void
.end method

.method public static a(Le/m/b/x/b/q;)Ljava/lang/StringBuilder;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget v1, p0, Le/m/b/x/b/q;->f:I

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    iget-object p0, p0, Le/m/b/x/b/q;->g:Ljava/lang/String;

    if-eqz p0, :cond_2

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-object v0
.end method
