.class public final synthetic Le/m/a/b/j/c0/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/h0$b;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/m/a/b/j/c0/i/c;->a:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-wide v0, p0, Le/m/a/b/j/c0/i/c;->a:J

    check-cast p1, Landroid/database/Cursor;

    .line 1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v2, 0x0

    .line 2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3
    sget p1, Le/m/a/b/j/a0/a/f;->c:I

    .line 4
    new-instance p1, Le/m/a/b/j/a0/a/f;

    invoke-direct {p1, v2, v3, v0, v1}, Le/m/a/b/j/a0/a/f;-><init>(JJ)V

    return-object p1
.end method
