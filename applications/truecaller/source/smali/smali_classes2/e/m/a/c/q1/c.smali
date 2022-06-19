.class public final synthetic Le/m/a/c/q1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le/m/a/c/q1/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/c/q1/c;

    invoke-direct {v0}, Le/m/a/c/q1/c;-><init>()V

    sput-object v0, Le/m/a/c/q1/c;->a:Le/m/a/c/q1/c;

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
    iget p1, p1, Le/m/a/c/q1/x$b;->c:F

    iget p2, p2, Le/m/a/c/q1/x$b;->c:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method
