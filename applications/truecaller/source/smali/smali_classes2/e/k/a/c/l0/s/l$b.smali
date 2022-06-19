.class public final Le/k/a/c/l0/s/l$b;
.super Le/k/a/c/l0/s/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/s/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Le/k/a/c/l0/s/l$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/l0/s/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/k/a/c/l0/s/l$b;-><init>(Z)V

    sput-object v0, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/l0/s/l;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)",
            "Le/k/a/c/l0/s/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/l0/s/l$e;

    invoke-direct {v0, p0, p1, p2}, Le/k/a/c/l0/s/l$e;-><init>(Le/k/a/c/l0/s/l;Ljava/lang/Class;Le/k/a/c/n;)V

    return-object v0
.end method

.method public c(Ljava/lang/Class;)Le/k/a/c/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
