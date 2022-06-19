.class public final synthetic Le/a/p5/s0/t;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ljava/lang/StackTraceElement;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Le/a/p5/s0/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/p5/s0/t;

    invoke-direct {v0}, Le/a/p5/s0/t;-><init>()V

    sput-object v0, Le/a/p5/s0/t;->j:Le/a/p5/s0/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-class v2, Ljava/lang/StackTraceElement;

    const/4 v1, 0x1

    const-string v3, "toString"

    const-string v4, "toString()Ljava/lang/String;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ls1/z/c/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/StackTraceElement;

    const-string v0, "p1"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
