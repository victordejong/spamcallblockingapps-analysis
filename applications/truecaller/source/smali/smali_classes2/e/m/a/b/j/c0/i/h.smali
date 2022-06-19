.class public final synthetic Le/m/a/b/j/c0/i/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/h0$b;


# static fields
.field public static final synthetic a:Le/m/a/b/j/c0/i/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/b/j/c0/i/h;

    invoke-direct {v0}, Le/m/a/b/j/c0/i/h;-><init>()V

    sput-object v0, Le/m/a/b/j/c0/i/h;->a:Le/m/a/b/j/c0/i/h;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/database/Cursor;

    .line 1
    sget-object v0, Le/m/a/b/j/c0/i/h0;->f:Le/m/a/b/b;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Le/m/a/b/j/r;->a()Le/m/a/b/j/r$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/m/a/b/j/r$a;->b(Ljava/lang/String;)Le/m/a/b/j/r$a;

    const/4 v2, 0x2

    .line 6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Le/m/a/b/j/f0/a;->b(I)Le/m/a/b/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/m/a/b/j/r$a;->c(Le/m/a/b/d;)Le/m/a/b/j/r$a;

    const/4 v2, 0x3

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 9
    :goto_1
    check-cast v1, Le/m/a/b/j/j$b;

    .line 10
    iput-object v2, v1, Le/m/a/b/j/j$b;->b:[B

    .line 11
    invoke-virtual {v1}, Le/m/a/b/j/j$b;->a()Le/m/a/b/j/r;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
