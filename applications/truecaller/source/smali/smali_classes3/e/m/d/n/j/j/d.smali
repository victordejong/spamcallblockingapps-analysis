.class public final synthetic Le/m/d/n/j/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le/m/d/n/j/j/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/n/j/j/d;

    invoke-direct {v0}, Le/m/d/n/j/j/d;-><init>()V

    sput-object v0, Le/m/d/n/j/j/d;->a:Le/m/d/n/j/j/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le/m/d/n/j/l/a0$c;

    check-cast p2, Le/m/d/n/j/l/a0$c;

    .line 1
    invoke-virtual {p1}, Le/m/d/n/j/l/a0$c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Le/m/d/n/j/l/a0$c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
