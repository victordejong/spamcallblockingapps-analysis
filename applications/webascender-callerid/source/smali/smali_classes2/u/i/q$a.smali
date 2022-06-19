.class Lu/i/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lu/i/l;

.field static final b:Lu/i/l;

.field static final c:Lu/i/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu/i/l;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q$a;->a:Lu/i/l;

    .line 2
    new-instance v0, Lu/i/l;

    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q$a;->b:Lu/i/l;

    .line 3
    new-instance v0, Lu/i/l;

    const/16 v1, 0xc

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/q$a;->c:Lu/i/l;

    return-void
.end method

.method static a(II)I
    .locals 1

    add-int/lit8 p0, p0, 0x7

    const/16 v0, 0xb

    add-int/2addr v0, p0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static b(JLjava/lang/String;[BLu/i/t;)V
    .locals 1

    .line 1
    sget-object v0, Lu/i/q$a;->a:Lu/i/l;

    invoke-virtual {v0, p4}, Lu/i/l;->c(Lu/i/t;)V

    .line 2
    invoke-static {p4, p0, p1}, Lu/i/j;->m(Lu/i/t;J)V

    .line 3
    sget-object p0, Lu/i/q$a;->b:Lu/i/l;

    invoke-virtual {p0, p4}, Lu/i/l;->c(Lu/i/t;)V

    .line 4
    invoke-static {p4, p2}, Lu/i/j;->j(Lu/i/t;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 5
    sget-object p0, Lu/i/q$a;->c:Lu/i/l;

    invoke-virtual {p0, p4}, Lu/i/l;->c(Lu/i/t;)V

    .line 6
    invoke-virtual {p4, p3}, Lu/i/t;->h([B)V

    :cond_0
    const/4 p0, 0x0

    .line 7
    invoke-virtual {p4, p0}, Lu/i/t;->l(I)V

    return-void
.end method
