.class public Le/k/a/c/d0/z/j$c;
.super Le/k/a/c/d0/z/j$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/j$b<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final f:Le/k/a/c/d0/z/j$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/z/j$c;

    invoke-direct {v0}, Le/k/a/c/d0/z/j$c;-><init>()V

    sput-object v0, Le/k/a/c/d0/z/j$c;->f:Le/k/a/c/d0/z/j$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/j$b;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/z/j$c;Ljava/text/DateFormat;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/d0/z/j$b;-><init>(Le/k/a/c/d0/z/j$b;Ljava/text/DateFormat;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/j$b;->Q(Le/k/a/b/j;Le/k/a/c/g;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p1, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1
.end method

.method public m0(Ljava/text/DateFormat;Ljava/lang/String;)Le/k/a/c/d0/z/j$b;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/z/j$c;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/d0/z/j$c;-><init>(Le/k/a/c/d0/z/j$c;Ljava/text/DateFormat;Ljava/lang/String;)V

    return-object v0
.end method
