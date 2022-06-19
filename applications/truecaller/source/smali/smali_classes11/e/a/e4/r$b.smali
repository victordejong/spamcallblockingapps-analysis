.class public Le/a/e4/r$b;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/e4/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e4/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(Le/a/e4/r;Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2
    invoke-virtual {p1}, Le/a/e4/r;->q()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Le/a/e4/r$b;->a:I

    return-void
.end method


# virtual methods
.method public z()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Le/a/e4/r$b;->a:I

    const-string v1, "-1"

    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method
