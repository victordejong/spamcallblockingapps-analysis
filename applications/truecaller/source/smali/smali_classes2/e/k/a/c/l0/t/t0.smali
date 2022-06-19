.class public Le/k/a/c/l0/t/t0;
.super Le/k/a/c/l0/t/u0;
.source "SourceFile"


# annotations
.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final c:Le/k/a/c/l0/t/t0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/l0/t/t0;

    invoke-direct {v0}, Le/k/a/c/l0/t/t0;-><init>()V

    sput-object v0, Le/k/a/c/l0/t/t0;->c:Le/k/a/c/l0/t/t0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/u0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Le/k/a/c/l0/t/u0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final p(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
