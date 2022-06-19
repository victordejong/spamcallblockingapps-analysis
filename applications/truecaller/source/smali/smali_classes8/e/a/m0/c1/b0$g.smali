.class public final Le/a/m0/c1/b0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/b0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/c1/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final a:Le/a/m0/c1/b0$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/m0/c1/b0$g;

    invoke-direct {v0}, Le/a/m0/c1/b0$g;-><init>()V

    sput-object v0, Le/a/m0/c1/b0$g;->a:Le/a/m0/c1/b0$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)Le/a/m0/c1/b0$b;
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 1
    new-instance p1, Le/a/m0/c1/b0$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Le/a/m0/c1/b0$c;-><init>(Le/a/m0/c1/b0$a;)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 2
    new-instance p1, Le/a/m0/c1/b0$i;

    invoke-direct {p1, p2, p3}, Le/a/m0/c1/b0$i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p3, 0x2

    if-ne p3, p1, :cond_2

    .line 3
    new-instance p1, Le/a/m0/c1/b0$j;

    invoke-direct {p1, p2}, Le/a/m0/c1/b0$j;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown action type. Type should be one from the list: TYPE_CLEAR, TYPE_PUT, TYPE_REMOVE."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
