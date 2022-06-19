.class public Le/f/a/m/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/p/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/m/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/p/n<",
        "Le/f/a/n/p/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lu3/f$a;


# direct methods
.method public constructor <init>(Lu3/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/m/a/c;->a:Lu3/f$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/p/n$a;
    .locals 0

    .line 1
    check-cast p1, Le/f/a/n/p/g;

    .line 2
    new-instance p2, Le/f/a/n/p/n$a;

    new-instance p3, Le/f/a/m/a/b;

    iget-object p4, p0, Le/f/a/m/a/c;->a:Lu3/f$a;

    invoke-direct {p3, p4, p1}, Le/f/a/m/a/b;-><init>(Lu3/f$a;Le/f/a/n/p/g;)V

    invoke-direct {p2, p1, p3}, Le/f/a/n/p/n$a;-><init>(Le/f/a/n/f;Le/f/a/n/n/d;)V

    return-object p2
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Le/f/a/n/p/g;

    const/4 p1, 0x1

    return p1
.end method
