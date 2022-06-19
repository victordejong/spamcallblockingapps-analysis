.class public final synthetic Le/m/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/c/s$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Le/m/a/c/s$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/a;->a:Le/m/a/c/s$a;

    iput p2, p0, Le/m/a/c/a;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/m/a/c/a;->a:Le/m/a/c/s$a;

    iget v1, p0, Le/m/a/c/a;->b:I

    .line 1
    iget-object v0, v0, Le/m/a/c/s$a;->b:Le/m/a/c/s;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x3

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v0, v4}, Le/m/a/c/s;->c(I)V

    .line 4
    invoke-virtual {v0, v4}, Le/m/a/c/s;->b(I)V

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v0, v2}, Le/m/a/c/s;->b(I)V

    .line 6
    invoke-virtual {v0}, Le/m/a/c/s;->a()V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    if-eq v1, v3, :cond_5

    .line 7
    iget-object v1, v0, Le/m/a/c/s;->d:Le/m/a/c/c1/i;

    if-eqz v1, :cond_3

    iget v1, v1, Le/m/a/c/c1/i;->a:I

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, Le/m/a/c/s;->c(I)V

    goto :goto_2

    .line 9
    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Le/m/a/c/s;->b(I)V

    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Le/m/a/c/s;->c(I)V

    :goto_2
    return-void
.end method
