.class public Le/k/a/c/l0/t/z;
.super Le/k/a/c/l0/t/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/w<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final c:Le/k/a/c/l0/t/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/l0/t/z;

    invoke-direct {v0}, Le/k/a/c/l0/t/z;-><init>()V

    sput-object v0, Le/k/a/c/l0/t/z;->c:Le/k/a/c/l0/t/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Number;

    sget-object v1, Le/k/a/b/j$b;->a:Le/k/a/b/j$b;

    const-string v2, "integer"

    invoke-direct {p0, v0, v1, v2}, Le/k/a/c/l0/t/w;-><init>(Ljava/lang/Class;Le/k/a/b/j$b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->J0(I)V

    return-void
.end method
