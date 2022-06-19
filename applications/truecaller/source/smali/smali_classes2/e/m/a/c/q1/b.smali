.class public final synthetic Le/m/a/c/q1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le/m/a/c/q1/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/c/q1/b;

    invoke-direct {v0}, Le/m/a/c/q1/b;-><init>()V

    sput-object v0, Le/m/a/c/q1/b;->a:Le/m/a/c/q1/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Le/m/a/c/q1/x$b;

    check-cast p2, Le/m/a/c/q1/x$b;

    .line 1
    sget v0, Le/m/a/c/q1/x;->h:I

    .line 2
    iget p1, p1, Le/m/a/c/q1/x$b;->a:I

    iget p2, p2, Le/m/a/c/q1/x$b;->a:I

    sub-int/2addr p1, p2

    return p1
.end method
