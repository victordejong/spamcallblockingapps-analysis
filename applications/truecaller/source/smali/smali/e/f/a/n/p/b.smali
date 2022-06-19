.class public Le/f/a/n/p/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/p/b$d;,
        Le/f/a/n/p/b$a;,
        Le/f/a/n/p/b$c;,
        Le/f/a/n/p/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/p/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/p/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/p/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/a/n/p/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/p/b$b<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/p/b;->a:Le/f/a/n/p/b$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/p/n$a;
    .locals 1

    .line 1
    check-cast p1, [B

    .line 2
    new-instance p2, Le/f/a/n/p/n$a;

    new-instance p3, Le/f/a/s/d;

    invoke-direct {p3, p1}, Le/f/a/s/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Le/f/a/n/p/b$c;

    iget-object v0, p0, Le/f/a/n/p/b;->a:Le/f/a/n/p/b$b;

    invoke-direct {p4, p1, v0}, Le/f/a/n/p/b$c;-><init>([BLe/f/a/n/p/b$b;)V

    invoke-direct {p2, p3, p4}, Le/f/a/n/p/n$a;-><init>(Le/f/a/n/f;Le/f/a/n/n/d;)V

    return-object p2
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, [B

    const/4 p1, 0x1

    return p1
.end method
