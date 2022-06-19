.class public final Le/f/a/n/p/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/p/e$c;,
        Le/f/a/n/p/e$b;,
        Le/f/a/n/p/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/p/n<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/p/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/p/e$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/f/a/n/p/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/p/e$a<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/p/e;->a:Le/f/a/n/p/e$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/p/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Le/f/a/n/i;",
            ")",
            "Le/f/a/n/p/n$a<",
            "TData;>;"
        }
    .end annotation

    .line 1
    new-instance p2, Le/f/a/n/p/n$a;

    new-instance p3, Le/f/a/s/d;

    invoke-direct {p3, p1}, Le/f/a/s/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Le/f/a/n/p/e$b;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Le/f/a/n/p/e;->a:Le/f/a/n/p/e$a;

    invoke-direct {p4, p1, v0}, Le/f/a/n/p/e$b;-><init>(Ljava/lang/String;Le/f/a/n/p/e$a;)V

    invoke-direct {p2, p3, p4}, Le/f/a/n/p/n$a;-><init>(Le/f/a/n/f;Le/f/a/n/n/d;)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
