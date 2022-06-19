.class Lu/i/q$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:Lu/i/l;

.field static final b:Lu/i/l;

.field static final c:Lu/i/l;

.field static final d:Lu/i/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu/i/l;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q$b;->a:Lu/i/l;

    .line 2
    new-instance v0, Lu/i/l;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q$b;->b:Lu/i/l;

    .line 3
    new-instance v0, Lu/i/l;

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q$b;->c:Lu/i/l;

    .line 4
    new-instance v0, Lu/i/l;

    const/16 v1, 0xc

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q$b;->d:Lu/i/l;

    return-void
.end method

.method static a(III)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    add-int/lit8 p0, p0, 0x0

    add-int/lit8 p1, p1, 0x7

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x7

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, 0x3

    add-int/2addr p0, p2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;[BLu/i/t;)V
    .locals 2

    .line 1
    sget-object v0, Lu/i/q$b;->a:Lu/i/l;

    invoke-virtual {v0, p3}, Lu/i/l;->c(Lu/i/t;)V

    .line 2
    invoke-static {p3, p0}, Lu/i/j;->j(Lu/i/t;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lu/i/q$b;->b:Lu/i/l;

    invoke-virtual {p0, p3}, Lu/i/l;->c(Lu/i/t;)V

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 4
    invoke-static {p1}, Lu/i/t;->c(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p3, v1}, Lu/i/j;->i(Lu/i/t;I)V

    .line 5
    invoke-virtual {p3, p1}, Lu/i/t;->p(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    invoke-static {p3, p1}, Lu/i/j;->i(Lu/i/t;I)V

    .line 7
    invoke-virtual {p3, p1}, Lu/i/t;->l(I)V

    const/4 v0, 0x0

    .line 8
    :goto_0
    sget-object p1, Lu/i/q$b;->c:Lu/i/l;

    invoke-virtual {p1, p3}, Lu/i/l;->c(Lu/i/t;)V

    .line 9
    invoke-static {p3, v0}, Lu/i/j;->i(Lu/i/t;I)V

    if-eqz p2, :cond_1

    .line 10
    sget-object p1, Lu/i/q$b;->d:Lu/i/l;

    invoke-virtual {p1, p3}, Lu/i/l;->c(Lu/i/t;)V

    .line 11
    invoke-virtual {p3, p2}, Lu/i/t;->h([B)V

    .line 12
    :cond_1
    invoke-virtual {p3, p0}, Lu/i/t;->l(I)V

    return-void
.end method
