.class public final Le/a/a/c/o8/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/o8/h;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Le/a/a/k/a/a/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/o8/h;


# direct methods
.method public constructor <init>(Le/a/a/c/o8/h;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/o8/h$a;->a:Le/a/a/c/o8/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/k/a/a/o;

    .line 2
    iget-object v0, p0, Le/a/a/c/o8/h$a;->a:Le/a/a/c/o8/h;

    iget-object v0, v0, Le/a/a/c/o8/h;->f:Le/a/a/c/o8/i;

    .line 3
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    if-eqz p1, :cond_4

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, v0, Le/a/a/c/o8/i;->e:Le/a/a/k/a/a/o;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6
    :cond_1
    iput-object p1, v0, Le/a/a/c/o8/i;->e:Le/a/a/k/a/a/o;

    .line 7
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/o8/j;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {v0, v1}, Le/a/a/c/o8/j;->lx(Z)V

    :cond_4
    :goto_1
    return-void
.end method
