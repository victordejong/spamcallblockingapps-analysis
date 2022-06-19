.class public final Le/a/b/l/q$a;
.super Le/a/b/l/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/l/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/b/l/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Integer;

.field public final d:Le/a/b/a/a/b/d/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b/a/a/b/d/a$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, v0, v0, v0, v1}, Le/a/b/l/q$a;-><init>(Ljava/lang/String;Ljava/lang/Integer;Le/a/b/a/a/b/d/a$b;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Le/a/b/a/a/b/d/a$b;I)V
    .locals 2

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v1

    :cond_2
    const/4 p4, 0x1

    .line 1
    invoke-direct {p0, v1, p1, p4}, Le/a/b/l/q;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object p2, p0, Le/a/b/l/q$a;->c:Ljava/lang/Integer;

    iput-object p3, p0, Le/a/b/l/q$a;->d:Le/a/b/a/a/b/d/a$b;

    return-void
.end method
