.class Lio/realm/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/internal/j$a<",
        "Lio/realm/internal/OsObject$b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/x$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/realm/x$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/realm/internal/j$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/realm/internal/OsObject$b;

    invoke-virtual {p0, p1, p2}, Lio/realm/x$b;->b(Lio/realm/internal/OsObject$b;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lio/realm/internal/OsObject$b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lio/realm/e0;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lio/realm/internal/OsObject$b;->a(Lio/realm/e0;Lio/realm/s;)V

    return-void
.end method
